.class final Lcom/airbnb/android/utils/WishListUtils$1;
.super Ljava/lang/Object;
.source "WishListUtils.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/utils/WishListUtils;->unWishlistListingFromWishList(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 49
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/UpdateWishListRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/UpdateWishListRequest;

    .prologue
    .line 42
    iget-object v0, p1, Lcom/airbnb/android/requests/UpdateWishListRequest;->listing:Lcom/airbnb/android/models/Listing;

    .line 43
    .local v0, "updatedListing":Lcom/airbnb/android/models/Listing;
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v2, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;

    invoke-direct {v2, v0}, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;-><init>(Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 44
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/airbnb/android/AirbnbApi;->removeListingFromWishLists(Lcom/airbnb/android/models/Listing;)Z

    .line 45
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, Lcom/airbnb/android/requests/UpdateWishListRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/utils/WishListUtils$1;->onResponse(Lcom/airbnb/android/requests/UpdateWishListRequest;)V

    return-void
.end method
