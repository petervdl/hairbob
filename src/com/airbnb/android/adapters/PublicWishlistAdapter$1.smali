.class Lcom/airbnb/android/adapters/PublicWishlistAdapter$1;
.super Ljava/lang/Object;
.source "PublicWishlistAdapter.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/PublicWishlistAdapter;->loadMoreListings()V
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
        "Lcom/airbnb/android/requests/WishListListingsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/PublicWishlistAdapter;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/PublicWishlistAdapter;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/airbnb/android/adapters/PublicWishlistAdapter$1;->this$0:Lcom/airbnb/android/adapters/PublicWishlistAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 77
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 78
    iget-object v0, p0, Lcom/airbnb/android/adapters/PublicWishlistAdapter$1;->this$0:Lcom/airbnb/android/adapters/PublicWishlistAdapter;

    # getter for: Lcom/airbnb/android/adapters/PublicWishlistAdapter;->mCallback:Lcom/airbnb/android/adapters/PublicWishlistAdapter$WishlistCallback;
    invoke-static {v0}, Lcom/airbnb/android/adapters/PublicWishlistAdapter;->access$000(Lcom/airbnb/android/adapters/PublicWishlistAdapter;)Lcom/airbnb/android/adapters/PublicWishlistAdapter$WishlistCallback;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 79
    iget-object v0, p0, Lcom/airbnb/android/adapters/PublicWishlistAdapter$1;->this$0:Lcom/airbnb/android/adapters/PublicWishlistAdapter;

    # getter for: Lcom/airbnb/android/adapters/PublicWishlistAdapter;->mCallback:Lcom/airbnb/android/adapters/PublicWishlistAdapter$WishlistCallback;
    invoke-static {v0}, Lcom/airbnb/android/adapters/PublicWishlistAdapter;->access$000(Lcom/airbnb/android/adapters/PublicWishlistAdapter;)Lcom/airbnb/android/adapters/PublicWishlistAdapter$WishlistCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/airbnb/android/adapters/PublicWishlistAdapter$WishlistCallback;->onLoaded(Lcom/airbnb/android/models/Collection;)V

    .line 81
    :cond_19
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/WishListListingsRequest;)V
    .registers 9
    .param p1, "response"    # Lcom/airbnb/android/requests/WishListListingsRequest;

    .prologue
    .line 53
    iget-object v4, p1, Lcom/airbnb/android/requests/WishListListingsRequest;->collection:Lcom/airbnb/android/models/Collection;

    .line 54
    .local v4, "wishList":Lcom/airbnb/android/models/Collection;
    if-eqz v4, :cond_45

    .line 55
    invoke-virtual {v4}, Lcom/airbnb/android/models/Collection;->getListings()Ljava/util/List;

    move-result-object v3

    .line 56
    .local v3, "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    iget-object v5, p0, Lcom/airbnb/android/adapters/PublicWishlistAdapter$1;->this$0:Lcom/airbnb/android/adapters/PublicWishlistAdapter;

    invoke-virtual {v5}, Lcom/airbnb/android/adapters/PublicWishlistAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    .line 57
    .local v0, "adapterItems":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/interfaces/FeedItem;>;"
    if-eqz v3, :cond_45

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_45

    .line 58
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x32

    if-ge v5, v6, :cond_27

    .line 61
    iget-object v5, p0, Lcom/airbnb/android/adapters/PublicWishlistAdapter$1;->this$0:Lcom/airbnb/android/adapters/PublicWishlistAdapter;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/airbnb/android/adapters/PublicWishlistAdapter;->setRemainingData(Z)V

    .line 64
    :cond_27
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Listing;

    .line 65
    .local v2, "listing":Lcom/airbnb/android/models/Listing;
    new-instance v5, Lcom/airbnb/android/models/ListingFeedItem;

    invoke-direct {v5, v2}, Lcom/airbnb/android/models/ListingFeedItem;-><init>(Lcom/airbnb/android/models/Listing;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 67
    .end local v2    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_40
    iget-object v5, p0, Lcom/airbnb/android/adapters/PublicWishlistAdapter$1;->this$0:Lcom/airbnb/android/adapters/PublicWishlistAdapter;

    invoke-virtual {v5}, Lcom/airbnb/android/adapters/PublicWishlistAdapter;->notifyDataSetChanged()V

    .line 70
    .end local v0    # "adapterItems":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/interfaces/FeedItem;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    :cond_45
    iget-object v5, p0, Lcom/airbnb/android/adapters/PublicWishlistAdapter$1;->this$0:Lcom/airbnb/android/adapters/PublicWishlistAdapter;

    # getter for: Lcom/airbnb/android/adapters/PublicWishlistAdapter;->mCallback:Lcom/airbnb/android/adapters/PublicWishlistAdapter$WishlistCallback;
    invoke-static {v5}, Lcom/airbnb/android/adapters/PublicWishlistAdapter;->access$000(Lcom/airbnb/android/adapters/PublicWishlistAdapter;)Lcom/airbnb/android/adapters/PublicWishlistAdapter$WishlistCallback;

    move-result-object v5

    if-eqz v5, :cond_56

    .line 71
    iget-object v5, p0, Lcom/airbnb/android/adapters/PublicWishlistAdapter$1;->this$0:Lcom/airbnb/android/adapters/PublicWishlistAdapter;

    # getter for: Lcom/airbnb/android/adapters/PublicWishlistAdapter;->mCallback:Lcom/airbnb/android/adapters/PublicWishlistAdapter$WishlistCallback;
    invoke-static {v5}, Lcom/airbnb/android/adapters/PublicWishlistAdapter;->access$000(Lcom/airbnb/android/adapters/PublicWishlistAdapter;)Lcom/airbnb/android/adapters/PublicWishlistAdapter$WishlistCallback;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/airbnb/android/adapters/PublicWishlistAdapter$WishlistCallback;->onLoaded(Lcom/airbnb/android/models/Collection;)V

    .line 73
    :cond_56
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, Lcom/airbnb/android/requests/WishListListingsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/PublicWishlistAdapter$1;->onResponse(Lcom/airbnb/android/requests/WishListListingsRequest;)V

    return-void
.end method
