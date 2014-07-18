.class public Lcom/airbnb/android/requests/SearchRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "SearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/requests/SearchRequest$SearchMetaData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/SearchRequest;",
        ">;"
    }
.end annotation


# static fields
.field public static final LISTINGS_PER_FETCH:I = 0x19


# instance fields
.field public geography:Lcom/airbnb/android/models/SearchGeography;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "geography"
    .end annotation
.end field

.field public listings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation
.end field

.field public listingsCount:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listings_count"
    .end annotation
.end field

.field public searchMetaData:Lcom/airbnb/android/requests/SearchRequest$SearchMetaData;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "meta"
    .end annotation
.end field

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
.method public constructor <init>(Lcom/airbnb/android/models/SearchInfo;ILcom/airbnb/android/requests/RequestListener;)V
    .registers 6
    .param p1, "searchInfo"    # Lcom/airbnb/android/models/SearchInfo;
    .param p2, "indexStart"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/SearchInfo;",
            "I",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/SearchRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/SearchRequest;>;"
    const-string/jumbo v0, "listings/search"

    invoke-static {p1, p2}, Lcom/airbnb/android/requests/SearchRequest;->makeProperties(Lcom/airbnb/android/models/SearchInfo;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 54
    return-void
.end method

.method private static makeProperties(Lcom/airbnb/android/models/SearchInfo;I)Lcom/airbnb/android/utils/Strap;
    .registers 24
    .param p0, "searchInfo"    # Lcom/airbnb/android/models/SearchInfo;
    .param p1, "indexStart"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v10

    .line 90
    .local v10, "props":Lcom/airbnb/android/utils/Strap;
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->getNECorner()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v9

    .line 91
    .local v9, "ne":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->getSWCorner()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v16

    .line 92
    .local v16, "sw":Lcom/google/android/gms/maps/model/LatLng;
    if-eqz v9, :cond_171

    if-eqz v16, :cond_171

    .line 93
    const-string/jumbo v17, "sw_lat"

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v17, "sw_lng"

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v17, "ne_lat"

    iget-wide v0, v9, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v17, "ne_lng"

    iget-wide v0, v9, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_5c
    :goto_5c
    const-string/jumbo v17, "offset"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string/jumbo v17, "items_per_page"

    const/16 v18, 0x19

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->getSearchTerm()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_92

    .line 107
    const-string/jumbo v17, "location"

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->getSearchTerm()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_92
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->getGuestCount()I

    move-result v5

    .line 111
    .local v5, "guestCount":I
    const-string/jumbo v18, "guests"

    if-lez v5, :cond_19d

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    :goto_9f
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->getCheckinTimeMillis()J

    move-result-wide v14

    .line 114
    .local v14, "start":J
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->getCheckoutTimeMillis()J

    move-result-wide v3

    .line 115
    .local v3, "end":J
    const-wide/16 v17, 0x0

    cmp-long v17, v14, v17

    if-lez v17, :cond_f6

    const-wide/16 v17, 0x0

    cmp-long v17, v3, v17

    if-lez v17, :cond_f6

    .line 116
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string/jumbo v17, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 117
    .local v11, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v17, "checkin"

    new-instance v18, Ljava/util/Date;

    move-object/from16 v0, v18

    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v17, "checkout"

    new-instance v18, Ljava/util/Date;

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .end local v11    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_f6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->isInstantBookOnly()Z

    move-result v17

    if-eqz v17, :cond_109

    .line 122
    const-string/jumbo v17, "ib"

    const-string/jumbo v18, "1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_109
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->isLastMinuteOnly()Z

    move-result v17

    if-eqz v17, :cond_11c

    .line 126
    const-string/jumbo v17, "last_minute"

    const-string/jumbo v18, "1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_11c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->getSortType()Lcom/airbnb/android/models/SearchInfo$SortType;

    move-result-object v13

    .line 130
    .local v13, "sortType":Lcom/airbnb/android/models/SearchInfo$SortType;
    if-eqz v13, :cond_1c9

    .line 131
    const-string/jumbo v17, "sort"

    iget v0, v13, Lcom/airbnb/android/models/SearchInfo$SortType;->key:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v17, Lcom/airbnb/android/models/SearchInfo$SortType;->Distance:Lcom/airbnb/android/models/SearchInfo$SortType;

    move-object/from16 v0, v17

    if-ne v13, v0, :cond_1c9

    .line 135
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/airbnb/android/utils/LocationHelper;->getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v8

    .line 136
    .local v8, "location":Landroid/location/Location;
    if-nez v8, :cond_1a5

    .line 137
    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->isProduction()Z

    move-result v17

    if-nez v17, :cond_1c9

    .line 138
    sget-object v17, Lcom/airbnb/android/requests/SearchRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "SearchRequest sorting by distance, but no last location is available"

    invoke-static/range {v17 .. v18}, Lcom/airbnb/android/utils/BuildHelper;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string/jumbo v17, "android_eng"

    const/16 v18, 0x1

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v19

    const-string/jumbo v20, "type"

    const-string/jumbo v21, "sort_by_distance_without_location"

    invoke-virtual/range {v19 .. v21}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 140
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string/jumbo v18, "trying to sort by distance with no current location"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 97
    .end local v3    # "end":J
    .end local v5    # "guestCount":I
    .end local v8    # "location":Landroid/location/Location;
    .end local v13    # "sortType":Lcom/airbnb/android/models/SearchInfo$SortType;
    .end local v14    # "start":J
    :cond_171
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->getLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v17

    if-eqz v17, :cond_5c

    .line 98
    const-string/jumbo v17, "lat"

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->getLocationLatitude()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string/jumbo v17, "lng"

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->getLocationLongitude()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5c

    .line 111
    .restart local v5    # "guestCount":I
    :cond_19d
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto/16 :goto_9f

    .line 143
    .restart local v3    # "end":J
    .restart local v8    # "location":Landroid/location/Location;
    .restart local v13    # "sortType":Lcom/airbnb/android/models/SearchInfo$SortType;
    .restart local v14    # "start":J
    :cond_1a5
    const-string/jumbo v17, "lat"

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v17, "lng"

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .end local v8    # "location":Landroid/location/Location;
    :cond_1c9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->isUseDetailedFilters()Z

    move-result v17

    if-eqz v17, :cond_2de

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->includeEntirePlace()Z

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->includeSharedRoom()Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1eb

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->includeSharedRoom()Z

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->includePrivateRoom()Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2db

    :cond_1eb
    const/4 v6, 0x1

    .line 155
    .local v6, "hasRoomType":Z
    :goto_1ec
    if-eqz v6, :cond_227

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->includeEntirePlace()Z

    move-result v17

    if-eqz v17, :cond_201

    .line 157
    const-string/jumbo v17, "room_types[0]"

    const-string/jumbo v18, "Entire home/apt"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_201
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->includeSharedRoom()Z

    move-result v17

    if-eqz v17, :cond_214

    .line 160
    const-string/jumbo v17, "room_types[1]"

    const-string/jumbo v18, "Shared room"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_214
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->includePrivateRoom()Z

    move-result v17

    if-eqz v17, :cond_227

    .line 163
    const-string/jumbo v17, "room_types[2]"

    const-string/jumbo v18, "Private room"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_227
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->getMinPrice()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->getMinFilterPrice()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_247

    .line 169
    const-string/jumbo v17, "price_min"

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->getMinPrice()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_247
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->getMaxPrice()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->getMaxFilterPrice()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_267

    .line 172
    const-string/jumbo v17, "price_max"

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->getMaxPrice()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_267
    const-string/jumbo v17, "min_beds"

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->getNumBeds()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string/jumbo v17, "min_bedrooms"

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->getNumBedrooms()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string/jumbo v17, "min_bathrooms"

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->getNumBathrooms()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->getAmenities()[Ljava/lang/Integer;

    move-result-object v2

    .line 180
    .local v2, "amenities":[Ljava/lang/Integer;
    array-length v0, v2

    move/from16 v17, v0

    if-lez v17, :cond_2de

    .line 181
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2a7
    array-length v0, v2

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_2de

    .line 182
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "amenities["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aget-object v18, v2, v7

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a7

    .line 153
    .end local v2    # "amenities":[Ljava/lang/Integer;
    .end local v6    # "hasRoomType":Z
    .end local v7    # "i":I
    :cond_2db
    const/4 v6, 0x0

    goto/16 :goto_1ec

    .line 189
    :cond_2de
    const-string/jumbo v17, "ib_add_photo_flow"

    const-string/jumbo v18, "true"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string/jumbo v17, "min_num_pic_urls"

    const-string/jumbo v18, "10"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/models/SearchInfo;->getQueryParamsServerGaveUs()Lcom/airbnb/android/utils/Strap;

    move-result-object v12

    .line 195
    .local v12, "serverSentQueryParams":Lcom/airbnb/android/utils/Strap;
    if-eqz v12, :cond_30e

    .line 197
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/airbnb/android/utils/Strap;->mix(Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/airbnb/android/utils/Strap;->mix(Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v10

    .line 199
    .end local v10    # "props":Lcom/airbnb/android/utils/Strap;
    :cond_30e
    return-object v10
.end method


# virtual methods
.method public getTTL()J
    .registers 3

    .prologue
    .line 76
    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method protected preProcess()V
    .registers 5

    .prologue
    .line 58
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/airbnb/android/requests/SearchRequest;->listings:Ljava/util/List;

    .line 59
    iget-object v3, p0, Lcom/airbnb/android/requests/SearchRequest;->unprocessedListings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    .line 62
    .local v1, "listing":Lcom/airbnb/android/models/Listing;
    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v2

    .line 65
    .local v2, "realListing":Lcom/airbnb/android/models/Listing;
    iget-object v3, p0, Lcom/airbnb/android/requests/SearchRequest;->searchMetaData:Lcom/airbnb/android/requests/SearchRequest$SearchMetaData;

    invoke-virtual {v3}, Lcom/airbnb/android/requests/SearchRequest$SearchMetaData;->isPriceMonthly()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 66
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/airbnb/android/models/Listing;->setIsPriceMonthly(Z)V

    .line 69
    :cond_29
    iget-object v3, p0, Lcom/airbnb/android/requests/SearchRequest;->listings:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 72
    .end local v1    # "listing":Lcom/airbnb/android/models/Listing;
    .end local v2    # "realListing":Lcom/airbnb/android/models/Listing;
    :cond_2f
    return-void
.end method
