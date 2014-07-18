.class public Lcom/airbnb/android/requests/groups/FlagCommentRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "FlagCommentRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/groups/FlagCommentRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/groups/Comment;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 7
    .param p1, "comment"    # Lcom/airbnb/android/models/groups/Comment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/groups/Comment;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/FlagCommentRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/FlagCommentRequest;>;"
    const-string/jumbo v0, "groups/content/post-%d/flag"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Comment;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/airbnb/android/requests/groups/FlagCommentRequest;->asJSON(Lcom/airbnb/android/models/groups/Comment;)Lorg/json/JSONObject;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_28

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_24
    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/groups/FlagCommentRequest;->setJsonPost(Ljava/lang/String;)V

    .line 15
    return-void

    .line 14
    :cond_28
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method

.method private asJSON(Lcom/airbnb/android/models/groups/Comment;)Lorg/json/JSONObject;
    .registers 7
    .param p1, "comment"    # Lcom/airbnb/android/models/groups/Comment;

    .prologue
    .line 18
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 20
    .local v2, "wrapperObj":Lorg/json/JSONObject;
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 21
    .local v0, "dataObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "flaggable_id"

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Comment;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    const-string/jumbo v3, "flaggable_type"

    const-string/jumbo v4, "post"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    const-string/jumbo v3, "user_flag"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_23} :catch_24

    .line 27
    .end local v0    # "dataObj":Lorg/json/JSONObject;
    :goto_23
    return-object v2

    .line 24
    :catch_24
    move-exception v1

    .line 25
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_23
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method
