.class public Lcom/airbnb/android/models/CancellationPolicy;
.super Lcom/airbnb/android/models/_CancellationPolicy;
.source "CancellationPolicy.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/CancellationPolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/android/models/CancellationPolicy$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/CancellationPolicy$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/CancellationPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/models/_CancellationPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_CancellationPolicy;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDetails()Ljava/util/List;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_CancellationPolicy;->getDetails()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFormattedName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_CancellationPolicy;->getFormattedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_CancellationPolicy;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPolicyAsString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 26
    const-string/jumbo v0, "\n\n"

    invoke-virtual {p0}, Lcom/airbnb/android/models/CancellationPolicy;->getDetails()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getShortDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_CancellationPolicy;->getShortDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_CancellationPolicy;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setDetails(Ljava/util/List;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_CancellationPolicy;->setDetails(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setFormattedName(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_CancellationPolicy;->setFormattedName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_CancellationPolicy;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setShortDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_CancellationPolicy;->setShortDescription(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_CancellationPolicy;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
