.class public Lcom/airbnb/android/fragments/ArrivalTrackerFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "ArrivalTrackerFragment.java"


# static fields
.field private static final ARRIVAL_THRESHOLD:I = 0xc8

.field private static final DP_MAP_BOUNDS_PADDING:I = 0x32

.field private static final EXTRA_ARRIVAL_PLAN:Ljava/lang/String; = "arrival_plan"

.field private static final EXTRA_RESERVATION:Ljava/lang/String; = "reservation"

.field private static final GUEST_LOCATION_UPDATE_INTERVAL:I = 0x7530

.field private static final LISTING_ONLY_ZOOM_LEVEL:I = 0xe

.field private static final POLYLINE_COLOR:I = 0x7f0a000f

.field private static final POLYLINE_WIDTH:I = 0x5


# instance fields
.field mArrivalAirportTimelineView:Lcom/airbnb/android/views/TimelineView;

.field private mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

.field private mArrivalPlanRequest:Lcom/airbnb/android/requests/GetArrivalPlanRequest;

.field mCarTimelineView:Lcom/airbnb/android/views/TimelineView;

.field mDepartureAirportTimelineView:Lcom/airbnb/android/views/TimelineView;

.field mDestinationTimelineView:Lcom/airbnb/android/views/TimelineView;

.field mLocalTransportationTimelineView:Lcom/airbnb/android/views/TimelineView;

.field mMapView:Lcom/airbnb/android/views/AirMapView;

.field mOtherTimelineView:Lcom/airbnb/android/views/TimelineView;

.field mPlaneTimelineView:Lcom/airbnb/android/views/TimelineView;

.field private mReservation:Lcom/airbnb/android/models/Reservation;

.field private mRoute:Lcom/google/android/gms/maps/model/Polyline;

.field mStartTimelineView:Lcom/airbnb/android/views/TimelineView;

.field mStickyButton:Lcom/airbnb/android/views/StickyButton;

.field mTimelineFlightContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalTrackerFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalTrackerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->drawRoute(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)Lcom/airbnb/android/models/Reservation;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->requestAndUpdateGuestLocation()V

    return-void
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->updateGuestArrival()V

    return-void
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->showRatingDialog()V

    return-void
.end method

.method private drawCurrentLocationToListing()V
    .registers 6

    .prologue
    .line 315
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getSecondaryArrival()Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;->getPolyline()Ljava/util/List;

    move-result-object v0

    .line 316
    .local v0, "points":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    if-eqz v0, :cond_20

    .line 318
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mMapView:Lcom/airbnb/android/views/AirMapView;

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/airbnb/android/views/AirMapView;->addPolyline(Ljava/util/List;II)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mRoute:Lcom/google/android/gms/maps/model/Polyline;

    .line 320
    :cond_20
    return-void
.end method

.method private drawGuestMarker()V
    .registers 6

    .prologue
    .line 334
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getGuestLat()D

    move-result-wide v1

    iget-object v3, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v3}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getGuestLng()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 335
    .local v0, "listingLocation":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mMapView:Lcom/airbnb/android/views/AirMapView;

    const v2, 0x7f020147

    const-string/jumbo v3, "Guest"

    invoke-virtual {v1, v0, v2, v3}, Lcom/airbnb/android/views/AirMapView;->addMarker(Lcom/google/android/gms/maps/model/LatLng;ILjava/lang/String;)Z

    .line 336
    return-void
.end method

.method private drawListingMarker()V
    .registers 6

    .prologue
    .line 310
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 311
    .local v0, "listingLocation":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mMapView:Lcom/airbnb/android/views/AirMapView;

    const v2, 0x7f02013a

    const-string/jumbo v3, "Listing"

    invoke-virtual {v1, v0, v2, v3}, Lcom/airbnb/android/views/AirMapView;->addMarker(Lcom/google/android/gms/maps/model/LatLng;ILjava/lang/String;)Z

    .line 312
    return-void
.end method

