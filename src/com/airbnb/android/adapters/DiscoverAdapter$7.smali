.class Lcom/airbnb/android/adapters/DiscoverAdapter$7;
.super Ljava/lang/Object;
.source "DiscoverAdapter.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/DiscoverAdapter;->getLocationsView(Lcom/airbnb/android/models/TravelLocationsFeedItem;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPrevState:I

.field final synthetic this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

.field final synthetic val$item:Lcom/airbnb/android/models/TravelLocationsFeedItem;

.field final synthetic val$listView:Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

.field final synthetic val$position:I

.field final synthetic val$travelAdapter:Lcom/airbnb/android/adapters/TravelLocationsViewPagerAdapter;

.field final synthetic val$viewHolder:Lcom/airbnb/android/adapters/DiscoverAdapter$LocationViewHolder;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/DiscoverAdapter;Lcom/airbnb/android/models/TravelLocationsFeedItem;Lcom/airbnb/android/adapters/TravelLocationsViewPagerAdapter;ILcom/airbnb/android/interfaces/ViewPagerAbsListView;Lcom/airbnb/android/adapters/DiscoverAdapter$LocationViewHolder;)V
    .registers 7

    .prologue
    .line 301
    iput-object p1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$7;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$7;->val$item:Lcom/airbnb/android/models/TravelLocationsFeedItem;

    iput-object p3, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$7;->val$travelAdapter:Lcom/airbnb/android/adapters/TravelLocationsViewPagerAdapter;

    iput p4, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$7;->val$position:I

    iput-object p5, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$7;->val$listView:Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

    iput-object p6, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$7;->val$viewHolder:Lcom/airbnb/android/adapters/DiscoverAdapter$LocationViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    .line 320
    iget v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$7;->mPrevState:I

    if-nez v0, :cond_17

    .line 321
    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    .line 323
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$7;->val$listView:Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

    iget-object v1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$7;->val$viewHolder:Lcom/airbnb/android/adapters/DiscoverAdapter$LocationViewHolder;

    iget-object v1, v1, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationViewHolder;->loopingViewPager:Lcom/airbnb/android/views/LoopingViewPager;

    invoke-virtual {v1}, Lcom/airbnb/android/views/LoopingViewPager;->getViewPager()Lcom/airbnb/android/views/ClickableViewPager;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ViewPagerAbsListView;->setCurrentViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 330
    :cond_14
    :goto_14
    iput p1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$7;->mPrevState:I

    .line 331
    return-void

    .line 325
    :cond_17
    if-eqz p1, :cond_1c

    const/4 v0, 0x2

    if-ne p1, v0, :cond_14

    .line 327
    :cond_1c
    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$7;->val$listView:Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ViewPagerAbsListView;->setCurrentViewPager(Landroid/support/v4/view/ViewPager;)V

    goto :goto_14
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "selectedPage"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 316
    return-void
.end method

.method public onPageSelected(I)V
    .registers 8
    .param p1, "selectedPage"    # I

    .prologue
    .line 306
    iget-object v2, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$7;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    iget-object v3, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$7;->val$item:Lcom/airbnb/android/models/TravelLocationsFeedItem;

    iget-object v4, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$7;->val$travelAdapter:Lcom/airbnb/android/adapters/TravelLocationsViewPagerAdapter;

    invoke-virtual {v4, p1}, Lcom/airbnb/android/adapters/TravelLocationsViewPagerAdapter;->getAdjustedPosition(I)I

    move-result v4

    iget-object v5, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$7;->val$travelAdapter:Lcom/airbnb/android/adapters/TravelLocationsViewPagerAdapter;

    invoke-virtual {v5}, Lcom/airbnb/android/adapters/TravelLocationsViewPagerAdapter;->isLoopingEnabled()Z

    move-result v5

    # invokes: Lcom/airbnb/android/adapters/DiscoverAdapter;->updateSelectedLocation(Lcom/airbnb/android/models/TravelLocationsFeedItem;IIZ)Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;
    invoke-static {v2, v3, p1, v4, v5}, Lcom/airbnb/android/adapters/DiscoverAdapter;->access$000(Lcom/airbnb/android/adapters/DiscoverAdapter;Lcom/airbnb/android/models/TravelLocationsFeedItem;IIZ)Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;

    move-result-object v0

    .line 310
    .local v0, "locationPageRecord":Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;
    iget-object v2, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$7;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    # getter for: Lcom/airbnb/android/adapters/DiscoverAdapter;->mAutoScrollingViewPager:Lcom/airbnb/android/views/ClickableViewPager;
    invoke-static {v2}, Lcom/airbnb/android/adapters/DiscoverAdapter;->access$100(Lcom/airbnb/android/adapters/DiscoverAdapter;)Lcom/airbnb/android/views/ClickableViewPager;

    move-result-object v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$7;->this$0:Lcom/airbnb/android/adapters/DiscoverAdapter;

    # getter for: Lcom/airbnb/android/adapters/DiscoverAdapter;->mAutoScrollingViewPager:Lcom/airbnb/android/views/ClickableViewPager;
    invoke-static {v2}, Lcom/airbnb/android/adapters/DiscoverAdapter;->access$100(Lcom/airbnb/android/adapters/DiscoverAdapter;)Lcom/airbnb/android/views/ClickableViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/views/ClickableViewPager;->isAutoScrolling()Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v1, 0x1

    .line 311
    .local v1, "wasAutoScroll":Z
    :goto_29
    iget v2, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$7;->val$position:I

    invoke-static {v0, v2, v1}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->trackTravelLocationSwipe(Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;IZ)V

    .line 312
    return-void

    .line 310
    .end local v1    # "wasAutoScroll":Z
    :cond_2f
    const/4 v1, 0x0

    goto :goto_29
.end method
