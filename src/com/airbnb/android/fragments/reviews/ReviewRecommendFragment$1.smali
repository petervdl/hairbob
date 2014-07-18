.class Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment$1;
.super Ljava/lang/Object;
.source "ReviewRecommendFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 68
    iput-object p1, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment$1;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment$1;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mRecommendYes:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    if-eq v0, v2, :cond_1d

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment$1;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mRecommendNo:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    if-ne v0, v2, :cond_5a

    .line 73
    :cond_1d
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment$1;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mReview:Lcom/airbnb/android/models/Review;
    invoke-static {v0}, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->access$000(Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;)Lcom/airbnb/android/models/Review;

    move-result-object v2

    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment$1;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mRecommendYes:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_5b

    move v0, v1

    :goto_2a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/airbnb/android/models/Review;->setRecommended(Ljava/lang/Boolean;)V

    .line 74
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v2, Lcom/airbnb/android/events/ReviewUpdatedEvent;

    iget-object v3, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment$1;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mReview:Lcom/airbnb/android/models/Review;
    invoke-static {v3}, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->access$000(Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;)Lcom/airbnb/android/models/Review;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/android/events/ReviewUpdatedEvent;-><init>(Lcom/airbnb/android/models/Review;)V

    invoke-virtual {v0, v2}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment$1;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;

    # invokes: Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->updateViews()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->access$100(Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;)V

    .line 78
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment$1;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->access$200(Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment$1;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;->access$200(Lcom/airbnb/android/fragments/reviews/ReviewRecommendFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 81
    :cond_5a
    return-void

    .line 73
    :cond_5b
    const/4 v0, 0x0

    goto :goto_2a
.end method
