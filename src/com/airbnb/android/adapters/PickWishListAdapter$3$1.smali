.class Lcom/airbnb/android/adapters/PickWishListAdapter$3$1;
.super Ljava/lang/Object;
.source "PickWishListAdapter.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/PickWishListAdapter$3;->onClick(Landroid/view/View;)V
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
        "Lcom/airbnb/android/requests/CreateWishListRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/adapters/PickWishListAdapter$3;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/PickWishListAdapter$3;)V
    .registers 2

    .prologue
    .line 258
    iput-object p1, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3$1;->this$1:Lcom/airbnb/android/adapters/PickWishListAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3$1;->this$1:Lcom/airbnb/android/adapters/PickWishListAdapter$3;

    iget-object v0, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$3;->val$addNewSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3$1;->this$1:Lcom/airbnb/android/adapters/PickWishListAdapter$3;

    iget-object v0, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$3;->val$checkMark:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3$1;->this$1:Lcom/airbnb/android/adapters/PickWishListAdapter$3;

    iget-object v0, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$3;->this$0:Lcom/airbnb/android/adapters/PickWishListAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/PickWishListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 287
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/CreateWishListRequest;)V
    .registers 7
    .param p1, "response"    # Lcom/airbnb/android/requests/CreateWishListRequest;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3$1;->this$1:Lcom/airbnb/android/adapters/PickWishListAdapter$3;

    iget-object v0, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$3;->this$0:Lcom/airbnb/android/adapters/PickWishListAdapter;

    # getter for: Lcom/airbnb/android/adapters/PickWishListAdapter;->mListingToAdd:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/adapters/PickWishListAdapter;->access$100(Lcom/airbnb/android/adapters/PickWishListAdapter;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/airbnb/android/requests/CreateWishListRequest;->collection:Lcom/airbnb/android/models/Collection;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Collection;->getId()J

    move-result-wide v3

    aput-wide v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/Listing;->setCollectionIds([J)V

    .line 265
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3$1;->this$1:Lcom/airbnb/android/adapters/PickWishListAdapter$3;

    iget-object v1, v1, Lcom/airbnb/android/adapters/PickWishListAdapter$3;->this$0:Lcom/airbnb/android/adapters/PickWishListAdapter;

    # getter for: Lcom/airbnb/android/adapters/PickWishListAdapter;->mListingToAdd:Lcom/airbnb/android/models/Listing;
    invoke-static {v1}, Lcom/airbnb/android/adapters/PickWishListAdapter;->access$100(Lcom/airbnb/android/adapters/PickWishListAdapter;)Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/AirbnbApi;->addListingToWishLists(Lcom/airbnb/android/models/Listing;)V

    .line 266
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;

    iget-object v2, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3$1;->this$1:Lcom/airbnb/android/adapters/PickWishListAdapter$3;

    iget-object v2, v2, Lcom/airbnb/android/adapters/PickWishListAdapter$3;->this$0:Lcom/airbnb/android/adapters/PickWishListAdapter;

    # getter for: Lcom/airbnb/android/adapters/PickWishListAdapter;->mListingToAdd:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/adapters/PickWishListAdapter;->access$100(Lcom/airbnb/android/adapters/PickWishListAdapter;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;-><init>(Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 267
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/events/WishListModifiedEvent$WishListCreatedEvent;

    iget-object v2, p1, Lcom/airbnb/android/requests/CreateWishListRequest;->collection:Lcom/airbnb/android/models/Collection;

    invoke-direct {v1, v2}, Lcom/airbnb/android/events/WishListModifiedEvent$WishListCreatedEvent;-><init>(Lcom/airbnb/android/models/Collection;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$3$1;->this$1:Lcom/airbnb/android/adapters/PickWishListAdapter$3;

    iget-object v0, v0, Lcom/airbnb/android/adapters/PickWishListAdapter$3;->val$addNewSpinner:Landroid/widget/ProgressBar;

    new-instance v1, Lcom/airbnb/android/adapters/PickWishListAdapter$3$1$1;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/adapters/PickWishListAdapter$3$1$1;-><init>(Lcom/airbnb/android/adapters/PickWishListAdapter$3$1;Lcom/airbnb/android/requests/CreateWishListRequest;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 258
    check-cast p1, Lcom/airbnb/android/requests/CreateWishListRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/PickWishListAdapter$3$1;->onResponse(Lcom/airbnb/android/requests/CreateWishListRequest;)V

    return-void
.end method
