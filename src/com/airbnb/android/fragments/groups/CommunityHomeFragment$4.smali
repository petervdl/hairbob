.class Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$4;
.super Ljava/lang/Object;
.source "CommunityHomeFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->loadMyGroups()V
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
        "Lcom/airbnb/android/requests/groups/MyGroupsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)V
    .registers 2

    .prologue
    .line 219
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupsLoaderListView:Lcom/airbnb/android/views/LoaderListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$400(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Lcom/airbnb/android/views/LoaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->finishLoader()V

    .line 241
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 242
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->loadTopRecommendedGroups()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$1000(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)V

    .line 243
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/groups/MyGroupsRequest;)V
    .registers 7
    .param p1, "response"    # Lcom/airbnb/android/requests/groups/MyGroupsRequest;

    .prologue
    const/4 v0, 0x0

    .line 223
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupsListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$900(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 224
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupsLoaderListView:Lcom/airbnb/android/views/LoaderListView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$400(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Lcom/airbnb/android/views/LoaderListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/views/LoaderListView;->finishLoader()V

    .line 226
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mMyGroups:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$600(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 227
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mMyGroups:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$600(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/airbnb/android/requests/groups/MyGroupsRequest;->getJoinedGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 228
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mMyGroups:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$600(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/airbnb/android/requests/groups/MyGroupsRequest;->getPendingGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 230
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupAdapter:Lcom/airbnb/android/adapters/groups/GroupAdapter;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$800(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Lcom/airbnb/android/adapters/groups/GroupAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mMyGroups:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$600(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mTopRecommendedGroups:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$500(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mInfiniteRecommendationSections:Ljava/util/Map;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$700(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->resetGroups(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 231
    invoke-virtual {p1}, Lcom/airbnb/android/requests/groups/MyGroupsRequest;->hasIntroduction()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 232
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupAdapter:Lcom/airbnb/android/adapters/groups/GroupAdapter;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$800(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Lcom/airbnb/android/adapters/groups/GroupAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/airbnb/android/requests/groups/MyGroupsRequest;->getIntroduction()Lcom/airbnb/android/models/groups/GroupsIntroduction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->setIntroduction(Lcom/airbnb/android/models/groups/GroupsIntroduction;)V

    .line 234
    :cond_64
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupAdapter:Lcom/airbnb/android/adapters/groups/GroupAdapter;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$800(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Lcom/airbnb/android/adapters/groups/GroupAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->notifyDataSetChanged()V

    .line 235
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$4;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mMyGroups:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$600(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7a

    const/4 v0, 0x1

    :cond_7a
    invoke-static {v0}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackCommunityHomeImpression(Z)V

    .line 236
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 219
    check-cast p1, Lcom/airbnb/android/requests/groups/MyGroupsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$4;->onResponse(Lcom/airbnb/android/requests/groups/MyGroupsRequest;)V

    return-void
.end method
