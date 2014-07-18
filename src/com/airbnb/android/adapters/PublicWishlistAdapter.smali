.class public Lcom/airbnb/android/adapters/PublicWishlistAdapter;
.super Lcom/airbnb/android/adapters/WishListableAdapter;
.source "PublicWishlistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/PublicWishlistAdapter$WishlistCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/airbnb/android/adapters/PublicWishlistAdapter$WishlistCallback;

.field private mWishListListingsRequest:Lcom/airbnb/android/requests/WishListListingsRequest;

.field private mWishlistId:J


# direct methods
.method private constructor <init>(Landroid/content/Context;ZLcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;Ljava/lang/String;Lcom/airbnb/android/models/Collection;Lcom/airbnb/android/adapters/PublicWishlistAdapter$WishlistCallback;)V
    .registers 13
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "allowPagination"    # Z
    .param p3, "addToWishListListener"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;
    .param p4, "trackingPosition"    # Ljava/lang/String;
    .param p5, "wishlist"    # Lcom/airbnb/android/models/Collection;
    .param p6, "callback"    # Lcom/airbnb/android/adapters/PublicWishlistAdapter$WishlistCallback;

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/adapters/WishListableAdapter;-><init>(Landroid/content/Context;ZLcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;Ljava/lang/String;I)V

    .line 34
    iput-object p6, p0, Lcom/airbnb/android/adapters/PublicWishlistAdapter;->mCallback:Lcom/airbnb/android/adapters/PublicWishlistAdapter$WishlistCallback;

    .line 35
    invoke-virtual {p5}, Lcom/airbnb/android/models/Collection;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/adapters/PublicWishlistAdapter;->mWishlistId:J

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/adapters/PublicWishlistAdapter;)Lcom/airbnb/android/adapters/PublicWishlistAdapter$WishlistCallback;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/PublicWishlistAdapter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/airbnb/android/adapters/PublicWishlistAdapter;->mCallback:Lcom/airbnb/android/adapters/PublicWishlistAdapter$WishlistCallback;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;ZLcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;Ljava/lang/String;Lcom/airbnb/android/models/Collection;Lcom/airbnb/android/adapters/PublicWishlistAdapter$WishlistCallback;)Lcom/airbnb/android/adapters/PublicWishlistAdapter;
    .registers 13
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "allowPagination"    # Z
    .param p2, "addToWishListListener"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;
    .param p3, "trackingPosition"    # Ljava/lang/String;
    .param p4, "wishlist"    # Lcom/airbnb/android/models/Collection;
    .param p5, "callback"    # Lcom/airbnb/android/adapters/PublicWishlistAdapter$WishlistCallback;

    .prologue
    .line 40
    new-instance v0, Lcom/airbnb/android/adapters/PublicWishlistAdapter;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/android/adapters/PublicWishlistAdapter;-><init>(Landroid/content/Context;ZLcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;Ljava/lang/String;Lcom/airbnb/android/models/Collection;Lcom/airbnb/android/adapters/PublicWishlistAdapter$WishlistCallback;)V

    return-object v0
.end method


# virtual methods
.method protected loadMoreListings()V
    .registers 6

    .prologue
    .line 45
    iget-object v0, p0, Lcom/airbnb/android/adapters/PublicWishlistAdapter;->mWishListListingsRequest:Lcom/airbnb/android/requests/WishListListingsRequest;

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->isQueueRunning(Lcom/android/volley/Request;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 84
    :goto_8
    return-void

    .line 50
    :cond_9
    new-instance v0, Lcom/airbnb/android/requests/WishListListingsRequest;

    iget-wide v1, p0, Lcom/airbnb/android/adapters/PublicWishlistAdapter;->mWishlistId:J

    const/4 v3, 0x0

    new-instance v4, Lcom/airbnb/android/adapters/PublicWishlistAdapter$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/adapters/PublicWishlistAdapter$1;-><init>(Lcom/airbnb/android/adapters/PublicWishlistAdapter;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/android/requests/WishListListingsRequest;-><init>(JILcom/airbnb/android/requests/RequestListener;)V

    iput-object v0, p0, Lcom/airbnb/android/adapters/PublicWishlistAdapter;->mWishListListingsRequest:Lcom/airbnb/android/requests/WishListListingsRequest;

    .line 83
    iget-object v0, p0, Lcom/airbnb/android/adapters/PublicWishlistAdapter;->mWishListListingsRequest:Lcom/airbnb/android/requests/WishListListingsRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/WishListListingsRequest;->execute()V

    goto :goto_8
.end method
