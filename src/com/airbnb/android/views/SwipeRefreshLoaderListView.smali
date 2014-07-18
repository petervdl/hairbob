.class public Lcom/airbnb/android/views/SwipeRefreshLoaderListView;
.super Lcom/airbnb/android/views/LoaderListView;
.source "SwipeRefreshLoaderListView.java"


# instance fields
.field mListView:Landroid/widget/ListView;

.field mSwipeRefreshLayout:Lcom/airbnb/android/views/AirSwipeRefreshLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/LoaderListView;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/LoaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/views/LoaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public getSwipeRefreshLayout()Landroid/support/v4/widget/SwipeRefreshLayout;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/airbnb/android/views/SwipeRefreshLoaderListView;->mSwipeRefreshLayout:Lcom/airbnb/android/views/AirSwipeRefreshLayout;

    return-object v0
.end method

.method protected init()V
    .registers 3

    .prologue
    .line 32
    const v0, 0x7f0301da

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/SwipeRefreshLoaderListView;->init(I)V

    .line 33
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 35
    iget-object v0, p0, Lcom/airbnb/android/views/SwipeRefreshLoaderListView;->mSwipeRefreshLayout:Lcom/airbnb/android/views/AirSwipeRefreshLayout;

    new-instance v1, Lcom/airbnb/android/views/SwipeRefreshLoaderListView$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/views/SwipeRefreshLoaderListView$1;-><init>(Lcom/airbnb/android/views/SwipeRefreshLoaderListView;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirSwipeRefreshLayout;->setCanChildScrollUpListener(Lcom/airbnb/android/views/AirSwipeRefreshLayout$CanChildScrollUpListener;)V

    .line 41
    return-void
.end method
