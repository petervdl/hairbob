.class public Lcom/airbnb/android/requests/ClearArrivalDetailsRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "ClearArrivalDetailsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/ClearArrivalDetailsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public arrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "arrival_plan"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/airbnb/android/requests/RequestListener;)V
    .registers 6
    .param p1, "confirmationCode"    # Ljava/lang/String;
    .param p2, "onlyEstimatedArrival"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/ClearArrivalDetailsRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/ClearArrivalDetailsRequest;>;"
    const-string/jumbo v0, "arrivals/clear"

    invoke-direct {p0, v0, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/requests/ClearArrivalDetailsRequest;->getJsonBody(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_16

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_12
    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/ClearArrivalDetailsRequest;->setJsonPost(Ljava/lang/String;)V

    .line 17
    return-void

    .line 16
    :cond_16
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method private getJsonBody(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .registers 11
    .param p1, "confirmationCode"    # Ljava/lang/String;
    .param p2, "onlyEstimatedArrival"    # Z

    .prologue
    .line 25
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 27
    .local v3, "body":Lorg/json/JSONObject;
    :try_start_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v1, "attributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v6, "arrival_hour"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    const-string/jumbo v6, "arrival_minute"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    if-nez p2, :cond_6c

    .line 32
    const-string/jumbo v6, "arrived"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    const-string/jumbo v6, "carrier_code"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    const-string/jumbo v6, "carrier_name"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    const-string/jumbo v6, "carrier_route"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    const-string/jumbo v6, "departure_date"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    const-string/jumbo v6, "guest_lat"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    const-string/jumbo v6, "guest_lng"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    const-string/jumbo v6, "eta_local"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    const-string/jumbo v6, "position_updated"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    const-string/jumbo v6, "secondary_transportation_type"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    const-string/jumbo v6, "transportation_type"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    const-string/jumbo v6, "utc_offset"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    const-string/jumbo v6, "departure_airport"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const-string/jumbo v6, "arrival_airport"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_6c
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 49
    .local v2, "attributesArray":Lorg/json/JSONArray;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_75
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    .local v0, "attribute":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_84
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_84} :catch_85

    goto :goto_75

    .line 55
    .end local v0    # "attribute":Ljava/lang/String;
    .end local v1    # "attributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "attributesArray":Lorg/json/JSONArray;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_85
    move-exception v4

    .line 56
    .local v4, "e":Lorg/json/JSONException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "JSON parsing error clearing arrival details"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 53
    .end local v4    # "e":Lorg/json/JSONException;
    .restart local v1    # "attributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "attributesArray":Lorg/json/JSONArray;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_8f
    :try_start_8f
    const-string/jumbo v6, "confirmation_code"

    invoke-virtual {v3, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string/jumbo v6, "attributes"

    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9b
    .catch Lorg/json/JSONException; {:try_start_8f .. :try_end_9b} :catch_85

    .line 59
    return-object v3
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method
