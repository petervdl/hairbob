.class Lcom/airbnb/android/fragments/ROMessageFragment$1;
.super Ljava/lang/Object;
.source "ROMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROMessageFragment;->setupRecommendedListingsIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

.field final synthetic val$listing:Lcom/airbnb/android/models/Listing;

.field final synthetic val$status:Lcom/airbnb/android/models/ReservationStatus;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROMessageFragment;Lcom/airbnb/android/models/ReservationStatus;Lcom/airbnb/android/models/Listing;)V
    .registers 4

    .prologue
    .line 260
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROMessageFragment$1;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ROMessageFragment$1;->val$status:Lcom/airbnb/android/models/ReservationStatus;

    iput-object p3, p0, Lcom/airbnb/android/fragments/ROMessageFragment$1;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 263
    const-string/jumbo v0, "click_recommendations_btn"

    const-string/jumbo v1, "click"

    const-string/jumbo v2, "recommendations_btn"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "status"

    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment$1;->val$status:Lcom/airbnb/android/models/ReservationStatus;

    invoke-virtual {v5}, Lcom/airbnb/android/models/ReservationStatus;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/analytics/RecommendationAnalytics;->trackRORecommendationAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 264
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApplication;->getAnalyticsRegistry()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "page"

    const-string/jumbo v2, "reservation_object"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 265
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment$1;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROMessageFragment$1;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ROMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/airbnb/android/activities/RecommendedListingsActivity;

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROMessageFragment$1;->val$listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->bundleWithListingId(J)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/activities/SolitAirActivity;->intentForBundle(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ROMessageFragment;->startActivity(Landroid/content/Intent;)V

    .line 267
    return-void
.end method
