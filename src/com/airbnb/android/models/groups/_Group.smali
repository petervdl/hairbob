.class abstract Lcom/airbnb/android/models/groups/_Group;
.super Ljava/lang/Object;
.source "_Group.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mCreatedAt:Ljava/util/Date;

.field protected mDescription:Ljava/lang/String;

.field protected mHasFollows:Z

.field protected mHeroImage:Lcom/airbnb/android/models/groups/HeroImage;

.field protected mId:I

.field protected mIsMember:Z

.field protected mIsPending:Z

.field protected mIsVerified:Z

.field protected mMemberCount:I

.field protected mMembersCount:I

.field protected mMemberships:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Membership;",
            ">;"
        }
    .end annotation
.end field

.field protected mName:Ljava/lang/String;

.field protected mNeedsDisclaimer:Z

.field protected mNotificationCount:I

.field protected mOrganizerMemberships:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Membership;",
            ">;"
        }
    .end annotation
.end field

.field protected mPurpose:Ljava/lang/String;

.field protected mSectionId:I

.field protected mWelcomeMessage:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Lcom/airbnb/android/models/groups/HeroImage;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZIIIII)V
    .registers 20
    .param p1, "createdAt"    # Ljava/util/Date;
    .param p2, "heroImage"    # Lcom/airbnb/android/models/groups/HeroImage;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "purpose"    # Ljava/lang/String;
    .param p8, "welcomeMessage"    # Ljava/lang/String;
    .param p9, "isMember"    # Z
    .param p10, "isPending"    # Z
    .param p11, "isVerified"    # Z
    .param p12, "needsDisclaimer"    # Z
    .param p13, "hasFollows"    # Z
    .param p14, "id"    # I
    .param p15, "memberCount"    # I
    .param p16, "membersCount"    # I
    .param p17, "notificationCount"    # I
    .param p18, "sectionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Lcom/airbnb/android/models/groups/HeroImage;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Membership;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Membership;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZIIIII)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p3, "memberships":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Membership;>;"
    .local p4, "organizerMemberships":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Membership;>;"
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_Group;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_Group;->mCreatedAt:Ljava/util/Date;

    .line 37
    iput-object p2, p0, Lcom/airbnb/android/models/groups/_Group;->mHeroImage:Lcom/airbnb/android/models/groups/HeroImage;

    .line 38
    iput-object p3, p0, Lcom/airbnb/android/models/groups/_Group;->mMemberships:Ljava/util/List;

    .line 39
    iput-object p4, p0, Lcom/airbnb/android/models/groups/_Group;->mOrganizerMemberships:Ljava/util/List;

    .line 40
    iput-object p5, p0, Lcom/airbnb/android/models/groups/_Group;->mName:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lcom/airbnb/android/models/groups/_Group;->mDescription:Ljava/lang/String;

    .line 42
    iput-object p7, p0, Lcom/airbnb/android/models/groups/_Group;->mPurpose:Ljava/lang/String;

    .line 43
    iput-object p8, p0, Lcom/airbnb/android/models/groups/_Group;->mWelcomeMessage:Ljava/lang/String;

    .line 44
    iput-boolean p9, p0, Lcom/airbnb/android/models/groups/_Group;->mIsMember:Z

    .line 45
    iput-boolean p10, p0, Lcom/airbnb/android/models/groups/_Group;->mIsPending:Z

    .line 46
    iput-boolean p11, p0, Lcom/airbnb/android/models/groups/_Group;->mIsVerified:Z

    .line 47
    iput-boolean p12, p0, Lcom/airbnb/android/models/groups/_Group;->mNeedsDisclaimer:Z

    .line 48
    iput-boolean p13, p0, Lcom/airbnb/android/models/groups/_Group;->mHasFollows:Z

    .line 49
    iput p14, p0, Lcom/airbnb/android/models/groups/_Group;->mId:I

    .line 50
    move/from16 v0, p15

    iput v0, p0, Lcom/airbnb/android/models/groups/_Group;->mMemberCount:I

    .line 51
    move/from16 v0, p16

    iput v0, p0, Lcom/airbnb/android/models/groups/_Group;->mMembersCount:I

    .line 52
    move/from16 v0, p17

    iput v0, p0, Lcom/airbnb/android/models/groups/_Group;->mNotificationCount:I

    .line 53
    move/from16 v0, p18

    iput v0, p0, Lcom/airbnb/android/models/groups/_Group;->mSectionId:I

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Group;->mCreatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Group;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getHeroImage()Lcom/airbnb/android/models/groups/HeroImage;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Group;->mHeroImage:Lcom/airbnb/android/models/groups/HeroImage;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 192
    iget v0, p0, Lcom/airbnb/android/models/groups/_Group;->mId:I

    return v0
