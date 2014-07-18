.class Lcom/airbnb/android/adapters/MyWishListListingsAdapter$1;
.super Ljava/lang/Object;
.source "MyWishListListingsAdapter.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->fetchWishListListings()V
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
.field final synthetic this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

.field final synthetic val$numListings:I


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;I)V
    .registers 3

    .prologue
    .line 131
    iput-object p1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$1;->this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    iput p2, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$1;->val$numListings:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$1;->this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    # setter for: Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mRemainingData:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->access$002(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;Z)Z

    .line 151
    iget-object v0, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$1;->this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->notifyDataSetChanged()V

    .line 152
    iget-object v0, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$1;->this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    # setter for: Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mFetching:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->access$102(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;Z)Z

    .line 153
    iget-object v0, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$1;->this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 154
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/WishListListingsRequest;)V
    .registers 8
    .param p1, "response"    # Lcom/airbnb/android/requests/WishListListingsRequest;

    .prologue
    const/4 v3, 0x0

    .line 135
    iget-object v1, p1, Lcom/airbnb/android/requests/WishListListingsRequest;->collection:Lcom/airbnb/android/models/Collection;

    .line 136
    .local v1, "wishlist":Lcom/airbnb/android/models/Collection;
    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lcom/airbnb/android/models/Collection;->getListings()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 137
    invoke-virtual {v1}, Lcom/airbnb/android/models/Collection;->getListings()Ljava/util/List;

    move-result-object v0

    .line 138
    .local v0, "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    iget-object v4, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$1;->this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v5, 0x32

    if-lt v2, v5, :cond_30

    const/4 v2, 0x1

    :goto_1a
    # setter for: Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mRemainingData:Z
    invoke-static {v4, v2}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->access$002(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;Z)Z

    .line 139
    iget v2, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$1;->val$numListings:I

    if-nez v2, :cond_32

    .line 140
    iget-object v2, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$1;->this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Collection;->getListingsCount()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->setData(Ljava/util/List;I)V

    .line 145
    .end local v0    # "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    :cond_2a
    :goto_2a
    iget-object v2, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$1;->this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    # setter for: Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->mFetching:Z
    invoke-static {v2, v3}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->access$102(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;Z)Z

    .line 146
    return-void

    .restart local v0    # "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    :cond_30
    move v2, v3

    .line 138
    goto :goto_1a

    .line 142
    :cond_32
    iget-object v2, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$1;->this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    invoke-virtual {v2, v0}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->addData(Ljava/util/List;)V

    goto :goto_2a
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 131
    check-cast p1, Lcom/airbnb/android/requests/WishListListingsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$1;->onResponse(Lcom/airbnb/android/requests/WishListListingsRequest;)V

    return-void
.end method
