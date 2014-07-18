.class Lcom/airbnb/android/fragments/PickWishlistFragment$2;
.super Ljava/lang/Object;
.source "PickWishlistFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PickWishlistFragment;->wishListCreated(Lcom/airbnb/android/events/WishListModifiedEvent$WishListCreatedEvent;)V
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
.field final synthetic this$0:Lcom/airbnb/android/fragments/PickWishlistFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PickWishlistFragment;)V
    .registers 2

    .prologue
    .line 153
    iput-object p1, p0, Lcom/airbnb/android/fragments/PickWishlistFragment$2;->this$0:Lcom/airbnb/android/fragments/PickWishlistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/airbnb/android/fragments/PickWishlistFragment$2;->this$0:Lcom/airbnb/android/fragments/PickWishlistFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/PickWishlistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 166
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/MyWishListsRequest;)V
    .registers 3
    .param p1, "response"    # Lcom/airbnb/android/requests/MyWishListsRequest;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/airbnb/android/fragments/PickWishlistFragment$2;->this$0:Lcom/airbnb/android/fragments/PickWishlistFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/PickWishlistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 158
    iget-object v0, p0, Lcom/airbnb/android/fragments/PickWishlistFragment$2;->this$0:Lcom/airbnb/android/fragments/PickWishlistFragment;

    # invokes: Lcom/airbnb/android/fragments/PickWishlistFragment;->populateWishListsData()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/PickWishlistFragment;->access$600(Lcom/airbnb/android/fragments/PickWishlistFragment;)V

    .line 159
    iget-object v0, p0, Lcom/airbnb/android/fragments/PickWishlistFragment$2;->this$0:Lcom/airbnb/android/fragments/PickWishlistFragment;

    # getter for: Lcom/airbnb/android/fragments/PickWishlistFragment;->mPickWishListAdapter:Lcom/airbnb/android/adapters/PickWishListAdapter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/PickWishlistFragment;->access$400(Lcom/airbnb/android/fragments/PickWishlistFragment;)Lcom/airbnb/android/adapters/PickWishListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/PickWishListAdapter;->notifyDataSetChanged()V

    .line 161
    :cond_16
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 153
    check-cast p1, Lcom/airbnb/android/requests/MyWishListsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/PickWishlistFragment$2;->onResponse(Lcom/airbnb/android/requests/MyWishListsRequest;)V

    return-void
.end method
