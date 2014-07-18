.class public Lcom/airbnb/android/requests/groups/GetGroupRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "GetGroupRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/groups/GetGroupRequest;",
        ">;"
    }
.end annotation


# instance fields
.field group:Lcom/airbnb/android/models/groups/Group;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "group"
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
            "Lcom/airbnb/android/requests/groups/GetGroupRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/GetGroupRequest;>;"
    const-string/jumbo v0, "groups/%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 23
    return-void
.end method

.method public static getGroupRequest(ILcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/GetGroupRequest;
    .registers 5
    .param p0, "groupId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/GetGroupRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/groups/GetGroupRequest;"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/GetGroupRequest;>;"
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 16
    .local v0, "params":Ljava/util/Properties;
    const-string/jumbo v1, "membership_limit"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string/jumbo v1, "minimal"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v1, Lcom/airbnb/android/requests/groups/GetGroupRequest;

    invoke-direct {v1, p0, v0, p1}, Lcom/airbnb/android/requests/groups/GetGroupRequest;-><init>(ILjava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    return-object v1
.end method


# virtual methods
.method public getGroup()Lcom/airbnb/android/models/groups/Group;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/GetGroupRequest;->group:Lcom/airbnb/android/models/groups/Group;

    return-object v0
.end method

.method public getTTL()J
    .registers 3

    .prologue
    .line 33
    const-wide/32 v0, 0x36ee80

    return-wide v0
.end method
