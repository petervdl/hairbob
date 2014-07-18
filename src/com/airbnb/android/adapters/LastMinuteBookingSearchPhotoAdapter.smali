.class public Lcom/airbnb/android/adapters/LastMinuteBookingSearchPhotoAdapter;
.super Lcom/airbnb/android/adapters/SearchPhotoAdapter;
.source "LastMinuteBookingSearchPhotoAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;Ljava/lang/String;I)V
    .registers 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "allowPagination"    # Z
    .param p3, "addToWishListListener"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;
    .param p4, "trackingPosition"    # Ljava/lang/String;
    .param p5, "numColumns"    # I

    .prologue
    .line 14
    invoke-direct/range {p0 .. p5}, Lcom/airbnb/android/adapters/SearchPhotoAdapter;-><init>(Landroid/content/Context;ZLcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;Ljava/lang/String;I)V

    .line 15
    return-void
.end method


# virtual methods
.method public getSubtitleText(Lcom/airbnb/android/models/Listing;Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v0

    .line 21
    .local v0, "searchInfo":Lcom/airbnb/android/models/SearchInfo;
    if-eqz v0, :cond_21

    sget-object v1, Lcom/airbnb/android/models/SearchInfo$SortType;->Distance:Lcom/airbnb/android/models/SearchInfo$SortType;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/SearchInfo;->isSortType(Lcom/airbnb/android/models/SearchInfo$SortType;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getDistance()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 22
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getDistance()Ljava/lang/String;

    move-result-object v1

    .line 24
    :goto_20
    return-object v1

    :cond_21
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getNeighborhood()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getNeighborhood()Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_30
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/adapters/SearchPhotoAdapter;->getSubtitleText(Lcom/airbnb/android/models/Listing;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_20
.end method
