.class public Lcom/airbnb/android/models/localcompanion/CompanionPost;
.super Lcom/airbnb/android/models/localcompanion/_CompanionPost;
.source "CompanionPost.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/localcompanion/CompanionPost;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    new-instance v0, Lcom/airbnb/android/models/localcompanion/CompanionPost$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/localcompanion/CompanionPost$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/localcompanion/CompanionPost;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionPost;-><init>()V

    return-void
.end method

.method public static createMessageFromPost(Lcom/airbnb/android/models/localcompanion/CompanionThread;Lcom/airbnb/android/models/localcompanion/CompanionPost;)Lcom/airbnb/android/interfaces/RichMessage;
    .registers 14
    .param p0, "thread"    # Lcom/airbnb/android/models/localcompanion/CompanionThread;
    .param p1, "post"    # Lcom/airbnb/android/models/localcompanion/CompanionPost;

    .prologue
    .line 33
    invoke-virtual {p1}, Lcom/airbnb/android/models/localcompanion/CompanionPost;->getPlaces()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 35
    invoke-virtual {p1}, Lcom/airbnb/android/models/localcompanion/CompanionPost;->getUserId()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/airbnb/android/models/localcompanion/CompanionThread;->getUserId()J

    move-result-wide v6

    cmp-long v1, v1, v6

    if-nez v1, :cond_32

    .line 36
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v5

    .line 37
    .local v5, "author":Lcom/airbnb/android/models/User;
    sget-object v3, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->SENT_TEXT:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    .line 38
    .local v3, "type":Lcom/airbnb/android/interfaces/RichMessage$MessageType;
    new-instance v0, Lcom/airbnb/android/models/messages/RichTextMessage;

    invoke-virtual {p1}, Lcom/airbnb/android/models/localcompanion/CompanionPost;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/airbnb/android/models/localcompanion/CompanionPost;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/airbnb/android/models/localcompanion/CompanionPost;->getCreatedAt()Ljava/util/Date;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/android/models/messages/RichTextMessage;-><init>(JLcom/airbnb/android/interfaces/RichMessage$MessageType;Ljava/lang/String;Lcom/airbnb/android/models/User;Ljava/util/Date;)V

    .line 49
    .end local v3    # "type":Lcom/airbnb/android/interfaces/RichMessage$MessageType;
    .local v0, "message":Lcom/airbnb/android/interfaces/RichMessage;
    :goto_31
    return-object v0

    .line 40
    .end local v0    # "message":Lcom/airbnb/android/interfaces/RichMessage;
    .end local v5    # "author":Lcom/airbnb/android/models/User;
    :cond_32
    invoke-virtual {p0}, Lcom/airbnb/android/models/localcompanion/CompanionThread;->getAgent()Lcom/airbnb/android/models/User;

    move-result-object v5

    .line 41
    .restart local v5    # "author":Lcom/airbnb/android/models/User;
    sget-object v3, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->COMPANION_RECEIVED_TEXT:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    .line 42
    .restart local v3    # "type":Lcom/airbnb/android/interfaces/RichMessage$MessageType;
    new-instance v0, Lcom/airbnb/android/models/messages/CompanionReceivedTextMessage;

    invoke-virtual {p1}, Lcom/airbnb/android/models/localcompanion/CompanionPost;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/airbnb/android/models/localcompanion/CompanionPost;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/airbnb/android/models/localcompanion/CompanionPost;->getCreatedAt()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {p0}, Lcom/airbnb/android/models/localcompanion/CompanionThread;->getAgentBio()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/airbnb/android/models/messages/CompanionReceivedTextMessage;-><init>(JLcom/airbnb/android/interfaces/RichMessage$MessageType;Ljava/lang/String;Lcom/airbnb/android/models/User;Ljava/util/Date;Ljava/lang/String;)V

    .restart local v0    # "message":Lcom/airbnb/android/interfaces/RichMessage;
    goto :goto_31

    .line 45
    .end local v0    # "message":Lcom/airbnb/android/interfaces/RichMessage;
    .end local v3    # "type":Lcom/airbnb/android/interfaces/RichMessage$MessageType;
    .end local v5    # "author":Lcom/airbnb/android/models/User;
    :cond_4e
    invoke-virtual {p0}, Lcom/airbnb/android/models/localcompanion/CompanionThread;->getAgent()Lcom/airbnb/android/models/User;

    move-result-object v5

    .line 46
    .restart local v5    # "author":Lcom/airbnb/android/models/User;
    new-instance v0, Lcom/airbnb/android/models/messages/CompanionMapMessage;

    invoke-virtual {p1}, Lcom/airbnb/android/models/localcompanion/CompanionPost;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/airbnb/android/models/localcompanion/CompanionPost;->getPlaces()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p1}, Lcom/airbnb/android/models/localcompanion/CompanionPost;->getCreatedAt()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {p0}, Lcom/airbnb/android/models/localcompanion/CompanionThread;->getAgentBio()Ljava/lang/String;

    move-result-object v11

    move-object v6, v0

    move-object v9, v5

    invoke-direct/range {v6 .. v11}, Lcom/airbnb/android/models/messages/CompanionMapMessage;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/airbnb/android/models/User;Ljava/util/Date;Ljava/lang/String;)V

    .restart local v0    # "message":Lcom/airbnb/android/interfaces/RichMessage;
    goto :goto_31
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 19
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCompanionThreadId()J
    .registers 3

    .prologue
    .line 19
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->getCompanionThreadId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 19
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->getFullName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()J
    .registers 3

    .prologue
    .line 19
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPlaces()Ljava/util/List;
    .registers 2

    .prologue
    .line 19
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->getPlaces()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserId()J
    .registers 3

    .prologue
    .line 19
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->getUserId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getVotes()I
    .registers 2

    .prologue
    .line 19
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->getVotes()I

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setCompanionThreadId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->setCompanionThreadId(J)V

    return-void
.end method

.method public bridge synthetic setCreatedAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Date;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->setCreatedAt(Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic setFullName(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->setFullName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->setId(J)V

    return-void
.end method

.method public bridge synthetic setMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setPlaces(Ljava/util/List;)V
    .registers 6
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "places"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/Wrappers$CompanionPlaceWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "wrapper":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/requests/Wrappers$CompanionPlaceWrapper;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/models/localcompanion/CompanionPost;->mPlaces:Ljava/util/List;

    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/requests/Wrappers$CompanionPlaceWrapper;

    .line 25
    .local v1, "place":Lcom/airbnb/android/requests/Wrappers$CompanionPlaceWrapper;
    iget-object v2, p0, Lcom/airbnb/android/models/localcompanion/CompanionPost;->mPlaces:Ljava/util/List;

    iget-object v3, v1, Lcom/airbnb/android/requests/Wrappers$CompanionPlaceWrapper;->companionPlace:Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 27
    .end local v1    # "place":Lcom/airbnb/android/requests/Wrappers$CompanionPlaceWrapper;
    :cond_1f
    return-void
.end method

.method public bridge synthetic setUserId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->setUserId(J)V

    return-void
.end method

.method public bridge synthetic setVotes(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->setVotes(I)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/localcompanion/_CompanionPost;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