.method private drawRoute(Z)V
    .registers 13
    .param p1, "includeAirport"    # Z

    .prologue
    .line 273
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v6, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/models/Listing;->getLatitude()D

    move-result-wide v6

    iget-object v8, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v8}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v8

    invoke-virtual {v8}, Lcom/airbnb/android/models/Listing;->getLongitude()D

    move-result-wide v8

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 274
    .local v3, "listingLocation":Lcom/google/android/gms/maps/model/LatLng;
    invoke-static {}, Lcom/google/android/gms/maps/model/LatLngBounds;->builder()Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v2

    .line 275
    .local v2, "latLngBoundsBuilder":Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->drawListingMarker()V

    .line 277
    const/4 v5, 0x0

    .line 279
    .local v5, "zoomOut":Z
    iget-object v6, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v6}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->guestStartedTracking()Z

    move-result v6

    if-eqz v6, :cond_59

    .line 280
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v7, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v7}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getGuestLat()D

    move-result-wide v7

    iget-object v9, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v9}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getGuestLng()D

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v6}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 282
    iget-object v6, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Reservation;->currUserIsHost()Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 283
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->drawGuestMarker()V

    .line 285
    :cond_4c
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->drawCurrentLocationToListing()V

    .line 302
    :goto_4f
    if-eqz v5, :cond_9f

    .line 303
    iget-object v6, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mMapView:Lcom/airbnb/android/views/AirMapView;

    const/16 v7, 0xe

    invoke-virtual {v6, v3, v7}, Lcom/airbnb/android/views/AirMapView;->setCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)Z

    .line 307
    :goto_58
    return-void

    .line 287
    :cond_59
    if-eqz p1, :cond_9d

    .line 288
    iget-object v6, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v6}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getPrimaryArrival()Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;

    move-result-object v4

    .line 289
    .local v4, "primaryArrivalMethod":Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v4}, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;->getDepartureAirport()Lcom/airbnb/android/models/arrivalAssistant/Airport;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/models/arrivalAssistant/Airport;->getLat()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v4}, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;->getDepartureAirport()Lcom/airbnb/android/models/arrivalAssistant/Airport;

    move-result-object v8

    invoke-virtual {v8}, Lcom/airbnb/android/models/arrivalAssistant/Airport;->getLng()F

    move-result v8

    float-to-double v8, v8

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 290
    .local v1, "departureAirportLocation":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v4}, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;->getArrivalAirport()Lcom/airbnb/android/models/arrivalAssistant/Airport;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/models/arrivalAssistant/Airport;->getLat()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v4}, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;->getArrivalAirport()Lcom/airbnb/android/models/arrivalAssistant/Airport;

    move-result-object v8

    invoke-virtual {v8}, Lcom/airbnb/android/models/arrivalAssistant/Airport;->getLng()F

    move-result v8

    float-to-double v8, v8

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 291
    .local v0, "arrivalAirportLocation":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 293
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->drawRouteBetweenAirports()V

    .line 294
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->drawCurrentLocationToListing()V

    goto :goto_4f

    .line 298
    .end local v0    # "arrivalAirportLocation":Lcom/google/android/gms/maps/model/LatLng;
    .end local v1    # "departureAirportLocation":Lcom/google/android/gms/maps/model/LatLng;
    .end local v4    # "primaryArrivalMethod":Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;
    :cond_9d
    const/4 v5, 0x1

    goto :goto_4f

    .line 305
    :cond_9f
    iget-object v6, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mMapView:Lcom/airbnb/android/views/AirMapView;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v7

    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->pxMapPadding()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/airbnb/android/views/AirMapView;->setBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Z

    goto :goto_58
.end method

.method private drawRouteBetweenAirports()V
    .registers 9

    .prologue
    .line 323
    iget-object v3, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v3}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getPrimaryArrival()Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;->getDepartureAirport()Lcom/airbnb/android/models/arrivalAssistant/Airport;

    move-result-object v1

    .line 324
    .local v1, "departureAirport":Lcom/airbnb/android/models/arrivalAssistant/Airport;
    iget-object v3, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v3}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getPrimaryArrival()Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;->getArrivalAirport()Lcom/airbnb/android/models/arrivalAssistant/Airport;

    move-result-object v0

    .line 326
    .local v0, "arrivalAirport":Lcom/airbnb/android/models/arrivalAssistant/Airport;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v2, "points":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/Airport;->getLat()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/Airport;->getLng()F

    move-result v6

    float-to-double v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/Airport;->getLat()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/Airport;->getLng()F

    move-result v6

    float-to-double v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v3, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mMapView:Lcom/airbnb/android/views/AirMapView;

    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/airbnb/android/views/AirMapView;->addPolyline(Ljava/util/List;II)Lcom/google/android/gms/maps/model/Polyline;

    .line 331
    return-void
