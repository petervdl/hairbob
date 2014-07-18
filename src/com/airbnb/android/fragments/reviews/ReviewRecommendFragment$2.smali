.class Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment$2;
.super Ljava/lang/Object;
.source "ReviewRecommendFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    .line 99
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 92
    :pswitch_7
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mEditMode:Z
    invoke-static {v0}, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->access$300(Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 93
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 95
    :cond_18
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mReview:Lcom/airbnb/android/models/Review;
    invoke-static {v2}, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->access$000(Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;)Lcom/airbnb/android/models/Review;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/activities/reviews/ReviewSummaryActivity;->intentForReview(Landroid/content/Context;Lcom/airbnb/android/models/Review;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->startActivity(Landroid/content/Intent;)V

    .line 96
    const/4 v0, 0x1

    goto :goto_6

    .line 90
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method
