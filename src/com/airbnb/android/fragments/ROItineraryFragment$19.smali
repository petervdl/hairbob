.class Lcom/airbnb/android/fragments/ROItineraryFragment$19;
.super Ljava/lang/Object;
.source "ROItineraryFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROItineraryFragment;->handleArrivalAssistant(Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROItineraryFragment;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 606
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$19;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$19;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 620
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$19;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$19;->val$view:Landroid/view/View;

    # invokes: Lcom/airbnb/android/fragments/ROItineraryFragment;->setupForNewArrivalPlan(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->access$300(Lcom/airbnb/android/fragments/ROItineraryFragment;Landroid/view/View;)V

    .line 621
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/GetArrivalPlanRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/GetArrivalPlanRequest;

    .prologue
    .line 609
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$19;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    # getter for: Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->access$000(Lcom/airbnb/android/fragments/ROItineraryFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackReservationObjectLoadArrivalDataSuccess(JLcom/airbnb/android/utils/Strap;)V

    .line 611
    iget-object v0, p1, Lcom/airbnb/android/requests/GetArrivalPlanRequest;->arrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->isNew()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 612
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$19;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$19;->val$view:Landroid/view/View;

    # invokes: Lcom/airbnb/android/fragments/ROItineraryFragment;->setupForNewArrivalPlan(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->access$300(Lcom/airbnb/android/fragments/ROItineraryFragment;Landroid/view/View;)V

    .line 616
    :goto_1d
    return-void

    .line 614
    :cond_1e
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$19;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iget-object v1, p1, Lcom/airbnb/android/requests/GetArrivalPlanRequest;->arrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$19;->val$view:Landroid/view/View;

    # invokes: Lcom/airbnb/android/fragments/ROItineraryFragment;->updateArrivalPlanDetails(Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;Landroid/view/View;)V
    invoke-static {v0, v1, v2}, Lcom/airbnb/android/fragments/ROItineraryFragment;->access$400(Lcom/airbnb/android/fragments/ROItineraryFragment;Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;Landroid/view/View;)V

    goto :goto_1d
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 606
    check-cast p1, Lcom/airbnb/android/requests/GetArrivalPlanRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ROItineraryFragment$19;->onResponse(Lcom/airbnb/android/requests/GetArrivalPlanRequest;)V

    return-void
.end method
