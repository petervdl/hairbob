.class Lcom/airbnb/android/activities/CompleteProfileActivity$3;
.super Ljava/lang/Object;
.source "CompleteProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/CompleteProfileActivity;->animateShowProgressBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/CompleteProfileActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/CompleteProfileActivity;)V
    .registers 2

    .prologue
    .line 482
    iput-object p1, p0, Lcom/airbnb/android/activities/CompleteProfileActivity$3;->this$0:Lcom/airbnb/android/activities/CompleteProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 486
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/airbnb/android/activities/CompleteProfileActivity$3;->this$0:Lcom/airbnb/android/activities/CompleteProfileActivity;

    # getter for: Lcom/airbnb/android/activities/CompleteProfileActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;
    invoke-static {v1}, Lcom/airbnb/android/activities/CompleteProfileActivity;->access$200(Lcom/airbnb/android/activities/CompleteProfileActivity;)Lcom/airbnb/android/views/StepProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/views/StepProgressBar;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 487
    .local v0, "animate":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 488
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 489
    iget-object v1, p0, Lcom/airbnb/android/activities/CompleteProfileActivity$3;->this$0:Lcom/airbnb/android/activities/CompleteProfileActivity;

    # getter for: Lcom/airbnb/android/activities/CompleteProfileActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;
    invoke-static {v1}, Lcom/airbnb/android/activities/CompleteProfileActivity;->access$200(Lcom/airbnb/android/activities/CompleteProfileActivity;)Lcom/airbnb/android/views/StepProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/StepProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 490
    iget-object v1, p0, Lcom/airbnb/android/activities/CompleteProfileActivity$3;->this$0:Lcom/airbnb/android/activities/CompleteProfileActivity;

    # getter for: Lcom/airbnb/android/activities/CompleteProfileActivity;->mProgressBar:Lcom/airbnb/android/views/StepProgressBar;
    invoke-static {v1}, Lcom/airbnb/android/activities/CompleteProfileActivity;->access$200(Lcom/airbnb/android/activities/CompleteProfileActivity;)Lcom/airbnb/android/views/StepProgressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/StepProgressBar;->setVisibility(I)V

    .line 491
    return-void
.end method
