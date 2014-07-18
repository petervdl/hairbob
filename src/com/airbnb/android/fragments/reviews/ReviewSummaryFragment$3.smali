.class Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$3;
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
    .line 226
    iput-object p1, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$3;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$3;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mPublicFeedbackLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->access$300(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    if-ne v1, v2, :cond_32

    .line 232
    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$3;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$3;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;
    invoke-static {v2}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->access$000(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Lcom/airbnb/android/models/Review;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->intentForEditPublicFeedback(Landroid/content/Context;Lcom/airbnb/android/models/Review;)Landroid/content/Intent;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$3;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;
    invoke-static {v1}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->access$000(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Lcom/airbnb/android/models/Review;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->trackEditFeedback(Lcom/airbnb/android/models/Review;)V

    .line 245
    :cond_2a
    :goto_2a
    if-eqz v0, :cond_31

    .line 246
    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$3;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->startActivity(Landroid/content/Intent;)V

    .line 248
    :cond_31
    return-void

    .line 234
    :cond_32
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$3;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mPrivateFeedbackLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->access$400(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    if-ne v1, v2, :cond_5c

    .line 235
    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$3;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$3;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;
    invoke-static {v2}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->access$000(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Lcom/airbnb/android/models/Review;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->intentForEditPrivateFeedback(Landroid/content/Context;Lcom/airbnb/android/models/Review;)Landroid/content/Intent;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$3;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;
    invoke-static {v1}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->access$000(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Lcom/airbnb/android/models/Review;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->trackEditFeedback(Lcom/airbnb/android/models/Review;)V

    goto :goto_2a

    .line 237
    :cond_5c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$3;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mOverallRatingLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->access$500(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    if-ne v1, v2, :cond_86

    .line 238
    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$3;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$3;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;
    invoke-static {v2}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->access$000(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Lcom/airbnb/android/models/Review;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->intentForEditReview(Landroid/content/Context;Lcom/airbnb/android/models/Review;)Landroid/content/Intent;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$3;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;
    invoke-static {v1}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->access$000(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Lcom/airbnb/android/models/Review;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->trackEditRating(Lcom/airbnb/android/models/Review;)V

    goto :goto_2a

    .line 240
    :cond_86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$3;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mRecommendedLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->access$600(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    if-ne v1, v2, :cond_2a

    .line 241
    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$3;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$3;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;
    invoke-static {v2}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->access$000(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Lcom/airbnb/android/models/Review;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->intentForEditRecommend(Landroid/content/Context;Lcom/airbnb/android/models/Review;)Landroid/content/Intent;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$3;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;
    invoke-static {v1}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->access$000(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Lcom/airbnb/android/models/Review;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->trackEditRecommend(Lcom/airbnb/android/models/Review;)V

    goto/16 :goto_2a
.end method
