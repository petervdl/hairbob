.class public Lcom/airbnb/android/models/groups/Group;
.super Lcom/airbnb/android/models/groups/_Group;
.source "Group.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/models/groups/Group$MembershipWrapper;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 104
    new-instance v0, Lcom/airbnb/android/models/groups/Group$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/groups/Group$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/groups/Group;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_Group;-><init>()V

    .line 19
    return-void
.end method

.method private constructor <init>(Lcom/airbnb/android/models/groups/Group;)V
    .registers 3
    .param p1, "other"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_Group;-><init>()V

    .line 22
    iget v0, p1, Lcom/airbnb/android/models/groups/Group;->mId:I

    iput v0, p0, Lcom/airbnb/android/models/groups/Group;->mId:I

    .line 23
    iget v0, p1, Lcom/airbnb/android/models/groups/Group;->mMemberCount:I

    iput v0, p0, Lcom/airbnb/android/models/groups/Group;->mMemberCount:I

    .line 24
    iget-object v0, p1, Lcom/airbnb/android/models/groups/Group;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/android/models/groups/Group;->mName:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Lcom/airbnb/android/models/groups/Group;->mDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/android/models/groups/Group;->mDescription:Ljava/lang/String;

    .line 26
    iget-object v0, p1, Lcom/airbnb/android/models/groups/Group;->mPurpose:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/android/models/groups/Group;->mPurpose:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/airbnb/android/models/groups/Group;->mHeroImage:Lcom/airbnb/android/models/groups/HeroImage;

    iput-object v0, p0, Lcom/airbnb/android/models/groups/Group;->mHeroImage:Lcom/airbnb/android/models/groups/HeroImage;

    .line 28
    iget v0, p1, Lcom/airbnb/android/models/groups/Group;->mMembersCount:I

    iput v0, p0, Lcom/airbnb/android/models/groups/Group;->mMembersCount:I

    .line 29
    iget v0, p1, Lcom/airbnb/android/models/groups/Group;->mNotificationCount:I

    iput v0, p0, Lcom/airbnb/android/models/groups/Group;->mNotificationCount:I

    .line 30
    iget-boolean v0, p1, Lcom/airbnb/android/models/groups/Group;->mIsMember:Z

    iput-boolean v0, p0, Lcom/airbnb/android/models/groups/Group;->mIsMember:Z

    .line 31
    iget-boolean v0, p1, Lcom/airbnb/android/models/groups/Group;->mIsPending:Z

    iput-boolean v0, p0, Lcom/airbnb/android/models/groups/Group;->mIsPending:Z

    .line 32
    iget-boolean v0, p1, Lcom/airbnb/android/models/groups/Group;->mNeedsDisclaimer:Z

    iput-boolean v0, p0, Lcom/airbnb/android/models/groups/Group;->mNeedsDisclaimer:Z

    .line 33
    iget-object v0, p1, Lcom/airbnb/android/models/groups/Group;->mWelcomeMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/android/models/groups/Group;->mWelcomeMessage:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/airbnb/android/models/groups/Group;->mCreatedAt:Ljava/util/Date;

    iput-object v0, p0, Lcom/airbnb/android/models/groups/Group;->mCreatedAt:Ljava/util/Date;

    .line 35
    iget-object v0, p1, Lcom/airbnb/android/models/groups/Group;->mMemberships:Ljava/util/List;

    iput-object v0, p0, Lcom/airbnb/android/models/groups/Group;->mMemberships:Ljava/util/List;

    .line 36
    iget-object v0, p1, Lcom/airbnb/android/models/groups/Group;->mOrganizerMemberships:Ljava/util/List;

    iput-object v0, p0, Lcom/airbnb/android/models/groups/Group;->mOrganizerMemberships:Ljava/util/List;

    .line 37
    iget v0, p1, Lcom/airbnb/android/models/groups/Group;->mSectionId:I

    iput v0, p0, Lcom/airbnb/android/models/groups/Group;->mSectionId:I

    .line 38
    iget-boolean v0, p1, Lcom/airbnb/android/models/groups/Group;->mHasFollows:Z

    iput-boolean v0, p0, Lcom/airbnb/android/models/groups/Group;->mHasFollows:Z

    .line 39
    return-void
