.class Lcom/airbnb/android/adapters/DiscoverAdapter$11;
.super Ljava/lang/Object;
.source "DiscoverAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/DiscoverAdapter;->getOnScrollListener(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$OnScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

.field final synthetic val$parentScrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/DiscoverAdapter;Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 3

    .prologue
    .line 492
    iput-object p1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$11;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$11;->val$parentScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 549
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$11;->val$parentScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_9

    .line 550
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$11;->val$parentScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 552
    :cond_9
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 9
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 495
    iget-object v4, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$11;->val$parentScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v4, :cond_9

    .line 496
    iget-object v4, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$11;->val$parentScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v4, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 499
    :cond_9
    packed-switch p2, :pswitch_data_88

    .line 545
    :cond_c
    :goto_c
    :pswitch_c
    return-void

    .line 501
    :pswitch_d
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 504
    .local v0, "firstVisiblePosition":I
    move v1, v0

    .local v1, "i":I
    :goto_12
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    if-gt v1, v4, :cond_c

    iget-object v4, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$11;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    iget-object v4, v4, Lcom/airbnb/android/adapters/DiscoverAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    .line 505
    iget-object v4, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$11;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    invoke-virtual {v4, v1}, Lcom/airbnb/android/adapters/DiscoverAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/interfaces/FeedItem;

    .line 507
    .local v2, "item":Lcom/airbnb/android/interfaces/FeedItem;
    invoke-interface {v2}, Lcom/airbnb/android/interfaces/FeedItem;->getType()Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    move-result-object v4

    sget-object v5, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->LOCATIONS:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    if-ne v4, v5, :cond_72

    .line 509
    sub-int v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 511
    .local v3, "listViewItem":Landroid/view/View;
    if-eqz v3, :cond_72

    instance-of v4, v3, Lcom/airbnb/android/views/LoopingViewPager;

    if-eqz v4, :cond_72

    .line 513
    iget-object v4, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$11;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    # getter for: Lcom/airbnb/android/adapters/DiscoverAdapter;->mAutoScrollingViewPager:Lcom/airbnb/android/views/ClickableViewPager;
    invoke-static {v4}, Lcom/airbnb/android/adapters/DiscoverAdapter;->access$100(Lcom/airbnb/android/adapters/DiscoverAdapter;)Lcom/airbnb/android/views/ClickableViewPager;

    move-result-object v4

    if-eqz v4, :cond_4f

    .line 514
    iget-object v4, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$11;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    # getter for: Lcom/airbnb/android/adapters/DiscoverAdapter;->mAutoScrollingViewPager:Lcom/airbnb/android/views/ClickableViewPager;
    invoke-static {v4}, Lcom/airbnb/android/adapters/DiscoverAdapter;->access$100(Lcom/airbnb/android/adapters/DiscoverAdapter;)Lcom/airbnb/android/views/ClickableViewPager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/views/ClickableViewPager;->stopScrolling()V

    .line 517
    :cond_4f
    iget-object v4, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$11;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    check-cast v3, Lcom/airbnb/android/views/LoopingViewPager;

    .end local v3    # "listViewItem":Landroid/view/View;
    invoke-virtual {v3}, Lcom/airbnb/android/views/LoopingViewPager;->getViewPager()Lcom/airbnb/android/views/ClickableViewPager;

    move-result-object v5

    # setter for: Lcom/airbnb/android/adapters/DiscoverAdapter;->mAutoScrollingViewPager:Lcom/airbnb/android/views/ClickableViewPager;
    invoke-static {v4, v5}, Lcom/airbnb/android/adapters/DiscoverAdapter;->access$102(Lcom/airbnb/android/adapters/DiscoverAdapter;Lcom/airbnb/android/views/ClickableViewPager;)Lcom/airbnb/android/views/ClickableViewPager;

    .line 518
    iget-object v4, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$11;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    # getter for: Lcom/airbnb/android/adapters/DiscoverAdapter;->mAutoScrollingViewPager:Lcom/airbnb/android/views/ClickableViewPager;
    invoke-static {v4}, Lcom/airbnb/android/adapters/DiscoverAdapter;->access$100(Lcom/airbnb/android/adapters/DiscoverAdapter;)Lcom/airbnb/android/views/ClickableViewPager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/views/ClickableViewPager;->startScrolling()V

    .line 521
    iget-object v4, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$11;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    # getter for: Lcom/airbnb/android/adapters/DiscoverAdapter;->mAutoScrollingViewPager:Lcom/airbnb/android/views/ClickableViewPager;
    invoke-static {v4}, Lcom/airbnb/android/adapters/DiscoverAdapter;->access$100(Lcom/airbnb/android/adapters/DiscoverAdapter;)Lcom/airbnb/android/views/ClickableViewPager;

    move-result-object v4

    new-instance v5, Lcom/airbnb/android/adapters/DiscoverAdapter$11$1;

    invoke-direct {v5, p0}, Lcom/airbnb/android/adapters/DiscoverAdapter$11$1;-><init>(Lcom/airbnb/android/adapters/DiscoverAdapter$11;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/ClickableViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_c

    .line 504
    :cond_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 540
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/airbnb/android/interfaces/FeedItem;
    :pswitch_75
    iget-object v4, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$11;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    # getter for: Lcom/airbnb/android/adapters/DiscoverAdapter;->mAutoScrollingViewPager:Lcom/airbnb/android/views/ClickableViewPager;
    invoke-static {v4}, Lcom/airbnb/android/adapters/DiscoverAdapter;->access$100(Lcom/airbnb/android/adapters/DiscoverAdapter;)Lcom/airbnb/android/views/ClickableViewPager;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 541
    iget-object v4, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$11;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    # getter for: Lcom/airbnb/android/adapters/DiscoverAdapter;->mAutoScrollingViewPager:Lcom/airbnb/android/views/ClickableViewPager;
    invoke-static {v4}, Lcom/airbnb/android/adapters/DiscoverAdapter;->access$100(Lcom/airbnb/android/adapters/DiscoverAdapter;)Lcom/airbnb/android/views/ClickableViewPager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/views/ClickableViewPager;->stopScrolling()V

    goto :goto_c

    .line 499
    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_75
    .end packed-switch
.end method
