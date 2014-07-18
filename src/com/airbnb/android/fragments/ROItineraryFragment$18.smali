.class Lcom/airbnb/android/fragments/ROItineraryFragment$18;
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


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROItineraryFragment;)V
    .registers 2

    .prologue
    .line 582
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$18;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 602
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/GetArrivalPlanRequest;)V
    .registers 6
    .param p1, "response"    # Lcom/airbnb/android/requests/GetArrivalPlanRequest;

    .prologue
    .line 585
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$18;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    # getter for: Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->access$000(Lcom/airbnb/android/fragments/ROItineraryFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackReservationObjectLoadArrivalDataSuccess(JLcom/airbnb/android/utils/Strap;)V

    .line 586
    iget-object v0, p1, Lcom/airbnb/android/requests/GetArrivalPlanRequest;->arrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .line 588
    .local v0, "arrivalPlan":Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$18;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ROItineraryFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    .line 589
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$18;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ROItineraryFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const v2, 0x7f0e002a

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 590
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$18;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ROItineraryFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v2, Lcom/airbnb/android/fragments/ROItineraryFragment$18$1;

    invoke-direct {v2, p0, v0}, Lcom/airbnb/android/fragments/ROItineraryFragment$18$1;-><init>(Lcom/airbnb/android/fragments/ROItineraryFragment$18;Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 582
    check-cast p1, Lcom/airbnb/android/requests/GetArrivalPlanRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ROItineraryFragment$18;->onResponse(Lcom/airbnb/android/requests/GetArrivalPlanRequest;)V

    return-void
.end method
