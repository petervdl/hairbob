.class public Lcom/airbnb/android/models/groups/Event;
.super Lcom/airbnb/android/models/groups/BaseContent;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/models/groups/Event$RegistrationWrapper;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/groups/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_TYPE:Ljava/lang/String; = "event"


# instance fields
.field private mAddress:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "address"
    .end annotation
.end field

.field private mDescription:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "description"
    .end annotation
.end field

.field private mIsFull:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "full"
    .end annotation
.end field

.field private mLat:F
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "location_lat"
    .end annotation
.end field

.field private mLng:F
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "location_lng"
    .end annotation
.end field

.field private mPhotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Registration;",
            ">;"
        }
    .end annotation
.end field

.field private mStartsAt:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "starts_at"
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 205
    new-instance v0, Lcom/airbnb/android/models/groups/Event$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/groups/Event$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/groups/Event;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/BaseContent;-><init>()V

    .line 48
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Date;Lcom/airbnb/android/models/groups/Author;Ljava/util/Date;Ljava/lang/String;Ljava/util/List;Ljava/util/List;FFZZIZ)V
    .registers 28
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p6, "createdAt"    # Ljava/util/Date;
    .param p7, "author"    # Lcom/airbnb/android/models/groups/Author;
    .param p8, "startsAt"    # Ljava/util/Date;
    .param p9, "address"    # Ljava/lang/String;
    .param p12, "lat"    # F
    .param p13, "lng"    # F
    .param p14, "flaggedBy"    # Z
    .param p15, "followedBy"    # Z
    .param p16, "groupId"    # I
    .param p17, "isFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Comment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Like;",
            ">;",
            "Ljava/util/Date;",
            "Lcom/airbnb/android/models/groups/Author;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Photo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Registration;",
            ">;FFZZIZ)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p4, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Comment;>;"
    .local p5, "likes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Like;>;"
    .local p10, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Photo;>;"
    .local p11, "registrations":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Registration;>;"
    move-object v1, p0

    move v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p14

    move/from16 v8, p15

    move/from16 v9, p16

    invoke-direct/range {v1 .. v9}, Lcom/airbnb/android/models/groups/BaseContent;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/Date;Lcom/airbnb/android/models/groups/Author;ZZI)V

    .line 54
    iput-object p2, p0, Lcom/airbnb/android/models/groups/Event;->mTitle:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/airbnb/android/models/groups/Event;->mDescription:Ljava/lang/String;

    .line 56
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/airbnb/android/models/groups/Event;->mStartsAt:Ljava/util/Date;

    .line 57
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/airbnb/android/models/groups/Event;->mAddress:Ljava/lang/String;

    .line 58
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/airbnb/android/models/groups/Event;->mPhotos:Ljava/util/List;

    .line 59
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/airbnb/android/models/groups/Event;->mRegistrations:Ljava/util/List;

    .line 60
    move/from16 v0, p12

    iput v0, p0, Lcom/airbnb/android/models/groups/Event;->mLat:F

    .line 61
    move/from16 v0, p13

    iput v0, p0, Lcom/airbnb/android/models/groups/Event;->mLng:F

    .line 62
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/airbnb/android/models/groups/Event;->mIsFull:Z

    .line 63
    return-void
.end method

.method public static of(Lcom/airbnb/android/models/groups/Event;)Lcom/airbnb/android/models/groups/Event;
    .registers 20
    .param p0, "event"    # Lcom/airbnb/android/models/groups/Event;

    .prologue
    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/groups/Event;->copyComments()Ljava/util/List;

    move-result-object v5

    .line 40
    .local v5, "commentsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Comment;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/groups/Event;->getPhotos()Ljava/util/List;

    move-result-object v1

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    .local v11, "photosCopy":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Photo;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/groups/Event;->getRegistrations()Ljava/util/List;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 42
    .local v12, "registrationsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Registration;>;"
    new-instance v1, Lcom/airbnb/android/models/groups/Event;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/airbnb/android/models/groups/Event;->mId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/android/models/groups/Event;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/airbnb/android/models/groups/Event;->mDescription:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/groups/Event;->getLikes()Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/airbnb/android/models/groups/Event;->mCreatedAt:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/airbnb/android/models/groups/Event;->mAuthor:Lcom/airbnb/android/models/groups/Author;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/airbnb/android/models/groups/Event;->mStartsAt:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/airbnb/android/models/groups/Event;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/airbnb/android/models/groups/Event;->mLat:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/airbnb/android/models/groups/Event;->mLng:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/airbnb/android/models/groups/Event;->mGroupId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/airbnb/android/models/groups/Event;->mIsFull:Z

    move/from16 v18, v0

    invoke-direct/range {v1 .. v18}, Lcom/airbnb/android/models/groups/Event;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Date;Lcom/airbnb/android/models/groups/Author;Ljava/util/Date;Ljava/lang/String;Ljava/util/List;Ljava/util/List;FFZZIZ)V

    return-object v1
.end method


# virtual methods
.method public final accept(Lcom/airbnb/android/models/groups/GroupContentVisitor;)V
    .registers 2
    .param p1, "visitor"    # Lcom/airbnb/android/models/groups/GroupContentVisitor;

    .prologue
    .line 143
    invoke-interface {p1, p0}, Lcom/airbnb/android/models/groups/GroupContentVisitor;->visit(Lcom/airbnb/android/models/groups/Event;)V

    .line 144
    return-void
.end method

.method public addRegistration(Lcom/airbnb/android/models/groups/Registration;)V
    .registers 3
    .param p1, "registration"    # Lcom/airbnb/android/models/groups/Registration;

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Event;->getRegistrations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public canJoin()Z
    .registers 2

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/airbnb/android/models/groups/Event;->mIsFull:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Event;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    const-string/jumbo v0, "Event"

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Event;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()F
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/airbnb/android/models/groups/Event;->mLat:F

    return v0
