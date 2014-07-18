.class Lcom/airbnb/android/fragments/PickWishlistFragment$1$1;
.super Ljava/lang/Object;
.source "PickWishlistFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PickWishlistFragment$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
.field final synthetic this$1:Lcom/airbnb/android/fragments/PickWishlistFragment$1;

.field final synthetic val$addToWishList:Z

.field final synthetic val$wishList:Lcom/airbnb/android/models/Collection;

.field final synthetic val$wishListId:J


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PickWishlistFragment$1;ZJLcom/airbnb/android/models/Collection;)V
    .registers 6

    .prologue
    .line 107
    iput-object p1, p0, Lcom/airbnb/android/fragments/PickWishlistFragment$1$1;->this$1:Lcom/airbnb/android/fragments/PickWishlistFragment$1;

    iput-boolean p2, p0, Lcom/airbnb/android/fragments/PickWishlistFragment$1$1;->val$addToWishList:Z

    iput-wide p3, p0, Lcom/airbnb/android/fragments/PickWishlistFragment$1$1;->val$wishListId:J

    iput-object p5, p0, Lcom/airbnb/android/fragments/PickWishlistFragment$1$1;->val$wishList:Lcom/airbnb/android/models/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 7
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 117
    # getter for: Lcom/airbnb/android/fragments/PickWishlistFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/fragments/PickWishlistFragment;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Failed to add listing to wishlist: %s - %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/airbnb/android/fragments/PickWishlistFragment$1$1;->val$wishList:Lcom/airbnb/android/models/Collection;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Collection;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v4, :cond_1c

    iget-object v4, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object p1, v4, Lcom/android/volley/NetworkResponse;->errorResponseString:Ljava/lang/String;

    .end local p1    # "error":Lcom/android/volley/VolleyError;
    :cond_1c
    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/airbnb/android/fragments/PickWishlistFragment$1$1;->this$1:Lcom/airbnb/android/fragments/PickWishlistFragment$1;

    iget-object v0, v0, Lcom/airbnb/android/fragments/PickWishlistFragment$1;->this$0:Lcom/airbnb/android/fragments/PickWishlistFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/PickWishlistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/UpdateWishListRequest;)V
    .registers 6
    .param p1, "response"    # Lcom/airbnb/android/requests/UpdateWishListRequest;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/airbnb/android/fragments/PickWishlistFragment$1$1;->this$1:Lcom/airbnb/android/fragments/PickWishlistFragment$1;

    iget-object v0, v0, Lcom/airbnb/android/fragments/PickWishlistFragment$1;->this$0:Lcom/airbnb/android/fragments/PickWishlistFragment;

    iget-object v1, p1, Lcom/airbnb/android/requests/UpdateWishListRequest;->listing:Lcom/airbnb/android/models/Listing;

    # setter for: Lcom/airbnb/android/fragments/PickWishlistFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/PickWishlistFragment;->access$002(Lcom/airbnb/android/fragments/PickWishlistFragment;Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/models/Listing;

    .line 112
    iget-object v0, p0, Lcom/airbnb/android/fragments/PickWishlistFragment$1$1;->this$1:Lcom/airbnb/android/fragments/PickWishlistFragment$1;

    iget-object v0, v0, Lcom/airbnb/android/fragments/PickWishlistFragment$1;->this$0:Lcom/airbnb/android/fragments/PickWishlistFragment;

    iget-boolean v1, p0, Lcom/airbnb/android/fragments/PickWishlistFragment$1$1;->val$addToWishList:Z

    iget-wide v2, p0, Lcom/airbnb/android/fragments/PickWishlistFragment$1$1;->val$wishListId:J

    # invokes: Lcom/airbnb/android/fragments/PickWishlistFragment;->postEventForListingAddedToWishList(ZJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/fragments/PickWishlistFragment;->access$200(Lcom/airbnb/android/fragments/PickWishlistFragment;ZJ)V

    .line 113
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 107
    check-cast p1, Lcom/airbnb/android/requests/UpdateWishListRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/PickWishlistFragment$1$1;->onResponse(Lcom/airbnb/android/requests/UpdateWishListRequest;)V

    return-void
.end method