.end method

.method public static of(Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/models/groups/Group;
    .registers 2
    .param p0, "group"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 15
    new-instance v0, Lcom/airbnb/android/models/groups/Group;

    invoke-direct {v0, p0}, Lcom/airbnb/android/models/groups/Group;-><init>(Lcom/airbnb/android/models/groups/Group;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Group;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    if-ne p0, p1, :cond_5

    .line 142
    :cond_4
    :goto_4
    return v1

    .line 132
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 133
    goto :goto_4

    .line 135
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 136
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 138
    check-cast v0, Lcom/airbnb/android/models/groups/Group;

    .line 139
    .local v0, "other":Lcom/airbnb/android/models/groups/Group;
    iget v3, p0, Lcom/airbnb/android/models/groups/Group;->mId:I

    iget v4, v0, Lcom/airbnb/android/models/groups/Group;->mId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 140
    goto :goto_4
.end method

.method public getCardImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Group;->mHeroImage:Lcom/airbnb/android/models/groups/HeroImage;

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/HeroImage;->getCardAndroid()Lcom/airbnb/android/models/groups/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/Image;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Group;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Group;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHeroImage()Lcom/airbnb/android/models/groups/HeroImage;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Group;->getHeroImage()Lcom/airbnb/android/models/groups/HeroImage;

    move-result-object v0

    return-object v0
.end method

.method public getHeroImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Group;->mHeroImage:Lcom/airbnb/android/models/groups/HeroImage;

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/HeroImage;->getHero()Lcom/airbnb/android/models/groups/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/Image;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()I
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Group;->getId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMemberCount()I
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Group;->getMemberCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMembersCount()I
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Group;->getMembersCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMemberships()Ljava/util/List;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Group;->getMemberships()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Group;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNotificationCount()I
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Group;->getNotificationCount()I

    move-result v0

    return v0
.end method

.method public getOrganizer()Lcom/airbnb/android/models/User;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Group;->getOrganizerMemberships()Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, "organizers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Membership;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_13

    .line 98
    :cond_11
    const/4 v1, 0x0

    .line 100
    :goto_12
    return-object v1

    :cond_13
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/Membership;

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/Membership;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    goto :goto_12
.end method

.method public bridge synthetic getOrganizerMemberships()Ljava/util/List;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Group;->getOrganizerMemberships()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPurpose()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Group;->getPurpose()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSectionId()I
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Group;->getSectionId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWelcomeMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Group;->getWelcomeMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hasFollows()Z
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Group;->hasFollows()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 121
    const/16 v0, 0x1f

    .line 122
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 123
    .local v1, "result":I
    iget v2, p0, Lcom/airbnb/android/models/groups/Group;->mId:I

    add-int/lit8 v1, v2, 0x1f

    .line 124
    return v1
.end method

.method public bridge synthetic isMember()Z
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Group;->isMember()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isNeedsDisclaimer()Z
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Group;->isNeedsDisclaimer()Z

    move-result v0

    return v0
.end method

.method public isOrganizer(Lcom/airbnb/android/models/User;)Z
    .registers 9
    .param p1, "user"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Group;->getOrganizerMemberships()Ljava/util/List;

    move-result-object v2

    .line 86
    .local v2, "organizers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Membership;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/Membership;

    .line 87
    .local v1, "membership":Lcom/airbnb/android/models/groups/Membership;
    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/Membership;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    .line 88
    const/4 v3, 0x1

    .line 91
    .end local v1    # "membership":Lcom/airbnb/android/models/groups/Membership;
    :goto_25
    return v3

    :cond_26
    const/4 v3, 0x0

    goto :goto_25
.end method

.method public bridge synthetic isPending()Z
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Group;->isPending()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isVerified()Z
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Group;->isVerified()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Group;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setCreatedAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Date;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Group;->setCreatedAt(Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Group;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setHasFollows(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Group;->setHasFollows(Z)V

    return-void
.end method

.method public bridge synthetic setHeroImage(Lcom/airbnb/android/models/groups/HeroImage;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/groups/HeroImage;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Group;->setHeroImage(Lcom/airbnb/android/models/groups/HeroImage;)V

    return-void
.end method

.method public bridge synthetic setId(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Group;->setId(I)V

    return-void
.end method

.method public bridge synthetic setIsMember(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Group;->setIsMember(Z)V

    return-void
.end method

.method public bridge synthetic setIsPending(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Group;->setIsPending(Z)V

    return-void
.end method

.method public bridge synthetic setIsVerified(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Group;->setIsVerified(Z)V

    return-void
.end method

.method public bridge synthetic setMemberCount(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Group;->setMemberCount(I)V

    return-void
.end method

.method public bridge synthetic setMembersCount(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Group;->setMembersCount(I)V

    return-void
.end method

.method public setMemberships(Ljava/util/List;)V
    .registers 6
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "members"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Group$MembershipWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "membershipWrappers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Group$MembershipWrapper;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/models/groups/Group;->mMemberships:Ljava/util/List;

    .line 50
    if-eqz p1, :cond_27

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/Group$MembershipWrapper;

    .line 52
    .local v1, "wrapper":Lcom/airbnb/android/models/groups/Group$MembershipWrapper;
    if-eqz v1, :cond_d

    iget-object v2, v1, Lcom/airbnb/android/models/groups/Group$MembershipWrapper;->membership:Lcom/airbnb/android/models/groups/Membership;

    if-eqz v2, :cond_d

    .line 53
    iget-object v2, p0, Lcom/airbnb/android/models/groups/Group;->mMemberships:Ljava/util/List;

    iget-object v3, v1, Lcom/airbnb/android/models/groups/Group$MembershipWrapper;->membership:Lcom/airbnb/android/models/groups/Membership;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 57
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "wrapper":Lcom/airbnb/android/models/groups/Group$MembershipWrapper;
    :cond_27
    return-void
.end method

.method public bridge synthetic setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Group;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setNeedsDisclaimer(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Group;->setNeedsDisclaimer(Z)V

    return-void
.end method

.method public bridge synthetic setNotificationCount(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Group;->setNotificationCount(I)V

    return-void
.end method

.method public setOrganizerMemberships(Ljava/util/List;)V
    .registers 6
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "organizers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Group$MembershipWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "membershipWrappers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Group$MembershipWrapper;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/models/groups/Group;->mOrganizerMemberships:Ljava/util/List;

    .line 62
    if-eqz p1, :cond_27

    .line 63
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/Group$MembershipWrapper;

    .line 64
    .local v1, "wrapper":Lcom/airbnb/android/models/groups/Group$MembershipWrapper;
    if-eqz v1, :cond_d

    iget-object v2, v1, Lcom/airbnb/android/models/groups/Group$MembershipWrapper;->membership:Lcom/airbnb/android/models/groups/Membership;

    if-eqz v2, :cond_d

    .line 65
    iget-object v2, p0, Lcom/airbnb/android/models/groups/Group;->mOrganizerMemberships:Ljava/util/List;

    iget-object v3, v1, Lcom/airbnb/android/models/groups/Group$MembershipWrapper;->membership:Lcom/airbnb/android/models/groups/Membership;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 69
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "wrapper":Lcom/airbnb/android/models/groups/Group$MembershipWrapper;
    :cond_27
    return-void
.end method

.method public bridge synthetic setPurpose(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Group;->setPurpose(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setSectionId(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Group;->setSectionId(I)V

    return-void
.end method

.method public bridge synthetic setWelcomeMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Group;->setWelcomeMessage(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Group;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/groups/_Group;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
