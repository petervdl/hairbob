.class Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;
.super Ljava/lang/Object;
.source "CommunityHomeFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->fetchPageUnsafe()V
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
        "Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)V
    .registers 2

    .prologue
    .line 268
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 289
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->hideFooter(Z)V
    invoke-static {v0, v3}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$300(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;Z)V

    .line 290
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupsLoaderListView:Lcom/airbnb/android/views/LoaderListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$400(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Lcom/airbnb/android/views/LoaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->finishLoader()V

    .line 291
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 292
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupsListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$900(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mLoadingFooter:Landroid/view/View;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$1300(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 293
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupAdapter:Lcom/airbnb/android/adapters/groups/GroupAdapter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$800(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Lcom/airbnb/android/adapters/groups/GroupAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->notifyDataSetChanged()V

    .line 294
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # setter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mHasAllRecommendedGroups:Z
    invoke-static {v0, v3}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$1102(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;Z)Z

    .line 295
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # setter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mEnableInfiniteScroll:Z
    invoke-static {v0, v2}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$102(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;Z)Z

    .line 296
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mIsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$1200(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 297
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;)V
    .registers 8
    .param p1, "response"    # Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 272
    invoke-virtual {p1}, Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;->hasResults()Z

    move-result v2

    if-nez v2, :cond_58

    .line 273
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # setter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mHasAllRecommendedGroups:Z
    invoke-static {v2, v0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$1102(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;Z)Z

    .line 274
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # setter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mEnableInfiniteScroll:Z
    invoke-static {v2, v1}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$102(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;Z)Z

    .line 275
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->hideFooter(Z)V
    invoke-static {v2, v0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$300(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;Z)V

    .line 281
    :goto_17
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupAdapter:Lcom/airbnb/android/adapters/groups/GroupAdapter;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$800(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Lcom/airbnb/android/adapters/groups/GroupAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mMyGroups:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$600(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mTopRecommendedGroups:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$500(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mInfiniteRecommendationSections:Ljava/util/Map;
    invoke-static {v5}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$700(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->resetGroups(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 282
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupAdapter:Lcom/airbnb/android/adapters/groups/GroupAdapter;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$800(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Lcom/airbnb/android/adapters/groups/GroupAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->notifyDataSetChanged()V

    .line 283
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mIsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$1200(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 284
    invoke-virtual {p1}, Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;->getOffset()I

    move-result v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mMyGroups:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$600(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6d

    :goto_54
    invoke-static {v2, v0}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackCommunityHomeFeedScrolled(IZ)V

    .line 285
    return-void

    .line 277
    :cond_58
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mInfiniteRecommendationSections:Ljava/util/Map;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$700(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;->getGroupsSections(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    # setter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mInfiniteRecommendationSections:Ljava/util/Map;
    invoke-static {v2, v3}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$702(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;Ljava/util/Map;)Ljava/util/Map;

    .line 278
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->hideFooter(Z)V
    invoke-static {v2, v1}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$300(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;Z)V

    goto :goto_17

    :cond_6d
    move v0, v1

    .line 284
    goto :goto_54
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 268
    check-cast p1, Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;->onResponse(Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;)V

    return-void
.end method
