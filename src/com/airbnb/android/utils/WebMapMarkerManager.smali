.class public Lcom/airbnb/android/utils/WebMapMarkerManager;
.super Lcom/airbnb/android/utils/MapMarkerManager;
.source "WebMapMarkerManager.java"


# instance fields
.field private mListingsHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/airbnb/android/utils/MapMarkerManager;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/utils/WebMapMarkerManager;->mListingsHashMap:Ljava/util/HashMap;

    .line 17
    return-void
.end method


# virtual methods
.method public addListingToMap(Lcom/airbnb/android/views/AirMapView;Lcom/airbnb/android/models/Listing;)V
    .registers 6
    .param p1, "airMapView"    # Lcom/airbnb/android/views/AirMapView;
    .param p2, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/airbnb/android/utils/WebMapMarkerManager;->mListingsHashMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 21
    invoke-virtual {p1, p2}, Lcom/airbnb/android/views/AirMapView;->addWebMarker(Lcom/airbnb/android/models/Listing;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 22
    iget-object v0, p0, Lcom/airbnb/android/utils/WebMapMarkerManager;->mListingsHashMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_23
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/airbnb/android/utils/WebMapMarkerManager;->mListingsHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 38
    return-void
.end method

.method public getListing(J)Lcom/airbnb/android/models/Listing;
    .registers 5
    .param p1, "listingId"    # J

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airbnb/android/utils/WebMapMarkerManager;->mListingsHashMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method public highlightListingMarker(Landroid/content/Context;Lcom/airbnb/android/views/AirMapView;Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/Listing;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "airMapView"    # Lcom/airbnb/android/views/AirMapView;
    .param p3, "prevListing"    # Lcom/airbnb/android/models/Listing;
    .param p4, "currListing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 29
    invoke-virtual {p2, p3, p4}, Lcom/airbnb/android/views/AirMapView;->highlightWebMarker(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/Listing;)V

    .line 30
    return-void
.end method
