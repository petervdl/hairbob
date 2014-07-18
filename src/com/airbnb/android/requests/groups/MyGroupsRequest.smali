.class public Lcom/airbnb/android/requests/groups/MyGroupsRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "MyGroupsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/groups/MyGroupsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public joinedGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;"
        }
    .end annotation
.end field

.field mIntroductionBody:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "introduction_body"
    .end annotation
.end field

.field mIntroductionTitle:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "introduction_title"
    .end annotation
.end field

.field mJoinedGroups:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "joined_groups"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/Wrappers$GroupWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mPendingGroups:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "pending_groups"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/Wrappers$GroupWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mShowIntroductionMessage:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "show_introduction_message"
    .end annotation
.end field

.field public pendingGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 4
    .param p1, "params"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/MyGroupsRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/MyGroupsRequest;>;"
    const-string/jumbo v0, "groups/my_groups"

    invoke-direct {p0, v0, p1, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 28
    return-void
.end method

.method public static myGroupsRequest(Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/MyGroupsRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/MyGroupsRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/groups/MyGroupsRequest;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/MyGroupsRequest;>;"
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 22
    .local v0, "params":Ljava/util/Properties;
    const-string/jumbo v1, "membership_limit"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v1, Lcom/airbnb/android/requests/groups/MyGroupsRequest;

    invoke-direct {v1, v0, p0}, Lcom/airbnb/android/requests/groups/MyGroupsRequest;-><init>(Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    return-object v1
.end method

.method private preProcessGroups(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/Wrappers$GroupWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Group;>;"
    .local p2, "wrappers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/requests/Wrappers$GroupWrapper;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/requests/Wrappers$GroupWrapper;

    .line 55
    .local v1, "wrapper":Lcom/airbnb/android/requests/Wrappers$GroupWrapper;
    iget-object v2, v1, Lcom/airbnb/android/requests/Wrappers$GroupWrapper;->group:Lcom/airbnb/android/models/groups/Group;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 57
    .end local v1    # "wrapper":Lcom/airbnb/android/requests/Wrappers$GroupWrapper;
    :cond_16
    return-void
.end method


# virtual methods
.method public getIntroduction()Lcom/airbnb/android/models/groups/GroupsIntroduction;
    .registers 4

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/airbnb/android/requests/groups/MyGroupsRequest;->hasIntroduction()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 77
    new-instance v0, Lcom/airbnb/android/models/groups/GroupsIntroduction;

    iget-object v1, p0, Lcom/airbnb/android/requests/groups/MyGroupsRequest;->mIntroductionTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/airbnb/android/requests/groups/MyGroupsRequest;->mIntroductionBody:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/models/groups/GroupsIntroduction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getJoinedGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/MyGroupsRequest;->joinedGroupList:Ljava/util/List;

    return-object v0
.end method

.method public getPendingGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/MyGroupsRequest;->pendingGroupList:Ljava/util/List;

    return-object v0
.end method

.method public hasIntroduction()Z
    .registers 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/airbnb/android/requests/groups/MyGroupsRequest;->mShowIntroductionMessage:Z

    return v0
.end method

.method public hasResults()Z
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/MyGroupsRequest;->joinedGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/airbnb/android/requests/groups/MyGroupsRequest;->pendingGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected preProcess()V
    .registers 3

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/requests/groups/MyGroupsRequest;->joinedGroupList:Ljava/util/List;

    .line 48
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/MyGroupsRequest;->joinedGroupList:Ljava/util/List;

    iget-object v1, p0, Lcom/airbnb/android/requests/groups/MyGroupsRequest;->mJoinedGroups:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/requests/groups/MyGroupsRequest;->preProcessGroups(Ljava/util/List;Ljava/util/List;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/requests/groups/MyGroupsRequest;->pendingGroupList:Ljava/util/List;

    .line 50
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/MyGroupsRequest;->pendingGroupList:Ljava/util/List;

    iget-object v1, p0, Lcom/airbnb/android/requests/groups/MyGroupsRequest;->mPendingGroups:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/requests/groups/MyGroupsRequest;->preProcessGroups(Ljava/util/List;Ljava/util/List;)V

    .line 51
    return-void
.end method
