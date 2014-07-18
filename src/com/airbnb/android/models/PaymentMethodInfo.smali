.class public Lcom/airbnb/android/models/PaymentMethodInfo;
.super Lcom/airbnb/android/models/_PaymentMethodInfo;
.source "PaymentMethodInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/PaymentMethodInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/android/models/PaymentMethodInfo$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/PaymentMethodInfo$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/PaymentMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/models/_PaymentMethodInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_PaymentMethodInfo;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getArrivesWhenText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_PaymentMethodInfo;->getArrivesWhenText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCurrencies()Ljava/util/List;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_PaymentMethodInfo;->getCurrencies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCurrencyText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_PaymentMethodInfo;->getCurrencyText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDetailsText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_PaymentMethodInfo;->getDetailsText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .registers 5

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/android/models/PaymentMethodInfo;->mCurrencyText:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v1, p0, Lcom/airbnb/android/models/PaymentMethodInfo;->mArrivesWhenText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lcom/airbnb/android/models/PaymentMethodInfo;->mDetailsText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "&quot;"

    const-string/jumbo v3, "\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_PaymentMethodInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNameString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_PaymentMethodInfo;->getNameString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_PaymentMethodInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setArrivesWhenText(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_PaymentMethodInfo;->setArrivesWhenText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCurrencies(Ljava/util/List;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_PaymentMethodInfo;->setCurrencies(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setCurrencyText(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_PaymentMethodInfo;->setCurrencyText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDetailsText(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_PaymentMethodInfo;->setDetailsText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_PaymentMethodInfo;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setNameString(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_PaymentMethodInfo;->setNameString(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_PaymentMethodInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