.end method

.method public getMemberCount()I
    .registers 2

    .prologue
    .line 203
    iget v0, p0, Lcom/airbnb/android/models/groups/_Group;->mMemberCount:I

    return v0
.end method

.method public getMembersCount()I
    .registers 2

    .prologue
    .line 214
    iget v0, p0, Lcom/airbnb/android/models/groups/_Group;->mMembersCount:I

    return v0
.end method

.method public getMemberships()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Membership;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Group;->mMemberships:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Group;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationCount()I
    .registers 2

    .prologue
    .line 225
    iget v0, p0, Lcom/airbnb/android/models/groups/_Group;->mNotificationCount:I

    return v0
.end method

.method public getOrganizerMemberships()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Membership;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Group;->mOrganizerMemberships:Ljava/util/List;

    return-object v0
.end method

.method public getPurpose()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Group;->mPurpose:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionId()I
    .registers 2

    .prologue
    .line 236
    iget v0, p0, Lcom/airbnb/android/models/groups/_Group;->mSectionId:I

    return v0
.end method

.method public getWelcomeMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Group;->mWelcomeMessage:Ljava/lang/String;

    return-object v0
.end method

.method public hasFollows()Z
    .registers 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/airbnb/android/models/groups/_Group;->mHasFollows:Z

    return v0
.end method

.method public isMember()Z
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/airbnb/android/models/groups/_Group;->mIsMember:Z

    return v0
.end method

.method public isNeedsDisclaimer()Z
    .registers 2

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/airbnb/android/models/groups/_Group;->mNeedsDisclaimer:Z

    return v0
.end method

.method public isPending()Z
    .registers 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/airbnb/android/models/groups/_Group;->mIsPending:Z

    return v0
.end method

