.class Lcom/airbnb/android/views/NightsSelector$3;
.super Ljava/lang/Object;
.source "NightsSelector.java"

# interfaces
.implements Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/NightsSelector;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/NightsSelector;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/NightsSelector;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, Lcom/airbnb/android/views/NightsSelector$3;->this$0:Lcom/airbnb/android/views/NightsSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(II)V
    .registers 7
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/airbnb/android/views/NightsSelector$3;->this$0:Lcom/airbnb/android/views/NightsSelector;

    # invokes: Lcom/airbnb/android/views/NightsSelector;->updateTextColors()V
    invoke-static {v0}, Lcom/airbnb/android/views/NightsSelector;->access$500(Lcom/airbnb/android/views/NightsSelector;)V

    .line 109
    iget-object v0, p0, Lcom/airbnb/android/views/NightsSelector$3;->this$0:Lcom/airbnb/android/views/NightsSelector;

    # getter for: Lcom/airbnb/android/views/NightsSelector;->mTouching:Z
    invoke-static {v0}, Lcom/airbnb/android/views/NightsSelector;->access$100(Lcom/airbnb/android/views/NightsSelector;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 111
    iget-object v0, p0, Lcom/airbnb/android/views/NightsSelector$3;->this$0:Lcom/airbnb/android/views/NightsSelector;

    # getter for: Lcom/airbnb/android/views/NightsSelector;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/airbnb/android/views/NightsSelector;->access$400(Lcom/airbnb/android/views/NightsSelector;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/views/NightsSelector$3;->this$0:Lcom/airbnb/android/views/NightsSelector;

    # getter for: Lcom/airbnb/android/views/NightsSelector;->mSnapRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/airbnb/android/views/NightsSelector;->access$300(Lcom/airbnb/android/views/NightsSelector;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    iget-object v0, p0, Lcom/airbnb/android/views/NightsSelector$3;->this$0:Lcom/airbnb/android/views/NightsSelector;

    # getter for: Lcom/airbnb/android/views/NightsSelector;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/airbnb/android/views/NightsSelector;->access$400(Lcom/airbnb/android/views/NightsSelector;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/views/NightsSelector$3;->this$0:Lcom/airbnb/android/views/NightsSelector;

    # getter for: Lcom/airbnb/android/views/NightsSelector;->mSnapRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/airbnb/android/views/NightsSelector;->access$300(Lcom/airbnb/android/views/NightsSelector;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    :cond_2d
    return-void
.end method
