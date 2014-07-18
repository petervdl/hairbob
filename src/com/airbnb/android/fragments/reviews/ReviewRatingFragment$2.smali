.class Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$2;
.super Ljava/lang/Object;
.source "ReviewRatingFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field final synthetic val$ratingBarListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;Landroid/widget/RatingBar$OnRatingBarChangeListener;)V
    .registers 3

    .prologue
    .line 182
    iput-object p1, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$2;->val$ratingBarListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 187
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 188
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->mRatingStars:Landroid/widget/RatingBar;
    invoke-static {v0}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;->access$300(Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment;)Landroid/widget/RatingBar;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$2$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$2$1;-><init>(Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$2;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RatingBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 202
    :cond_17
    const/4 v0, 0x0

    return v0
.end method
