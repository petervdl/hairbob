.class Lcom/airbnb/android/fragments/ArrivalDetailsFragment$9;
.super Ljava/lang/Object;
.source "ArrivalDetailsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->updateTravelSummary()V
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
        "Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V
    .registers 2

    .prologue
    .line 526
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$9;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 537
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$9;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 538
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$9;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    const v1, 0x7f0e000e

    # invokes: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->showErrorDialog(I)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$1000(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;I)V

    .line 540
    :cond_10
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;

    .prologue
    .line 529
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$9;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v1, p1, Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;->arrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    # setter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$1202(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .line 530
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/events/ArrivalPlanUpdatedEvent;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$9;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$1200(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/android/events/ArrivalPlanUpdatedEvent;-><init>(Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 532
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$9;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->handleUpdatedArrivalPlan()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$2000(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V

    .line 533
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 526
    check-cast p1, Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$9;->onResponse(Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;)V

    return-void
.end method
