.class Lcom/airbnb/android/fragments/ROItineraryFragment$18$1;
.super Ljava/lang/Object;
.source "ROItineraryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROItineraryFragment$18;->onResponse(Lcom/airbnb/android/requests/GetArrivalPlanRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/ROItineraryFragment$18;

.field final synthetic val$arrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROItineraryFragment$18;Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)V
    .registers 3

    .prologue
    .line 590
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$18$1;->this$1:Lcom/airbnb/android/fragments/ROItineraryFragment$18;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$18$1;->val$arrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$18$1;->this$1:Lcom/airbnb/android/fragments/ROItineraryFragment$18;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ROItineraryFragment$18;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    # getter for: Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->access$000(Lcom/airbnb/android/fragments/ROItineraryFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackReservationObjectHostTrackArrival(JLcom/airbnb/android/utils/Strap;)V

    .line 594
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$18$1;->this$1:Lcom/airbnb/android/fragments/ROItineraryFragment$18;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ROItineraryFragment$18;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$18$1;->this$1:Lcom/airbnb/android/fragments/ROItineraryFragment$18;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ROItineraryFragment$18;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$18$1;->this$1:Lcom/airbnb/android/fragments/ROItineraryFragment$18;

    iget-object v2, v2, Lcom/airbnb/android/fragments/ROItineraryFragment$18;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    # getter for: Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ROItineraryFragment;->access$000(Lcom/airbnb/android/fragments/ROItineraryFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$18$1;->val$arrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->intentForReservation(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->startActivity(Landroid/content/Intent;)V

    .line 595
    return-void
.end method
