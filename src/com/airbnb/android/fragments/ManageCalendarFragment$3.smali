.class Lcom/airbnb/android/fragments/ManageCalendarFragment$3;
.super Ljava/lang/Object;
.source "ManageCalendarFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ManageCalendarFragment;->sendOffUnavailabilities()V
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
        "Lcom/airbnb/android/fragments/ManageCalendarFragment$CalendarUpdate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

.field final synthetic val$isAvailable:Z


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ManageCalendarFragment;Z)V
    .registers 3

    .prologue
    .line 188
    iput-object p1, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$3;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    iput-boolean p2, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$3;->val$isAvailable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 7
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 203
    iget-object v2, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$3;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 204
    iget-object v2, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$3;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0e00ac

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 206
    :cond_19
    iget-object v2, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$3;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    # getter for: Lcom/airbnb/android/fragments/ManageCalendarFragment;->mModifiedList:Ljava/util/List;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->access$200(Lcom/airbnb/android/fragments/ManageCalendarFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/CalendarSquare;

    .line 207
    .local v1, "square":Lcom/airbnb/android/models/CalendarSquare;
    invoke-virtual {v1}, Lcom/airbnb/android/models/CalendarSquare;->resetAvailability()V

    goto :goto_23

    .line 209
    .end local v1    # "square":Lcom/airbnb/android/models/CalendarSquare;
    :cond_33
    iget-object v2, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$3;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->getAdapter()Lcom/airbnb/android/adapters/SquareCalendarAdapter;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 210
    iget-object v2, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$3;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->getAdapter()Lcom/airbnb/android/adapters/SquareCalendarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->notifyDataSetChanged()V

    .line 212
    :cond_44
    iget-object v2, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$3;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    # getter for: Lcom/airbnb/android/fragments/ManageCalendarFragment;->mModifiedList:Ljava/util/List;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->access$200(Lcom/airbnb/android/fragments/ManageCalendarFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 213
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/fragments/ManageCalendarFragment$CalendarUpdate;)V
    .registers 13
    .param p1, "response"    # Lcom/airbnb/android/fragments/ManageCalendarFragment$CalendarUpdate;

    .prologue
    const/4 v10, 0x0

    .line 192
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v4

    iget-boolean v3, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$3;->val$isAvailable:Z

    if-eqz v3, :cond_60

    const v3, 0x7f0e00ae

    :goto_c
    invoke-static {v4, v3, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 193
    const-string/jumbo v3, "airnav_calendar"

    const-string/jumbo v4, "enabled"

    invoke-static {v3, v4, v10}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 194
    .local v1, "inCalendarAirnavExperiment":Z
    sget-object v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v3, v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    sget-object v4, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v4, v4, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    const-string/jumbo v5, "calendar"

    const-string/jumbo v6, "update_calendar"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    const-string/jumbo v8, "is_available"

    iget-boolean v9, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$3;->val$isAvailable:Z

    invoke-virtual {v7, v8, v9}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Z)Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    const-string/jumbo v8, "is_in_airnav_calendar_experiment"

    invoke-virtual {v7, v8, v1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Z)Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/airbnb/android/services/AirEventLogger;->makeStrap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    invoke-static {v3, v10, v4}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 195
    iget-object v3, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$3;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    # getter for: Lcom/airbnb/android/fragments/ManageCalendarFragment;->mModifiedList:Ljava/util/List;
    invoke-static {v3}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->access$200(Lcom/airbnb/android/fragments/ManageCalendarFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/CalendarSquare;

    .line 196
    .local v2, "square":Lcom/airbnb/android/models/CalendarSquare;
    invoke-virtual {v2}, Lcom/airbnb/android/models/CalendarSquare;->resetState()V

    goto :goto_50

    .line 192
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "inCalendarAirnavExperiment":Z
    .end local v2    # "square":Lcom/airbnb/android/models/CalendarSquare;
    :cond_60
    const v3, 0x7f0e00af

    goto :goto_c

    .line 198
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "inCalendarAirnavExperiment":Z
    :cond_64
    iget-object v3, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$3;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    # getter for: Lcom/airbnb/android/fragments/ManageCalendarFragment;->mModifiedList:Ljava/util/List;
    invoke-static {v3}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->access$200(Lcom/airbnb/android/fragments/ManageCalendarFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 199
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 188
    check-cast p1, Lcom/airbnb/android/fragments/ManageCalendarFragment$CalendarUpdate;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ManageCalendarFragment$3;->onResponse(Lcom/airbnb/android/fragments/ManageCalendarFragment$CalendarUpdate;)V

    return-void
.end method
