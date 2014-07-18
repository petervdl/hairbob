.class Lcom/airbnb/android/fragments/groups/EventRegistreesFragment$1;
.super Ljava/lang/Object;
.source "EventRegistreesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;)V
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;

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
    .line 69
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->mRegistrations:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->access$000(Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/Registration;

    .line 70
    .local v1, "registration":Lcom/airbnb/android/models/groups/Registration;
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 71
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_37

    .line 72
    const-string/jumbo v2, "meetup_rsvps"

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->access$100(Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v3

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/Registration;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackClickUser(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/User;)V

    .line 73
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->access$100(Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/Registration;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/airbnb/android/utils/GroupUtils;->handleAvatarClick(Landroid/content/Context;Lcom/airbnb/android/models/groups/Group;Landroid/support/v4/app/FragmentManager;Lcom/airbnb/android/models/User;)V

    .line 75
    :cond_37
    return-void
.end method
