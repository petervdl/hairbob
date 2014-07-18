.class Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$2$1;
.super Ljava/lang/Object;
.source "ReviewRatingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$2;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$2;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$2;)V
    .registers 2

    .prologue
    .line 188
    iput-object p1, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$2$1;->this$1:Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$2$1;->this$1:Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$2;

    iget-object v2, v2, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;

    iget-wide v2, v2, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mRatingChangeTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_26

    .line 196
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$2$1;->this$1:Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$2;->val$ratingBarListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$2$1;->this$1:Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$2;

    iget-object v2, v2, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mRatingStars:Landroid/widget/RatingBar;
    invoke-static {v2}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->access$300(Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;)Landroid/widget/RatingBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RatingBar;->getRating()F

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/RatingBar$OnRatingBarChangeListener;->onRatingChanged(Landroid/widget/RatingBar;FZ)V

    .line 198
    :cond_26
    return-void
.end method
