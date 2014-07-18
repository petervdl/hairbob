.class Lcom/airbnb/android/fragments/HostHomeFragment$6;
.super Ljava/lang/Object;
.source "HostHomeFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/HostHomeFragment;->fetchHostHome()V
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
        "Lcom/airbnb/android/requests/HostHomeRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/HostHomeFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/HostHomeFragment;)V
    .registers 2

    .prologue
    .line 318
    iput-object p1, p0, Lcom/airbnb/android/fragments/HostHomeFragment$6;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/airbnb/android/fragments/HostHomeFragment$6;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/HostHomeFragment;->mLoaderListView:Lcom/airbnb/android/views/SwipeRefreshLoaderListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/HostHomeFragment;->access$300(Lcom/airbnb/android/fragments/HostHomeFragment;)Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/SwipeRefreshLoaderListView;->finishLoader()V

    .line 338
    iget-object v0, p0, Lcom/airbnb/android/fragments/HostHomeFragment$6;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    # invokes: Lcom/airbnb/android/fragments/HostHomeFragment;->setupViews(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/fragments/HostHomeFragment;->access$500(Lcom/airbnb/android/fragments/HostHomeFragment;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 340
    iget-object v0, p0, Lcom/airbnb/android/fragments/HostHomeFragment$6;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/HostHomeFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;
    invoke-static {v0}, Lcom/airbnb/android/fragments/HostHomeFragment;->access$000(Lcom/airbnb/android/fragments/HostHomeFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 341
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/HostHomeRequest;)V
    .registers 11
    .param p1, "response"    # Lcom/airbnb/android/requests/HostHomeRequest;

    .prologue
    const/4 v4, 0x0

    .line 322
    iget-object v5, p0, Lcom/airbnb/android/fragments/HostHomeFragment$6;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/HostHomeFragment;->mLoaderListView:Lcom/airbnb/android/views/SwipeRefreshLoaderListView;
    invoke-static {v5}, Lcom/airbnb/android/fragments/HostHomeFragment;->access$300(Lcom/airbnb/android/fragments/HostHomeFragment;)Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/views/SwipeRefreshLoaderListView;->finishLoader()V

    .line 323
    iget-object v5, p0, Lcom/airbnb/android/fragments/HostHomeFragment$6;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/HostHomeFragment;->mLoaderListView:Lcom/airbnb/android/views/SwipeRefreshLoaderListView;
    invoke-static {v5}, Lcom/airbnb/android/fragments/HostHomeFragment;->access$300(Lcom/airbnb/android/fragments/HostHomeFragment;)Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/views/SwipeRefreshLoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 324
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 325
    .local v1, "firstVisiblePosition":I
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 326
    .local v0, "firstVisView":Landroid/view/View;
    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 327
    .local v3, "top":I
    :goto_22
    iget-object v5, p0, Lcom/airbnb/android/fragments/HostHomeFragment$6;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    iget-object v6, p1, Lcom/airbnb/android/requests/HostHomeRequest;->current:Ljava/util/List;

    iget-object v7, p1, Lcom/airbnb/android/requests/HostHomeRequest;->reservations:Ljava/util/List;

    iget-object v8, p1, Lcom/airbnb/android/requests/HostHomeRequest;->alerts:Ljava/util/List;

    # invokes: Lcom/airbnb/android/fragments/HostHomeFragment;->setupViews(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    invoke-static {v5, v6, v7, v8}, Lcom/airbnb/android/fragments/HostHomeFragment;->access$500(Lcom/airbnb/android/fragments/HostHomeFragment;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 329
    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 330
    iget-object v5, p1, Lcom/airbnb/android/requests/HostHomeRequest;->alerts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p1, Lcom/airbnb/android/requests/HostHomeRequest;->reservations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Lcom/airbnb/android/analytics/HostHomeAnalytics;->trackImpression(II)V

    .line 332
    iget-object v5, p0, Lcom/airbnb/android/fragments/HostHomeFragment$6;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/HostHomeFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;
    invoke-static {v5}, Lcom/airbnb/android/fragments/HostHomeFragment;->access$000(Lcom/airbnb/android/fragments/HostHomeFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 333
    return-void

    .end local v3    # "top":I
    :cond_49
    move v3, v4

    .line 326
    goto :goto_22
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 318
    check-cast p1, Lcom/airbnb/android/requests/HostHomeRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/HostHomeFragment$6;->onResponse(Lcom/airbnb/android/requests/HostHomeRequest;)V

    return-void
.end method
