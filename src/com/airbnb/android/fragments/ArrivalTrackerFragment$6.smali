.class Lcom/airbnb/android/fragments/ArrivalTrackerFragment$6;
.super Ljava/lang/Object;
.source "ArrivalTrackerFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->updateGuestArrival()V
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
.field final synthetic this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)V
    .registers 2

    .prologue
    .line 414
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$6;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v3, 0x0

    .line 424
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$6;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 425
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e01ac

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e0009

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e0563

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSingleButton(IILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$6;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 431
    :cond_30
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;

    .prologue
    const/4 v2, 0x0

    .line 417
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$6;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->access$200(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v0

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackArrivalTrackerImInSuccess(JLcom/airbnb/android/utils/Strap;)V

    .line 418
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$6;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->access$200(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v0

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackArrivalTrackerRateExperienceModalImpression(JLcom/airbnb/android/utils/Strap;)V

    .line 419
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$6;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    # invokes: Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->showRatingDialog()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->access$500(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)V

    .line 420
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 414
    check-cast p1, Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$6;->onResponse(Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;)V

    return-void
.end method
