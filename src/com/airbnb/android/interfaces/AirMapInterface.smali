.class public interface abstract Lcom/airbnb/android/interfaces/AirMapInterface;
.super Ljava/lang/Object;
.source "AirMapInterface.java"


# virtual methods
.method public abstract addMarker(Lcom/google/android/gms/maps/model/LatLng;ILjava/lang/String;)V
.end method

.method public abstract addMarker(Lcom/google/android/gms/maps/model/LatLng;J)V
.end method

.method public abstract addPolyline(Ljava/util/List;II)Lcom/google/android/gms/maps/model/Polyline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;II)",
            "Lcom/google/android/gms/maps/model/Polyline;"
        }
    .end annotation
.end method

.method public abstract animateCenter(Lcom/google/android/gms/maps/model/LatLng;)V
.end method

.method public abstract animateCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)V
.end method

.method public abstract clearMarkers()V
.end method

.method public abstract drawCircle(Lcom/google/android/gms/maps/model/LatLng;I)V
.end method

.method public abstract getCenter()Lcom/google/android/gms/maps/model/LatLng;
.end method

.method public abstract getMapScreenBounds(Lcom/airbnb/android/views/AirMapView$OnMapBoundsCallback;)V
.end method

.method public abstract getZoom()I
.end method

.method public abstract highlightListingMarker(JJ)V
.end method

.method public abstract init()V
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract removePolyline(Lcom/google/android/gms/maps/model/Polyline;)V
.end method

.method public abstract setCenter(Lcom/google/android/gms/maps/model/LatLng;)V
.end method

.method public abstract setCenter(Lcom/google/android/gms/maps/model/LatLngBounds;I)V
.end method

.method public abstract setCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)V
.end method

.method public abstract setInfoWindowCreator(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;Lcom/airbnb/android/views/AirMapView$InfoWindowCreator;)V
.end method

.method public abstract setMyLocationEnabled(Z)V
.end method

.method public abstract setOnCameraChangeListener(Lcom/airbnb/android/fragments/WebViewMapFragment$OnCameraChangeListener;)V
.end method

.method public abstract setOnInfoWindowClickListener(Lcom/airbnb/android/views/AirMapView$OnInfoWindowClickListener;)V
.end method

.method public abstract setOnMapClickListener(Lcom/airbnb/android/views/AirMapView$OnMapClickListener;)V
.end method

.method public abstract setOnMapLoadedListener(Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;)V
.end method

.method public abstract setOnMarkerClickListener(Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;)V
.end method

.method public abstract setPadding(IIII)V
.end method

.method public abstract setZoom(I)V
.end method
