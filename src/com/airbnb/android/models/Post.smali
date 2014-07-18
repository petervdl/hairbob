.class public Lcom/airbnb/android/models/Post;
.super Lcom/airbnb/android/models/_Post;
.source "Post.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/Post;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsBeingSent:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    new-instance v0, Lcom/airbnb/android/models/Post$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/Post$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/Post;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/airbnb/android/models/_Post;-><init>()V

    return-void
.end method

.method public static createTransientPost(Ljava/lang/String;JZ)Lcom/airbnb/android/models/Post;
    .registers 7
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "userId"    # J
    .param p3, "isBeingSent"    # Z

    .prologue
    .line 75
    new-instance v0, Lcom/airbnb/android/models/Post;

    invoke-direct {v0}, Lcom/airbnb/android/models/Post;-><init>()V

    .line 76
    .local v0, "post":Lcom/airbnb/android/models/Post;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/Post;->setCreatedAt(Ljava/util/Date;)V

    .line 77
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/android/models/Post;->setUserId(J)V

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/models/Post;->setId(J)V

    .line 79
    invoke-virtual {v0, p0}, Lcom/airbnb/android/models/Post;->setMessage(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, p3}, Lcom/airbnb/android/models/Post;->setIsBeingSent(Z)V

    .line 81
    return-object v0
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/airbnb/android/models/_Post;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 109
    if-ne p0, p1, :cond_5

    .line 122
    :cond_4
    :goto_4
    return v1

    .line 112
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 113
    goto :goto_4

    .line 115
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 116
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 118
    check-cast v0, Lcom/airbnb/android/models/Post;

    .line 119
    .local v0, "other":Lcom/airbnb/android/models/Post;
    iget-wide v3, p0, Lcom/airbnb/android/models/Post;->mId:J

    iget-wide v5, v0, Lcom/airbnb/android/models/Post;->mId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 120
    goto :goto_4
.end method

.method public bridge synthetic getCheckinDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/airbnb/android/models/_Post;->getCheckinDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCheckoutDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/airbnb/android/models/_Post;->getCheckoutDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/airbnb/android/models/_Post;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()J
    .registers 3

    .prologue
    .line 13
    invoke-super {p0}, Lcom/airbnb/android/models/_Post;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/airbnb/android/models/_Post;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "defaultMessage"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/airbnb/android/models/Post;->mMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .end local p1    # "defaultMessage":Ljava/lang/String;
    :goto_8
    return-object p1

    .restart local p1    # "defaultMessage":Ljava/lang/String;
    :cond_9
    iget-object p1, p0, Lcom/airbnb/android/models/Post;->mMessage:Ljava/lang/String;

    goto :goto_8
.end method

.method public bridge synthetic getNumberOfGuests()I
    .registers 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/airbnb/android/models/_Post;->getNumberOfGuests()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSpecialOffer()Lcom/airbnb/android/models/SpecialOffer;
    .registers 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/airbnb/android/models/_Post;->getSpecialOffer()Lcom/airbnb/android/models/SpecialOffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStatus()Lcom/airbnb/android/models/ReservationStatus;
    .registers 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/airbnb/android/models/_Post;->getStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserId()J
    .registers 3

    .prologue
    .line 13
    invoke-super {p0}, Lcom/airbnb/android/models/_Post;->getUserId()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasDates()Z
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/airbnb/android/models/Post;->mCheckinDate:Ljava/util/Date;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/airbnb/android/models/Post;->mCheckoutDate:Ljava/util/Date;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasSpecialOffer()Z
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/models/Post;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasValidStatus()Z
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/airbnb/android/models/Post;->mStatus:Lcom/airbnb/android/models/ReservationStatus;

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/airbnb/android/models/Post;->hasSpecialOffer()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/airbnb/android/models/Post;->hasDates()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hashCode()I
    .registers 8

    .prologue
    .line 101
    const/16 v0, 0x1f

    .line 102
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 103
    .local v1, "result":I
    iget-wide v2, p0, Lcom/airbnb/android/models/Post;->mId:J

    iget-wide v4, p0, Lcom/airbnb/android/models/Post;->mId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 104
    return v1
.end method

.method public isBeingSent()Z
    .registers 2

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/airbnb/android/models/Post;->mIsBeingSent:Z

    return v0
.end method

.method public bridge synthetic isSentFromMobile()Z
    .registers 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/airbnb/android/models/_Post;->isSentFromMobile()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Post;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public setCheckinDate(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "checkin_date"
    .end annotation

    .prologue
    .line 19
    invoke-static {p1}, Lcom/airbnb/android/utils/DateHelper;->getDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/Post;->mCheckinDate:Ljava/util/Date;

    .line 20
    return-void
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/airbnb/android/models/Post;->mCreatedAt:Ljava/util/Date;

    .line 43
    return-void
.end method

.method public bridge synthetic setId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_Post;->setId(J)V

    return-void
.end method

.method public setIsBeingSent(Z)V
    .registers 2
    .param p1, "isBeingSent"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/airbnb/android/models/Post;->mIsBeingSent:Z

    .line 66
    return-void
.end method

.method public bridge synthetic setMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Post;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setNumberOfGuests(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Post;->setNumberOfGuests(I)V

    return-void
.end method

.method public bridge synthetic setSentFromMobile(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Post;->setSentFromMobile(Z)V

    return-void
.end method

.method public setSpecialOffer(Lcom/airbnb/android/requests/Wrappers$SpecialOfferWrapper;)V
    .registers 3
    .param p1, "specialOfferWrapper"    # Lcom/airbnb/android/requests/Wrappers$SpecialOfferWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "special_offer"
    .end annotation

    .prologue
    .line 29
    iget-object v0, p1, Lcom/airbnb/android/requests/Wrappers$SpecialOfferWrapper;->specialOffer:Lcom/airbnb/android/models/SpecialOffer;

    iput-object v0, p0, Lcom/airbnb/android/models/Post;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

    .line 30
    return-void
.end method

.method public setStartDate(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "checkout_date"
    .end annotation

    .prologue
    .line 24
    invoke-static {p1}, Lcom/airbnb/android/utils/DateHelper;->getDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/Post;->mCheckoutDate:Ljava/util/Date;

    .line 25
    return-void
.end method

.method public bridge synthetic setStatus(Lcom/airbnb/android/models/ReservationStatus;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/ReservationStatus;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Post;->setStatus(Lcom/airbnb/android/models/ReservationStatus;)V

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 3
    .param p1, "statusText"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation

    .prologue
    .line 34
    invoke-static {p1}, Lcom/airbnb/android/models/ReservationStatus;->findStatus(Ljava/lang/String;)Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/Post;->mStatus:Lcom/airbnb/android/models/ReservationStatus;

    .line 35
    return-void
.end method

.method public bridge synthetic setUserId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_Post;->setUserId(J)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_Post;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
