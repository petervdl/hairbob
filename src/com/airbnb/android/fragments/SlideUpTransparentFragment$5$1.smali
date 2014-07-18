.class Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5$1;
.super Ljava/lang/Object;
.source "SlideUpTransparentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;)V
    .registers 2

    .prologue
    .line 208
    iput-object p1, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5$1;->this$1:Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5$1;->this$1:Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mSlideUpActivity:Lcom/airbnb/android/activities/SlideUpTransparentActivity;
    invoke-static {v0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$600(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)Lcom/airbnb/android/activities/SlideUpTransparentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->dismissContent(Z)V

    .line 212
    return-void
.end method
