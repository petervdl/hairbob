.class Lcom/airbnb/android/fragments/DiscoverFragment$2;
.super Ljava/lang/Object;
.source "DiscoverFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/DiscoverFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/PopularRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/DiscoverFragment;

.field final synthetic val$lastLocation:Landroid/location/Location;

.field final synthetic val$popularStartTime:J

.field final synthetic val$user:Lcom/airbnb/android/models/User;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/DiscoverFragment;JLcom/airbnb/android/models/User;Landroid/location/Location;)V
    .registers 6

    .prologue
    .line 100
    iput-object p1, p0, Lcom/airbnb/android/fragments/DiscoverFragment$2;->this$0:Lcom/airbnb/android/fragments/DiscoverFragment;

    iput-wide p2, p0, Lcom/airbnb/android/fragments/DiscoverFragment$2;->val$popularStartTime:J

    iput-object p4, p0, Lcom/airbnb/android/fragments/DiscoverFragment$2;->val$user:Lcom/airbnb/android/models/User;

    iput-object p5, p0, Lcom/airbnb/android/fragments/DiscoverFragment$2;->val$lastLocation:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/airbnb/android/fragments/DiscoverFragment$2;->val$popularStartTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->trackPopularRequestTime(J)V

    .line 135
    iget-object v0, p0, Lcom/airbnb/android/fragments/DiscoverFragment$2;->this$0:Lcom/airbnb/android/fragments/DiscoverFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 136
    iget-object v0, p0, Lcom/airbnb/android/fragments/DiscoverFragment$2;->this$0:Lcom/airbnb/android/fragments/DiscoverFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/DiscoverFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->finishLoader()V

    .line 137
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/PopularRequest;)V
    .registers 11
    .param p1, "response"    # Lcom/airbnb/android/requests/PopularRequest;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 105
    iget-object v5, p0, Lcom/airbnb/android/fragments/DiscoverFragment$2;->this$0:Lcom/airbnb/android/fragments/DiscoverFragment;

    # getter for: Lcom/airbnb/android/fragments/DiscoverFragment;->mHandledPopularResponse:Z
    invoke-static {v5}, Lcom/airbnb/android/fragments/DiscoverFragment;->access$000(Lcom/airbnb/android/fragments/DiscoverFragment;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 130
    :cond_a
    :goto_a
    return-void

    .line 108
    :cond_b
    iget-object v5, p0, Lcom/airbnb/android/fragments/DiscoverFragment$2;->this$0:Lcom/airbnb/android/fragments/DiscoverFragment;

    # setter for: Lcom/airbnb/android/fragments/DiscoverFragment;->mHandledPopularResponse:Z
    invoke-static {v5, v3}, Lcom/airbnb/android/fragments/DiscoverFragment;->access$002(Lcom/airbnb/android/fragments/DiscoverFragment;Z)Z

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/airbnb/android/fragments/DiscoverFragment$2;->val$popularStartTime:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->trackPopularRequestTime(J)V

    .line 111
    iget-object v5, p0, Lcom/airbnb/android/fragments/DiscoverFragment$2;->this$0:Lcom/airbnb/android/fragments/DiscoverFragment;

    # getter for: Lcom/airbnb/android/fragments/DiscoverFragment;->mDiscoverAdapter:Lcom/airbnb/android/adapters/DiscoverAdapter;
    invoke-static {v5}, Lcom/airbnb/android/fragments/DiscoverFragment;->access$100(Lcom/airbnb/android/fragments/DiscoverFragment;)Lcom/airbnb/android/adapters/DiscoverAdapter;

    move-result-object v5

    iget-object v6, p1, Lcom/airbnb/android/requests/PopularRequest;->popularItems:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/airbnb/android/adapters/DiscoverAdapter;->addDiscoverData(Ljava/util/List;)V

    .line 112
    iget-object v5, p0, Lcom/airbnb/android/fragments/DiscoverFragment$2;->val$user:Lcom/airbnb/android/models/User;

    if-eqz v5, :cond_6a

    iget-object v5, p0, Lcom/airbnb/android/fragments/DiscoverFragment$2;->this$0:Lcom/airbnb/android/fragments/DiscoverFragment;

    invoke-virtual {v5}, Lcom/airbnb/android/fragments/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string/jumbo v6, "referral_card_closed"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_6a

    .line 113
    iget-object v5, p1, Lcom/airbnb/android/requests/PopularRequest;->popularItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9b

    move v2, v3

    .line 114
    .local v2, "index":I
    :goto_49
    iget-object v5, p0, Lcom/airbnb/android/fragments/DiscoverFragment$2;->this$0:Lcom/airbnb/android/fragments/DiscoverFragment;

    # getter for: Lcom/airbnb/android/fragments/DiscoverFragment;->mAddedEnableLmbCallout:Z
    invoke-static {v5}, Lcom/airbnb/android/fragments/DiscoverFragment;->access$200(Lcom/airbnb/android/fragments/DiscoverFragment;)Z

    move-result v5

    if-eqz v5, :cond_9d

    move v5, v3

    :goto_52
    add-int/2addr v2, v5

    .line 115
    iget-object v5, p0, Lcom/airbnb/android/fragments/DiscoverFragment$2;->this$0:Lcom/airbnb/android/fragments/DiscoverFragment;

    # getter for: Lcom/airbnb/android/fragments/DiscoverFragment;->mAddedLastMinuteDealsItem:Z
    invoke-static {v5}, Lcom/airbnb/android/fragments/DiscoverFragment;->access$300(Lcom/airbnb/android/fragments/DiscoverFragment;)Z

    move-result v5

    if-eqz v5, :cond_9f

    :goto_5b
    add-int/2addr v2, v3

    .line 116
    iget-object v3, p0, Lcom/airbnb/android/fragments/DiscoverFragment$2;->this$0:Lcom/airbnb/android/fragments/DiscoverFragment;

    # getter for: Lcom/airbnb/android/fragments/DiscoverFragment;->mDiscoverAdapter:Lcom/airbnb/android/adapters/DiscoverAdapter;
    invoke-static {v3}, Lcom/airbnb/android/fragments/DiscoverFragment;->access$100(Lcom/airbnb/android/fragments/DiscoverFragment;)Lcom/airbnb/android/adapters/DiscoverAdapter;

    move-result-object v3

    new-instance v4, Lcom/airbnb/android/models/ReferralCardFeedItem;

    invoke-direct {v4}, Lcom/airbnb/android/models/ReferralCardFeedItem;-><init>()V

    invoke-virtual {v3, v2, v4}, Lcom/airbnb/android/adapters/DiscoverAdapter;->addDiscoverItem(ILcom/airbnb/android/interfaces/FeedItem;)V

    .line 118
    .end local v2    # "index":I
    :cond_6a
    iget-object v3, p0, Lcom/airbnb/android/fragments/DiscoverFragment$2;->this$0:Lcom/airbnb/android/fragments/DiscoverFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/DiscoverFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/LoaderListView;->finishLoader()V

    .line 121
    iget-object v3, p0, Lcom/airbnb/android/fragments/DiscoverFragment$2;->this$0:Lcom/airbnb/android/fragments/DiscoverFragment;

    # getter for: Lcom/airbnb/android/fragments/DiscoverFragment;->mDiscoverAdapter:Lcom/airbnb/android/adapters/DiscoverAdapter;
    invoke-static {v3}, Lcom/airbnb/android/fragments/DiscoverFragment;->access$100(Lcom/airbnb/android/fragments/DiscoverFragment;)Lcom/airbnb/android/adapters/DiscoverAdapter;

    move-result-object v3

    iget-object v4, p1, Lcom/airbnb/android/requests/PopularRequest;->serverOffsetParams:Lcom/airbnb/android/utils/Strap;

    iget-object v5, p0, Lcom/airbnb/android/fragments/DiscoverFragment$2;->val$lastLocation:Landroid/location/Location;

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/adapters/DiscoverAdapter;->setSubsequentRequestParams(Lcom/airbnb/android/utils/Strap;Landroid/location/Location;)V

    .line 122
    iget-object v3, p0, Lcom/airbnb/android/fragments/DiscoverFragment$2;->this$0:Lcom/airbnb/android/fragments/DiscoverFragment;

    # getter for: Lcom/airbnb/android/fragments/DiscoverFragment;->mDiscoverAdapter:Lcom/airbnb/android/adapters/DiscoverAdapter;
    invoke-static {v3}, Lcom/airbnb/android/fragments/DiscoverFragment;->access$100(Lcom/airbnb/android/fragments/DiscoverFragment;)Lcom/airbnb/android/adapters/DiscoverAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/DiscoverAdapter;->enableLoadMore()V

    .line 125
    iget-object v3, p0, Lcom/airbnb/android/fragments/DiscoverFragment$2;->this$0:Lcom/airbnb/android/fragments/DiscoverFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/DiscoverFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/LoaderListView;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v0

    .line 126
    .local v0, "absListView":Landroid/widget/AbsListView;
    instance-of v3, v0, Lcom/etsy/android/grid/StaggeredGridView;

    if-eqz v3, :cond_a

    move-object v1, v0

    .line 127
    check-cast v1, Lcom/etsy/android/grid/StaggeredGridView;

    .line 128
    .local v1, "gridView":Lcom/etsy/android/grid/StaggeredGridView;
    invoke-virtual {v1}, Lcom/etsy/android/grid/StaggeredGridView;->resetToTop()V

    goto/16 :goto_a

    .end local v0    # "absListView":Landroid/widget/AbsListView;
    .end local v1    # "gridView":Lcom/etsy/android/grid/StaggeredGridView;
    :cond_9b
    move v2, v4

    .line 113
    goto :goto_49

    .restart local v2    # "index":I
    :cond_9d
    move v5, v4

    .line 114
    goto :goto_52

    :cond_9f
    move v3, v4

    .line 115
    goto :goto_5b
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 100
    check-cast p1, Lcom/airbnb/android/requests/PopularRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/DiscoverFragment$2;->onResponse(Lcom/airbnb/android/requests/PopularRequest;)V

    return-void
.end method
