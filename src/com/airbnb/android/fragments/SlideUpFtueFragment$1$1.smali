.class Lcom/airbnb/android/fragments/SlideUpFtueFragment$1$1;
.super Ljava/lang/Object;
.source "SlideUpFtueFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 90
    iput-object p1, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1$1;->this$1:Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1$1;->this$1:Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 94
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1$1;->this$1:Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1$1;->this$1:Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;

    iget-object v1, v1, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 96
    :cond_21
    return-void
.end method
