.class Lcom/airbnb/android/fragments/groups/GroupHomeFragment$18;
.super Ljava/lang/Object;
.source "GroupHomeFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getJoinGroupRequestListener()Lcom/airbnb/android/requests/RequestListener;
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
        "Lcom/airbnb/android/requests/groups/JoinGroupRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V
    .registers 2

    .prologue
    .line 858
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$18;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 877
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$18;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mJoinButton:Lcom/airbnb/android/views/StickyButton;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$1000(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/views/StickyButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setEnabled(Z)V

    .line 878
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$18;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mJoinButton:Lcom/airbnb/android/views/StickyButton;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$1000(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/views/StickyButton;

    move-result-object v0

    const v1, 0x7f0e0245

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 879
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$18;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 880
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/groups/JoinGroupRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/groups/JoinGroupRequest;

    .prologue
    const/4 v2, 0x1

    .line 862
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$18;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mJoinButton:Lcom/airbnb/android/views/StickyButton;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$1000(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/views/StickyButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/StickyButton;->setEnabled(Z)V

    .line 863
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$18;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mJoinButton:Lcom/airbnb/android/views/StickyButton;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$1000(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/views/StickyButton;

    move-result-object v0

    const v1, 0x7f0e0245

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 864
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$18;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$18;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$100(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/airbnb/android/requests/groups/JoinGroupRequest;->updateGroup(Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    # setter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$102(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/models/groups/Group;

    .line 865
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$18;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->resetFeed()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$1700(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    .line 866
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$18;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->onMembershipStatusChanged()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$1600(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    .line 867
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$18;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 868
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$18;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->showPostJoinMessage()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$2000(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    .line 872
    :goto_3c
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$18;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$100(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;-><init>(Lcom/airbnb/android/models/groups/Group;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 873
    return-void

    .line 870
    :cond_4d
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$18;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # setter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mJoinedSincePause:Z
    invoke-static {v0, v2}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$2102(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;Z)Z

    goto :goto_3c
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 858
    check-cast p1, Lcom/airbnb/android/requests/groups/JoinGroupRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$18;->onResponse(Lcom/airbnb/android/requests/groups/JoinGroupRequest;)V

    return-void
.end method
