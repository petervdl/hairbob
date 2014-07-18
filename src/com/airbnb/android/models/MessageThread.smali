.class public Lcom/airbnb/android/models/MessageThread;
.super Lcom/airbnb/android/models/_MessageThread;
.source "MessageThread.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/TravelInboxItem;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/MessageThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 162
    new-instance v0, Lcom/airbnb/android/models/MessageThread$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/MessageThread$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/MessageThread;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/airbnb/android/models/_MessageThread;-><init>()V

    return-void
.end method


# virtual methods
.method public addNewPost(Lcom/airbnb/android/models/Post;)V
    .registers 4
    .param p1, "newPost"    # Lcom/airbnb/android/models/Post;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/airbnb/android/models/MessageThread;->mPosts:Ljava/util/List;

    if-nez v0, :cond_b

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/models/MessageThread;->mPosts:Ljava/util/List;

    .line 67
    :cond_b
    iget-object v0, p0, Lcom/airbnb/android/models/MessageThread;->mPosts:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 68
    return-void
.end method

.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_MessageThread;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 187
    if-ne p0, p1, :cond_5

    .line 200
    :cond_4
    :goto_4
    return v1

    .line 190
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 191
    goto :goto_4

    .line 193
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 194
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 196
    check-cast v0, Lcom/airbnb/android/models/MessageThread;

    .line 197
    .local v0, "other":Lcom/airbnb/android/models/MessageThread;
    iget-wide v3, p0, Lcom/airbnb/android/models/MessageThread;->mId:J

    iget-wide v5, v0, Lcom/airbnb/android/models/MessageThread;->mId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 198
    goto :goto_4
.end method

.method public bridge synthetic getCountdownAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_MessageThread;->getCountdownAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getExpiresAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_MessageThread;->getExpiresAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()J
    .registers 3

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_MessageThread;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getInquiryCheckinDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_MessageThread;->getInquiryCheckinDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInquiryCheckoutDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_MessageThread;->getInquiryCheckoutDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInquiryNumGuests()I
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_MessageThread;->getInquiryNumGuests()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getInquiryPriceNative()I
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_MessageThread;->getInquiryPriceNative()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getListing()Lcom/airbnb/android/models/Listing;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_MessageThread;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMessageThreadStatus()Lcom/airbnb/android/models/ReservationStatus;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_MessageThread;->getMessageThreadStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOtherUser()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_MessageThread;->getOtherUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPosts()Ljava/util/List;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_MessageThread;->getPosts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPreview()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_MessageThread;->getPreview()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedCheckinDate()Ljava/util/Date;
    .registers 6

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/airbnb/android/models/MessageThread;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v2

    .line 99
    .local v2, "reservation":Lcom/airbnb/android/models/Reservation;
    if-eqz v2, :cond_13

    .line 100
    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->isPending()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 101
    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getStartDate()Ljava/util/Date;

    move-result-object v3

    .line 102
    .local v3, "start":Ljava/util/Date;
    if-eqz v3, :cond_13

    .line 114
    .end local v3    # "start":Ljava/util/Date;
    :goto_12
    return-object v3

    .line 109
    :cond_13
    invoke-virtual {p0}, Lcom/airbnb/android/models/MessageThread;->getPosts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Post;

    .line 110
    .local v1, "post":Lcom/airbnb/android/models/Post;
    invoke-virtual {v1}, Lcom/airbnb/android/models/Post;->hasDates()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 111
    invoke-virtual {v1}, Lcom/airbnb/android/models/Post;->getCheckinDate()Ljava/util/Date;

    move-result-object v3

    goto :goto_12

    .line 114
    .end local v1    # "post":Lcom/airbnb/android/models/Post;
    :cond_32
    const/4 v3, 0x0

    goto :goto_12
.end method

.method public getRequestedCheckoutDate()Ljava/util/Date;
    .registers 6

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/airbnb/android/models/MessageThread;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v2

    .line 120
    .local v2, "reservation":Lcom/airbnb/android/models/Reservation;
    if-eqz v2, :cond_13

    .line 121
    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->isPending()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 122
    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getEndDate()Ljava/util/Date;

    move-result-object v3

    .line 123
    .local v3, "start":Ljava/util/Date;
    if-eqz v3, :cond_13

    .line 134
    .end local v3    # "start":Ljava/util/Date;
    :goto_12
    return-object v3

    .line 129
    :cond_13
    invoke-virtual {p0}, Lcom/airbnb/android/models/MessageThread;->getPosts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Post;

    .line 130
    .local v1, "post":Lcom/airbnb/android/models/Post;
    invoke-virtual {v1}, Lcom/airbnb/android/models/Post;->hasDates()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 131
    invoke-virtual {v1}, Lcom/airbnb/android/models/Post;->getCheckoutDate()Ljava/util/Date;

    move-result-object v3

    goto :goto_12

    .line 134
    .end local v1    # "post":Lcom/airbnb/android/models/Post;
    :cond_32
    const/4 v3, 0x0

    goto :goto_12
