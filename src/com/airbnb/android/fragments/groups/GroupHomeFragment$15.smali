.class Lcom/airbnb/android/fragments/groups/GroupHomeFragment$15;
.super Ljava/lang/Object;
.source "GroupHomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->updateHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V
    .registers 2

    .prologue
    .line 785
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$15;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 788
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$15;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 789
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_23

    .line 790
    const-string/jumbo v2, "tap_members"

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$15;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$100(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackGroupHome(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;)V

    .line 791
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$15;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$100(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/airbnb/android/activities/groups/GroupMembersActivity;->intentForShow(Landroid/content/Context;Lcom/airbnb/android/models/groups/Group;)Landroid/content/Intent;

    move-result-object v1

    .line 792
    .local v1, "showMembersIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$15;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-virtual {v2, v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 794
    .end local v1    # "showMembersIntent":Landroid/content/Intent;
    :cond_23
    return-void
.end method
