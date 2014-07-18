.class Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$5;
.super Ljava/lang/Object;
.source "BrowsableListingsMapFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->setupLoopingViewPager(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)V
    .registers 2

    .prologue
    .line 216
    iput-object p1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$5;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 219
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$5;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->getSearchListings()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$5;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    # getter for: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingListingPosition:I
    invoke-static {v2}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$400(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    .line 220
    .local v0, "listing":Lcom/airbnb/android/models/Listing;
    const-string/jumbo v1, "map_listing_click"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "listing_id"

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "position"

    iget-object v4, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$5;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    # getter for: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingListingPosition:I
    invoke-static {v4}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$400(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackMapResultsAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 221
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$5;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$5;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/airbnb/android/activities/ListingDetailsActivity;->intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->startActivity(Landroid/content/Intent;)V

    .line 222
    return-void
.end method
