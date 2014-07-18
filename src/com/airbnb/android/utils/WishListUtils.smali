.class public Lcom/airbnb/android/utils/WishListUtils;
.super Ljava/lang/Object;
.source "WishListUtils.java"


# static fields
.field private static DEFAULT_TRANSPARENT_TOP_HEIGHT:F = 0.0f

.field private static final PADDING_FACTOR:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput v0, Lcom/airbnb/android/utils/WishListUtils;->DEFAULT_TRANSPARENT_TOP_HEIGHT:F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefaultTransparentTopHeight(Landroid/content/Context;I)F
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screenHeight"    # I

    .prologue
    .line 82
    sget v2, Lcom/airbnb/android/utils/WishListUtils;->DEFAULT_TRANSPARENT_TOP_HEIGHT:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2c

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 84
    .local v1, "res":Landroid/content/res/Resources;
    const/high16 v2, 0x40400000

    const v3, 0x7f0b0093

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    mul-float/2addr v2, v3

    const v3, 0x7f0b008e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    const v3, 0x7f0b0092

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float v0, v2, v3

    .line 87
    .local v0, "contentHeight":F
    int-to-float v2, p1

    sub-float/2addr v2, v0

    float-to-int v2, v2

    int-to-float v2, v2

    sput v2, Lcom/airbnb/android/utils/WishListUtils;->DEFAULT_TRANSPARENT_TOP_HEIGHT:F

    .line 89
    .end local v0    # "contentHeight":F
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_2c
    sget v2, Lcom/airbnb/android/utils/WishListUtils;->DEFAULT_TRANSPARENT_TOP_HEIGHT:F

    return v2
.end method

.method public static getWishListActionBarSubtitle(Landroid/content/res/Resources;Lcom/airbnb/android/models/Collection;)Ljava/lang/String;
    .registers 8
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "wishList"    # Lcom/airbnb/android/models/Collection;

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/airbnb/android/models/Collection;->getListingsCount()I

    move-result v0

    .line 56
    .local v0, "listingsCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v1, "sb":Ljava/lang/StringBuilder;
    const v2, 0x7f0d001a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p1}, Lcom/airbnb/android/models/Collection;->isPrivateCollection()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 59
    const v2, 0x7f0e00a6

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0e081d

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getWishListPickerTransparentTopHeight(Landroid/content/Context;)F
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getScreenSize()Landroid/graphics/Point;

    move-result-object v4

    iget v2, v4, Landroid/graphics/Point;->y:I

    .line 72
    .local v2, "screenHeight":I
    invoke-static {p0, v2}, Lcom/airbnb/android/utils/WishListUtils;->getDefaultTransparentTopHeight(Landroid/content/Context;I)F

    move-result v3

    .line 73
    .local v3, "transparentTopHeight":F
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/AirbnbApi;->getWishLists()Ljava/util/List;

    move-result-object v0

    .line 74
    .local v0, "currUserWishLists":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Collection;>;"
    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_22

    .line 75
    div-int/lit8 v4, v2, 0x3

    int-to-float v1, v4

    .line 76
    .local v1, "oneThirdScreenHeight":F
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 78
    .end local v1    # "oneThirdScreenHeight":F
    :cond_22
    return v3
.end method

.method public static unWishlistListingFromAllWishLists(Lcom/airbnb/android/models/Listing;Ljava/lang/String;)V
    .registers 9
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p1, "trackingPosition"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->WishLists:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v6, v6, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "tap_heart"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "remove_from_wl"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p1, v4, v5

    invoke-static {v4}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/airbnb/android/AirbnbApi;->getAddedToWishListIds(Lcom/airbnb/android/models/Listing;)Ljava/util/Set;

    move-result-object v3

    .line 29
    .local v3, "wishlistIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v3, :cond_42

    .line 30
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 31
    .local v1, "wishListId":J
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcom/airbnb/android/utils/WishListUtils;->unWishlistListingFromWishList(JJ)V

    goto :goto_2a

    .line 34
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "wishListId":J
    :cond_42
    return-void
.end method

.method private static unWishlistListingFromWishList(JJ)V
    .registers 11
    .param p0, "wishListId"    # J
    .param p2, "listingId"    # J

    .prologue
    .line 37
    new-instance v0, Lcom/airbnb/android/requests/UpdateWishListRequest;

    const/4 v5, 0x0

    new-instance v6, Lcom/airbnb/android/utils/WishListUtils$1;

    invoke-direct {v6}, Lcom/airbnb/android/utils/WishListUtils$1;-><init>()V

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/android/requests/UpdateWishListRequest;-><init>(JJZLcom/airbnb/android/requests/RequestListener;)V

    .line 51
    .local v0, "request":Lcom/airbnb/android/requests/UpdateWishListRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/UpdateWishListRequest;->execute()V

    .line 52
    return-void
.end method
