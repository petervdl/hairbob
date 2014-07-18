.class Lcom/airbnb/android/fragments/MyWishListListingsFragment$4;
.super Ljava/lang/Object;
.source "MyWishListListingsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/MyWishListListingsFragment;->loadListingsForWishList()V
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
.field final synthetic this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/MyWishListListingsFragment;)V
    .registers 2

    .prologue
    .line 237
    iput-object p1, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$4;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$4;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 262
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/WishListListingsRequest;)V
    .registers 7
    .param p1, "response"    # Lcom/airbnb/android/requests/WishListListingsRequest;

    .prologue
    .line 241
    iget-object v2, p1, Lcom/airbnb/android/requests/WishListListingsRequest;->collection:Lcom/airbnb/android/models/Collection;

    .line 242
    .local v2, "wishList":Lcom/airbnb/android/models/Collection;
    if-eqz v2, :cond_46

    .line 243
    iget-object v3, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$4;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/airbnb/android/utils/WishListUtils;->getWishListActionBarSubtitle(Landroid/content/res/Resources;Lcom/airbnb/android/models/Collection;)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "subtitle":Ljava/lang/String;
    iget-object v3, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$4;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/activities/AirActivity;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Collection;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/airbnb/android/activities/AirActivity;->setupActionBar(Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActionBar;

    .line 245
    invoke-virtual {v2}, Lcom/airbnb/android/models/Collection;->getListings()Ljava/util/List;

    move-result-object v0

    .line 246
    .local v0, "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    if-eqz v0, :cond_40

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_40

    .line 247
    iget-object v3, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$4;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    # getter for: Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mListingAdapter:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;
    invoke-static {v3}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->access$000(Lcom/airbnb/android/fragments/MyWishListListingsFragment;)Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    move-result-object v3

    invoke-virtual {v2}, Lcom/airbnb/android/models/Collection;->getListingsCount()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->setData(Ljava/util/List;I)V

    .line 251
    :goto_36
    iget-object v3, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$4;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    # getter for: Lcom/airbnb/android/fragments/MyWishListListingsFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;
    invoke-static {v3}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->access$300(Lcom/airbnb/android/fragments/MyWishListListingsFragment;)Lcom/airbnb/android/views/LoaderListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/views/LoaderListView;->finishLoader()V

    .line 256
    .end local v0    # "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    .end local v1    # "subtitle":Ljava/lang/String;
    :goto_3f
    return-void

    .line 249
    .restart local v0    # "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    .restart local v1    # "subtitle":Ljava/lang/String;
    :cond_40
    iget-object v3, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$4;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    # invokes: Lcom/airbnb/android/fragments/MyWishListListingsFragment;->showEmptyMessagesView()V
    invoke-static {v3}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->access$200(Lcom/airbnb/android/fragments/MyWishListListingsFragment;)V

    goto :goto_36

    .line 254
    .end local v0    # "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    .end local v1    # "subtitle":Ljava/lang/String;
    :cond_46
    iget-object v3, p0, Lcom/airbnb/android/fragments/MyWishListListingsFragment$4;->this$0:Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    # invokes: Lcom/airbnb/android/fragments/MyWishListListingsFragment;->showEmptyMessagesView()V
    invoke-static {v3}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->access$200(Lcom/airbnb/android/fragments/MyWishListListingsFragment;)V

    goto :goto_3f
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 237
    check-cast p1, Lcom/airbnb/android/requests/WishListListingsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/MyWishListListingsFragment$4;->onResponse(Lcom/airbnb/android/requests/WishListListingsRequest;)V

    return-void
.end method
