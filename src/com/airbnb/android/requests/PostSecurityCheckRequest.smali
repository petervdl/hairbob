.class public Lcom/airbnb/android/requests/PostSecurityCheckRequest;
.super Lcom/airbnb/android/requests/AirbnbRequestV2;
.source "PostSecurityCheckRequest.java"


# direct methods
.method public constructor <init>(JILcom/airbnb/android/requests/RequestListener;)V
    .registers 7
    .param p1, "phoneNumberId"    # J
    .param p3, "verificationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/PutSecurityCheckRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p4, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/PutSecurityCheckRequest;>;"
    const-string/jumbo v0, "security_checks"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p4}, Lcom/airbnb/android/requests/AirbnbRequestV2;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/requests/PostSecurityCheckRequest;->createJson(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/PostSecurityCheckRequest;->setJsonPost(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method private createJson(JI)Ljava/lang/String;
    .registers 8
    .param p1, "phoneNumberId"    # J
    .param p3, "verificationType"    # I

    .prologue
    .line 15
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 16
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v2, "activity_type"

    const-string/jumbo v3, "mobile"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string/jumbo v2, "strategy"

    const-string/jumbo v3, "phone_verification"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 19
    .local v0, "data":Lorg/json/JSONObject;
    const-string/jumbo v2, "phone_number_id"

    invoke-virtual {v0, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 20
    const-string/jumbo v2, "verification_method"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    instance-of v2, v1, Lorg/json/JSONObject;

    if-nez v2, :cond_37

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 26
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_36
    return-object v2

    .line 22
    .restart local v0    # "data":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    :cond_37
    check-cast v1, Lorg/json/JSONObject;

    .end local v1    # "json":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3c} :catch_3e

    move-result-object v2

    goto :goto_36

    .line 23
    .end local v0    # "data":Lorg/json/JSONObject;
    :catch_3e
    move-exception v2

    .line 26
    const/4 v2, 0x0

    goto :goto_36
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method
