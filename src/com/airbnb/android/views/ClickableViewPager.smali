.class public Lcom/airbnb/android/views/ClickableViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "ClickableViewPager.java"


# static fields
.field private static final MAX_SCROLL_COUNT:I = 0x3

.field public static final PHOTO_CYCLE_DELAY_MS:I = 0xbb8


# instance fields
.field private mAutoScrollCount:I

.field private mAutomationHandler:Landroid/os/Handler;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsAutoScrolling:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/android/views/ClickableViewPager;->mAutoScrollCount:I

    .line 23
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/ClickableViewPager;->initGestureDetector(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/android/views/ClickableViewPager;->mAutoScrollCount:I

    .line 28
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/ClickableViewPager;->initGestureDetector(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/ClickableViewPager;)Landroid/view/View$OnClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/ClickableViewPager;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/airbnb/android/views/ClickableViewPager;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/views/ClickableViewPager;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/ClickableViewPager;

    .prologue
    .line 10
    iget v0, p0, Lcom/airbnb/android/views/ClickableViewPager;->mAutoScrollCount:I

    return v0
.end method

.method static synthetic access$108(Lcom/airbnb/android/views/ClickableViewPager;)I
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/views/ClickableViewPager;

    .prologue
    .line 10
    iget v0, p0, Lcom/airbnb/android/views/ClickableViewPager;->mAutoScrollCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/airbnb/android/views/ClickableViewPager;->mAutoScrollCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/views/ClickableViewPager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/ClickableViewPager;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/airbnb/android/views/ClickableViewPager;->mAutomationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initGestureDetector(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/airbnb/android/views/ClickableViewPager$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/views/ClickableViewPager$1;-><init>(Lcom/airbnb/android/views/ClickableViewPager;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/airbnb/android/views/ClickableViewPager;->mGestureDetector:Landroid/view/GestureDetector;

    .line 42
    return-void
.end method


# virtual methods
.method public isAutoScrolling()Z
    .registers 2

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/airbnb/android/views/ClickableViewPager;->mIsAutoScrolling:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 55
    iget-object v1, p0, Lcom/airbnb/android/views/ClickableViewPager;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_e
    const/4 v0, 0x1

    .line 56
    .local v0, "override":Z
    :goto_f
    if-eqz v0, :cond_14

    .line 57
    invoke-virtual {p0}, Lcom/airbnb/android/views/ClickableViewPager;->stopScrolling()V

    .line 59
    :cond_14
    return v0

    .line 55
    .end local v0    # "override":Z
    :cond_15
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 46
    iget-object v1, p0, Lcom/airbnb/android/views/ClickableViewPager;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_e
    const/4 v0, 0x1

    .line 47
    .local v0, "override":Z
    :goto_f
    if-eqz v0, :cond_14

    .line 48
    invoke-virtual {p0}, Lcom/airbnb/android/views/ClickableViewPager;->stopScrolling()V

    .line 50
    :cond_14
    return v0

    .line 46
    .end local v0    # "override":Z
    :cond_15
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/airbnb/android/views/ClickableViewPager;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 65
    return-void
.end method

.method public startScrolling()V
    .registers 2

    .prologue
    const/16 v0, 0xbb8

    .line 85
    invoke-virtual {p0, v0, v0}, Lcom/airbnb/android/views/ClickableViewPager;->startScrolling(II)V

    .line 86
    return-void
.end method

.method public startScrolling(II)V
    .registers 7
    .param p1, "startDelay"    # I
    .param p2, "cycleDelay"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/airbnb/android/views/ClickableViewPager;->mAutomationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 123
    :goto_4
    return-void

    .line 103
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/views/ClickableViewPager;->mIsAutoScrolling:Z

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/views/ClickableViewPager;->mAutomationHandler:Landroid/os/Handler;

    .line 106
    iget-object v0, p0, Lcom/airbnb/android/views/ClickableViewPager;->mAutomationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/airbnb/android/views/ClickableViewPager$2;

    invoke-direct {v1, p0, p2}, Lcom/airbnb/android/views/ClickableViewPager$2;-><init>(Lcom/airbnb/android/views/ClickableViewPager;I)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method public stopScrolling()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lcom/airbnb/android/views/ClickableViewPager;->mAutomationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 75
    iget-object v0, p0, Lcom/airbnb/android/views/ClickableViewPager;->mAutomationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 76
    iput-object v1, p0, Lcom/airbnb/android/views/ClickableViewPager;->mAutomationHandler:Landroid/os/Handler;

    .line 78
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/views/ClickableViewPager;->mIsAutoScrolling:Z

    .line 79
    return-void
.end method
