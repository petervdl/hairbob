.class public Lcom/airbnb/android/requests/LocalCompanionOnboardingRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "LocalCompanionOnboardingRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/LocalCompanionOnboardingRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 5
    .param p1, "preferences"    # Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/LocalCompanionOnboardingRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/LocalCompanionOnboardingRequest;>;"
    const-string/jumbo v0, "companion/update_user"

    invoke-direct {p0, v0, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/airbnb/android/requests/LocalCompanionOnboardingRequest;->getJsonBody(Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;)Lorg/json/JSONObject;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_16

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_12
    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/LocalCompanionOnboardingRequest;->setJsonPost(Ljava/lang/String;)V

    .line 16
    return-void

    .line 15
    :cond_16
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method private getJsonBody(Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;)Lorg/json/JSONObject;
    .registers 14
    .param p1, "preferences"    # Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;

    .prologue
    .line 24
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 25
    .local v9, "tripProfile":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 28
    .local v2, "body":Lorg/json/JSONArray;
    :try_start_a
    invoke-virtual {p1}, Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;->getQuestions()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 29
    .local v7, "question":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .local v8, "questionAnswerHash":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 33
    .local v0, "answers":Lorg/json/JSONArray;
    invoke-virtual {p1, v7}, Lcom/airbnb/android/models/localcompanion/CompanionOnboardingPreferences;->getAnswersForQuestion(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 34
    .local v1, "answersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 35
    .local v6, "preference":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_3f} :catch_40

    goto :goto_30

    .line 45
    .end local v0    # "answers":Lorg/json/JSONArray;
    .end local v1    # "answersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "preference":Ljava/lang/String;
    .end local v7    # "question":Ljava/lang/String;
    .end local v8    # "questionAnswerHash":Lorg/json/JSONObject;
    :catch_40
    move-exception v3

    .line 46
    .local v3, "e":Lorg/json/JSONException;
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "JSON parsing error sending Local Companion message"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 38
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v0    # "answers":Lorg/json/JSONArray;
    .restart local v1    # "answersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "question":Ljava/lang/String;
    .restart local v8    # "questionAnswerHash":Lorg/json/JSONObject;
    :cond_4a
    :try_start_4a
    const-string/jumbo v10, "answers"

    invoke-virtual {v8, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string/jumbo v10, "question"

    invoke-virtual {v8, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_12

    .line 44
    .end local v0    # "answers":Lorg/json/JSONArray;
    .end local v1    # "answersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "question":Ljava/lang/String;
    .end local v8    # "questionAnswerHash":Lorg/json/JSONObject;
    :cond_5a
    const-string/jumbo v10, "trip_profile"

    invoke-virtual {v9, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_60} :catch_40

    .line 49
    return-object v9
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method
