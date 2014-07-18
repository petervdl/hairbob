.class public Lcom/airbnb/android/requests/groups/TopRecommendedGroupsRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "TopRecommendedGroupsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/groups/TopRecommendedGroupsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public groupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;"
        }
    .end annotation
.end field

.field groups:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "groups"
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
            "Lcom/airbnb/android/requests/groups/TopRecommendedGroupsRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/TopRecommendedGroupsRequest;>;"
    const-string/jumbo v0, "groups/top_recommendations"

    invoke-direct {p0, v0, p1, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 26
    return-void
.end method

.method public static topRecommendedGroupsRequest(Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/TopRecommendedGroupsRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/TopRecommendedGroupsRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/groups/TopRecommendedGroupsRequest;"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/TopRecommendedGroupsRequest;>;"
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 20
    .local v0, "params":Ljava/util/Properties;
    const-string/jumbo v1, "membership_limit"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v1, Lcom/airbnb/android/requests/groups/TopRecommendedGroupsRequest;

    invoke-direct {v1, v0, p0}, Lcom/airbnb/android/requests/groups/TopRecommendedGroupsRequest;-><init>(Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    return-object v1
.end method


# virtual methods
.method protected preProcess()V
    .registers 5

    .prologue
    .line 33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/requests/groups/TopRecommendedGroupsRequest;->groupList:Ljava/util/List;

    .line 35
    iget-object v2, p0, Lcom/airbnb/android/requests/groups/TopRecommendedGroupsRequest;->groups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/requests/Wrappers$GroupWrapper;

    .line 36
    .local v1, "wrapper":Lcom/airbnb/android/requests/Wrappers$GroupWrapper;
    iget-object v2, p0, Lcom/airbnb/android/requests/groups/TopRecommendedGroupsRequest;->groupList:Ljava/util/List;

    iget-object v3, v1, Lcom/airbnb/android/requests/Wrappers$GroupWrapper;->group:Lcom/airbnb/android/models/groups/Group;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 38
    .end local v1    # "wrapper":Lcom/airbnb/android/requests/Wrappers$GroupWrapper;
    :cond_21
    return-void
.end method