.end method

.method public bridge synthetic getReservation()Lcom/airbnb/android/models/Reservation;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_MessageThread;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v0

    return-object v0
.end method

.method public getSpecialOffer()Lcom/airbnb/android/models/SpecialOffer;
    .registers 4

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/airbnb/android/models/MessageThread;->getPosts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Post;

    .line 89
    .local v1, "post":Lcom/airbnb/android/models/Post;
    invoke-virtual {v1}, Lcom/airbnb/android/models/Post;->hasSpecialOffer()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 90
    invoke-virtual {v1}, Lcom/airbnb/android/models/Post;->getSpecialOffer()Lcom/airbnb/android/models/SpecialOffer;

    move-result-object v2

    .line 93
    .end local v1    # "post":Lcom/airbnb/android/models/Post;
    :goto_1e
    return-object v2

    :cond_1f
    const/4 v2, 0x0

    goto :goto_1e
.end method

.method public bridge synthetic getStatusString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_MessageThread;->getStatusString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTravelInboxImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/airbnb/android/models/MessageThread;->mOtherUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getPictureUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTravelInboxStatusStringId()I
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/airbnb/android/models/MessageThread;->mMessageThreadStatus:Lcom/airbnb/android/models/ReservationStatus;

    invoke-virtual {v0}, Lcom/airbnb/android/models/ReservationStatus;->getDisplayStringId()I

    move-result v0

    return v0
.end method

.method public getTravelInboxStatusTextColor()I
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/airbnb/android/models/MessageThread;->mMessageThreadStatus:Lcom/airbnb/android/models/ReservationStatus;

    invoke-virtual {v0}, Lcom/airbnb/android/models/ReservationStatus;->getColorId()I

    move-result v0

    return v0
.end method

.method public getTravelInboxSubtitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/airbnb/android/models/MessageThread;->getPreview()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTravelInboxTime()Ljava/util/Date;
    .registers 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/airbnb/android/models/MessageThread;->getUpdatedAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTravelInboxTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/airbnb/android/models/MessageThread;->mOtherUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/airbnb/android/interfaces/TravelInboxItem$Type;
    .registers 2

    .prologue
    .line 240
    sget-object v0, Lcom/airbnb/android/interfaces/TravelInboxItem$Type;->MessageThread:Lcom/airbnb/android/interfaces/TravelInboxItem$Type;

    return-object v0
.end method

.method public bridge synthetic getUpdatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_MessageThread;->getUpdatedAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/airbnb/android/models/MessageThread;->mOtherUser:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method public hasAcceptedReservation()Z
    .registers 3

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/airbnb/android/models/MessageThread;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v0

    .line 144
    .local v0, "reservation":Lcom/airbnb/android/models/Reservation;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->isAccepted()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public hasCancelledReservation()Z
    .registers 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/airbnb/android/models/MessageThread;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v0

    .line 149
    .local v0, "reservation":Lcom/airbnb/android/models/Reservation;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public hasDeniedReservation()Z
    .registers 3

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/airbnb/android/models/MessageThread;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v0

    .line 154
    .local v0, "reservation":Lcom/airbnb/android/models/Reservation;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->isDenied()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public hasListingInquiry()Z
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/android/models/MessageThread;->mListing:Lcom/airbnb/android/models/Listing;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasPendingReservation()Z
    .registers 3

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/airbnb/android/models/MessageThread;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v0

    .line 159
    .local v0, "reservation":Lcom/airbnb/android/models/Reservation;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->isPending()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public hasReservation()Z
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/airbnb/android/models/MessageThread;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasReservationInquiry()Z
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/airbnb/android/models/MessageThread;->mReservation:Lcom/airbnb/android/models/Reservation;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasSpecialOffer()Z
    .registers 4

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/airbnb/android/models/MessageThread;->getPosts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Post;

    .line 80
    .local v1, "post":Lcom/airbnb/android/models/Post;
    invoke-virtual {v1}, Lcom/airbnb/android/models/Post;->hasSpecialOffer()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 81
    const/4 v2, 0x1

    .line 84
    .end local v1    # "post":Lcom/airbnb/android/models/Post;
    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public hasUnacceptedReservation()Z
    .registers 3

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/airbnb/android/models/MessageThread;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v0

    .line 139
    .local v0, "reservation":Lcom/airbnb/android/models/Reservation;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->isAccepted()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 8

    .prologue
    .line 179
    const/16 v0, 0x1f

    .line 180
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 181
    .local v1, "result":I
    iget-wide v2, p0, Lcom/airbnb/android/models/MessageThread;->mId:J

    iget-wide v4, p0, Lcom/airbnb/android/models/MessageThread;->mId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 182
    return v1
.end method

.method public bridge synthetic isResponded()Z
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_MessageThread;->isResponded()Z

    move-result v0

    return v0
.end method

.method public isTravelInboxUnread()Z
    .registers 2

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/airbnb/android/models/MessageThread;->mUnread:Z

    return v0
