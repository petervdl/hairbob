.class Lcom/airbnb/android/fragments/ROItineraryFragment$6;
.super Ljava/lang/Object;
.source "ROItineraryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROItineraryFragment;->setupReservation(Lcom/airbnb/android/models/Reservation;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

.field final synthetic val$listing:Lcom/airbnb/android/models/Listing;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROItineraryFragment;Lcom/airbnb/android/models/Listing;)V
    .registers 3

    .prologue
    .line 285
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$6;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$6;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$6;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ROItineraryFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->getReservationId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$6;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/ROItineraryFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v2}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->getThreadId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/analytics/ROAnalytics;->trackROItineraryViewCalendar(JJ)V

    .line 290
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$6;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$6;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/airbnb/android/fragments/ListingCalendarFragment;

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$6;->val$listing:Lcom/airbnb/android/models/Listing;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->getBundle(Lcom/airbnb/android/models/Listing;Z)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/activities/AutoAirActivity;->intentForFragment(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->startActivity(Landroid/content/Intent;)V

    .line 291
    return-void
.end method
