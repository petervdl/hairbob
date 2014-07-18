.class Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity$2;
.super Ljava/lang/Object;
.source "ReviewRatingsActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;

.field final synthetic val$dots:Lcom/airbnb/android/views/DotsCounter;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;Lcom/airbnb/android/views/DotsCounter;)V
    .registers 3

    .prologue
    .line 113
    iput-object p1, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity$2;->this$0:Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;

    iput-object p2, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity$2;->val$dots:Lcom/airbnb/android/views/DotsCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 122
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 126
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity$2;->val$dots:Lcom/airbnb/android/views/DotsCounter;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/DotsCounter;->setSelectedDot(I)V

    .line 118
    return-void
.end method
