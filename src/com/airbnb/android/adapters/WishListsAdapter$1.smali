.class Lcom/airbnb/android/adapters/WishListsAdapter$1;
.super Ljava/lang/Object;
.source "WishListsAdapter.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/WishListsAdapter;->fetchMyWishlists()V
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
        "Lcom/airbnb/android/requests/MyWishListsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/WishListsAdapter;

.field final synthetic val$existingWishLists:I


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/WishListsAdapter;I)V
    .registers 3

    .prologue
    .line 110
    iput-object p1, p0, Lcom/airbnb/android/adapters/WishListsAdapter$1;->this$0:Lcom/airbnb/android/adapters/WishListsAdapter;

    iput p2, p0, Lcom/airbnb/android/adapters/WishListsAdapter$1;->val$existingWishLists:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-object v0, p0, Lcom/airbnb/android/adapters/WishListsAdapter$1;->this$0:Lcom/airbnb/android/adapters/WishListsAdapter;

    # setter for: Lcom/airbnb/android/adapters/WishListsAdapter;->mRemainingData:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/adapters/WishListsAdapter;->access$002(Lcom/airbnb/android/adapters/WishListsAdapter;Z)Z

    .line 126
    iget-object v0, p0, Lcom/airbnb/android/adapters/WishListsAdapter$1;->this$0:Lcom/airbnb/android/adapters/WishListsAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/WishListsAdapter;->notifyDataSetChanged()V

    .line 127
    iget-object v0, p0, Lcom/airbnb/android/adapters/WishListsAdapter$1;->this$0:Lcom/airbnb/android/adapters/WishListsAdapter;

    # setter for: Lcom/airbnb/android/adapters/WishListsAdapter;->mFetching:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/adapters/WishListsAdapter;->access$102(Lcom/airbnb/android/adapters/WishListsAdapter;Z)Z

    .line 128
    iget-object v0, p0, Lcom/airbnb/android/adapters/WishListsAdapter$1;->this$0:Lcom/airbnb/android/adapters/WishListsAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/WishListsAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 129
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/MyWishListsRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/MyWishListsRequest;

    .prologue
    const/4 v2, 0x0

    .line 114
    iget v0, p0, Lcom/airbnb/android/adapters/WishListsAdapter$1;->val$existingWishLists:I

    if-lez v0, :cond_1d

    iget-object v0, p1, Lcom/airbnb/android/requests/MyWishListsRequest;->collections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 115
    iget-object v0, p0, Lcom/airbnb/android/adapters/WishListsAdapter$1;->this$0:Lcom/airbnb/android/adapters/WishListsAdapter;

    # setter for: Lcom/airbnb/android/adapters/WishListsAdapter;->mRemainingData:Z
    invoke-static {v0, v2}, Lcom/airbnb/android/adapters/WishListsAdapter;->access$002(Lcom/airbnb/android/adapters/WishListsAdapter;Z)Z

    .line 116
    iget-object v0, p0, Lcom/airbnb/android/adapters/WishListsAdapter$1;->this$0:Lcom/airbnb/android/adapters/WishListsAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/WishListsAdapter;->notifyDataSetChanged()V

    .line 120
    :goto_17
    iget-object v0, p0, Lcom/airbnb/android/adapters/WishListsAdapter$1;->this$0:Lcom/airbnb/android/adapters/WishListsAdapter;

    # setter for: Lcom/airbnb/android/adapters/WishListsAdapter;->mFetching:Z
    invoke-static {v0, v2}, Lcom/airbnb/android/adapters/WishListsAdapter;->access$102(Lcom/airbnb/android/adapters/WishListsAdapter;Z)Z

    .line 121
    return-void

    .line 118
    :cond_1d
    iget-object v0, p0, Lcom/airbnb/android/adapters/WishListsAdapter$1;->this$0:Lcom/airbnb/android/adapters/WishListsAdapter;

    iget-object v1, p1, Lcom/airbnb/android/requests/MyWishListsRequest;->collections:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/WishListsAdapter;->setData(Ljava/util/List;)V

    goto :goto_17
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 110
    check-cast p1, Lcom/airbnb/android/requests/MyWishListsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/WishListsAdapter$1;->onResponse(Lcom/airbnb/android/requests/MyWishListsRequest;)V

    return-void
.end method
