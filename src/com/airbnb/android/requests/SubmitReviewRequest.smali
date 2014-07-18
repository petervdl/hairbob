.class public Lcom/airbnb/android/requests/SubmitReviewRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "SubmitReviewRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/SubmitReviewRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public review:Lcom/airbnb/android/models/Review;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "review"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/Review;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 6
    .param p1, "review"    # Lcom/airbnb/android/models/Review;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/Review;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/SubmitReviewRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/SubmitReviewRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reviews/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/airbnb/android/models/Review;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/airbnb/android/requests/SubmitReviewRequest;->getJSON(Lcom/airbnb/android/models/Review;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/SubmitReviewRequest;->setJsonPost(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method private getJSON(Lcom/airbnb/android/models/Review;)Ljava/lang/String;
    .registers 6
    .param p1, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 18
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 21
    .local v1, "reviewJson":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v2, "comments"

    invoke-virtual {p1}, Lcom/airbnb/android/models/Review;->getPublicFeedback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    const-string/jumbo v2, "private_feedback"

    invoke-virtual {p1}, Lcom/airbnb/android/models/Review;->getPrivateFeedback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    const-string/jumbo v2, "recommend"

    invoke-virtual {p1}, Lcom/airbnb/android/models/Review;->isRecommended()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    const-string/jumbo v2, "communication"

    invoke-virtual {p1}, Lcom/airbnb/android/models/Review;->getCommunicationRating()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string/jumbo v2, "cleanliness"

    invoke-virtual {p1}, Lcom/airbnb/android/models/Review;->getCleanlinessRating()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    const-string/jumbo v2, "accuracy"

    invoke-virtual {p1}, Lcom/airbnb/android/models/Review;->getAccuracyRating()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string/jumbo v2, "checkin"

    invoke-virtual {p1}, Lcom/airbnb/android/models/Review;->getCheckinRating()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string/jumbo v2, "location"

    invoke-virtual {p1}, Lcom/airbnb/android/models/Review;->getLocationRating()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string/jumbo v2, "respect_house_rules"

    invoke-virtual {p1}, Lcom/airbnb/android/models/Review;->getRespectHouseRulesRating()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string/jumbo v2, "value"

    invoke-virtual {p1}, Lcom/airbnb/android/models/Review;->getValueRating()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string/jumbo v2, "rating"

    invoke-virtual {p1}, Lcom/airbnb/android/models/Review;->getAverageRating()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_73
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_73} :catch_7c

    .line 36
    :goto_73
    instance-of v2, v1, Lorg/json/JSONObject;

    if-nez v2, :cond_8a

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1    # "reviewJson":Lorg/json/JSONObject;
    :goto_7b
    return-object v2

    .line 32
    .restart local v1    # "reviewJson":Lorg/json/JSONObject;
    :catch_7c
    move-exception v0

    .line 33
    .local v0, "e":Lorg/json/JSONException;
    const-class v2, Lcom/airbnb/android/requests/SubmitReviewRequest;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Error constructing JSON"

    invoke-static {v2, v3, v0}, Lcom/airbnb/android/utils/BuildHelper;->debugErrorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_73

    .line 36
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_8a
    check-cast v1, Lorg/json/JSONObject;

    .end local v1    # "reviewJson":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7b
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method
