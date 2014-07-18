.class public Lcom/airbnb/android/requests/groups/FlagContentRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "FlagContentRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/groups/FlagContentRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/groups/BaseContent;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 5
    .param p1, "content"    # Lcom/airbnb/android/models/groups/BaseContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/groups/BaseContent;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/FlagContentRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/FlagContentRequest;>;"
    invoke-static {p1}, Lcom/airbnb/android/requests/groups/FlagContentRequest;->getPath(Lcom/airbnb/android/models/groups/BaseContent;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/airbnb/android/requests/groups/FlagContentRequest;->asJSON(Lcom/airbnb/android/models/groups/BaseContent;)Lorg/json/JSONObject;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_17

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_13
    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/groups/FlagContentRequest;->setJsonPost(Ljava/lang/String;)V

    .line 14
    return-void

    .line 13
    :cond_17
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method private static getPath(Lcom/airbnb/android/models/groups/BaseContent;)Ljava/lang/String;
    .registers 6
    .param p0, "content"    # Lcom/airbnb/android/models/groups/BaseContent;

    .prologue
    .line 17
    new-instance v1, Lcom/airbnb/android/requests/groups/ContentRootPathVisitor;

    invoke-direct {v1}, Lcom/airbnb/android/requests/groups/ContentRootPathVisitor;-><init>()V

    .line 18
    .local v1, "visitor":Lcom/airbnb/android/requests/groups/ContentRootPathVisitor;
    invoke-virtual {p0, v1}, Lcom/airbnb/android/models/groups/BaseContent;->accept(Lcom/airbnb/android/models/groups/GroupContentVisitor;)V

    .line 19
    invoke-virtual {v1}, Lcom/airbnb/android/requests/groups/ContentRootPathVisitor;->getRootPath()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "root":Ljava/lang/String;
    const-string/jumbo v2, "%sflag"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public asJSON(Lcom/airbnb/android/models/groups/BaseContent;)Lorg/json/JSONObject;
    .registers 4
    .param p1, "content"    # Lcom/airbnb/android/models/groups/BaseContent;

    .prologue
    .line 29
    new-instance v0, Lcom/airbnb/android/requests/groups/FlaggableContentJSONVisitor;

    invoke-direct {v0}, Lcom/airbnb/android/requests/groups/FlaggableContentJSONVisitor;-><init>()V

    .line 30
    .local v0, "visitor":Lcom/airbnb/android/requests/groups/FlaggableContentJSONVisitor;
    invoke-virtual {p1, v0}, Lcom/airbnb/android/models/groups/BaseContent;->accept(Lcom/airbnb/android/models/groups/GroupContentVisitor;)V

    .line 31
    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/FlaggableContentJSONVisitor;->asJSON()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public getMethod()I
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method
