.class Lcom/airbnb/android/fragments/PickWishlistFragment$1;
.super Ljava/lang/Object;
.source "PickWishlistFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PickWishlistFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/PickWishlistFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PickWishlistFragment;)V
    .registers 2

    .prologue
    .line 84
    iput-object p1, p0, Lcom/airbnb/android/fragments/PickWishlistFragment$1;->this$0:Lcom/airbnb/android/fragments/PickWishlistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 23
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
    .line 87
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;

    .line 88
    .local v15, "wishListViewHolder":Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;
    if-eqz v15, :cond_1c

    invoke-virtual {v15}, Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;->getWishList()Lcom/airbnb/android/models/Collection;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v15}, Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;->getWishList()Lcom/airbnb/android/models/Collection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/Collection;->getId()J

    move-result-wide v1

    const-wide/16 v8, 0x0

    cmp-long v1, v1, v8

    if-gtz v1, :cond_1d

    .line 138
    :cond_1c
    :goto_1c
    return-void

    .line 92
    :cond_1d
    invoke-virtual {v15}, Lcom/airbnb/android/adapters/PickWishListAdapter$WishListViewHolder;->getWishList()Lcom/airbnb/android/models/Collection;

    move-result-object v6

    .line 93
    .local v6, "wishList":Lcom/airbnb/android/models/Collection;
    invoke-virtual {v6}, Lcom/airbnb/android/models/Collection;->getId()J

    move-result-wide v4

    .line 94
    .local v4, "wishListId":J
    invoke-virtual {v6}, Lcom/airbnb/android/models/Collection;->getListings()Ljava/util/List;

    move-result-object v14

    .line 96
    .local v14, "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/fragments/PickWishlistFragment$1;->this$0:Lcom/airbnb/android/fragments/PickWishlistFragment;

    # getter for: Lcom/airbnb/android/fragments/PickWishlistFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/fragments/PickWishlistFragment;->access$000(Lcom/airbnb/android/fragments/PickWishlistFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/AirbnbApi;->getAddedToWishListIds(Lcom/airbnb/android/models/Listing;)Ljava/util/Set;

    move-result-object v16

    .line 97
    .local v16, "wishlistIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v16, :cond_47

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d4

    :cond_47
    const/4 v3, 0x1

    .line 100
    .local v3, "addToWishList":Z
    :goto_48
    if-eqz v3, :cond_d7

    .line 101
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v8, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->WishLists:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v8, v8, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v8, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v8, "tap_heart"

    aput-object v8, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v8, "add_to_wl"

    aput-object v8, v1, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/airbnb/android/fragments/PickWishlistFragment$1;->this$0:Lcom/airbnb/android/fragments/PickWishlistFragment;

    # getter for: Lcom/airbnb/android/fragments/PickWishlistFragment;->mTrackingPosition:Ljava/lang/String;
    invoke-static {v8}, Lcom/airbnb/android/fragments/PickWishlistFragment;->access$100(Lcom/airbnb/android/fragments/PickWishlistFragment;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v6}, Lcom/airbnb/android/models/Collection;->getPrivacyAsString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v2

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 106
    :goto_75
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/android/fragments/PickWishlistFragment$1;->this$0:Lcom/airbnb/android/fragments/PickWishlistFragment;

    # getter for: Lcom/airbnb/android/fragments/PickWishlistFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1}, Lcom/airbnb/android/fragments/PickWishlistFragment;->access$000(Lcom/airbnb/android/fragments/PickWishlistFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v10

    .line 107
    .local v10, "listingId":J
    new-instance v7, Lcom/airbnb/android/requests/UpdateWishListRequest;

    new-instance v1, Lcom/airbnb/android/fragments/PickWishlistFragment$1$1;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/airbnb/android/fragments/PickWishlistFragment$1$1;-><init>(Lcom/airbnb/android/fragments/PickWishlistFragment$1;ZJLcom/airbnb/android/models/Collection;)V

    move-wide v8, v4

    move v12, v3

    move-object v13, v1

    invoke-direct/range {v7 .. v13}, Lcom/airbnb/android/requests/UpdateWishListRequest;-><init>(JJZLcom/airbnb/android/requests/RequestListener;)V

    .line 122
    .local v7, "request":Lcom/airbnb/android/requests/UpdateWishListRequest;
    invoke-virtual {v7}, Lcom/airbnb/android/requests/UpdateWishListRequest;->execute()V

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/android/fragments/PickWishlistFragment$1;->this$0:Lcom/airbnb/android/fragments/PickWishlistFragment;

    # getter for: Lcom/airbnb/android/fragments/PickWishlistFragment;->mPickWishListAdapter:Lcom/airbnb/android/adapters/PickWishListAdapter;
    invoke-static {v1}, Lcom/airbnb/android/fragments/PickWishlistFragment;->access$400(Lcom/airbnb/android/fragments/PickWishlistFragment;)Lcom/airbnb/android/adapters/PickWishListAdapter;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/airbnb/android/adapters/PickWishListAdapter;->removeWishListsAddedTo(Lcom/airbnb/android/models/Collection;)Z

    .line 126
    if-eqz v3, :cond_fd

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/android/fragments/PickWishlistFragment$1;->this$0:Lcom/airbnb/android/fragments/PickWishlistFragment;

    # getter for: Lcom/airbnb/android/fragments/PickWishlistFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1}, Lcom/airbnb/android/fragments/PickWishlistFragment;->access$000(Lcom/airbnb/android/fragments/PickWishlistFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/android/fragments/PickWishlistFragment$1;->this$0:Lcom/airbnb/android/fragments/PickWishlistFragment;

    # getter for: Lcom/airbnb/android/fragments/PickWishlistFragment;->mPickWishListAdapter:Lcom/airbnb/android/adapters/PickWishListAdapter;
    invoke-static {v1}, Lcom/airbnb/android/fragments/PickWishlistFragment;->access$400(Lcom/airbnb/android/fragments/PickWishlistFragment;)Lcom/airbnb/android/adapters/PickWishListAdapter;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/airbnb/android/adapters/PickWishListAdapter;->addWishListsAddedTo(Lcom/airbnb/android/models/Collection;)V

    .line 132
    :goto_b6
    invoke-virtual {v6, v14}, Lcom/airbnb/android/models/Collection;->updateListings(Ljava/util/List;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/android/fragments/PickWishlistFragment$1;->this$0:Lcom/airbnb/android/fragments/PickWishlistFragment;

    # getter for: Lcom/airbnb/android/fragments/PickWishlistFragment;->mPickWishListAdapter:Lcom/airbnb/android/adapters/PickWishListAdapter;
    invoke-static {v1}, Lcom/airbnb/android/fragments/PickWishlistFragment;->access$400(Lcom/airbnb/android/fragments/PickWishlistFragment;)Lcom/airbnb/android/adapters/PickWishListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/PickWishListAdapter;->notifyDataSetChanged()V

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/android/fragments/PickWishlistFragment$1;->this$0:Lcom/airbnb/android/fragments/PickWishlistFragment;

    # invokes: Lcom/airbnb/android/fragments/PickWishlistFragment;->updateListingCollectionIds(ZJ)V
    invoke-static {v1, v3, v4, v5}, Lcom/airbnb/android/fragments/PickWishlistFragment;->access$500(Lcom/airbnb/android/fragments/PickWishlistFragment;ZJ)V

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/android/fragments/PickWishlistFragment$1;->this$0:Lcom/airbnb/android/fragments/PickWishlistFragment;

    # invokes: Lcom/airbnb/android/fragments/PickWishlistFragment;->postEventForListingAddedToWishList(ZJ)V
    invoke-static {v1, v3, v4, v5}, Lcom/airbnb/android/fragments/PickWishlistFragment;->access$200(Lcom/airbnb/android/fragments/PickWishlistFragment;ZJ)V

    goto/16 :goto_1c

    .line 97
    .end local v3    # "addToWishList":Z
    .end local v7    # "request":Lcom/airbnb/android/requests/UpdateWishListRequest;
    .end local v10    # "listingId":J
    :cond_d4
    const/4 v3, 0x0

    goto/16 :goto_48

    .line 103
    .restart local v3    # "addToWishList":Z
    :cond_d7
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v8, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->WishLists:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v8, v8, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v8, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v8, "tap_heart"

    aput-object v8, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v8, "remove_from_wl"

    aput-object v8, v1, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/airbnb/android/fragments/PickWishlistFragment$1;->this$0:Lcom/airbnb/android/fragments/PickWishlistFragment;

    # getter for: Lcom/airbnb/android/fragments/PickWishlistFragment;->mTrackingPosition:Ljava/lang/String;
    invoke-static {v8}, Lcom/airbnb/android/fragments/PickWishlistFragment;->access$100(Lcom/airbnb/android/fragments/PickWishlistFragment;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v2

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    goto/16 :goto_75

    .line 130
    .restart local v7    # "request":Lcom/airbnb/android/requests/UpdateWishListRequest;
    .restart local v10    # "listingId":J
    :cond_fd
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/android/fragments/PickWishlistFragment$1;->this$0:Lcom/airbnb/android/fragments/PickWishlistFragment;

    # getter for: Lcom/airbnb/android/fragments/PickWishlistFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1}, Lcom/airbnb/android/fragments/PickWishlistFragment;->access$000(Lcom/airbnb/android/fragments/PickWishlistFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_b6
.end method
