.class public Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "LocalCompanionThreadsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public items:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "companion_threads"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/Wrappers$CompanionThreadWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/interfaces/RichMessage;",
            ">;"
        }
    .end annotation
.end field

.field public threadsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/localcompanion/CompanionThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/android/requests/RequestListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;>;"
    const-string/jumbo v0, "companion/threads"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected preProcess()V
    .registers 7

    .prologue
    .line 23
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;->threadsList:Ljava/util/ArrayList;

    .line 24
    iget-object v4, p0, Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/requests/Wrappers$CompanionThreadWrapper;

    .line 25
    .local v2, "item":Lcom/airbnb/android/requests/Wrappers$CompanionThreadWrapper;
    iget-object v3, v2, Lcom/airbnb/android/requests/Wrappers$CompanionThreadWrapper;->companionThread:Lcom/airbnb/android/models/localcompanion/CompanionThread;

    .line 27
    .local v3, "thread":Lcom/airbnb/android/models/localcompanion/CompanionThread;
    new-instance v0, Lcom/airbnb/android/models/User;

    invoke-direct {v0}, Lcom/airbnb/android/models/User;-><init>()V

    .line 28
    .local v0, "agent":Lcom/airbnb/android/models/User;
    invoke-virtual {v3}, Lcom/airbnb/android/models/localcompanion/CompanionThread;->getAgentId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/airbnb/android/models/User;->setId(J)V

    .line 29
    invoke-virtual {v3}, Lcom/airbnb/android/models/localcompanion/CompanionThread;->getAgentProfilePictureUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/airbnb/android/models/User;->setPictureUrl(Ljava/lang/String;)V

    .line 30
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/airbnb/android/models/User;->setHasProfilePic(Z)V

    .line 31
    invoke-virtual {v3}, Lcom/airbnb/android/models/localcompanion/CompanionThread;->getAgentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/airbnb/android/models/User;->setFirstName(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v3, v0}, Lcom/airbnb/android/models/localcompanion/CompanionThread;->setAgent(Lcom/airbnb/android/models/User;)V

    .line 34
    iget-object v4, p0, Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;->threadsList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/airbnb/android/requests/Wrappers$CompanionThreadWrapper;->companionThread:Lcom/airbnb/android/models/localcompanion/CompanionThread;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 37
    .end local v0    # "agent":Lcom/airbnb/android/models/User;
    .end local v2    # "item":Lcom/airbnb/android/requests/Wrappers$CompanionThreadWrapper;
    .end local v3    # "thread":Lcom/airbnb/android/models/localcompanion/CompanionThread;
    :cond_44
    iget-object v4, p0, Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;->threadsList:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/airbnb/android/models/localcompanion/CompanionThread;->createMessagesFromThreadsList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/requests/LocalCompanionThreadsRequest;->messages:Ljava/util/List;

    .line 38
    return-void
.end method
