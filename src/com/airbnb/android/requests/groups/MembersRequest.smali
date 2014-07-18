.class public Lcom/airbnb/android/requests/groups/MembersRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "MembersRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/requests/groups/MembersRequest$MembershipWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/groups/MembersRequest;",
        ">;"
    }
.end annotation


# instance fields
.field memberships:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "memberships"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/groups/MembersRequest$MembershipWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public membershipsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Membership;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 8
    .param p1, "groupId"    # I
    .param p2, "params"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Properties;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/MembersRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/MembersRequest;>;"
    const-string/jumbo v0, "groups/%d/members"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 26
    return-void
.end method

.method public static membersRequest(IILcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/MembersRequest;
    .registers 6
    .param p0, "groupId"    # I
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/MembersRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/groups/MembersRequest;"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/MembersRequest;>;"
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 19
    .local v0, "params":Ljava/util/Properties;
    const-string/jumbo v1, "limit"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string/jumbo v1, "offset"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v1, Lcom/airbnb/android/requests/groups/MembersRequest;

    invoke-direct {v1, p0, v0, p2}, Lcom/airbnb/android/requests/groups/MembersRequest;-><init>(ILjava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    return-object v1
.end method


# virtual methods
.method public hasResults()Z
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/MembersRequest;->membershipsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected preProcess()V
    .registers 5

    .prologue
    .line 38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/requests/groups/MembersRequest;->membershipsList:Ljava/util/List;

    .line 40
    iget-object v2, p0, Lcom/airbnb/android/requests/groups/MembersRequest;->memberships:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/requests/groups/MembersRequest$MembershipWrapper;

    .line 41
    .local v1, "wrapper":Lcom/airbnb/android/requests/groups/MembersRequest$MembershipWrapper;
    iget-object v2, p0, Lcom/airbnb/android/requests/groups/MembersRequest;->membershipsList:Ljava/util/List;

    iget-object v3, v1, Lcom/airbnb/android/requests/groups/MembersRequest$MembershipWrapper;->membership:Lcom/airbnb/android/models/groups/Membership;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 43
    .end local v1    # "wrapper":Lcom/airbnb/android/requests/groups/MembersRequest$MembershipWrapper;
    :cond_21
    return-void
.end method