.end method

.method private initializeMap()V
    .registers 6

    .prologue
    .line 230
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mMapView:Lcom/airbnb/android/views/AirMapView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$1;-><init>(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/airbnb/android/views/AirMapView;->onCreateView(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;ZLcom/airbnb/android/views/AirMapView$MapCallbacks;)V

    .line 241
    return-void
.end method

.method private initializeTimelineViews()V
    .registers 1

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->setupTimelineStart()V

    .line 136
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->setupTimelineForTransportation()V

    .line 137
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->setupTimelineDestination()V

    .line 138
    return-void
.end method

.method private isTrackerRunning()Z
    .registers 6

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 438
    .local v1, "manager":Landroid/app/ActivityManager;
    const v3, 0x7fffffff

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 439
    .local v2, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    const-class v3, Lcom/airbnb/android/services/ArrivalTrackerService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 440
    const/4 v3, 0x1

    .line 443
    .end local v2    # "service":Landroid/app/ActivityManager$RunningServiceInfo;
    :goto_37
    return v3

    :cond_38
    const/4 v3, 0x0

    goto :goto_37
.end method

.method public static newInstance(Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)Lcom/airbnb/android/fragments/ArrivalTrackerFragment;
    .registers 5
    .param p0, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p1, "arrivalPlan"    # Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .prologue
    .line 77
    new-instance v1, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;-><init>()V

    .line 78
    .local v1, "fragment":Lcom/airbnb/android/fragments/ArrivalTrackerFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "reservation"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 80
    const-string/jumbo v2, "arrival_plan"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 81
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 82
    return-object v1
.end method

.method private pxMapPadding()I
    .registers 5

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 378
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v1, 0x1

    const/high16 v2, 0x42480000

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method private redrawMapForGuestLocation()V
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mMapView:Lcom/airbnb/android/views/AirMapView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/AirMapView;->clearMarkers()V

    .line 383
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->drawListingMarker()V

    .line 384
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->drawGuestMarker()V

    .line 385
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->drawCurrentLocationToListing()V

    .line 386
    return-void
.end method

.method private requestAndUpdateGuestLocation()V
    .registers 4

    .prologue
    .line 339
    new-instance v0, Lcom/airbnb/android/requests/GetArrivalPlanRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Reservation;->getConfirmationCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$4;-><init>(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/GetArrivalPlanRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlanRequest:Lcom/airbnb/android/requests/GetArrivalPlanRequest;

    .line 373
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlanRequest:Lcom/airbnb/android/requests/GetArrivalPlanRequest;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/GetArrivalPlanRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 374
    return-void
.end method

.method private setupTimelineCar()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mCarTimelineView:Lcom/airbnb/android/views/TimelineView;

    const v1, 0x7f02022a

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/TimelineView;->setIcon(I)V

    .line 188
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mCarTimelineView:Lcom/airbnb/android/views/TimelineView;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/TimelineView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mCarTimelineView:Lcom/airbnb/android/views/TimelineView;

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/TimelineView;->setTitle(I)V

    .line 190
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mCarTimelineView:Lcom/airbnb/android/views/TimelineView;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/TimelineView;->showSubtitle(Z)V

    .line 191
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getEtaLocalComponents()Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;->getFormattedString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 192
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mCarTimelineView:Lcom/airbnb/android/views/TimelineView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getEtaLocalComponents()Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;->getFormattedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/TimelineView;->setTime(Ljava/lang/String;)V

    .line 194
    :cond_36
    return-void
.end method

.method private setupTimelineDestination()V
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mDestinationTimelineView:Lcom/airbnb/android/views/TimelineView;

    const v1, 0x7f02022b

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/TimelineView;->setIcon(I)V

    .line 224
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mDestinationTimelineView:Lcom/airbnb/android/views/TimelineView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/TimelineView;->setTitle(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mDestinationTimelineView:Lcom/airbnb/android/views/TimelineView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/TimelineView;->setSubtitle(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mDestinationTimelineView:Lcom/airbnb/android/views/TimelineView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getEtaLocalComponents()Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;->getFormattedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/TimelineView;->setTime(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method private setupTimelineFlightDetails()V
    .registers 6

    .prologue
    const v4, 0x7f020228

    const/4 v3, 0x0

    .line 167
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mTimelineFlightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalAirportTimelineView:Lcom/airbnb/android/views/TimelineView;

    invoke-virtual {v1, v4}, Lcom/airbnb/android/views/TimelineView;->setIcon(I)V

    .line 170
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mPlaneTimelineView:Lcom/airbnb/android/views/TimelineView;

    const v2, 0x7f02022d

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/TimelineView;->setIcon(I)V

    .line 171
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mDepartureAirportTimelineView:Lcom/airbnb/android/views/TimelineView;

    invoke-virtual {v1, v4}, Lcom/airbnb/android/views/TimelineView;->setIcon(I)V

    .line 173
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getPrimaryArrival()Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;

    move-result-object v0

    .line 175
    .local v0, "arrivalMethod":Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mDepartureAirportTimelineView:Lcom/airbnb/android/views/TimelineView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;->getDepartureAirport()Lcom/airbnb/android/models/arrivalAssistant/Airport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/Airport;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/TimelineView;->setTitle(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mDepartureAirportTimelineView:Lcom/airbnb/android/views/TimelineView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;->getDepartureAirport()Lcom/airbnb/android/models/arrivalAssistant/Airport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/Airport;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/TimelineView;->setSubtitle(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mDepartureAirportTimelineView:Lcom/airbnb/android/views/TimelineView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;->getFlight()Lcom/airbnb/android/models/arrivalAssistant/Flight;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/Flight;->getDepartureTimeLocal()Lcom/airbnb/android/models/arrivalAssistant/FlightTime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/FlightTime;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/TimelineView;->setTime(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mPlaneTimelineView:Lcom/airbnb/android/views/TimelineView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;->getFlight()Lcom/airbnb/android/models/arrivalAssistant/Flight;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/Flight;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/TimelineView;->setTitle(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mPlaneTimelineView:Lcom/airbnb/android/views/TimelineView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;->getFlight()Lcom/airbnb/android/models/arrivalAssistant/Flight;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/Flight;->getDuration()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/TimelineView;->setTime(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mPlaneTimelineView:Lcom/airbnb/android/views/TimelineView;

    invoke-virtual {v1, v3}, Lcom/airbnb/android/views/TimelineView;->showSubtitle(Z)V

    .line 181
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalAirportTimelineView:Lcom/airbnb/android/views/TimelineView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;->getArrivalAirport()Lcom/airbnb/android/models/arrivalAssistant/Airport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/Airport;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/TimelineView;->setTitle(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalAirportTimelineView:Lcom/airbnb/android/views/TimelineView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;->getArrivalAirport()Lcom/airbnb/android/models/arrivalAssistant/Airport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/Airport;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/TimelineView;->setSubtitle(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalAirportTimelineView:Lcom/airbnb/android/views/TimelineView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;->getFlight()Lcom/airbnb/android/models/arrivalAssistant/Flight;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/Flight;->getArrivalTimeLocal()Lcom/airbnb/android/models/arrivalAssistant/FlightTime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/FlightTime;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/TimelineView;->setTime(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private setupTimelineForTransportation()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 142
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mTimelineFlightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mCarTimelineView:Lcom/airbnb/android/views/TimelineView;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/TimelineView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mOtherTimelineView:Lcom/airbnb/android/views/TimelineView;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/TimelineView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->hasFlightDetails()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 147
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->setupTimelineFlightDetails()V

    .line 149
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getSecondaryTransportationType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 150
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->setupTimelineLocalTransportation()V

    .line 157
    :cond_27
    :goto_27
    return-void

    .line 152
    :cond_28
    const-string/jumbo v0, "car"

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getTransportationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 153
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->setupTimelineCar()V

    goto :goto_27

    .line 155
    :cond_3b
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->setupTimelineOther()V

    goto :goto_27
.end method

.method private setupTimelineLocalTransportation()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mLocalTransportationTimelineView:Lcom/airbnb/android/views/TimelineView;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/TimelineView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mLocalTransportationTimelineView:Lcom/airbnb/android/views/TimelineView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getSecondaryArrival()Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;->getDuration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/TimelineView;->setTime(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getSecondaryTransportationType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "car"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 210
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mLocalTransportationTimelineView:Lcom/airbnb/android/views/TimelineView;

    const v1, 0x7f02022f

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/TimelineView;->setIcon(I)V

    .line 211
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mLocalTransportationTimelineView:Lcom/airbnb/android/views/TimelineView;

    const v1, 0x7f0e0027

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/TimelineView;->setTitle(I)V

    .line 219
    :goto_34
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mLocalTransportationTimelineView:Lcom/airbnb/android/views/TimelineView;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/TimelineView;->showSubtitle(Z)V

    .line 220
    return-void

    .line 212
    :cond_3a
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getSecondaryTransportationType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "transport"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 213
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mLocalTransportationTimelineView:Lcom/airbnb/android/views/TimelineView;

    const v1, 0x7f02022e

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/TimelineView;->setIcon(I)V

    .line 214
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mLocalTransportationTimelineView:Lcom/airbnb/android/views/TimelineView;

    const v1, 0x7f0e001e

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/TimelineView;->setTitle(I)V

    goto :goto_34

    .line 216
    :cond_5a
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mLocalTransportationTimelineView:Lcom/airbnb/android/views/TimelineView;

    const v1, 0x7f02022c

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/TimelineView;->setIcon(I)V

    .line 217
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mLocalTransportationTimelineView:Lcom/airbnb/android/views/TimelineView;

    const v1, 0x7f0e0018

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/TimelineView;->setTitle(I)V

    goto :goto_34
.end method

.method private setupTimelineOther()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mOtherTimelineView:Lcom/airbnb/android/views/TimelineView;

    const v1, 0x7f020229

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/TimelineView;->setIcon(I)V

    .line 198
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mOtherTimelineView:Lcom/airbnb/android/views/TimelineView;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/TimelineView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mOtherTimelineView:Lcom/airbnb/android/views/TimelineView;

    const v1, 0x7f0e0017

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/TimelineView;->setTitle(I)V

    .line 200
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mOtherTimelineView:Lcom/airbnb/android/views/TimelineView;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/TimelineView;->showSubtitle(Z)V

    .line 201
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getEtaLocalComponents()Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;->getFormattedString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 202
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mOtherTimelineView:Lcom/airbnb/android/views/TimelineView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getEtaLocalComponents()Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;->getFormattedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/TimelineView;->setTime(Ljava/lang/String;)V

    .line 204
    :cond_36
    return-void
.end method

.method private setupTimelineStart()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 160
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mStartTimelineView:Lcom/airbnb/android/views/TimelineView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Reservation;->getGuest()Lcom/airbnb/android/models/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/TimelineView;->showGuestAvatar(Lcom/airbnb/android/models/User;)V

    .line 161
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mStartTimelineView:Lcom/airbnb/android/views/TimelineView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0029

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Reservation;->getGuest()Lcom/airbnb/android/models/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/TimelineView;->setTitle(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mStartTimelineView:Lcom/airbnb/android/views/TimelineView;

    invoke-virtual {v0, v5}, Lcom/airbnb/android/views/TimelineView;->showSubtitle(Z)V

    .line 163
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mStartTimelineView:Lcom/airbnb/android/views/TimelineView;

    invoke-virtual {v0, v5}, Lcom/airbnb/android/views/TimelineView;->showTime(Z)V

    .line 164
    return-void
.end method

.method private showArrivedButtonIfClose()V
    .registers 11

    .prologue
    .line 391
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getGuestLat()D

    move-result-wide v0

    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getGuestLng()D

    move-result-wide v2

    iget-object v4, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getLatitude()D

    move-result-wide v4

    iget-object v6, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/models/Listing;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/airbnb/android/utils/LocationUtil;->haversine(DDDD)D

    move-result-wide v8

    .line 393
    .local v8, "distance":D
    const-wide/high16 v0, 0x4069000000000000L

    cmpg-double v0, v8, v0

    if-gez v0, :cond_39

    .line 394
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->isArrived()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 395
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    .line 409
    :cond_39
    :goto_39
    return-void

    .line 397
    :cond_3a
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const v1, 0x7f0e0014

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 398
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v1, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$5;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$5;-><init>(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_39
.end method

.method private showRatingDialog()V
    .registers 5

    .prologue
    .line 468
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Reservation;->getConfirmationCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->newInstanceForConfirmationCode(Ljava/lang/String;J)Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;

    move-result-object v0

    .line 469
    .local v0, "fragment":Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;
    const/16 v1, 0x3f3

    invoke-virtual {v0, p0, v1}, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 470
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method private updateGuestArrival()V
    .registers 6

    .prologue
    .line 412
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "confirmation_code"

    iget-object v4, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Reservation;->getConfirmationCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "arrived"

    const-string/jumbo v4, "1"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 414
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    new-instance v1, Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;

    new-instance v2, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$6;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$6;-><init>(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)V

    invoke-direct {v1, v0, v2}, Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;-><init>(Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 433
    .local v1, "request":Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;
    invoke-virtual {v1, p0}, Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 434
    return-void
.end method


# virtual methods
.method public arrivalPlanUpdated(Lcom/airbnb/android/events/ArrivalPlanUpdatedEvent;)V
    .registers 6
    .param p1, "event"    # Lcom/airbnb/android/events/ArrivalPlanUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getId()J

    move-result-wide v0

    iget-object v2, p1, Lcom/airbnb/android/events/ArrivalPlanUpdatedEvent;->arrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {v2}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 462
    iget-object v0, p1, Lcom/airbnb/android/events/ArrivalPlanUpdatedEvent;->arrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .line 463
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->initializeTimelineViews()V

    .line 465
    :cond_1b
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 475
    packed-switch p1, :pswitch_data_10

    .line 481
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/AirFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 484
    :goto_6
    return-void

    .line 477
    :pswitch_7
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_6

    .line 475
    nop

    :pswitch_data_10
    .packed-switch 0x3f3
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    if-nez p1, :cond_29

    .line 90
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "reservation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Reservation;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 91
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "arrival_plan"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .line 97
    :goto_23
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 98
    return-void

    .line 93
    :cond_29
    const-string/jumbo v0, "reservation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Reservation;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 94
    const-string/jumbo v0, "arrival_plan"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    goto :goto_23
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    const v1, 0x7f03006c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 113
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->initializeTimelineViews()V

    .line 114
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->initializeMap()V

    .line 115
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->isTrackerRunning()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->updateStickyButton(Z)V

    .line 117
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 130
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onDestroy()V

    .line 131
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public onNewArrivalPlan(Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;)V
    .registers 4
    .param p1, "arrivalPlan"    # Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    .line 449
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mMapView:Lcom/airbnb/android/views/AirMapView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mRoute:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirMapView;->removePolyline(Lcom/google/android/gms/maps/model/Polyline;)V

    .line 451
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->currUserIsHost()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 452
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->redrawMapForGuestLocation()V

    .line 457
    :goto_14
    return-void

    .line 454
    :cond_15
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->drawCurrentLocationToListing()V

    .line 455
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->showArrivedButtonIfClose()V

    goto :goto_14
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 102
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onResume()V

    .line 104
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackArrivalTrackerImpression(JLcom/airbnb/android/utils/Strap;)V

    .line 105
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 124
    const-string/jumbo v0, "reservation"

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 125
    const-string/jumbo v0, "arrival_plan"

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 126
    return-void
.end method

.method public updateStickyButton(Z)V
    .registers 4
    .param p1, "serviceRunning"    # Z

    .prologue
    .line 244
    if-eqz p1, :cond_15

    .line 245
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const v1, 0x7f0e001a

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 246
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v1, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$2;-><init>(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    :goto_14
    return-void

    .line 255
    :cond_15
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const v1, 0x7f0e0025

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 256
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v1, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$3;-><init>(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_14
.end method
