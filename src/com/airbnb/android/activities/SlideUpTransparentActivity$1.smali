.class Lcom/airbnb/android/activities/SlideUpTransparentActivity$1;
.super Ljava/lang/Object;
.source "SlideUpTransparentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/SlideUpTransparentActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/SlideUpTransparentActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/SlideUpTransparentActivity;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/airbnb/android/activities/SlideUpTransparentActivity$1;->this$0:Lcom/airbnb/android/activities/SlideUpTransparentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/airbnb/android/activities/SlideUpTransparentActivity$1;->this$0:Lcom/airbnb/android/activities/SlideUpTransparentActivity;

    # getter for: Lcom/airbnb/android/activities/SlideUpTransparentActivity;->mTranslucentBg:Landroid/view/View;
    invoke-static {v0}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->access$000(Lcom/airbnb/android/activities/SlideUpTransparentActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/airbnb/android/activities/SlideUpTransparentActivity$1;->this$0:Lcom/airbnb/android/activities/SlideUpTransparentActivity;

    # getter for: Lcom/airbnb/android/activities/SlideUpTransparentActivity;->mTranslucentBg:Landroid/view/View;
    invoke-static {v0}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->access$000(Lcom/airbnb/android/activities/SlideUpTransparentActivity;)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_28

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 69
    return-void

    .line 68
    nop

    :array_28
    .array-data 4
        0x0
        0x3f19999a
    .end array-data
.end method