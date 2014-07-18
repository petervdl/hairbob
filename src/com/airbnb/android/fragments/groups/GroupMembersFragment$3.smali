.class Lcom/airbnb/android/fragments/groups/GroupMembersFragment$3;
.super Ljava/lang/Object;
.source "GroupMembersFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->fetchPageUnsafe()V
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
        "Lcom/airbnb/android/requests/groups/MembersRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/GroupMembersFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)V
    .registers 2

    .prologue
    .line 125
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 142
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mMembersListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->access$400(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mLoadingFooter:Landroid/view/View;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->access$300(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 143
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mMembershipAdapter:Lcom/airbnb/android/adapters/groups/MembershipAdapter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->access$600(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)Lcom/airbnb/android/adapters/groups/MembershipAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/groups/MembershipAdapter;->notifyDataSetChanged()V

    .line 144
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    const/4 v1, 0x1

    # setter for: Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mHasAllMembers:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->access$502(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;Z)Z

    .line 145
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mIsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->access$700(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 146
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/groups/MembersRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/groups/MembersRequest;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mMembersListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->access$400(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mLoadingFooter:Landroid/view/View;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->access$300(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 130
    invoke-virtual {p1}, Lcom/airbnb/android/requests/groups/MembersRequest;->hasResults()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 131
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    const/4 v1, 0x1

    # setter for: Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mHasAllMembers:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->access$502(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;Z)Z

    .line 135
    :goto_1b
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mMembershipAdapter:Lcom/airbnb/android/adapters/groups/MembershipAdapter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->access$600(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)Lcom/airbnb/android/adapters/groups/MembershipAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/groups/MembershipAdapter;->notifyDataSetChanged()V

    .line 136
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mIsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->access$700(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 137
    return-void

    .line 133
    :cond_2f
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mMemberships:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->access$000(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Lcom/airbnb/android/requests/groups/MembersRequest;->membershipsList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1b
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 125
    check-cast p1, Lcom/airbnb/android/requests/groups/MembersRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$3;->onResponse(Lcom/airbnb/android/requests/groups/MembersRequest;)V

    return-void
.end method
