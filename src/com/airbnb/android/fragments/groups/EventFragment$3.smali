.class Lcom/airbnb/android/fragments/groups/EventFragment$3;
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
    .line 156
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/EventFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 159
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/EventFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EventFragment;->mJoinButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/EventFragment;->access$100(Lcom/airbnb/android/fragments/groups/EventFragment;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 160
    const-string/jumbo v2, "tap_meetup_unjoin"

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/EventFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/groups/EventFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EventFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;
    invoke-static {v4}, Lcom/airbnb/android/fragments/groups/EventFragment;->access$000(Lcom/airbnb/android/fragments/groups/EventFragment;)Lcom/airbnb/android/models/groups/Event;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackContentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V

    .line 161
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/EventFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EventFragment;->mJoinButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/EventFragment;->access$100(Lcom/airbnb/android/fragments/groups/EventFragment;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 162
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/EventFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EventFragment;->mUnjoinButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/EventFragment;->access$200(Lcom/airbnb/android/fragments/groups/EventFragment;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 163
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/EventFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EventFragment;->mUnjoinButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/EventFragment;->access$200(Lcom/airbnb/android/fragments/groups/EventFragment;)Landroid/widget/Button;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 164
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/EventFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/groups/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 165
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_52

    .line 167
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/EventFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;
    invoke-static {v2}, Lcom/airbnb/android/fragments/groups/EventFragment;->access$000(Lcom/airbnb/android/fragments/groups/EventFragment;)Lcom/airbnb/android/models/groups/Event;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/EventFragment$3;->this$0:Lcom/airbnb/android/fragments/groups/EventFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/EventFragment;->getEventRegistrationRequestListener()Lcom/airbnb/android/requests/RequestListener;
    invoke-static {v3}, Lcom/airbnb/android/fragments/groups/EventFragment;->access$300(Lcom/airbnb/android/fragments/groups/EventFragment;)Lcom/airbnb/android/requests/RequestListener;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airbnb/android/requests/groups/EventRegistrationRequest;->unjoinRequest(Lcom/airbnb/android/models/groups/Event;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/EventRegistrationRequest;

    move-result-object v1

    .line 168
    .local v1, "request":Lcom/airbnb/android/requests/groups/EventRegistrationRequest;
    invoke-virtual {v1}, Lcom/airbnb/android/requests/groups/EventRegistrationRequest;->execute()V

    .line 170
    .end local v1    # "request":Lcom/airbnb/android/requests/groups/EventRegistrationRequest;
    :cond_52
    return-void
.end method
