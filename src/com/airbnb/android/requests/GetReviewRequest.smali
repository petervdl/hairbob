.class public Lcom/airbnb/android/requests/GetReviewRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "GetReviewRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/GetReviewRequest;",
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
.method public constructor <init>(JLcom/airbnb/android/requests/RequestListener;)V
    .registers 8
    .param p1, "reviewId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/GetReviewRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/GetReviewRequest;>;"
    const-string/jumbo v0, "reviews/%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 11
    return-void
.end method
