.class Lcom/airbnb/android/fragments/SlideUpFtueFragment$1$2;
.super Ljava/lang/Object;
.source "SlideUpFtueFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1$2;->this$1:Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 112
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1$2;->this$1:Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    # invokes: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->resetView()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$700(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)V

    .line 108
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 117
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 103
    return-void
.end method
