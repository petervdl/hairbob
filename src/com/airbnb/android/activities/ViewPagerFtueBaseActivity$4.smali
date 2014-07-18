.class Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$4;
.super Ljava/lang/Object;
.source "ViewPagerFtueBaseActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->initStickyAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;)V
    .registers 2

    .prologue
    .line 324
    iput-object p1, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$4;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 328
    iget-object v1, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$4;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mCurrentColor:I
    invoke-static {v1, v0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->access$502(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;I)I

    .line 329
    iget-object v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$4;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    # getter for: Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mStickyButtonBackground:Landroid/view/View;
    invoke-static {v0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->access$600(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$4;->this$0:Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    # getter for: Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mCurrentColor:I
    invoke-static {v1}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->access$500(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 330
    return-void
.end method
