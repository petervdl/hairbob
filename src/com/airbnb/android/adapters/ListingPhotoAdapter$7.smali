.class Lcom/airbnb/android/adapters/ListingPhotoAdapter$7;
.super Ljava/lang/Object;
.source "ListingPhotoAdapter.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/ListingPhotoAdapter;->longPressToAddToWishList(Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;)V
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
.field final synthetic this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

.field final synthetic val$listingToAdd:Lcom/airbnb/android/models/Listing;

.field final synthetic val$wishList:Lcom/airbnb/android/models/Collection;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Lcom/airbnb/android/models/Collection;Lcom/airbnb/android/models/Listing;)V
    .registers 4

    .prologue
    .line 471
    iput-object p1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$7;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$7;->val$wishList:Lcom/airbnb/android/models/Collection;

    iput-object p3, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$7;->val$listingToAdd:Lcom/airbnb/android/models/Listing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 488
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 489
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/UpdateWishListRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/UpdateWishListRequest;

    .prologue
    .line 476
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    iget-object v1, p1, Lcom/airbnb/android/requests/UpdateWishListRequest;->listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/AirbnbApi;->addListingToWishLists(Lcom/airbnb/android/models/Listing;)V

    .line 477
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;

    iget-object v2, p1, Lcom/airbnb/android/requests/UpdateWishListRequest;->listing:Lcom/airbnb/android/models/Listing;

    invoke-direct {v1, v2}, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;-><init>(Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 479
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$7;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    # getter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mAddToWishListListener:Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;
    invoke-static {v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$100(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 480
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$7;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    # getter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mAddToWishListListener:Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;
    invoke-static {v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$100(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$7;->val$wishList:Lcom/airbnb/android/models/Collection;

    iget-object v2, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$7;->val$listingToAdd:Lcom/airbnb/android/models/Listing;

    invoke-interface {v0, v1, v2}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;->showUndoToast(Lcom/airbnb/android/models/Collection;Lcom/airbnb/android/models/Listing;)V

    .line 481
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$7;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    # getter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mAddToWishListListener:Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;
    invoke-static {v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$100(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;->showFirstTimeLongPressToWishListDialog()V

    .line 483
    :cond_33
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/AirbnbApi;->fetchWishLists(Lcom/airbnb/android/requests/RequestListener;)V

    .line 484
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 471
    check-cast p1, Lcom/airbnb/android/requests/UpdateWishListRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$7;->onResponse(Lcom/airbnb/android/requests/UpdateWishListRequest;)V

    return-void
.end method
