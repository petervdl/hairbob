.class Lcom/airbnb/android/views/UndoAddToWishListToast$1;
.super Ljava/lang/Object;
.source "UndoAddToWishListToast.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/UndoAddToWishListToast;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/UndoAddToWishListToast;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/UndoAddToWishListToast;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/airbnb/android/views/UndoAddToWishListToast$1;->this$0:Lcom/airbnb/android/views/UndoAddToWishListToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;

    .line 64
    .local v7, "bundleData":Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;
    if-eqz v7, :cond_3f

    .line 65
    iget-object v8, v7, Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;->trackingPosition:Ljava/lang/String;

    .line 66
    .local v8, "trackingPosition":Ljava/lang/String;
    iget-object v6, v7, Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;->wishList:Lcom/airbnb/android/models/Collection;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Collection;->getId()J

    move-result-wide v1

    .line 67
    .local v1, "wishListId":J
    iget-object v6, v7, Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;->listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v3

    .line 69
    .local v3, "listingId":J
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    sget-object v9, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->WishLists:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v9, v9, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v9, v6, v5

    const/4 v9, 0x1

    const-string/jumbo v10, "long_press"

    aput-object v10, v6, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "click_undo"

    aput-object v10, v6, v9

    const/4 v9, 0x3

    aput-object v8, v6, v9

    invoke-static {v6}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/airbnb/android/requests/UpdateWishListRequest;

    new-instance v6, Lcom/airbnb/android/views/UndoAddToWishListToast$1$1;

    invoke-direct {v6, p0, v7}, Lcom/airbnb/android/views/UndoAddToWishListToast$1$1;-><init>(Lcom/airbnb/android/views/UndoAddToWishListToast$1;Lcom/airbnb/android/events/WishListModifiedEvent$ListingAddedToWishListEvent;)V

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/android/requests/UpdateWishListRequest;-><init>(JJZLcom/airbnb/android/requests/RequestListener;)V

    .line 94
    .local v0, "request":Lcom/airbnb/android/requests/UpdateWishListRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/UpdateWishListRequest;->execute()V

    .line 96
    .end local v0    # "request":Lcom/airbnb/android/requests/UpdateWishListRequest;
    .end local v1    # "wishListId":J
    .end local v3    # "listingId":J
    .end local v8    # "trackingPosition":Ljava/lang/String;
    :cond_3f
    return-void
.end method
