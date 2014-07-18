.class Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$1;
.super Ljava/lang/Object;
.source "ReviewRatingFragment.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->initializeViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;)V
    .registers 2

    .prologue
    .line 160
    iput-object p1, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$1;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .registers 7
    .param p1, "ratingBar"    # Landroid/widget/RatingBar;
    .param p2, "rating"    # F
    .param p3, "fromUser"    # Z

    .prologue
    .line 164
    if-nez p3, :cond_3

    .line 174
    :goto_2
    return-void

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$1;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mReview:Lcom/airbnb/android/models/Review;
    invoke-static {v0}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->access$100(Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;)Lcom/airbnb/android/models/Review;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$1;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mType:Lcom/airbnb/android/models/Review$RatingType;
    invoke-static {v1}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->access$000(Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;)Lcom/airbnb/android/models/Review$RatingType;

    move-result-object v1

    float-to-int v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/models/Review;->setRatingValue(Lcom/airbnb/android/models/Review$RatingType;Ljava/lang/Integer;)V

    .line 169
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/events/ReviewUpdatedEvent;

    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$1;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mReview:Lcom/airbnb/android/models/Review;
    invoke-static {v2}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->access$100(Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;)Lcom/airbnb/android/models/Review;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/android/events/ReviewUpdatedEvent;-><init>(Lcom/airbnb/android/models/Review;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$1;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mRatingUpdatedCallback:Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$RatingUpdatedCallback;
    invoke-static {v0}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->access$200(Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;)Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$RatingUpdatedCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$RatingUpdatedCallback;->onRatingUpdated()V

    .line 173
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$1;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mRatingChangeTime:J

    goto :goto_2
.end method
