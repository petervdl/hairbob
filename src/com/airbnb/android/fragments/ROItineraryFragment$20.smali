.class Lcom/airbnb/android/fragments/ROItineraryFragment$20;
.super Ljava/lang/Object;
.source "ROItineraryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROItineraryFragment;->setupForNewArrivalPlan(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROItineraryFragment;)V
    .registers 2

    .prologue
    .line 633
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$20;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 636
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$20;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeArrivalAssistantTerms(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 637
    invoke-static {}, Lcom/airbnb/android/fragments/ArrivalAssistantTermsDialogFragment;->newInstance()Lcom/airbnb/android/fragments/ArrivalAssistantTermsDialogFragment;

    move-result-object v0

    .line 638
    .local v0, "dialog":Lcom/airbnb/android/fragments/ArrivalAssistantTermsDialogFragment;
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$20;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ArrivalAssistantTermsDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 639
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$20;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/airbnb/android/fragments/ArrivalAssistantTermsDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 644
    .end local v0    # "dialog":Lcom/airbnb/android/fragments/ArrivalAssistantTermsDialogFragment;
    :goto_21
    return-void

    .line 641
    :cond_22
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$20;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    # getter for: Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->access$000(Lcom/airbnb/android/fragments/ROItineraryFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v1

    invoke-static {v1, v2, v4}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackReservationObjectAddTravelDetailsClick(JLcom/airbnb/android/utils/Strap;)V

    .line 642
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$20;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$20;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$20;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    # getter for: Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v3}, Lcom/airbnb/android/fragments/ROItineraryFragment;->access$000(Lcom/airbnb/android/fragments/ROItineraryFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/activities/ArrivalDetailsActivity;->intentForReservation(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x1389

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/ROItineraryFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_21
.end method
