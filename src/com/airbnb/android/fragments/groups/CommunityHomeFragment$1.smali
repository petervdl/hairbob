.class Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$1;
.super Ljava/lang/Object;
.source "CommunityHomeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)V
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
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
    .line 114
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mHasIntroductionHeader:Z
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->access$000(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-nez p3, :cond_b

    .line 124
    :cond_a
    :goto_a
    return-void

    .line 117
    :cond_b
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 118
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_a

    .line 119
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/Group;

    .line 120
    .local v1, "group":Lcom/airbnb/android/models/groups/Group;
    invoke-static {v1, p3}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackCommunityHomeTapGroup(Lcom/airbnb/android/models/groups/Group;I)V

    .line 121
    invoke-static {v1}, Lcom/airbnb/android/models/groups/GroupsUri;->newGroupHomeUri(Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/airbnb/android/activities/groups/GroupActivity;->intentForUri(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v2

    .line 122
    .local v2, "showGroupIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    invoke-virtual {v3, v2}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_a
.end method
