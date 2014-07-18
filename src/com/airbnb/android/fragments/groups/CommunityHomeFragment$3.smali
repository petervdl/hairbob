.class Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$3;
.super Ljava/lang/Object;
.source "CommunityHomeFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->loadTopRecommendedGroups()V
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
        "Lcom/airbnb/android/requests/groups/TopRecommendedGroupsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)V
    .registers 2

    .prologue
    .line 194
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    const/4 v1, 0x1

    # invokes: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->hideFooter(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$300(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;Z)V

    .line 209
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupsLoaderListView:Lcom/airbnb/android/views/LoaderListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$400(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Lcom/airbnb/android/views/LoaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->finishLoader()V

    .line 210
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 211
    const-string/jumbo v0, "community_home"

    const-string/jumbo v1, "no_access_redirect"

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/GroupsAnalytics;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/activities/MainActivity;->intentForDiscover(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 213
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/groups/TopRecommendedGroupsRequest;)V
    .registers 6
    .param p1, "response"    # Lcom/airbnb/android/requests/groups/TopRecommendedGroupsRequest;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    const/4 v1, 0x0

    # invokes: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->hideFooter(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$300(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;Z)V

    .line 198
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupsLoaderListView:Lcom/airbnb/android/views/LoaderListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$400(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Lcom/airbnb/android/views/LoaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->finishLoader()V

    .line 199
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mTopRecommendedGroups:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$500(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 200
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mTopRecommendedGroups:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$500(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Lcom/airbnb/android/requests/groups/TopRecommendedGroupsRequest;->groupList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 201
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupAdapter:Lcom/airbnb/android/adapters/groups/GroupAdapter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$800(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Lcom/airbnb/android/adapters/groups/GroupAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mMyGroups:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$600(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mTopRecommendedGroups:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$500(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mInfiniteRecommendationSections:Ljava/util/Map;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$700(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->resetGroups(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 202
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupAdapter:Lcom/airbnb/android/adapters/groups/GroupAdapter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$800(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Lcom/airbnb/android/adapters/groups/GroupAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->notifyDataSetChanged()V

    .line 203
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    const/4 v1, 0x1

    # setter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mEnableInfiniteScroll:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$102(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;Z)Z

    .line 204
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 194
    check-cast p1, Lcom/airbnb/android/requests/groups/TopRecommendedGroupsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$3;->onResponse(Lcom/airbnb/android/requests/groups/TopRecommendedGroupsRequest;)V

    return-void
.end method
