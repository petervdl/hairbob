.class Lcom/airbnb/android/fragments/ListingDetailsFragment$21;
.super Ljava/lang/Object;
.source "ListingDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateRecommendedListings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V
    .registers 2

    .prologue
    .line 873
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$21;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 876
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$21;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$21;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/airbnb/android/activities/RecommendedListingsActivity;

    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$21;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mRecommendedListings:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$1400(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->bundleWithListings(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/activities/SolitAirActivity;->intentForBundle(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 878
    return-void
.end method
