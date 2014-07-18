.class Lcom/airbnb/android/fragments/groups/GroupHomeFragment$6;
.super Ljava/lang/Object;
.source "GroupHomeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->updateView()Landroid/view/View;
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
    .line 436
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$6;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

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
    .line 439
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$6;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 440
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_2a

    .line 441
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/groups/BaseContent;

    .line 442
    .local v0, "content":Lcom/airbnb/android/models/groups/BaseContent;
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$6;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$100(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v3

    invoke-static {v3, v0, p3}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackGroupHomeContentCard(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;I)V

    .line 443
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$6;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$100(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/airbnb/android/models/groups/GroupsUri;->newBaseContentDrilldownUri(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/airbnb/android/activities/groups/GroupContentActivity;->intentForUri(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v2

    .line 445
    .local v2, "showContentIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$6;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-virtual {v3, v2}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 447
    .end local v0    # "content":Lcom/airbnb/android/models/groups/BaseContent;
    .end local v2    # "showContentIntent":Landroid/content/Intent;
    :cond_2a
    return-void
.end method
