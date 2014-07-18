.class public Lcom/airbnb/android/models/Currency;
.super Lcom/airbnb/android/models/_Currency;
.source "Currency.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/Currency;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Lcom/airbnb/android/models/Currency$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/Currency$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/Currency;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/airbnb/android/models/_Currency;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/_Currency;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    if-ne p0, p1, :cond_5

    .line 50
    :cond_4
    :goto_4
    return v1

    .line 40
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 41
    goto :goto_4

    .line 42
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 43
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 44
    check-cast v0, Lcom/airbnb/android/models/Currency;

    .line 45
    .local v0, "other":Lcom/airbnb/android/models/Currency;
    iget-object v3, p0, Lcom/airbnb/android/models/Currency;->mCurrencyCode:Ljava/lang/String;

    if-nez v3, :cond_22

    .line 46
    iget-object v3, v0, Lcom/airbnb/android/models/Currency;->mCurrencyCode:Ljava/lang/String;

    if-eqz v3, :cond_4

    move v1, v2

    .line 47
    goto :goto_4

    .line 48
    :cond_22
    iget-object v3, p0, Lcom/airbnb/android/models/Currency;->mCurrencyCode:Ljava/lang/String;

    iget-object v4, v0, Lcom/airbnb/android/models/Currency;->mCurrencyCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 49
    goto :goto_4
.end method

.method public getCurrency()Lcom/airbnb/android/models/Currency;
    .registers 2

    .prologue
    .line 10
    iget-object v0, p0, Lcom/airbnb/android/models/Currency;->mCurrency:Lcom/airbnb/android/models/Currency;

    if-nez v0, :cond_5

    .end local p0    # "this":Lcom/airbnb/android/models/Currency;
    :goto_4
    return-object p0

    .restart local p0    # "this":Lcom/airbnb/android/models/Currency;
    :cond_5
    iget-object p0, p0, Lcom/airbnb/android/models/Currency;->mCurrency:Lcom/airbnb/android/models/Currency;

    goto :goto_4
.end method

.method public bridge synthetic getCurrencyCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/_Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCurrencyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/_Currency;->getCurrencyName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCurrencySymbol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/_Currency;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 30
    const/16 v0, 0x1f

    .line 31
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 32
    .local v1, "result":I
    iget-object v2, p0, Lcom/airbnb/android/models/Currency;->mCurrencyCode:Ljava/lang/String;

    if-nez v2, :cond_b

    const/4 v2, 0x0

    :goto_8
    add-int/lit8 v1, v2, 0x1f

    .line 33
    return v1

    .line 32
    :cond_b
    iget-object v2, p0, Lcom/airbnb/android/models/Currency;->mCurrencyCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Currency;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setCurrency(Lcom/airbnb/android/models/Currency;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/Currency;

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Currency;->setCurrency(Lcom/airbnb/android/models/Currency;)V

    return-void
.end method

.method public bridge synthetic setCurrencyCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Currency;->setCurrencyCode(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCurrencyName(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Currency;->setCurrencyName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCurrencySymbol(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Currency;->setCurrencySymbol(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_Currency;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
