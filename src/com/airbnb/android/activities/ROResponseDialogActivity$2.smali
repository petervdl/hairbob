.class Lcom/airbnb/android/activities/ROResponseDialogActivity$2;
.super Ljava/lang/Object;
.source "ROResponseDialogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/ROResponseDialogActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/ROResponseDialogActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/ROResponseDialogActivity;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/airbnb/android/activities/ROResponseDialogActivity$2;->this$0:Lcom/airbnb/android/activities/ROResponseDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/android/activities/ROResponseDialogActivity$2;->this$0:Lcom/airbnb/android/activities/ROResponseDialogActivity;

    # getter for: Lcom/airbnb/android/activities/ROResponseDialogActivity;->mTranslucentBg:Landroid/view/View;
    invoke-static {v0}, Lcom/airbnb/android/activities/ROResponseDialogActivity;->access$000(Lcom/airbnb/android/activities/ROResponseDialogActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/airbnb/android/activities/ROResponseDialogActivity$2;->this$0:Lcom/airbnb/android/activities/ROResponseDialogActivity;

    # getter for: Lcom/airbnb/android/activities/ROResponseDialogActivity;->mTranslucentBg:Landroid/view/View;
    invoke-static {v0}, Lcom/airbnb/android/activities/ROResponseDialogActivity;->access$000(Lcom/airbnb/android/activities/ROResponseDialogActivity;)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_28

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 73
    return-void

    .line 72
    nop

    :array_28
    .array-data 4
        0x0
        0x3f19999a
    .end array-data
.end method
