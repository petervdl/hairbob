.class Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4;
.super Ljava/lang/Object;
.source "ArrivalTrackerFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->requestAndUpdateGuestLocation()V
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
        "Lcom/airbnb/android/requests/GetArrivalPlanRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)V
    .registers 2

    .prologue
    .line 339
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 362
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 363
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4$2;-><init>(Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 371
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/GetArrivalPlanRequest;)V
    .registers 8
    .param p1, "response"    # Lcom/airbnb/android/requests/GetArrivalPlanRequest;

    .prologue
    const-wide/16 v4, 0x0

    .line 342
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    iget-object v2, p1, Lcom/airbnb/android/requests/GetArrivalPlanRequest;->arrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    # setter for: Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->access$002(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .line 343
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v2, Lcom/airbnb/android/events/ArrivalPlanUpdatedEvent;

    iget-object v3, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    invoke-static {v3}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->access$000(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/android/events/ArrivalPlanUpdatedEvent;-><init>(Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 345
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->access$000(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getGuestLat()D

    move-result-wide v1

    cmpl-double v1, v1, v4

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->access$000(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getGuestLng()D

    move-result-wide v1

    cmpl-double v1, v1, v4

    if-eqz v1, :cond_40

    .line 346
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->access$000(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->onNewArrivalPlan(Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)V

    .line 349
    :cond_40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 350
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4$1;-><init>(Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 358
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 339
    check-cast p1, Lcom/airbnb/android/requests/GetArrivalPlanRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4;->onResponse(Lcom/airbnb/android/requests/GetArrivalPlanRequest;)V

    return-void
.end method
