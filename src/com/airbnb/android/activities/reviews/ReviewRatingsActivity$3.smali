.class Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity$3;
.super Ljava/lang/Object;
.source "ReviewRatingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->onRatingUpdated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;)V
    .registers 2

    .prologue
    .line 174
    iput-object p1, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity$3;->this$0:Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 178
    iget-object v1, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity$3;->this$0:Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;

    # getter for: Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mViewPager:Lcom/airbnb/android/views/RatingsViewPager;
    invoke-static {v1}, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->access$000(Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;)Lcom/airbnb/android/views/RatingsViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/views/RatingsViewPager;->getCurrentItem()I

    move-result v0

    .line 179
    .local v0, "currItem":I
    iget-object v1, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity$3;->this$0:Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;

    # getter for: Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mViewPagerAdapter:Lcom/airbnb/android/adapters/ReviewRatingsAdapter;
    invoke-static {v1}, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->access$100(Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;)Lcom/airbnb/android/adapters/ReviewRatingsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/ReviewRatingsAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 180
    iget-object v1, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity$3;->this$0:Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;

    # getter for: Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mViewPager:Lcom/airbnb/android/views/RatingsViewPager;
    invoke-static {v1}, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->access$000(Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;)Lcom/airbnb/android/views/RatingsViewPager;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/airbnb/android/views/RatingsViewPager;->setCurrentItem(IZ)V

    .line 182
    :cond_22
    return-void
.end method
