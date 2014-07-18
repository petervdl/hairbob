.class Lcom/airbnb/android/fragments/groups/EventFragment$1;
.super Ljava/lang/Object;
.source "EventFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/EventFragment;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/EventFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/EventFragment;)V
    .registers 2

    .prologue
    .line 128
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/EventFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/EventFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/groups/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 132
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_2b

    .line 133
    const-string/jumbo v2, "tap_meetup_rsvps"

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/EventFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/groups/EventFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EventFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/EventFragment;->access$000(Lcom/airbnb/android/fragments/groups/EventFragment;)Lcom/airbnb/android/models/groups/Event;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackContentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V

    .line 134
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/EventFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/groups/EventFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/EventFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/EventFragment;->access$000(Lcom/airbnb/android/fragments/groups/EventFragment;)Lcom/airbnb/android/models/groups/Event;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/airbnb/android/activities/groups/EventRegistreesActivity;->intentForShow(Landroid/content/Context;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Event;)Landroid/content/Intent;

    move-result-object v1

    .line 135
    .local v1, "showRegistreesIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/EventFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    invoke-virtual {v2, v1}, Lcom/airbnb/android/fragments/groups/EventFragment;->startActivity(Landroid/content/Intent;)V

    .line 137
    .end local v1    # "showRegistreesIntent":Landroid/content/Intent;
    :cond_2b
    return-void
.end method
