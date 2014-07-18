.class public Lcom/airbnb/android/models/SpecialOffer;
.super Lcom/airbnb/android/models/_SpecialOffer;
.source "SpecialOffer.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/SpecialOffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    new-instance v0, Lcom/airbnb/android/models/SpecialOffer$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/SpecialOffer$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/SpecialOffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/airbnb/android/models/_SpecialOffer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_SpecialOffer;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    if-ne p0, p1, :cond_5

    .line 59
    :cond_4
    :goto_4
    return v1

    .line 49
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 50
    goto :goto_4

    .line 52
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 53
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 55
    check-cast v0, Lcom/airbnb/android/models/_SpecialOffer;

    .line 56
    .local v0, "other":Lcom/airbnb/android/models/_SpecialOffer;
    iget-wide v3, p0, Lcom/airbnb/android/models/SpecialOffer;->mId:J

    iget-wide v5, v0, Lcom/airbnb/android/models/_SpecialOffer;->mId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 57
    goto :goto_4
.end method

.method public bridge synthetic getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_SpecialOffer;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getExpiresAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_SpecialOffer;->getExpiresAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()J
    .registers 3

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_SpecialOffer;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getListingId()J
    .registers 3

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_SpecialOffer;->getListingId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_SpecialOffer;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNativeCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_SpecialOffer;->getNativeCurrency()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNights()I
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_SpecialOffer;->getNights()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getNumberOfGuests()I
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_SpecialOffer;->getNumberOfGuests()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPrice()D
    .registers 3

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_SpecialOffer;->getPrice()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getPriceNative()I
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_SpecialOffer;->getPriceNative()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSpecialOffer()Lcom/airbnb/android/models/SpecialOffer;
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_SpecialOffer;->getSpecialOffer()Lcom/airbnb/android/models/SpecialOffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStartDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_SpecialOffer;->getStartDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 8

    .prologue
    .line 38
    const/16 v0, 0x1f

    .line 39
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 40
    .local v1, "result":I
    iget-wide v2, p0, Lcom/airbnb/android/models/SpecialOffer;->mId:J

    iget-wide v4, p0, Lcom/airbnb/android/models/SpecialOffer;->mId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 41
    return v1
.end method

.method public bridge synthetic isPreApproval()Z
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_SpecialOffer;->isPreApproval()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SpecialOffer;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .registers 3
    .param p1, "createdAt"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_at"
    .end annotation

    .prologue
    .line 18
    invoke-static {p1}, Lcom/airbnb/android/utils/DateHelper;->getDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/SpecialOffer;->mCreatedAt:Ljava/util/Date;

    .line 19
    return-void
.end method

.method public bridge synthetic setExpiresAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Date;

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SpecialOffer;->setExpiresAt(Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic setId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 9
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_SpecialOffer;->setId(J)V

    return-void
.end method

.method public bridge synthetic setListingId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 9
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_SpecialOffer;->setListingId(J)V

    return-void
.end method

.method public bridge synthetic setMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SpecialOffer;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setNativeCurrency(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SpecialOffer;->setNativeCurrency(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setNights(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SpecialOffer;->setNights(I)V

    return-void
.end method

.method public bridge synthetic setNumberOfGuests(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SpecialOffer;->setNumberOfGuests(I)V

    return-void
.end method

.method public bridge synthetic setPreApproval(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SpecialOffer;->setPreApproval(Z)V

    return-void
.end method

.method public bridge synthetic setPrice(D)V
    .registers 3
    .param p1, "x0"    # D

    .prologue
    .line 9
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_SpecialOffer;->setPrice(D)V

    return-void
.end method

.method public bridge synthetic setPriceNative(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SpecialOffer;->setPriceNative(I)V

    return-void
.end method

.method public bridge synthetic setSpecialOffer(Lcom/airbnb/android/models/SpecialOffer;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/SpecialOffer;

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SpecialOffer;->setSpecialOffer(Lcom/airbnb/android/models/SpecialOffer;)V

    return-void
.end method

.method public setStartDate(Ljava/lang/String;)V
    .registers 3
    .param p1, "startDate"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "start_date"
    .end annotation

    .prologue
    .line 13
    invoke-static {p1}, Lcom/airbnb/android/utils/DateHelper;->getDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/SpecialOffer;->mStartDate:Ljava/util/Date;

    .line 14
    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 9
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_SpecialOffer;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
