.class Lcom/airbnb/android/fragments/groups/GroupMembersFragment$1;
.super Ljava/lang/Object;
.source "GroupMembersFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/GroupMembersFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mMemberships:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->access$000(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/Membership;

    .line 81
    .local v1, "member":Lcom/airbnb/android/models/groups/Membership;
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 82
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_37

    .line 83
    const-string/jumbo v2, "members"

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->access$100(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v3

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/Membership;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackClickUser(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/User;)V

    .line 84
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->access$100(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/Membership;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/airbnb/android/utils/GroupUtils;->handleAvatarClick(Landroid/content/Context;Lcom/airbnb/android/models/groups/Group;Landroid/support/v4/app/FragmentManager;Lcom/airbnb/android/models/User;)V

    .line 86
    :cond_37
    return-void
.end method
