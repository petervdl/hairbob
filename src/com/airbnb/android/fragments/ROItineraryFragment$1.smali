.class Lcom/airbnb/android/fragments/ROItineraryFragment$1;
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
    .line 152
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$1;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$1;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$1;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$1;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$1;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-static {v1, v2}, Lcom/airbnb/android/activities/ListingDetailsActivity;->intentForFullListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->startActivity(Landroid/content/Intent;)V

    .line 156
    return-void
.end method
