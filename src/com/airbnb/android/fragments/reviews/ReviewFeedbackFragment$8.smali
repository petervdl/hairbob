.class Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$8;
.super Ljava/lang/Object;
.source "ReviewFeedbackFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->initializeViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)V
    .registers 2

    .prologue
    .line 380
    iput-object p1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$8;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$8;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPublicFeedbackEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->access$300(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 384
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$8;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPrivateFeedbackEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->access$400(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 385
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$8;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPrivateFeedbackEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->access$400(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$8;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPrivateFeedbackEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->access$400(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 396
    :goto_28
    return-void

    .line 387
    :cond_29
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$8;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    # invokes: Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->saveFeedback()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->access$1000(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)V

    .line 389
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$8;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mEditMode:Z
    invoke-static {v0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->access$1100(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 390
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$8;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 391
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$8;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$8;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$8;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReview:Lcom/airbnb/android/models/Review;
    invoke-static {v2}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->access$500(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)Lcom/airbnb/android/models/Review;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/activities/reviews/ReviewSummaryActivity;->intentForReview(Landroid/content/Context;Lcom/airbnb/android/models/Review;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_28

    .line 393
    :cond_55
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$8;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$8;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$8;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mReview:Lcom/airbnb/android/models/Review;
    invoke-static {v2}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->access$500(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)Lcom/airbnb/android/models/Review;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->intentForReview(Landroid/content/Context;Lcom/airbnb/android/models/Review;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_28
.end method
