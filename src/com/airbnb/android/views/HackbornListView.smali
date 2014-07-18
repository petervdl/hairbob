.class public Lcom/airbnb/android/views/HackbornListView;
.super Landroid/widget/ListView;
.source "HackbornListView.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/ViewPagerAbsListView;


# instance fields
.field private mEventHandler:Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0}, Lcom/airbnb/android/views/HackbornListView;->init()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0}, Lcom/airbnb/android/views/HackbornListView;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0}, Lcom/airbnb/android/views/HackbornListView;->init()V

    .line 30
    return-void
.end method

.method private init()V
    .registers 2

    .prologue
    .line 33
    new-instance v0, Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;

    invoke-direct {v0}, Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/views/HackbornListView;->mEventHandler:Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;

    .line 34
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/android/views/HackbornListView;->mEventHandler:Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 54
    const/4 v0, 0x1

    .line 57
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public getListView()Landroid/widget/AbsListView;
    .registers 1

    .prologue
    .line 41
    return-object p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/airbnb/android/views/HackbornListView;->mEventHandler:Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;->handleOnInterceptTouchEvent(Landroid/view/MotionEvent;)V

    .line 48
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCurrentViewPager(Landroid/support/v4/view/ViewPager;)V
    .registers 3
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/airbnb/android/views/HackbornListView;->mEventHandler:Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;->setCurrentViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 38
    return-void
.end method
