.class Lcom/airbnb/android/fragments/groups/GroupHomeFragment$3;
.super Ljava/lang/Object;
.source "GroupHomeFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getFeedRequestListener()Lcom/airbnb/android/requests/RequestListener;
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
        "Lcom/airbnb/android/requests/groups/FeedRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V
    .registers 2

    .prologue
    .line 330
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    const/4 v1, 0x1

    # setter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mHasAllFeedItems:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$602(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;Z)Z

    .line 353
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$000(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mLoadingFooter:Landroid/view/View;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$500(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 354
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 355
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$000(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mListBottomPaddingFooter:Landroid/view/View;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$700(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 356
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContentAdapter:Lcom/airbnb/android/adapters/groups/ContentAdapter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$800(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/adapters/groups/ContentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/groups/ContentAdapter;->notifyDataSetChanged()V

    .line 357
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mIsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$900(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 358
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/groups/FeedRequest;)V
    .registers 7
    .param p1, "response"    # Lcom/airbnb/android/requests/groups/FeedRequest;

    .prologue
    .line 334
    const-string/jumbo v2, "feed_scrolled"

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContents:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$400(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$100(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackGroupHome(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;)V

    .line 335
    iget-object v2, p1, Lcom/airbnb/android/requests/groups/FeedRequest;->contentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/groups/BaseContent;

    .line 336
    .local v0, "content":Lcom/airbnb/android/models/groups/BaseContent;
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContents:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$400(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 337
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContents:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$400(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 341
    .end local v0    # "content":Lcom/airbnb/android/models/groups/BaseContent;
    :cond_42
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$000(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mLoadingFooter:Landroid/view/View;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$500(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 342
    iget-object v2, p1, Lcom/airbnb/android/requests/groups/FeedRequest;->contentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 343
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    const/4 v3, 0x1

    # setter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mHasAllFeedItems:Z
    invoke-static {v2, v3}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$602(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;Z)Z

    .line 344
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$000(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mListBottomPaddingFooter:Landroid/view/View;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$700(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 346
    :cond_6e
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContentAdapter:Lcom/airbnb/android/adapters/groups/ContentAdapter;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$800(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/adapters/groups/ContentAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/groups/ContentAdapter;->notifyDataSetChanged()V

    .line 347
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mIsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$900(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 348
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 330
    check-cast p1, Lcom/airbnb/android/requests/groups/FeedRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$3;->onResponse(Lcom/airbnb/android/requests/groups/FeedRequest;)V

    return-void
.end method
