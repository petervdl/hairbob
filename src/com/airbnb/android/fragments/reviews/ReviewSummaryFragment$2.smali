.class Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;
.super Ljava/lang/Object;
.source "ReviewSummaryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->initializeViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)V
    .registers 2

    .prologue
    .line 180
    iput-object p1, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;
    invoke-static {v0}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->access$100(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Lcom/airbnb/android/views/LoaderFrame;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LoaderFrame;->setVisibility(I)V

    .line 186
    new-instance v0, Lcom/airbnb/android/requests/SubmitReviewRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;
    invoke-static {v1}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->access$000(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Lcom/airbnb/android/models/Review;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2$1;-><init>(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/SubmitReviewRequest;-><init>(Lcom/airbnb/android/models/Review;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/SubmitReviewRequest;->execute()V

    .line 222
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;
    invoke-static {v0}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->access$000(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Lcom/airbnb/android/models/Review;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->trackSubmitReview(Lcom/airbnb/android/models/Review;)V

    .line 223
    return-void
.end method
