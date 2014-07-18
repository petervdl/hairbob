.class Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$1;
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
    .line 149
    iput-object p1, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$1;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$1;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$1;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment$1;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->mReview:Lcom/airbnb/android/models/Review;
    invoke-static {v2}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->access$000(Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;)Lcom/airbnb/android/models/Review;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Review;->getReviewee()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v2

    const-string/jumbo v4, "user_profile"

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/activities/ROActivity;->intentForUserId(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void
.end method
