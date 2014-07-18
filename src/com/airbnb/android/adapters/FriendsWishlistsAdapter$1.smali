.class Lcom/airbnb/android/adapters/FriendsWishlistsAdapter$1;
.super Ljava/lang/Object;
.source "FriendsWishlistsAdapter.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->loadMoreListings()V
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
        "Lcom/airbnb/android/requests/FriendsWishlistsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;)V
    .registers 2

    .prologue
    .line 115
    iput-object p1, p0, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter$1;->this$0:Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 119
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/FriendsWishlistsRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/FriendsWishlistsRequest;

    .prologue
    .line 124
    iget-object v0, p1, Lcom/airbnb/android/requests/FriendsWishlistsRequest;->feedItems:Ljava/util/List;

    .line 125
    .local v0, "feedItems":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_10

    .line 126
    iget-object v1, p0, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter$1;->this$0:Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->setRemainingData(Z)V

    .line 128
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 129
    iget-object v1, p0, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter$1;->this$0:Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;

    # invokes: Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->addWishListData(Ljava/util/List;)V
    invoke-static {v1, v0}, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->access$000(Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;Ljava/util/List;)V

    .line 131
    :cond_1b
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 115
    check-cast p1, Lcom/airbnb/android/requests/FriendsWishlistsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter$1;->onResponse(Lcom/airbnb/android/requests/FriendsWishlistsRequest;)V

    return-void
.end method
