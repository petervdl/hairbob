.class public Lcom/airbnb/android/models/PayoutInfo;
.super Lcom/airbnb/android/models/_PayoutInfo;
.source "PayoutInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/PayoutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/android/models/PayoutInfo$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/PayoutInfo$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/PayoutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/models/_PayoutInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_PayoutInfo;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_PayoutInfo;->getCurrency()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_PayoutInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDescriptionShort()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_PayoutInfo;->getDescriptionShort()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPayoutId()J
    .registers 3

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_PayoutInfo;->getPayoutId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_PayoutInfo;->getStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStatusCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_PayoutInfo;->getStatusCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_PayoutInfo;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTypeString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_PayoutInfo;->getTypeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserId()J
    .registers 3

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_PayoutInfo;->getUserId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic isDefault()Z
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_PayoutInfo;->isDefault()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_PayoutInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setCurrency(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_PayoutInfo;->setCurrency(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_PayoutInfo;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDescriptionShort(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_PayoutInfo;->setDescriptionShort(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setIsDefault(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_PayoutInfo;->setIsDefault(Z)V

    return-void
.end method

.method public bridge synthetic setPayoutId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_PayoutInfo;->setPayoutId(J)V

    return-void
.end method

.method public bridge synthetic setStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_PayoutInfo;->setStatus(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setStatusCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_PayoutInfo;->setStatusCode(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_PayoutInfo;->setType(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setTypeString(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_PayoutInfo;->setTypeString(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setUserId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_PayoutInfo;->setUserId(J)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_PayoutInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
