.class Lcom/airbnb/android/views/NightsSelector$2;
.super Ljava/lang/Object;
.source "NightsSelector.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 74
    iput-object p1, p0, Lcom/airbnb/android/views/NightsSelector$2;->this$0:Lcom/airbnb/android/views/NightsSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 77
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_64

    .line 99
    :goto_9
    :pswitch_9
    return v4

    .line 79
    :pswitch_a
    iget-object v5, p0, Lcom/airbnb/android/views/NightsSelector$2;->this$0:Lcom/airbnb/android/views/NightsSelector;

    # setter for: Lcom/airbnb/android/views/NightsSelector;->mTouching:Z
    invoke-static {v5, v4}, Lcom/airbnb/android/views/NightsSelector;->access$102(Lcom/airbnb/android/views/NightsSelector;Z)Z

    .line 80
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    sub-long v2, v5, v7

    .line 81
    .local v2, "diff":J
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/airbnb/android/views/NightsSelector$2;->this$0:Lcom/airbnb/android/views/NightsSelector;

    # getter for: Lcom/airbnb/android/views/NightsSelector;->mStartX:F
    invoke-static {v6}, Lcom/airbnb/android/views/NightsSelector;->access$200(Lcom/airbnb/android/views/NightsSelector;)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    .line 82
    .local v1, "delta":I
    const-wide/16 v5, 0x96

    cmp-long v5, v2, v5

    if-gez v5, :cond_40

    const/16 v5, 0xa

    if-ge v1, v5, :cond_40

    .line 84
    .local v0, "click":Z
    :goto_33
    if-eqz v0, :cond_42

    .line 85
    iget-object v5, p0, Lcom/airbnb/android/views/NightsSelector$2;->this$0:Lcom/airbnb/android/views/NightsSelector;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    # invokes: Lcom/airbnb/android/views/NightsSelector;->snapToPoint(I)V
    invoke-static {v5, v6}, Lcom/airbnb/android/views/NightsSelector;->access$000(Lcom/airbnb/android/views/NightsSelector;I)V

    goto :goto_9

    .end local v0    # "click":Z
    :cond_40
    move v0, v4

    .line 82
    goto :goto_33

    .line 90
    .restart local v0    # "click":Z
    :cond_42
    iget-object v5, p0, Lcom/airbnb/android/views/NightsSelector$2;->this$0:Lcom/airbnb/android/views/NightsSelector;

    # getter for: Lcom/airbnb/android/views/NightsSelector;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/airbnb/android/views/NightsSelector;->access$400(Lcom/airbnb/android/views/NightsSelector;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/airbnb/android/views/NightsSelector$2;->this$0:Lcom/airbnb/android/views/NightsSelector;

    # getter for: Lcom/airbnb/android/views/NightsSelector;->mSnapRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/airbnb/android/views/NightsSelector;->access$300(Lcom/airbnb/android/views/NightsSelector;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v7, 0x32

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    .line 94
    .end local v0    # "click":Z
    .end local v1    # "delta":I
    .end local v2    # "diff":J
    :pswitch_54
    iget-object v5, p0, Lcom/airbnb/android/views/NightsSelector$2;->this$0:Lcom/airbnb/android/views/NightsSelector;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    # setter for: Lcom/airbnb/android/views/NightsSelector;->mStartX:F
    invoke-static {v5, v6}, Lcom/airbnb/android/views/NightsSelector;->access$202(Lcom/airbnb/android/views/NightsSelector;F)F

    .line 97
    :pswitch_5d
    iget-object v5, p0, Lcom/airbnb/android/views/NightsSelector$2;->this$0:Lcom/airbnb/android/views/NightsSelector;

    # setter for: Lcom/airbnb/android/views/NightsSelector;->mTouching:Z
    invoke-static {v5, v0}, Lcom/airbnb/android/views/NightsSelector;->access$102(Lcom/airbnb/android/views/NightsSelector;Z)Z

    goto :goto_9

    .line 77
    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_54
        :pswitch_a
        :pswitch_5d
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_5d
    .end packed-switch
.end method
