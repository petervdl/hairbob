.class Lcom/airbnb/android/fragments/ROItineraryFragment$8;
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
    .line 326
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$8;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$8;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$8;->val$listing:Lcom/airbnb/android/models/Listing;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$8;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->showCancellationPolicyDialog(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/fragments/AirFragment;)V

    .line 330
    return-void
.end method