.end method

.method public bridge synthetic isUnread()Z
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_MessageThread;->isUnread()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_MessageThread;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setCountdownAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Date;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_MessageThread;->setCountdownAt(Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic setExpiresAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Date;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_MessageThread;->setExpiresAt(Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic setId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_MessageThread;->setId(J)V

    return-void
.end method

.method public setInquiryCheckinDate(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "inquiry_checkin_date"
    .end annotation

    .prologue
    .line 21
    invoke-static {p1}, Lcom/airbnb/android/utils/DateHelper;->getDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/MessageThread;->mInquiryCheckinDate:Ljava/util/Date;

    .line 22
    return-void
.end method

.method public setInquiryCheckoutDate(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "inquiry_checkout_date"
    .end annotation

    .prologue
    .line 26
    invoke-static {p1}, Lcom/airbnb/android/utils/DateHelper;->getDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/MessageThread;->mInquiryCheckoutDate:Ljava/util/Date;

    .line 27
    return-void
.end method

.method public bridge synthetic setInquiryNumGuests(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_MessageThread;->setInquiryNumGuests(I)V

    return-void
.end method

.method public bridge synthetic setInquiryPriceNative(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_MessageThread;->setInquiryPriceNative(I)V

    return-void
.end method

.method public setListing(Lcom/airbnb/android/requests/Wrappers$ListingWrapper;)V
    .registers 3
    .param p1, "listingWrapper"    # Lcom/airbnb/android/requests/Wrappers$ListingWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "inquiry_listing"
    .end annotation

    .prologue
    .line 31
    iget-object v0, p1, Lcom/airbnb/android/requests/Wrappers$ListingWrapper;->listing:Lcom/airbnb/android/models/Listing;

    iput-object v0, p0, Lcom/airbnb/android/models/MessageThread;->mListing:Lcom/airbnb/android/models/Listing;

    .line 32
    return-void
.end method

.method public bridge synthetic setMessageThreadStatus(Lcom/airbnb/android/models/ReservationStatus;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/ReservationStatus;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_MessageThread;->setMessageThreadStatus(Lcom/airbnb/android/models/ReservationStatus;)V

    return-void
.end method

.method public setOtherUser(Lcom/airbnb/android/requests/Wrappers$UserWrapper;)V
    .registers 3
    .param p1, "userWrapper"    # Lcom/airbnb/android/requests/Wrappers$UserWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "other_user"
    .end annotation

    .prologue
    .line 50
    iget-object v0, p1, Lcom/airbnb/android/requests/Wrappers$UserWrapper;->user:Lcom/airbnb/android/models/User;

    iput-object v0, p0, Lcom/airbnb/android/models/MessageThread;->mOtherUser:Lcom/airbnb/android/models/User;

    .line 51
    return-void
.end method

.method public setPosts(Ljava/util/ArrayList;)V
    .registers 6
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "posts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/requests/Wrappers$PostWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "postsWrapper":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/requests/Wrappers$PostWrapper;>;"
    if-eqz p1, :cond_21

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/models/MessageThread;->mPosts:Ljava/util/List;

    .line 57
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/requests/Wrappers$PostWrapper;

    .line 58
    .local v1, "wrapper":Lcom/airbnb/android/requests/Wrappers$PostWrapper;
    iget-object v2, p0, Lcom/airbnb/android/models/MessageThread;->mPosts:Ljava/util/List;

    iget-object v3, v1, Lcom/airbnb/android/requests/Wrappers$PostWrapper;->post:Lcom/airbnb/android/models/Post;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 61
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "wrapper":Lcom/airbnb/android/requests/Wrappers$PostWrapper;
    :cond_21
    return-void
.end method

.method public bridge synthetic setPreview(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_MessageThread;->setPreview(Ljava/lang/String;)V

    return-void
.end method

.method public setReservation(Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;)V
    .registers 3
    .param p1, "reservationWrapper"    # Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "inquiry_reservation"
    .end annotation

    .prologue
    .line 36
    iget-object v0, p1, Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;->reservation:Lcom/airbnb/android/models/Reservation;

    iput-object v0, p0, Lcom/airbnb/android/models/MessageThread;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 37
    return-void
.end method

.method public bridge synthetic setResponded(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_MessageThread;->setResponded(Z)V

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 3
    .param p1, "statusText"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation

    .prologue
    .line 41
    invoke-static {p1}, Lcom/airbnb/android/models/ReservationStatus;->findStatus(Ljava/lang/String;)Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/MessageThread;->mMessageThreadStatus:Lcom/airbnb/android/models/ReservationStatus;

    .line 42
    return-void
.end method

.method public bridge synthetic setStatusString(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_MessageThread;->setStatusString(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setUnread(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_MessageThread;->setUnread(Z)V

    return-void
.end method

.method public bridge synthetic setUpdatedAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Date;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_MessageThread;->setUpdatedAt(Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_MessageThread;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