.end method

.method public getLng()F
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lcom/airbnb/android/models/groups/Event;->mLng:F

    return v0
.end method

.method public getParticipants()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/airbnb/android/models/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v2, Ljava/util/HashSet;

    invoke-super {p0}, Lcom/airbnb/android/models/groups/BaseContent;->getParticipants()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 154
    .local v2, "users":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/airbnb/android/models/User;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Event;->getRegistrations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/Registration;

    .line 155
    .local v1, "registration":Lcom/airbnb/android/models/groups/Registration;
    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/Registration;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 157
    .end local v1    # "registration":Lcom/airbnb/android/models/groups/Registration;
    :cond_25
    return-object v2
.end method

.method public getPhotos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Photo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Event;->mPhotos:Ljava/util/List;

    return-object v0
.end method

.method public getRegistrations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Registration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Event;->mRegistrations:Ljava/util/List;

    return-object v0
.end method

.method public getStartsAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Event;->mStartsAt:Ljava/util/Date;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Event;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    const-string/jumbo v0, "event"

    return-object v0
.end method

.method public hasDescriptoin()Z
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Event;->mDescription:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/airbnb/android/models/groups/Event;->mDescription:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public isRegisteredBy(Lcom/airbnb/android/models/User;)Z
    .registers 8
    .param p1, "user"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Event;->getRegistrations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/Registration;

    .line 105
    .local v1, "registration":Lcom/airbnb/android/models/groups/Registration;
    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/Registration;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    .line 106
    const/4 v2, 0x1

    .line 109
    .end local v1    # "registration":Lcom/airbnb/android/models/groups/Registration;
    :goto_25
    return v2

    :cond_26
    const/4 v2, 0x0

    goto :goto_25
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/BaseContent;->readFromParcel(Landroid/os/Parcel;)V

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 191
    .local v1, "date1":J
    const-wide/32 v3, -0x80000000

    cmp-long v3, v1, v3

    if-eqz v3, :cond_15

    .line 192
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v3, p0, Lcom/airbnb/android/models/groups/Event;->mStartsAt:Ljava/util/Date;

    .line 194
    :cond_15
    sget-object v3, Lcom/airbnb/android/models/Photo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/groups/Event;->mPhotos:Ljava/util/List;

    .line 195
    sget-object v3, Lcom/airbnb/android/models/groups/Registration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/groups/Event;->mRegistrations:Ljava/util/List;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/groups/Event;->mTitle:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/groups/Event;->mDescription:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/groups/Event;->mAddress:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 200
    .local v0, "bools1":[Z
    const/4 v3, 0x0

    aget-boolean v3, v0, v3

    iput-boolean v3, p0, Lcom/airbnb/android/models/groups/Event;->mIsFull:Z

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Lcom/airbnb/android/models/groups/Event;->mLat:F

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Lcom/airbnb/android/models/groups/Event;->mLng:F

    .line 203
    return-void
.end method

.method public removeRegistration(Lcom/airbnb/android/models/groups/Registration;)V
    .registers 3
    .param p1, "registration"    # Lcom/airbnb/android/models/groups/Registration;

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Event;->getRegistrations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public setPhotos(Ljava/util/List;)V
    .registers 6
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "photos"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/Wrappers$PhotoWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "photoWrappers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/requests/Wrappers$PhotoWrapper;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/models/groups/Event;->mPhotos:Ljava/util/List;

    .line 123
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/requests/Wrappers$PhotoWrapper;

    .line 124
    .local v1, "wrapper":Lcom/airbnb/android/requests/Wrappers$PhotoWrapper;
    iget-object v2, p0, Lcom/airbnb/android/models/groups/Event;->mPhotos:Ljava/util/List;

    iget-object v3, v1, Lcom/airbnb/android/requests/Wrappers$PhotoWrapper;->photo:Lcom/airbnb/android/models/Photo;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 126
    .end local v1    # "wrapper":Lcom/airbnb/android/requests/Wrappers$PhotoWrapper;
    :cond_1f
    return-void
.end method

.method public setRegistrations(Ljava/util/List;)V
    .registers 6
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "registrations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Event$RegistrationWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "registrationWrappers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Event$RegistrationWrapper;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/models/groups/Event;->mRegistrations:Ljava/util/List;

    .line 89
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/Event$RegistrationWrapper;

    .line 90
    .local v1, "wrapper":Lcom/airbnb/android/models/groups/Event$RegistrationWrapper;
    iget-object v2, p0, Lcom/airbnb/android/models/groups/Event;->mRegistrations:Ljava/util/List;

    iget-object v3, v1, Lcom/airbnb/android/models/groups/Event$RegistrationWrapper;->registration:Lcom/airbnb/android/models/groups/Registration;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 92
    .end local v1    # "wrapper":Lcom/airbnb/android/models/groups/Event$RegistrationWrapper;
    :cond_1f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/airbnb/android/models/groups/Event;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/models/groups/Event;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 175
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/groups/BaseContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 176
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Event;->mStartsAt:Ljava/util/Date;

    if-nez v0, :cond_3c

    const-wide/32 v0, -0x80000000

    :goto_a
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 177
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Event;->mPhotos:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 178
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Event;->mRegistrations:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 179
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Event;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Event;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Event;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/airbnb/android/models/groups/Event;->mIsFull:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 183
    iget v0, p0, Lcom/airbnb/android/models/groups/Event;->mLat:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 184
    iget v0, p0, Lcom/airbnb/android/models/groups/Event;->mLng:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 185
    return-void

    .line 176
    :cond_3c
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Event;->mStartsAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_a
.end method
