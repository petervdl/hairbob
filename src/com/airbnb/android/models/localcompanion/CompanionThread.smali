.class public Lcom/airbnb/android/models/localcompanion/CompanionThread;
.super Lcom/airbnb/android/models/localcompanion/_CompanionThread;
.source "CompanionThread.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/localcompanion/CompanionThread;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAgent:Lcom/airbnb/android/models/User;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    new-instance v0, Lcom/airbnb/android/models/localcompanion/CompanionThread$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/localcompanion/CompanionThread$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/localcompanion/CompanionThread;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;-><init>()V

    return-void
.end method

.method private static agentResponsePending(Lcom/airbnb/android/models/localcompanion/CompanionThread;)Z
    .registers 8
    .param p0, "thread"    # Lcom/airbnb/android/models/localcompanion/CompanionThread;

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/airbnb/android/models/localcompanion/CompanionThread;->isClosed()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {p0}, Lcom/airbnb/android/models/localcompanion/CompanionThread;->getAgent()Lcom/airbnb/android/models/User;

    move-result-object v3

    if-nez v3, :cond_e

    .line 77
    :cond_d
    :goto_d
    return v2

    .line 71
    :cond_e
    invoke-virtual {p0}, Lcom/airbnb/android/models/localcompanion/CompanionThread;->getPosts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/localcompanion/CompanionPost;

    .line 72
    .local v1, "post":Lcom/airbnb/android/models/localcompanion/CompanionPost;
    invoke-virtual {v1}, Lcom/airbnb/android/models/localcompanion/CompanionPost;->getUserId()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/airbnb/android/models/localcompanion/CompanionThread;->getAgentId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_16

    goto :goto_d

    .line 77
    .end local v1    # "post":Lcom/airbnb/android/models/localcompanion/CompanionPost;
    :cond_2f
    const/4 v2, 0x1

    goto :goto_d
.end method

.method public static createMessagesFromThread(Lcom/airbnb/android/models/localcompanion/CompanionThread;)Ljava/util/ArrayList;
    .registers 5
    .param p0, "thread"    # Lcom/airbnb/android/models/localcompanion/CompanionThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/localcompanion/CompanionThread;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/interfaces/RichMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/interfaces/RichMessage;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/models/localcompanion/CompanionThread;->getPosts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/localcompanion/CompanionPost;

    .line 40
    .local v2, "post":Lcom/airbnb/android/models/localcompanion/CompanionPost;
    invoke-static {p0, v2}, Lcom/airbnb/android/models/localcompanion/CompanionPost;->createMessageFromPost(Lcom/airbnb/android/models/localcompanion/CompanionThread;Lcom/airbnb/android/models/localcompanion/CompanionPost;)Lcom/airbnb/android/interfaces/RichMessage;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 43
    .end local v2    # "post":Lcom/airbnb/android/models/localcompanion/CompanionPost;
    :cond_21
    return-object v1
.end method

.method public static createMessagesFromThreadsList(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/localcompanion/CompanionThread;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/interfaces/RichMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "threads":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/localcompanion/CompanionThread;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/interfaces/RichMessage;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_c

    .line 64
    :cond_b
    :goto_b
    return-object v3

    .line 53
    :cond_c
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/localcompanion/CompanionThread;

    .line 54
    .local v4, "thread":Lcom/airbnb/android/models/localcompanion/CompanionThread;
    invoke-static {v4}, Lcom/airbnb/android/models/localcompanion/CompanionThread;->createMessagesFromThread(Lcom/airbnb/android/models/localcompanion/CompanionThread;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_10

    .line 57
    .end local v4    # "thread":Lcom/airbnb/android/models/localcompanion/CompanionThread;
    :cond_24
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/localcompanion/CompanionThread;

    .line 59
    .local v1, "lastThread":Lcom/airbnb/android/models/localcompanion/CompanionThread;
    invoke-static {v1}, Lcom/airbnb/android/models/localcompanion/CompanionThread;->agentResponsePending(Lcom/airbnb/android/models/localcompanion/CompanionThread;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v1}, Lcom/airbnb/android/models/localcompanion/CompanionThread;->getAgent()Lcom/airbnb/android/models/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 60
    new-instance v2, Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;

    invoke-virtual {v1}, Lcom/airbnb/android/models/localcompanion/CompanionThread;->getAgent()Lcom/airbnb/android/models/User;

    move-result-object v5

    invoke-virtual {v1}, Lcom/airbnb/android/models/localcompanion/CompanionThread;->getAgentBio()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;-><init>(Lcom/airbnb/android/models/User;Ljava/lang/String;)V

    .line 61
    .local v2, "message":Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->describeContents()I

    move-result v0

    return v0
.end method

.method public getAgent()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/CompanionThread;->mAgent:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method public bridge synthetic getAgentBio()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->getAgentBio()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAgentId()J
    .registers 3

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->getAgentId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getAgentName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->getAgentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAgentProfilePictureUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->getAgentProfilePictureUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAgentRealName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->getAgentRealName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfirmationCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->getConfirmationCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()J
    .registers 3

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getPosts()Ljava/util/List;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->getPosts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPreview()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->getPreview()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReservationId()J
    .registers 3

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->getReservationId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getShortPreview()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->getShortPreview()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->getUserFullName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserId()J
    .registers 3

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->getUserId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->getUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserProfilePictureUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->getUserProfilePictureUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isClosed()Z
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->isClosed()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public setAgent(Lcom/airbnb/android/models/User;)V
    .registers 2
    .param p1, "agent"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/airbnb/android/models/localcompanion/CompanionThread;->mAgent:Lcom/airbnb/android/models/User;

    .line 34
    return-void
.end method

.method public bridge synthetic setAgentBio(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->setAgentBio(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setAgentId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->setAgentId(J)V

    return-void
.end method

.method public bridge synthetic setAgentName(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->setAgentName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setAgentProfilePictureUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->setAgentProfilePictureUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setAgentRealName(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->setAgentRealName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setConfirmationCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->setConfirmationCode(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->setId(J)V

    return-void
.end method

.method public bridge synthetic setIsClosed(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->setIsClosed(Z)V

    return-void
.end method

.method public setPosts(Ljava/util/List;)V
    .registers 6
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "posts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/Wrappers$CompanionPostWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "wrapper":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/requests/Wrappers$CompanionPostWrapper;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/models/localcompanion/CompanionThread;->mPosts:Ljava/util/List;

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/requests/Wrappers$CompanionPostWrapper;

    .line 24
    .local v1, "post":Lcom/airbnb/android/requests/Wrappers$CompanionPostWrapper;
    iget-object v2, p0, Lcom/airbnb/android/models/localcompanion/CompanionThread;->mPosts:Ljava/util/List;

    iget-object v3, v1, Lcom/airbnb/android/requests/Wrappers$CompanionPostWrapper;->companionPost:Lcom/airbnb/android/models/localcompanion/CompanionPost;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 26
    .end local v1    # "post":Lcom/airbnb/android/requests/Wrappers$CompanionPostWrapper;
    :cond_1f
    return-void
.end method

.method public bridge synthetic setPreview(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->setPreview(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setReservationId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->setReservationId(J)V

    return-void
.end method

.method public bridge synthetic setShortPreview(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->setShortPreview(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setUserFullName(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->setUserFullName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setUserId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->setUserId(J)V

    return-void
.end method

.method public bridge synthetic setUserName(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->setUserName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setUserProfilePictureUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->setUserProfilePictureUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/localcompanion/_CompanionThread;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
