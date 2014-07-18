.class Lcom/airbnb/android/views/UndoAddToWishListToast$1$1;
.super Ljava/lang/Object;
.source "UndoAddToWishListToast.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/UndoAddToWishListToast$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/airbnb/android/views/UndoAddToWishListToast$1;

.field final synthetic val$bundleData:Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/UndoAddToWishListToast$1;Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;)V
    .registers 3

    .prologue
    .line 72
    iput-object p1, p0, Lcom/airbnb/android/views/UndoAddToWishListToast$1$1;->this$1:Lcom/airbnb/android/views/UndoAddToWishListToast$1;

    iput-object p2, p0, Lcom/airbnb/android/views/UndoAddToWishListToast$1$1;->val$bundleData:Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/airbnb/android/views/UndoAddToWishListToast$1$1;->this$1:Lcom/airbnb/android/views/UndoAddToWishListToast$1;

    iget-object v0, v0, Lcom/airbnb/android/views/UndoAddToWishListToast$1;->this$0:Lcom/airbnb/android/views/UndoAddToWishListToast;

    invoke-virtual {v0}, Lcom/airbnb/android/views/UndoAddToWishListToast;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/UpdateWishListRequest;)V
    .registers 8
    .param p1, "response"    # Lcom/airbnb/android/requests/UpdateWishListRequest;

    .prologue
    const/4 v5, 0x0

    .line 76
    iget-object v1, p0, Lcom/airbnb/android/views/UndoAddToWishListToast$1$1;->this$1:Lcom/airbnb/android/views/UndoAddToWishListToast$1;

    iget-object v1, v1, Lcom/airbnb/android/views/UndoAddToWishListToast$1;->this$0:Lcom/airbnb/android/views/UndoAddToWishListToast;

    # getter for: Lcom/airbnb/android/views/UndoAddToWishListToast;->mUndoView:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/airbnb/android/views/UndoAddToWishListToast;->access$000(Lcom/airbnb/android/views/UndoAddToWishListToast;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 77
    iget-object v1, p0, Lcom/airbnb/android/views/UndoAddToWishListToast$1$1;->this$1:Lcom/airbnb/android/views/UndoAddToWishListToast$1;

    iget-object v1, v1, Lcom/airbnb/android/views/UndoAddToWishListToast$1;->this$0:Lcom/airbnb/android/views/UndoAddToWishListToast;

    # getter for: Lcom/airbnb/android/views/UndoAddToWishListToast;->mUndoView:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/airbnb/android/views/UndoAddToWishListToast;->access$000(Lcom/airbnb/android/views/UndoAddToWishListToast;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 78
    iget-object v1, p0, Lcom/airbnb/android/views/UndoAddToWishListToast$1$1;->this$1:Lcom/airbnb/android/views/UndoAddToWishListToast$1;

    iget-object v1, v1, Lcom/airbnb/android/views/UndoAddToWishListToast$1;->this$0:Lcom/airbnb/android/views/UndoAddToWishListToast;

    invoke-virtual {v1}, Lcom/airbnb/android/views/UndoAddToWishListToast;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0821

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/airbnb/android/views/UndoAddToWishListToast$1$1;->val$bundleData:Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;

    iget-object v4, v4, Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;->wishList:Lcom/airbnb/android/models/Collection;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Collection;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "undoMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/views/UndoAddToWishListToast$1$1;->this$1:Lcom/airbnb/android/views/UndoAddToWishListToast$1;

    iget-object v1, v1, Lcom/airbnb/android/views/UndoAddToWishListToast$1;->this$0:Lcom/airbnb/android/views/UndoAddToWishListToast;

    invoke-virtual {v1}, Lcom/airbnb/android/views/UndoAddToWishListToast;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 81
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/views/UndoAddToWishListToast$1$1;->val$bundleData:Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;

    iget-object v2, v2, Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;->listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/AirbnbApi;->removeListingFromWishLists(Lcom/airbnb/android/models/Listing;)Z

    .line 82
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v2, Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;

    iget-object v3, p0, Lcom/airbnb/android/views/UndoAddToWishListToast$1$1;->val$bundleData:Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;

    iget-object v3, v3, Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;->listing:Lcom/airbnb/android/models/Listing;

    iget-object v4, p0, Lcom/airbnb/android/views/UndoAddToWishListToast$1$1;->val$bundleData:Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;

    iget-object v4, v4, Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;->wishList:Lcom/airbnb/android/models/Collection;

    invoke-direct {v2, v3, v4}, Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;-><init>(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/Collection;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 83
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v2, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;

    iget-object v3, p0, Lcom/airbnb/android/views/UndoAddToWishListToast$1$1;->val$bundleData:Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;

    iget-object v3, v3, Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;->listing:Lcom/airbnb/android/models/Listing;

    invoke-direct {v2, v3}, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;-><init>(Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 85
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/android/AirbnbApi;->fetchWishLists(Lcom/airbnb/android/requests/RequestListener;)V

    .line 86
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 72
    check-cast p1, Lcom/airbnb/android/requests/UpdateWishListRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/views/UndoAddToWishListToast$1$1;->onResponse(Lcom/airbnb/android/requests/UpdateWishListRequest;)V

    return-void
.end method
