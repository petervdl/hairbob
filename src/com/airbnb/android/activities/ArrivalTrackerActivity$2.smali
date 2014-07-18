.class Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;
.super Ljava/lang/Object;
.source "ArrivalTrackerActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/ArrivalTrackerActivity;->fetchAndShowArrivalPlan(J)V
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
        "Lcom/airbnb/android/requests/ReservationObjectRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/ArrivalTrackerActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/ArrivalTrackerActivity;)V
    .registers 2

    .prologue
    .line 181
    iput-object p1, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;->this$0:Lcom/airbnb/android/activities/ArrivalTrackerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;->this$0:Lcom/airbnb/android/activities/ArrivalTrackerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->showLoader(Z)V

    .line 211
    iget-object v0, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;->this$0:Lcom/airbnb/android/activities/ArrivalTrackerActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->finish()V

    .line 212
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/ReservationObjectRequest;)V
    .registers 6
    .param p1, "response"    # Lcom/airbnb/android/requests/ReservationObjectRequest;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;->this$0:Lcom/airbnb/android/activities/ArrivalTrackerActivity;

    # getter for: Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v0}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->access$100(Lcom/airbnb/android/activities/ArrivalTrackerActivity;)Lcom/airbnb/android/models/Reservation;

    move-result-object v0

    if-nez v0, :cond_33

    .line 186
    iget-object v0, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;->this$0:Lcom/airbnb/android/activities/ArrivalTrackerActivity;

    invoke-virtual {p1}, Lcom/airbnb/android/requests/ReservationObjectRequest;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v1

    # setter for: Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v0, v1}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->access$102(Lcom/airbnb/android/activities/ArrivalTrackerActivity;Lcom/airbnb/android/models/Reservation;)Lcom/airbnb/android/models/Reservation;

    .line 188
    iget-object v0, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;->this$0:Lcom/airbnb/android/activities/ArrivalTrackerActivity;

    new-instance v1, Lcom/airbnb/android/requests/GetArrivalPlanRequest;

    iget-object v2, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;->this$0:Lcom/airbnb/android/activities/ArrivalTrackerActivity;

    # getter for: Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v2}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->access$100(Lcom/airbnb/android/activities/ArrivalTrackerActivity;)Lcom/airbnb/android/models/Reservation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getConfirmationCode()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2$1;-><init>(Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;)V

    invoke-direct {v1, v2, v3}, Lcom/airbnb/android/requests/GetArrivalPlanRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    # setter for: Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mArrivalPlanRequest:Lcom/airbnb/android/requests/GetArrivalPlanRequest;
    invoke-static {v0, v1}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->access$202(Lcom/airbnb/android/activities/ArrivalTrackerActivity;Lcom/airbnb/android/requests/GetArrivalPlanRequest;)Lcom/airbnb/android/requests/GetArrivalPlanRequest;

    .line 204
    iget-object v0, p0, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;->this$0:Lcom/airbnb/android/activities/ArrivalTrackerActivity;

    # getter for: Lcom/airbnb/android/activities/ArrivalTrackerActivity;->mArrivalPlanRequest:Lcom/airbnb/android/requests/GetArrivalPlanRequest;
    invoke-static {v0}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->access$200(Lcom/airbnb/android/activities/ArrivalTrackerActivity;)Lcom/airbnb/android/requests/GetArrivalPlanRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/requests/GetArrivalPlanRequest;->execute()V

    .line 206
    :cond_33
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 181
    check-cast p1, Lcom/airbnb/android/requests/ReservationObjectRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/ArrivalTrackerActivity$2;->onResponse(Lcom/airbnb/android/requests/ReservationObjectRequest;)V

    return-void
.end method
