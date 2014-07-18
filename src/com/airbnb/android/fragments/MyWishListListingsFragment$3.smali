.class Lcom/airbnb/android/fragments/MyWishListListingsFragment$3;
.super Ljava/lang/Object;
.source "MyWishListListingsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/MyWishListListingsFragment;->togglePrivacy()V
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
        "Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/MyWishListListingsFragment;)V
    .registers 2

    .prologue
    .line 197
    iput-object p1, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$3;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$3;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 219
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest;

    .prologue
    .line 201
    iget-object v0, p1, Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest;->collection:Lcom/airbnb/android/models/Collection;

    if-eqz v0, :cond_49

    .line 202
    iget-object v0, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$3;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    iget-object v1, p1, Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest;->collection:Lcom/airbnb/android/models/Collection;

    # setter for: Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mWishList:Lcom/airbnb/android/models/Collection;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->access$102(Lcom/airbnb/android/fragments/MyWishListListingsFragment;Lcom/airbnb/android/models/Collection;)Lcom/airbnb/android/models/Collection;

    .line 204
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/events/WishListModifiedEvent$WishListUpdatedEvent;

    iget-object v2, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$3;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    # getter for: Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mWishList:Lcom/airbnb/android/models/Collection;
    invoke-static {v2}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->access$100(Lcom/airbnb/android/fragments/MyWishListListingsFragment;)Lcom/airbnb/android/models/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/android/events/WishListModifiedEvent$WishListUpdatedEvent;-><init>(Lcom/airbnb/android/models/Collection;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 205
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/AirbnbApi;->fetchWishLists(Lcom/airbnb/android/requests/RequestListener;)V

    .line 207
    iget-object v0, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$3;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 208
    iget-object v0, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$3;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$3;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    # getter for: Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mWishList:Lcom/airbnb/android/models/Collection;
    invoke-static {v0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->access$100(Lcom/airbnb/android/fragments/MyWishListListingsFragment;)Lcom/airbnb/android/models/Collection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Collection;->isPrivateCollection()Z

    move-result v0

    if-eqz v0, :cond_4a

    const v0, 0x7f0e081e

    :goto_41
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 214
    :cond_49
    return-void

    .line 208
    :cond_4a
    const v0, 0x7f0e081f

    goto :goto_41
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 197
    check-cast p1, Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/MyWishListListingsFragment$3;->onResponse(Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest;)V

    return-void
.end method
