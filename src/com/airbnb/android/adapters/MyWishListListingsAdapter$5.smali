.class Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5;
.super Ljava/lang/Object;
.source "MyWishListListingsAdapter.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->unWishlist(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/UpdateWishListRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

.field final synthetic val$listingId:J

.field final synthetic val$rowView:Landroid/view/View;

.field final synthetic val$viewHolder:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;

.field final synthetic val$wishListId:J


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;Landroid/view/View;Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;JJ)V
    .registers 8

    .prologue
    .line 334
    iput-object p1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5;->this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5;->val$rowView:Landroid/view/View;

    iput-object p3, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5;->val$viewHolder:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;

    iput-wide p4, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5;->val$listingId:J

    iput-wide p6, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5;->val$wishListId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 7
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5;->this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 360
    iget-object v0, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5;->val$viewHolder:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;

    iget-object v0, v0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->wishListButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 362
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    iget-wide v1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5;->val$listingId:J

    iget-wide v3, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5;->val$wishListId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/airbnb/android/AirbnbApi;->addListingToWishLists(JJ)V

    .line 363
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/UpdateWishListRequest;)V
    .registers 8
    .param p1, "response"    # Lcom/airbnb/android/requests/UpdateWishListRequest;

    .prologue
    .line 338
    iget-object v1, p1, Lcom/airbnb/android/requests/UpdateWishListRequest;->listing:Lcom/airbnb/android/models/Listing;

    .line 339
    .local v1, "updatedListing":Lcom/airbnb/android/models/Listing;
    if-eqz v1, :cond_41

    .line 340
    iget-object v2, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5;->this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    # getter for: Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mWishList:Lcom/airbnb/android/models/Collection;
    invoke-static {v2}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->access$500(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;)Lcom/airbnb/android/models/Collection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Collection;->getListingsCount()I

    move-result v0

    .line 341
    .local v0, "numListingsInWishList":I
    if-lez v0, :cond_1b

    .line 342
    iget-object v2, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5;->this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    # getter for: Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mWishList:Lcom/airbnb/android/models/Collection;
    invoke-static {v2}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->access$500(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;)Lcom/airbnb/android/models/Collection;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Lcom/airbnb/android/models/Collection;->setListingsCount(I)V

    .line 344
    :cond_1b
    sget-object v2, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v3, Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;

    iget-object v4, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5;->this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    # getter for: Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mWishList:Lcom/airbnb/android/models/Collection;
    invoke-static {v4}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->access$500(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;)Lcom/airbnb/android/models/Collection;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;-><init>(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/Collection;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 345
    sget-object v2, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v3, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;

    invoke-direct {v3, v1}, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;-><init>(Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 348
    iget-object v2, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5;->val$rowView:Landroid/view/View;

    new-instance v3, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5$1;-><init>(Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 355
    .end local v0    # "numListingsInWishList":I
    :cond_41
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 334
    check-cast p1, Lcom/airbnb/android/requests/UpdateWishListRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5;->onResponse(Lcom/airbnb/android/requests/UpdateWishListRequest;)V

    return-void
.end method
