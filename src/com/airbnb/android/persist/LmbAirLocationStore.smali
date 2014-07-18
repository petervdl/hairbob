.class public Lcom/airbnb/android/persist/LmbAirLocationStore;
.super Lcom/airbnb/android/persist/PrefsStore;
.source "LmbAirLocationStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/persist/PrefsStore",
        "<",
        "Lcom/airbnb/android/models/AirLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static mInstance:Lcom/airbnb/android/persist/LmbAirLocationStore;


# instance fields
.field private mAirLocations:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "locations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/AirLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/airbnb/android/persist/PrefsStore;-><init>()V

    .line 27
    return-void
.end method

.method public static getClosestAirLocation(Landroid/content/Context;)Lcom/airbnb/android/models/AirLocation;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-static {p0}, Lcom/airbnb/android/utils/LocationHelper;->getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    .line 74
    .local v0, "location":Landroid/location/Location;
    invoke-static {}, Lcom/airbnb/android/persist/LmbAirLocationStore;->getInstance()Lcom/airbnb/android/persist/LmbAirLocationStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/airbnb/android/persist/LmbAirLocationStore;->getAirLocationClosestTo(Landroid/location/Location;)Lcom/airbnb/android/models/AirLocation;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/airbnb/android/persist/LmbAirLocationStore;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/airbnb/android/persist/LmbAirLocationStore;->mInstance:Lcom/airbnb/android/persist/LmbAirLocationStore;

    if-nez v0, :cond_b

    .line 31
    new-instance v0, Lcom/airbnb/android/persist/LmbAirLocationStore;

    invoke-direct {v0}, Lcom/airbnb/android/persist/LmbAirLocationStore;-><init>()V

    sput-object v0, Lcom/airbnb/android/persist/LmbAirLocationStore;->mInstance:Lcom/airbnb/android/persist/LmbAirLocationStore;

    .line 33
    :cond_b
    sget-object v0, Lcom/airbnb/android/persist/LmbAirLocationStore;->mInstance:Lcom/airbnb/android/persist/LmbAirLocationStore;

    return-object v0
.end method


# virtual methods
.method public getAirLocationClosestTo(Landroid/location/Location;)Lcom/airbnb/android/models/AirLocation;
    .registers 19
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 86
    if-nez p1, :cond_1a

    .line 87
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/android/persist/LmbAirLocationStore;->mAirLocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    .line 110
    :goto_d
    return-object v1

    .line 87
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/android/persist/LmbAirLocationStore;->mAirLocations:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/AirLocation;

    goto :goto_d

    .line 90
    :cond_1a
    const/4 v12, 0x0

    .line 91
    .local v12, "closestLocation":Lcom/airbnb/android/models/AirLocation;
    const v13, 0x7f7fffff

    .line 93
    .local v13, "closestLocationDistance":F
    new-instance v16, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 94
    .local v16, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/android/persist/LmbAirLocationStore;->mAirLocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_35
    :goto_35
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/airbnb/android/models/AirLocation;

    .line 95
    .local v10, "airLocation":Lcom/airbnb/android/models/AirLocation;
    invoke-virtual {v10}, Lcom/airbnb/android/models/AirLocation;->getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/LatLngBounds;->contains(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 96
    move-object v12, v10

    .end local v10    # "airLocation":Lcom/airbnb/android/models/AirLocation;
    :cond_4e
    move-object v1, v12

    .line 110
    goto :goto_d

    .line 100
    .restart local v10    # "airLocation":Lcom/airbnb/android/models/AirLocation;
    :cond_50
    invoke-virtual {v10}, Lcom/airbnb/android/models/AirLocation;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v11

    .line 101
    .local v11, "centerOfLocation":Lcom/google/android/gms/maps/model/LatLng;
    const/4 v1, 0x1

    new-array v9, v1, [F

    .line 102
    .local v9, "results":[F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    iget-wide v5, v11, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v7, v11, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 103
    const/4 v1, 0x0

    aget v14, v9, v1

    .line 105
    .local v14, "distance":F
    cmpg-float v1, v14, v13

    if-gez v1, :cond_35

    .line 106
    move v13, v14

    .line 107
    move-object v12, v10

    goto :goto_35
.end method

.method public getData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/AirLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/airbnb/android/persist/LmbAirLocationStore;->mAirLocations:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultJson()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    const-string/jumbo v0, "{\"locations\": [{\"display_name\": \"San Francisco\",\"search_name\": \"San Francisco\",\"bounding_box\": {\"ne_lat\": 37.809166,\"ne_lng\": -122.355467,\"sw_lat\": 37.70977,\"sw_lng\": -122.518288}},{\"display_name\": \"Los Angeles\",\"search_name\": \"Los Angeles\",\"bounding_box\": {\"sw_lng\": -118.522568,\"sw_lat\": 33.902336,\"ne_lng\": -118.177528,\"ne_lat\": 34.137952}}]}"

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    const-string/jumbo v0, "lmb_locations"

    return-object v0
.end method

.method public isValid(Ljava/lang/String;)Z
    .registers 7
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 120
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONTokener;

    invoke-direct {v4, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 121
    .local v2, "response":Lorg/json/JSONObject;
    const-string/jumbo v4, "locations"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 123
    .local v1, "locations":Lorg/json/JSONArray;
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_17} :catch_1c

    move-result v4

    if-lez v4, :cond_1b

    const/4 v3, 0x1

    .line 125
    .end local v1    # "locations":Lorg/json/JSONArray;
    .end local v2    # "response":Lorg/json/JSONObject;
    :cond_1b
    :goto_1b
    return v3

    .line 124
    :catch_1c
    move-exception v0

    .line 125
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_1b
.end method
