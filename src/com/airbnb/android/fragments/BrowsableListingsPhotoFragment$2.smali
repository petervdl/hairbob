.class Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment$2;
.super Ljava/lang/Object;
.source "BrowsableListingsPhotoFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment$2;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment$2;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->getOrigin()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "origin":Ljava/lang/String;
    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment$2;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mListingPhotoAdapter:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    invoke-virtual {v2, p3}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    .line 137
    .local v0, "listing":Lcom/airbnb/android/models/Listing;
    const-string/jumbo v2, "recommendations"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 138
    const-string/jumbo v2, "click_recommended_listing"

    const-string/jumbo v3, "click"

    const-string/jumbo v4, "recommended_listing"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v5

    const-string/jumbo v6, "listing_id"

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/airbnb/android/analytics/RecommendationAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 143
    :goto_34
    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment$2;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;

    iget-object v3, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment$2;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment$2;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;

    iget-object v4, v4, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mListingPhotoAdapter:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    invoke-virtual {v4, p3}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->getItemAsListing(I)Lcom/airbnb/android/models/Listing;

    move-result-object v4

    const-string/jumbo v5, "photo"

    invoke-static {v3, v4, v5, v1}, Lcom/airbnb/android/activities/ListingDetailsActivity;->intentForListingFromSearch(Landroid/content/Context;Lcom/airbnb/android/models/Listing;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->startActivity(Landroid/content/Intent;)V

    .line 144
    return-void

    .line 140
    :cond_4f
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Search"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "click_result"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "photo"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 141
    const-string/jumbo v2, "listing_click"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "listing_id"

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackListResultsAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    goto :goto_34
.end method
