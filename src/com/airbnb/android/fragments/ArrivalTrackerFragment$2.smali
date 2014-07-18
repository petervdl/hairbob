.class Lcom/airbnb/android/fragments/ArrivalTrackerFragment$2;
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
    .line 246
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->access$200(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackArrivalTrackerPauseArrivalTracker(JLcom/airbnb/android/utils/Strap;)V

    .line 250
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/airbnb/android/services/ArrivalTrackerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->stopService(Landroid/content/Intent;)Z

    .line 251
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->updateStickyButton(Z)V

    .line 252
    return-void
.end method
