.class public Lcom/airbnb/android/requests/PutSecurityCheckRequest;
.super Lcom/airbnb/android/requests/AirbnbRequestV2;
.source "PutSecurityCheckRequest.java"


# instance fields
.field public securityCheck:Lcom/airbnb/android/models/SecurityCheck;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "security_check"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 8
    .param p1, "phoneNumberId"    # J
    .param p3, "phoneCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/PutSecurityCheckRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p4, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/PutSecurityCheckRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "security_checks/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p4}, Lcom/airbnb/android/requests/AirbnbRequestV2;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/requests/PutSecurityCheckRequest;->createJson(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/PutSecurityCheckRequest;->setJsonPost(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method private createJson(JLjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "phoneNumberId"    # J
    .param p3, "phoneCode"    # Ljava/lang/String;

    .prologue
    .line 24
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 25
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v2, "activity_type"

    const-string/jumbo v3, "mobile"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    const-string/jumbo v2, "strategy"

    const-string/jumbo v3, "phone_verification"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    .local v0, "data":Lorg/json/JSONObject;
    const-string/jumbo v2, "phone_number_id"

    invoke-virtual {v0, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 29
    const-string/jumbo v2, "code"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    instance-of v2, v1, Lorg/json/JSONObject;

    if-nez v2, :cond_37

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 35
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_36
    return-object v2

    .line 31
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

    .line 32
    .end local v0    # "data":Lorg/json/JSONObject;
    :catch_3e
    move-exception v2

    .line 35
    const/4 v2, 0x0

    goto :goto_36
.end method


# virtual methods
.method public getHeaders()Lcom/airbnb/android/utils/Strap;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 40
    invoke-super {p0}, Lcom/airbnb/android/requests/AirbnbRequestV2;->getHeaders()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 41
    .local v0, "headers":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "X-HTTP-METHOD-OVERRIDE"

    const-string/jumbo v2, "PUT"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-object v0
.end method

.method public bridge synthetic getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/airbnb/android/requests/PutSecurityCheckRequest;->getHeaders()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()I
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method
