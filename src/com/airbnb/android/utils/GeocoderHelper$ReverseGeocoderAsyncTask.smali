.class Lcom/airbnb/android/utils/GeocoderHelper$ReverseGeocoderAsyncTask;
.super Landroid/os/AsyncTask;
.source "GeocoderHelper.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/utils/GeocoderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReverseGeocoderAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/android/gms/maps/model/LatLng;",
        "Ljava/lang/Void;",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/airbnb/android/utils/GeocoderHelper$FallbackRequestListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/android/utils/GeocoderHelper$FallbackRequestListener;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/airbnb/android/utils/GeocoderHelper$FallbackRequestListener;

    .prologue
    .line 156
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/airbnb/android/utils/GeocoderHelper$ReverseGeocoderAsyncTask;->mContext:Landroid/content/Context;

    .line 158
    iput-object p2, p0, Lcom/airbnb/android/utils/GeocoderHelper$ReverseGeocoderAsyncTask;->mListener:Lcom/airbnb/android/utils/GeocoderHelper$FallbackRequestListener;

    .line 159
    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .registers 3

    :try_start_0
    iput-object p1, p0, Lcom/airbnb/android/utils/GeocoderHelper$ReverseGeocoderAsyncTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    :goto_2
    return-void

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method protected varargs doInBackground([Lcom/google/android/gms/maps/model/LatLng;)Landroid/location/Address;
    .registers 12
    .param p1, "latlng"    # [Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    const/4 v9, 0x0

    .line 163
    aget-object v8, p1, v9

    .line 164
    .local v8, "location":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/airbnb/android/utils/GeocoderHelper$ReverseGeocoderAsyncTask;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_34

    .line 165
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/airbnb/android/utils/GeocoderHelper$ReverseGeocoderAsyncTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 166
    .local v0, "geo":Landroid/location/Geocoder;
    const/4 v6, 0x0

    .line 169
    .local v6, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :try_start_f
    iget-wide v1, v8, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v3, v8, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_17} :catch_27

    move-result-object v6

    .line 175
    :goto_18
    if-eqz v6, :cond_34

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_34

    .line 177
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    .line 181
    .end local v0    # "geo":Landroid/location/Geocoder;
    .end local v6    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :goto_26
    return-object v1

    .line 171
    .restart local v0    # "geo":Landroid/location/Geocoder;
    .restart local v6    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_27
    move-exception v7

    .line 172
    .local v7, "e":Ljava/io/IOException;
    # getter for: Lcom/airbnb/android/utils/GeocoderHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/utils/GeocoderHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 181
    .end local v0    # "geo":Landroid/location/Geocoder;
    .end local v6    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v7    # "e":Ljava/io/IOException;
    :cond_34
    const/4 v1, 0x0

    goto :goto_26
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/android/utils/GeocoderHelper$ReverseGeocoderAsyncTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "GeocoderHelper$ReverseGeocoderAsyncTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_16

    .line 151
    :goto_9
    check-cast p1, [Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/utils/GeocoderHelper$ReverseGeocoderAsyncTask;->doInBackground([Lcom/google/android/gms/maps/model/LatLng;)Landroid/location/Address;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_16
    move-exception v0

    const/4 v0, 0x0

    :try_start_18
    const-string/jumbo v1, "GeocoderHelper$ReverseGeocoderAsyncTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_1f} :catch_16

    goto :goto_9
.end method

.method protected onPostExecute(Landroid/location/Address;)V
    .registers 3
    .param p1, "address"    # Landroid/location/Address;

    .prologue
    .line 187
    if-eqz p1, :cond_8

    .line 188
    iget-object v0, p0, Lcom/airbnb/android/utils/GeocoderHelper$ReverseGeocoderAsyncTask;->mListener:Lcom/airbnb/android/utils/GeocoderHelper$FallbackRequestListener;

    invoke-interface {v0, p1}, Lcom/airbnb/android/utils/GeocoderHelper$FallbackRequestListener;->onSuccess(Landroid/location/Address;)V

    .line 192
    :goto_7
    return-void

    .line 190
    :cond_8
    iget-object v0, p0, Lcom/airbnb/android/utils/GeocoderHelper$ReverseGeocoderAsyncTask;->mListener:Lcom/airbnb/android/utils/GeocoderHelper$FallbackRequestListener;

    invoke-interface {v0}, Lcom/airbnb/android/utils/GeocoderHelper$FallbackRequestListener;->onFail()V

    goto :goto_7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/android/utils/GeocoderHelper$ReverseGeocoderAsyncTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "GeocoderHelper$ReverseGeocoderAsyncTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_12

    .line 151
    :goto_9
    check-cast p1, Landroid/location/Address;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/utils/GeocoderHelper$ReverseGeocoderAsyncTask;->onPostExecute(Landroid/location/Address;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_12
    move-exception v0

    const/4 v0, 0x0

    :try_start_14
    const-string/jumbo v1, "GeocoderHelper$ReverseGeocoderAsyncTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1b} :catch_12

    goto :goto_9
.end method
