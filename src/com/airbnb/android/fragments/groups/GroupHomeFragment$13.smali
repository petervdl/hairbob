.class Lcom/airbnb/android/fragments/groups/GroupHomeFragment$13;
.super Ljava/lang/Object;
.source "GroupHomeFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->leaveGroup()V
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
        "Lcom/airbnb/android/requests/groups/LeaveGroupRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V
    .registers 2

    .prologue
    .line 625
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 638
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 639
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_b

    .line 640
    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 642
    :cond_b
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/groups/LeaveGroupRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/groups/LeaveGroupRequest;

    .prologue
    const/4 v1, 0x0

    .line 629
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$100(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/groups/Group;->setIsMember(Z)V

    .line 630
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$100(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/groups/Group;->setIsPending(Z)V

    .line 631
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->onMembershipStatusChanged()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$1600(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    .line 632
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->resetFeed()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$1700(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    .line 633
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$13;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$100(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;-><init>(Lcom/airbnb/android/models/groups/Group;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 634
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 625
    check-cast p1, Lcom/airbnb/android/requests/groups/LeaveGroupRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$13;->onResponse(Lcom/airbnb/android/requests/groups/LeaveGroupRequest;)V

    return-void
.end method
