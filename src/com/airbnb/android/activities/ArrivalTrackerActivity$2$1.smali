.class Lcom/airbnb/android/activities/ArrivalTrackerActivity$2$1;
.super Ljava/lang/Object;
.source "ArrivalTrackerActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;->onResponse(Lcom/airbnb/android/requests/ReservationObjectRequest;)V
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
.field final synthetic this$1:Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;)V
    .registers 2

    .prologue
    .line 188
    iput-object p1, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2$1;->this$1:Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2$1;->this$1:Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;

    iget-object v0, v0, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;->this$0:Lcom/airbnb/android/activities/ArrivalTrackerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->showLoader(Z)V

    .line 201
    iget-object v0, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2$1;->this$1:Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;

    iget-object v0, v0, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;->this$0:Lcom/airbnb/android/activities/ArrivalTrackerActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->finish()V

    .line 202
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/GetArrivalPlanRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/GetArrivalPlanRequest;

    .prologue
    .line 191
    iget-object v1, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2$1;->this$1:Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;

    iget-object v1, v1, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;->this$0:Lcom/airbnb/android/activities/ArrivalTrackerActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->showLoader(Z)V

    .line 192
    iget-object v1, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2$1;->this$1:Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;

    iget-object v1, v1, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;->this$0:Lcom/airbnb/android/activities/ArrivalTrackerActivity;

    iget-object v2, p1, Lcom/airbnb/android/requests/GetArrivalPlanRequest;->arrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    # setter for: Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    invoke-static {v1, v2}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->access$002(Lcom/airbnb/android/activities/ArrivalTrackerActivity;Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .line 194
    iget-object v1, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2$1;->this$1:Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;

    iget-object v1, v1, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;->this$0:Lcom/airbnb/android/activities/ArrivalTrackerActivity;

    # getter for: Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v1}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->access$100(Lcom/airbnb/android/activities/ArrivalTrackerActivity;)Lcom/airbnb/android/models/Reservation;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2$1;->this$1:Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;

    iget-object v2, v2, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;->this$0:Lcom/airbnb/android/activities/ArrivalTrackerActivity;

    # getter for: Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    invoke-static {v2}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->access$000(Lcom/airbnb/android/activities/ArrivalTrackerActivity;)Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->newInstance(Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    move-result-object v0

    .line 195
    .local v0, "fragment":Lcom/airbnb/android/fragments/ArrivalTrackerFragment;
    iget-object v1, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2$1;->this$1:Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;

    iget-object v1, v1, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;->this$0:Lcom/airbnb/android/activities/ArrivalTrackerActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 196
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 188
    check-cast p1, Lcom/airbnb/android/requests/GetArrivalPlanRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2$1;->onResponse(Lcom/airbnb/android/requests/GetArrivalPlanRequest;)V

    return-void
.end method
