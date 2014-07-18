.class public Lcom/airbnb/android/requests/OneOffSearchRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "OneOffSearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/OneOffSearchRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public listingsCount:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listings_count"
    .end annotation
.end field

.field private mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

.field private unprocessedListings:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listings"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/SearchInfo;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 5
    .param p1, "searchInfo"    # Lcom/airbnb/android/models/SearchInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/SearchInfo;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/OneOffSearchRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/OneOffSearchRequest;>;"
    const-string/jumbo v0, "listings/search"

    invoke-static {p1}, Lcom/airbnb/android/requests/OneOffSearchRequest;->getProps(Lcom/airbnb/android/models/SearchInfo;)Ljava/util/Properties;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 20
    iput-object p1, p0, Lcom/airbnb/android/requests/OneOffSearchRequest;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    .line 21
    return-void
.end method

.method private static getProps(Lcom/airbnb/android/models/SearchInfo;)Ljava/util/Properties;
    .registers 11
    .param p0, "searchInfo"    # Lcom/airbnb/android/models/SearchInfo;

    .prologue
    const/4 v9, 0x1

    .line 37
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 39
    .local v3, "props":Ljava/util/Properties;
    invoke-virtual {p0}, Lcom/airbnb/android/models/SearchInfo;->getNECorner()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    .line 40
    .local v2, "ne":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {p0}, Lcom/airbnb/android/models/SearchInfo;->getSWCorner()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    .line 41
    .local v5, "sw":Lcom/google/android/gms/maps/model/LatLng;
    if-eqz v2, :cond_9e

    if-eqz v5, :cond_9e

    .line 42
    const-string/jumbo v6, "sw_lat"

    iget-wide v7, v5, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v7, v8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string/jumbo v6, "sw_lng"

    iget-wide v7, v5, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v7, v8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string/jumbo v6, "ne_lat"

    iget-wide v7, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v7, v8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string/jumbo v6, "ne_lng"

    iget-wide v7, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v7, v8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_42
    :goto_42
    const-string/jumbo v6, "items_per_page"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v6, "offset"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {p0}, Lcom/airbnb/android/models/SearchInfo;->getGuestCount()I

    move-result v0

    .line 57
    .local v0, "guestCount":I
    const-string/jumbo v7, "guests"

    if-lez v0, :cond_c1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    :goto_64
    invoke-virtual {v3, v7, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 60
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v6, "checkin"

    invoke-virtual {p0}, Lcom/airbnb/android/models/SearchInfo;->getCheckinDate()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string/jumbo v6, "checkout"

    invoke-virtual {p0}, Lcom/airbnb/android/models/SearchInfo;->getCheckoutDate()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string/jumbo v6, "ib"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-object v3

    .line 46
    .end local v0    # "guestCount":I
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_9e
    invoke-virtual {p0}, Lcom/airbnb/android/models/SearchInfo;->getLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v6

    if-eqz v6, :cond_42

    .line 47
    invoke-virtual {p0}, Lcom/airbnb/android/models/SearchInfo;->getLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 48
    .local v1, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    const-string/jumbo v6, "lat"

    iget-wide v7, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v7, v8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string/jumbo v6, "lng"

    iget-wide v7, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v7, v8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 57
    .end local v1    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v0    # "guestCount":I
    :cond_c1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_64
.end method


# virtual methods
.method public getSearchInfo()Lcom/airbnb/android/models/SearchInfo;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/airbnb/android/requests/OneOffSearchRequest;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    return-object v0
.end method

.method protected preProcess()V
    .registers 5

    .prologue
    .line 25
    iget-object v2, p0, Lcom/airbnb/android/requests/OneOffSearchRequest;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    iget v3, p0, Lcom/airbnb/android/requests/OneOffSearchRequest;->listingsCount:I

    invoke-virtual {v2, v3}, Lcom/airbnb/android/models/SearchInfo;->setTotalListings(I)V

    .line 28
    iget-object v2, p0, Lcom/airbnb/android/requests/OneOffSearchRequest;->unprocessedListings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    .line 29
    .local v1, "listing":Lcom/airbnb/android/models/Listing;
    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getPictureUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 30
    iget-object v2, p0, Lcom/airbnb/android/requests/OneOffSearchRequest;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getPictureUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/models/SearchInfo;->setPictureUrl(Ljava/lang/String;)V

    .line 34
    .end local v1    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_34
    return-void
.end method
