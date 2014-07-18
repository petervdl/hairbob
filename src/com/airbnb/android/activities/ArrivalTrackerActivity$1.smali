.class Lcom/airbnb/android/activities/ArrivalTrackerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ArrivalTrackerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/ArrivalTrackerActivity;->setupBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/ArrivalTrackerActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/ArrivalTrackerActivity;)V
    .registers 2

    .prologue
    .line 140
    iput-object p1, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity$1;->this$0:Lcom/airbnb/android/activities/ArrivalTrackerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 143
    iget-object v2, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity$1;->this$0:Lcom/airbnb/android/activities/ArrivalTrackerActivity;

    invoke-virtual {v2}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f080025

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    .line 144
    .local v1, "fragment":Lcom/airbnb/android/fragments/ArrivalTrackerFragment;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "action":Ljava/lang/String;
    if-eqz v1, :cond_35

    .line 150
    const-string/jumbo v2, "arrival_tracker_update"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 151
    iget-object v3, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity$1;->this$0:Lcom/airbnb/android/activities/ArrivalTrackerActivity;

    const-string/jumbo v2, "arrival_plan"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    # setter for: Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    invoke-static {v3, v2}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->access$002(Lcom/airbnb/android/activities/ArrivalTrackerActivity;Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .line 152
    iget-object v2, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity$1;->this$0:Lcom/airbnb/android/activities/ArrivalTrackerActivity;

    # getter for: Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    invoke-static {v2}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->access$000(Lcom/airbnb/android/activities/ArrivalTrackerActivity;)Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->onNewArrivalPlan(Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)V

    .line 159
    :cond_35
    :goto_35
    return-void

    .line 153
    :cond_36
    const-string/jumbo v2, "cancel_arrival_tracker"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    const-string/jumbo v2, "pause_arrival_tracker"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 154
    :cond_48
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->updateStickyButton(Z)V

    goto :goto_35

    .line 155
    :cond_4d
    const-string/jumbo v2, "start_arrival_tracker"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 156
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->updateStickyButton(Z)V

    goto :goto_35
.end method
