.class Lcom/airbnb/android/fragments/ArrivalDetailsFragment$10;
.super Ljava/lang/Object;
.source "ArrivalDetailsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->clearAllDetails()V
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
        "Lcom/airbnb/android/requests/ClearArrivalDetailsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V
    .registers 2

    .prologue
    .line 702
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$10;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 706
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/ClearArrivalDetailsRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/ClearArrivalDetailsRequest;

    .prologue
    .line 710
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$10;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v1, p1, Lcom/airbnb/android/requests/ClearArrivalDetailsRequest;->arrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    # setter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$1202(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .line 711
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/events/ArrivalPlanUpdatedEvent;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$10;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$1200(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/android/events/ArrivalPlanUpdatedEvent;-><init>(Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 712
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$10;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x1771

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 713
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$10;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 714
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 702
    check-cast p1, Lcom/airbnb/android/requests/ClearArrivalDetailsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$10;->onResponse(Lcom/airbnb/android/requests/ClearArrivalDetailsRequest;)V

    return-void
.end method
