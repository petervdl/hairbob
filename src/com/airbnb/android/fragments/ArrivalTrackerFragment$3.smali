.class Lcom/airbnb/android/fragments/ArrivalTrackerFragment$3;
.super Ljava/lang/Object;
.source "ArrivalTrackerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->updateStickyButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)V
    .registers 2

    .prologue
    .line 256
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$3;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$3;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->access$200(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->currUserIsHost()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 260
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$3;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$3;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    # invokes: Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->requestAndUpdateGuestLocation()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->access$300(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)V

    .line 267
    :goto_1a
    return-void

    .line 263
    :cond_1b
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$3;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->access$200(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackArrivalTrackerStartArrivalTrackerClick(JLcom/airbnb/android/utils/Strap;)V

    .line 264
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$3;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$3;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$3;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->access$200(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getConfirmationCode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$3;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v3}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->access$200(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/services/ArrivalTrackerService;->intentForConfirmationCode(Landroid/content/Context;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 265
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$3;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->updateStickyButton(Z)V

    goto :goto_1a
.end method
