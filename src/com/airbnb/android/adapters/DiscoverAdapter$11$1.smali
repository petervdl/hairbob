.class Lcom/airbnb/android/adapters/DiscoverAdapter$11$1;
.super Ljava/lang/Object;
.source "DiscoverAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/DiscoverAdapter$11;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/adapters/DiscoverAdapter$11;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/DiscoverAdapter$11;)V
    .registers 2

    .prologue
    .line 521
    iput-object p1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$11$1;->this$1:Lcom/airbnb/android/adapters/DiscoverAdapter$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 524
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$11$1;->this$1:Lcom/airbnb/android/adapters/DiscoverAdapter$11;

    iget-object v0, v0, Lcom/airbnb/android/adapters/DiscoverAdapter$11;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    # getter for: Lcom/airbnb/android/adapters/DiscoverAdapter;->mAutoScrollingViewPager:Lcom/airbnb/android/views/ClickableViewPager;
    invoke-static {v0}, Lcom/airbnb/android/adapters/DiscoverAdapter;->access$100(Lcom/airbnb/android/adapters/DiscoverAdapter;)Lcom/airbnb/android/views/ClickableViewPager;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 525
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$11$1;->this$1:Lcom/airbnb/android/adapters/DiscoverAdapter$11;

    iget-object v0, v0, Lcom/airbnb/android/adapters/DiscoverAdapter$11;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    # getter for: Lcom/airbnb/android/adapters/DiscoverAdapter;->mAutoScrollingViewPager:Lcom/airbnb/android/views/ClickableViewPager;
    invoke-static {v0}, Lcom/airbnb/android/adapters/DiscoverAdapter;->access$100(Lcom/airbnb/android/adapters/DiscoverAdapter;)Lcom/airbnb/android/views/ClickableViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/ClickableViewPager;->stopScrolling()V

    .line 526
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$11$1;->this$1:Lcom/airbnb/android/adapters/DiscoverAdapter$11;

    iget-object v0, v0, Lcom/airbnb/android/adapters/DiscoverAdapter$11;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    const/4 v1, 0x0

    # setter for: Lcom/airbnb/android/adapters/DiscoverAdapter;->mAutoScrollingViewPager:Lcom/airbnb/android/views/ClickableViewPager;
    invoke-static {v0, v1}, Lcom/airbnb/android/adapters/DiscoverAdapter;->access$102(Lcom/airbnb/android/adapters/DiscoverAdapter;Lcom/airbnb/android/views/ClickableViewPager;)Lcom/airbnb/android/views/ClickableViewPager;

    .line 529
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method