.method public isVerified()Z
    .registers 2

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/airbnb/android/models/groups/_Group;->mIsVerified:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 269
    .local v1, "date0":J
    const-wide/32 v3, -0x80000000

    cmp-long v3, v1, v3

    if-eqz v3, :cond_12

    .line 270
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v3, p0, Lcom/airbnb/android/models/groups/_Group;->mCreatedAt:Ljava/util/Date;

    .line 272
    :cond_12
    const-class v3, Lcom/airbnb/android/models/groups/HeroImage;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/groups/HeroImage;

    iput-object v3, p0, Lcom/airbnb/android/models/groups/_Group;->mHeroImage:Lcom/airbnb/android/models/groups/HeroImage;

    .line 273
    sget-object v3, Lcom/airbnb/android/models/groups/Membership;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/groups/_Group;->mMemberships:Ljava/util/List;

    .line 274
    sget-object v3, Lcom/airbnb/android/models/groups/Membership;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/groups/_Group;->mOrganizerMemberships:Ljava/util/List;

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/groups/_Group;->mName:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/groups/_Group;->mDescription:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/groups/_Group;->mPurpose:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/groups/_Group;->mWelcomeMessage:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 280
    .local v0, "bools":[Z
    const/4 v3, 0x0

    aget-boolean v3, v0, v3

    iput-boolean v3, p0, Lcom/airbnb/android/models/groups/_Group;->mIsMember:Z

    .line 281
    const/4 v3, 0x1

    aget-boolean v3, v0, v3

    iput-boolean v3, p0, Lcom/airbnb/android/models/groups/_Group;->mIsPending:Z

    .line 282
    const/4 v3, 0x2

    aget-boolean v3, v0, v3

    iput-boolean v3, p0, Lcom/airbnb/android/models/groups/_Group;->mIsVerified:Z

    .line 283
    const/4 v3, 0x3

    aget-boolean v3, v0, v3

    iput-boolean v3, p0, Lcom/airbnb/android/models/groups/_Group;->mNeedsDisclaimer:Z

    .line 284
    const/4 v3, 0x4

    aget-boolean v3, v0, v3

    iput-boolean v3, p0, Lcom/airbnb/android/models/groups/_Group;->mHasFollows:Z

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/models/groups/_Group;->mId:I

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/models/groups/_Group;->mMemberCount:I

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/models/groups/_Group;->mMembersCount:I

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/models/groups/_Group;->mNotificationCount:I

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/models/groups/_Group;->mSectionId:I

    .line 290
    return-void
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "value"    # Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_at"
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_Group;->mCreatedAt:Ljava/util/Date;

    .line 68
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "description"
    .end annotation

    .prologue
    .line 110
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_Group;->mDescription:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setHasFollows(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "has_follows"
    .end annotation

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/airbnb/android/models/groups/_Group;->mHasFollows:Z

    .line 188
    return-void
.end method

.method public setHeroImage(Lcom/airbnb/android/models/groups/HeroImage;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/groups/HeroImage;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "hero_image"
    .end annotation

    .prologue
    .line 78
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_Group;->mHeroImage:Lcom/airbnb/android/models/groups/HeroImage;

    .line 79
    return-void
.end method

.method public setId(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 198
    iput p1, p0, Lcom/airbnb/android/models/groups/_Group;->mId:I

    .line 199
    return-void
.end method

.method public setIsMember(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_member"
    .end annotation

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/airbnb/android/models/groups/_Group;->mIsMember:Z

    .line 144
    return-void
.end method

.method public setIsPending(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_pending"
    .end annotation

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/airbnb/android/models/groups/_Group;->mIsPending:Z

    .line 155
    return-void
.end method

.method public setIsVerified(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_verified"
    .end annotation

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/airbnb/android/models/groups/_Group;->mIsVerified:Z

    .line 166
    return-void
.end method

.method public setMemberCount(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "active_member_count"
    .end annotation

    .prologue
    .line 209
    iput p1, p0, Lcom/airbnb/android/models/groups/_Group;->mMemberCount:I

    .line 210
    return-void
.end method

.method public setMembersCount(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "members_count"
    .end annotation

    .prologue
    .line 220
    iput p1, p0, Lcom/airbnb/android/models/groups/_Group;->mMembersCount:I

    .line 221
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation

    .prologue
    .line 99
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_Group;->mName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setNeedsDisclaimer(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "needs_disclaimer"
    .end annotation

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/airbnb/android/models/groups/_Group;->mNeedsDisclaimer:Z

    .line 177
    return-void
.end method

.method public setNotificationCount(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "notification_count"
    .end annotation

    .prologue
    .line 231
    iput p1, p0, Lcom/airbnb/android/models/groups/_Group;->mNotificationCount:I

    .line 232
    return-void
.end method

.method public setPurpose(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "purpose"
    .end annotation

    .prologue
    .line 121
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_Group;->mPurpose:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setSectionId(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "section_id"
    .end annotation

    .prologue
    .line 242
    iput p1, p0, Lcom/airbnb/android/models/groups/_Group;->mSectionId:I

    .line 243
    return-void
.end method

.method public setWelcomeMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "welcome_message"
    .end annotation

    .prologue
    .line 132
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_Group;->mWelcomeMessage:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 251
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Group;->mCreatedAt:Ljava/util/Date;

    if-nez v0, :cond_66

    const-wide/32 v0, -0x80000000

    :goto_8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 252
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Group;->mHeroImage:Lcom/airbnb/android/models/groups/HeroImage;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 253
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Group;->mMemberships:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 254
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Group;->mOrganizerMemberships:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 255
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Group;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Group;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Group;->mPurpose:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Group;->mWelcomeMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/airbnb/android/models/groups/_Group;->mIsMember:Z

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/airbnb/android/models/groups/_Group;->mIsPending:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/airbnb/android/models/groups/_Group;->mIsVerified:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/airbnb/android/models/groups/_Group;->mNeedsDisclaimer:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/airbnb/android/models/groups/_Group;->mHasFollows:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 260
    iget v0, p0, Lcom/airbnb/android/models/groups/_Group;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget v0, p0, Lcom/airbnb/android/models/groups/_Group;->mMemberCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget v0, p0, Lcom/airbnb/android/models/groups/_Group;->mMembersCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget v0, p0, Lcom/airbnb/android/models/groups/_Group;->mNotificationCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget v0, p0, Lcom/airbnb/android/models/groups/_Group;->mSectionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    return-void

    .line 251
    :cond_66
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Group;->mCreatedAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_8
.end method
