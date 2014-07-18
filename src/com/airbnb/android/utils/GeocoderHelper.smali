.class public Lcom/airbnb/android/utils/GeocoderHelper;
.super Ljava/lang/Object;
.source "GeocoderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/utils/GeocoderHelper$ReverseGeocoderAsyncTask;,
        Lcom/airbnb/android/utils/GeocoderHelper$FallbackRequestListener;,
        Lcom/airbnb/android/utils/GeocoderHelper$GeocoderRequest;
    }
.end annotation


# static fields
.field public static final FORMATTED_ADDRESS:Ljava/lang/String; = "formatted_address"

.field private static final GEOCODER_URL:Ljava/lang/String; = "https://maps.googleapis.com/maps/api/geocode/json"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/airbnb/android/utils/GeocoderHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/utils/GeocoderHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/airbnb/android/utils/GeocoderHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static fallbackGetFromLocation(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLng;Lcom/airbnb/android/utils/GeocoderHelper$FallbackRequestListener;)Lcom/airbnb/android/utils/GeocoderHelper$ReverseGeocoderAsyncTask;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraPosition"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "listener"    # Lcom/airbnb/android/utils/GeocoderHelper$FallbackRequestListener;

    .prologue
    .line 145
    new-instance v0, Lcom/airbnb/android/utils/GeocoderHelper$ReverseGeocoderAsyncTask;

    invoke-direct {v0, p0, p2}, Lcom/airbnb/android/utils/GeocoderHelper$ReverseGeocoderAsyncTask;-><init>(Landroid/content/Context;Lcom/airbnb/android/utils/GeocoderHelper$FallbackRequestListener;)V

    .line 146
    .local v0, "task":Lcom/airbnb/android/utils/GeocoderHelper$ReverseGeocoderAsyncTask;
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v3, v1, [Lcom/google/android/gms/maps/model/LatLng;

    const/4 v1, 0x0

    aput-object p1, v3, v1

    instance-of v1, v0, Landroid/os/AsyncTask;

    if-nez v1, :cond_15

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/android/utils/GeocoderHelper$ReverseGeocoderAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 148
    :goto_14
    return-object v0

    :cond_15
    move-object v1, v0

    .line 146
    check-cast v1, Landroid/os/AsyncTask;

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_14
.end method

.method public static fallbackGetFromLocationName(Landroid/content/Context;Ljava/lang/String;)Landroid/location/Address;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v2, Landroid/location/Geocoder;

    invoke-direct {v2, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 123
    .local v2, "geo":Landroid/location/Geocoder;
    const/4 v0, 0x0

    .line 125
    .local v0, "address":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    const/4 v3, 0x1

    :try_start_7
    invoke-virtual {v2, p1, v3}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_1b

    move-result-object v0

    .line 130
    :goto_b
    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_26

    .line 132
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Address;

    .line 135
    :goto_1a
    return-object v3

    .line 126
    :catch_1b
    move-exception v1

    .line 127
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lcom/airbnb/android/utils/GeocoderHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 135
    .end local v1    # "e":Ljava/io/IOException;
    :cond_26
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method public static getFromLocation(Lcom/google/android/gms/maps/model/LatLng;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ExternalStringRequest;
    .registers 9
    .param p0, "cameraPosition"    # Lcom/google/android/gms/maps/model/LatLng;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/airbnb/android/requests/ExternalStringRequest;"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Ljava/lang/String;>;"
    new-instance v0, Lcom/airbnb/android/utils/GeocoderHelper$GeocoderRequest;

    const-string/jumbo v1, "https://maps.googleapis.com/maps/api/geocode/json"

    new-instance v2, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v2}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v3, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "latlng"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "sensor"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/airbnb/android/utils/GeocoderHelper$GeocoderRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    return-object v0
.end method

.method public static getFromLocationName(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ExternalStringRequest;
    .registers 7
    .param p0, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/airbnb/android/requests/ExternalStringRequest;"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Ljava/lang/String;>;"
    new-instance v0, Lcom/airbnb/android/utils/GeocoderHelper$GeocoderRequest;

    const-string/jumbo v1, "https://maps.googleapis.com/maps/api/geocode/json"

    new-instance v2, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v2}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v3, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "address"

    invoke-virtual {v2, v3, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "sensor"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/airbnb/android/utils/GeocoderHelper$GeocoderRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    return-object v0
.end method

.method public static parseResponse(Ljava/lang/String;)Landroid/location/Address;
    .registers 23
    .param p0, "response"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v2, Landroid/location/Address;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 54
    .local v2, "address":Landroid/location/Address;
    :try_start_b
    new-instance v19, Lorg/json/JSONObject;

    invoke-static/range {p0 .. p0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 55
    .local v11, "json":Lorg/json/JSONObject;
    const-string/jumbo v19, "status"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 57
    .local v16, "status":Ljava/lang/String;
    const-string/jumbo v19, "OK"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_29

    .line 58
    const/4 v2, 0x0

    .line 118
    .end local v2    # "address":Landroid/location/Address;
    .end local v11    # "json":Lorg/json/JSONObject;
    .end local v16    # "status":Ljava/lang/String;
    :goto_28
    return-object v2

    .line 61
    .restart local v2    # "address":Landroid/location/Address;
    .restart local v11    # "json":Lorg/json/JSONObject;
    .restart local v16    # "status":Ljava/lang/String;
    :cond_29
    const-string/jumbo v19, "results"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 63
    .local v14, "results":Lorg/json/JSONArray;
    if-eqz v14, :cond_3a

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v19

    if-nez v19, :cond_3c

    .line 64
    :cond_3a
    const/4 v2, 0x0

    goto :goto_28

    .line 67
    :cond_3c
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 69
    .local v7, "firstResult":Lorg/json/JSONObject;
    const-string/jumbo v19, "formatted_address"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, "formattedAddress":Ljava/lang/String;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v19, "formatted_address"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2, v4}, Landroid/location/Address;->setExtras(Landroid/os/Bundle;)V

    .line 74
    const-string/jumbo v19, "geometry"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    const-string/jumbo v20, "location"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 75
    .local v12, "location":Lorg/json/JSONObject;
    const-string/jumbo v19, "lat"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v2, v0, v1}, Landroid/location/Address;->setLatitude(D)V

    .line 76
    const-string/jumbo v19, "lng"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v2, v0, v1}, Landroid/location/Address;->setLongitude(D)V

    .line 78
    const-string/jumbo v19, "address_components"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 80
    .local v3, "addressComponents":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_93
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_13e

    .line 81
    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 83
    .local v5, "component":Lorg/json/JSONObject;
    const-string/jumbo v19, "types"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 84
    .local v18, "types":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_a9
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_d9

    .line 85
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 87
    .local v17, "type":Ljava/lang/String;
    const-string/jumbo v19, "short_name"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 88
    .local v15, "shortName":Ljava/lang/String;
    const-string/jumbo v19, "long_name"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 89
    .local v13, "longName":Ljava/lang/String;
    const-string/jumbo v19, "street_number"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_dc

    .line 90
    invoke-virtual {v2, v15}, Landroid/location/Address;->setSubThoroughfare(Ljava/lang/String;)V

    .line 80
    .end local v13    # "longName":Ljava/lang/String;
    .end local v15    # "shortName":Ljava/lang/String;
    .end local v17    # "type":Ljava/lang/String;
    :cond_d9
    :goto_d9
    add-int/lit8 v9, v9, 0x1

    goto :goto_93

    .line 92
    .restart local v13    # "longName":Ljava/lang/String;
    .restart local v15    # "shortName":Ljava/lang/String;
    .restart local v17    # "type":Ljava/lang/String;
    :cond_dc
    const-string/jumbo v19, "route"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f3

    .line 93
    invoke-virtual {v2, v15}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V
    :try_end_ec
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_ec} :catch_ed

    goto :goto_d9

    .line 114
    .end local v3    # "addressComponents":Lorg/json/JSONArray;
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "component":Lorg/json/JSONObject;
    .end local v7    # "firstResult":Lorg/json/JSONObject;
    .end local v8    # "formattedAddress":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v11    # "json":Lorg/json/JSONObject;
    .end local v12    # "location":Lorg/json/JSONObject;
    .end local v13    # "longName":Ljava/lang/String;
    .end local v14    # "results":Lorg/json/JSONArray;
    .end local v15    # "shortName":Ljava/lang/String;
    .end local v16    # "status":Ljava/lang/String;
    .end local v17    # "type":Ljava/lang/String;
    .end local v18    # "types":Lorg/json/JSONArray;
    :catch_ed
    move-exception v6

    .line 115
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_28

    .line 95
    .end local v6    # "e":Lorg/json/JSONException;
    .restart local v3    # "addressComponents":Lorg/json/JSONArray;
    .restart local v4    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "component":Lorg/json/JSONObject;
    .restart local v7    # "firstResult":Lorg/json/JSONObject;
    .restart local v8    # "formattedAddress":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v10    # "j":I
    .restart local v11    # "json":Lorg/json/JSONObject;
    .restart local v12    # "location":Lorg/json/JSONObject;
    .restart local v13    # "longName":Ljava/lang/String;
    .restart local v14    # "results":Lorg/json/JSONArray;
    .restart local v15    # "shortName":Ljava/lang/String;
    .restart local v16    # "status":Ljava/lang/String;
    .restart local v17    # "type":Ljava/lang/String;
    .restart local v18    # "types":Lorg/json/JSONArray;
    :cond_f3
    :try_start_f3
    const-string/jumbo v19, "locality"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_104

    .line 96
    invoke-virtual {v2, v13}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    goto :goto_d9

    .line 98
    :cond_104
    const-string/jumbo v19, "administrative_area_level_1"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_115

    .line 99
    invoke-virtual {v2, v13}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    goto :goto_d9

    .line 101
    :cond_115
    const-string/jumbo v19, "country"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_129

    .line 102
    invoke-virtual {v2, v15}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2, v13}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    goto :goto_d9

    .line 105
    :cond_129
    const-string/jumbo v19, "postal_code"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13a

    .line 106
    invoke-virtual {v2, v15}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    goto :goto_d9

    .line 84
    :cond_13a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_a9

    .line 112
    .end local v5    # "component":Lorg/json/JSONObject;
    .end local v10    # "j":I
    .end local v13    # "longName":Ljava/lang/String;
    .end local v15    # "shortName":Ljava/lang/String;
    .end local v17    # "type":Ljava/lang/String;
    .end local v18    # "types":Lorg/json/JSONArray;
    :cond_13e
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "geocoder"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v8, v19, v20

    const/16 v20, 0x2

    aput-object v16, v19, v20

    invoke-static/range {v19 .. v19}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V
    :try_end_158
    .catch Lorg/json/JSONException; {:try_start_f3 .. :try_end_158} :catch_ed

    goto/16 :goto_28
.end method
