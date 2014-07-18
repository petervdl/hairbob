.class Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity$1;
.super Ljava/lang/Object;
.source "ReviewFeedbackActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->loadFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/GetReviewRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;)V
    .registers 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity$1;->this$0:Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity$1;->this$0:Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 115
    iget-object v0, p0, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity$1;->this$0:Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;

    # invokes: Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->handleUpNavigation()V
    invoke-static {v0}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->access$100(Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;)V

    .line 116
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/GetReviewRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/GetReviewRequest;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity$1;->this$0:Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;

    iget-object v1, p1, Lcom/airbnb/android/requests/GetReviewRequest;->review:Lcom/airbnb/android/models/Review;

    # invokes: Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->showReview(Lcom/airbnb/android/models/Review;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->access$000(Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;Lcom/airbnb/android/models/Review;)V

    .line 110
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 105
    check-cast p1, Lcom/airbnb/android/requests/GetReviewRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity$1;->onResponse(Lcom/airbnb/android/requests/GetReviewRequest;)V

    return-void
.end method
