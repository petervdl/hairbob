.class Lcom/airbnb/android/fragments/MyWishListListingsFragment$5;
.super Ljava/lang/Object;
.source "MyWishListListingsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/MyWishListListingsFragment;->onActivityResult(IILandroid/content/Intent;)V
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
        "Lcom/airbnb/android/requests/DeleteWishListRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/MyWishListListingsFragment;)V
    .registers 2

    .prologue
    .line 303
    iput-object p1, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$5;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$5;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 317
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/DeleteWishListRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/DeleteWishListRequest;

    .prologue
    .line 307
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/AirbnbApi;->fetchWishLists(Lcom/airbnb/android/requests/RequestListener;)V

    .line 308
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/events/WishListModifiedEvent$WishListDeletedEvent;

    iget-object v2, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$5;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    # getter for: Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mWishList:Lcom/airbnb/android/models/Collection;
    invoke-static {v2}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->access$100(Lcom/airbnb/android/fragments/MyWishListListingsFragment;)Lcom/airbnb/android/models/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/android/events/WishListModifiedEvent$WishListDeletedEvent;-><init>(Lcom/airbnb/android/models/Collection;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$5;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 310
    iget-object v0, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$5;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 312
    :cond_29
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 303
    check-cast p1, Lcom/airbnb/android/requests/DeleteWishListRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/MyWishListListingsFragment$5;->onResponse(Lcom/airbnb/android/requests/DeleteWishListRequest;)V

    return-void
.end method
