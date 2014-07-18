.class Lcom/airbnb/android/fragments/FriendsWishlistsFragment$3;
.super Ljava/lang/Object;
.source "FriendsWishlistsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->loadListings()V
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
.field final synthetic this$0:Lcom/airbnb/android/fragments/FriendsWishlistsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/FriendsWishlistsFragment;)V
    .registers 2

    .prologue
    .line 212
    iput-object p1, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$3;->this$0:Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$3;->this$0:Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 228
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$3;->this$0:Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 229
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$3;->this$0:Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    # invokes: Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->hideLoaderAndShowEmptyResults()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->access$200(Lcom/airbnb/android/fragments/FriendsWishlistsFragment;)V

    .line 231
    :cond_16
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/FriendsWishlistsRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/FriendsWishlistsRequest;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$3;->this$0:Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 216
    iget-object v0, p1, Lcom/airbnb/android/requests/FriendsWishlistsRequest;->feedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 217
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$3;->this$0:Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    # getter for: Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mLoaderListView:Lcom/airbnb/android/views/BaseLoaderListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->access$300(Lcom/airbnb/android/fragments/FriendsWishlistsFragment;)Lcom/airbnb/android/views/BaseLoaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/BaseLoaderListView;->finishLoader()V

    .line 218
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$3;->this$0:Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    # getter for: Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mAdapter:Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->access$000(Lcom/airbnb/android/fragments/FriendsWishlistsFragment;)Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;

    move-result-object v0

    iget-object v1, p1, Lcom/airbnb/android/requests/FriendsWishlistsRequest;->feedItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->setWishlistFeed(Ljava/util/List;)V

    .line 223
    :cond_24
    :goto_24
    return-void

    .line 220
    :cond_25
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$3;->this$0:Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    # invokes: Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->hideLoaderAndShowEmptyResults()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->access$200(Lcom/airbnb/android/fragments/FriendsWishlistsFragment;)V

    goto :goto_24
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 212
    check-cast p1, Lcom/airbnb/android/requests/FriendsWishlistsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$3;->onResponse(Lcom/airbnb/android/requests/FriendsWishlistsRequest;)V

    return-void
.end method
