.class public Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;
.super Lcom/airbnb/android/fragments/managelisting/BaseListYourSpaceFragment;
.source "CitySelectionFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/fragments/managelisting/BaseListYourSpaceFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final ARGS_PROPERTY_TYPE:Ljava/lang/String; = "property_type"

.field private static final DELAY_MAP_INIT:I = 0x190

.field private static final SEARCH_PLACES_CURSOR_LOADER_ID:I

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mAirMapView:Lcom/airbnb/android/views/AirMapView;

.field private mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

.field private mEditText:Landroid/widget/AutoCompleteTextView;

.field private mGeocodable:Ljava/lang/String;

.field private mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

.field private mGeocoderTask:Landroid/os/AsyncTask;

.field private mHandler:Landroid/os/Handler;

.field private mHasSetCity:Z

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

.field private mStickyButton:Lcom/airbnb/android/views/StickyButton;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-class v0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/BaseListYourSpaceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)Lcom/airbnb/android/utils/LocationHelper;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->centerMap(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->handleFallbackReverseGeocode(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;Landroid/location/Address;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;
    .param p1, "x1"    # Landroid/location/Address;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->handleGeocoderResponse(Landroid/location/Address;)V

    return-void
.end method

.method static synthetic access$202(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mHasSetCity:Z

    return p1
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)Landroid/widget/AutoCompleteTextView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mGeocodable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mGeocodable:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)Landroid/support/v4/widget/SimpleCursorAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->setStickyButtonEnabled()V

    return-void
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->onDoneClick()V

    return-void
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;Lcom/google/android/gms/maps/model/LatLng;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "x2"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->executeGeocoderTask(Lcom/google/android/gms/maps/model/LatLng;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)Lcom/airbnb/android/views/AirMapView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    return-object v0
.end method

.method private centerMap(Z)V
    .registers 9
    .param p1, "animate"    # Z

    .prologue
    const v6, 0x7f0c000d

    .line 495
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

    invoke-virtual {v2}, Lcom/airbnb/android/utils/LocationHelper;->getLastLocation()Landroid/location/Location;

    move-result-object v1

    .line 496
    .local v1, "loc":Landroid/location/Location;
    if-eqz v1, :cond_2b

    iget-boolean v2, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mHasSetCity:Z

    if-nez v2, :cond_2b

    .line 497
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 498
    .local v0, "coordinate":Lcom/google/android/gms/maps/model/LatLng;
    if-eqz p1, :cond_2c

    .line 499
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/airbnb/android/views/AirMapView;->animateCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)Z

    .line 504
    .end local v0    # "coordinate":Lcom/google/android/gms/maps/model/LatLng;
    :cond_2b
    :goto_2b
    return-void

    .line 501
    .restart local v0    # "coordinate":Lcom/google/android/gms/maps/model/LatLng;
    :cond_2c
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/airbnb/android/views/AirMapView;->setCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)Z

    goto :goto_2b
.end method

.method private executeGeocoderTask(Lcom/google/android/gms/maps/model/LatLng;Z)V
    .registers 7
    .param p1, "cameraPosition"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "cancel"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 278
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/ExternalStringRequest;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 279
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/ExternalStringRequest;->cancel()V

    .line 282
    :cond_13
    if-eqz p1, :cond_21

    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_22

    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_22

    .line 322
    :cond_21
    :goto_21
    return-void

    .line 286
    :cond_22
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$10;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$10;-><init>(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;Lcom/google/android/gms/maps/model/LatLng;)V

    invoke-static {p1, v0}, Lcom/airbnb/android/utils/GeocoderHelper;->getFromLocation(Lcom/google/android/gms/maps/model/LatLng;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ExternalStringRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

    .line 319
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/ExternalStringRequest;->execute()V

    .line 320
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_21
.end method

.method private handleFallbackReverseGeocode(Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 5
    .param p1, "cameraPosition"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 325
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mGeocoderTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_a

    .line 326
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mGeocoderTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 329
    :cond_a
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$11;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$11;-><init>(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)V

    .line 347
    .local v0, "listener":Lcom/airbnb/android/utils/GeocoderHelper$FallbackRequestListener;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/airbnb/android/utils/GeocoderHelper;->fallbackGetFromLocation(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLng;Lcom/airbnb/android/utils/GeocoderHelper$FallbackRequestListener;)Lcom/airbnb/android/utils/GeocoderHelper$ReverseGeocoderAsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mGeocoderTask:Landroid/os/AsyncTask;

    .line 348
    return-void
.end method

.method private handleGeocoderResponse(Landroid/location/Address;)V
    .registers 7
    .param p1, "address"    # Landroid/location/Address;

    .prologue
    .line 402
    if-eqz p1, :cond_1f

    .line 403
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 404
    .local v0, "coordinate":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/airbnb/android/views/AirMapView;->animateCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)Z

    .line 406
    .end local v0    # "coordinate":Lcom/google/android/gms/maps/model/LatLng;
    :cond_1f
    return-void
.end method

.method public static newInstance(Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;)Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;
    .registers 6
    .param p0, "selection"    # Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .prologue
    .line 85
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v4, v4, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "impressions"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "lys"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "location"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 86
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;-><init>()V

    .line 87
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    .local v0, "args":Landroid/os/Bundle;
    if-eqz p0, :cond_35

    .line 89
    const-string/jumbo v2, "property_type"

    invoke-virtual {p0}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    :cond_35
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 92
    return-object v1
.end method

.method private onDoneClick()V
    .registers 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/ExternalStringRequest;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 362
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/ExternalStringRequest;->cancel()V

    .line 365
    :cond_11
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$12;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$12;-><init>(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)V

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/GeocoderHelper;->getFromLocationName(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ExternalStringRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

    .line 395
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/ExternalStringRequest;->execute()V

    .line 396
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 398
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 399
    return-void
.end method

.method private setStickyButtonEnabled()V
    .registers 3

    .prologue
    .line 126
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_17
    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/StickyButton;->setEnabled(Z)V

    .line 127
    return-void

    .line 126
    :cond_1b
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private setupLYSViews()V
    .registers 6

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "property_type"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->getType(I)Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    move-result-object v0

    .line 352
    .local v0, "propertyType":Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    iget v2, v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mLocationPromptId:I

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/utils/MiscUtils;->fromHtmlSafe(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 353
    .local v1, "str":Landroid/text/Spanned;
    if-eqz v1, :cond_22

    .line 354
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    :goto_21
    return-void

    .line 356
    :cond_22
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget v3, v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mLocationPromptId:I

    invoke-virtual {p0, v3}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21
.end method


# virtual methods
.method public buildGeocodeableString(Landroid/location/Address;)Ljava/lang/String;
    .registers 4
    .param p1, "address"    # Landroid/location/Address;

    .prologue
    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v0, "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 456
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_12
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 459
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_1f
    invoke-virtual {p1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 462
    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_2c
    const-string/jumbo v1, ", "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseListYourSpaceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->setHasOptionsMenu(Z)V

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Lcom/airbnb/android/utils/LocationHelper;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/utils/LocationHelper;-><init>(Landroid/content/Context;Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

    .line 123
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 12
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 469
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 471
    .local v8, "searchQuery":Ljava/lang/String;
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

    invoke-virtual {v0}, Lcom/airbnb/android/utils/LocationHelper;->getLastLocation()Landroid/location/Location;

    move-result-object v7

    .line 472
    .local v7, "location":Landroid/location/Location;
    if-eqz v7, :cond_3e

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 478
    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://.contentproviders.PlacesSearchSuggestionProvider/cities/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 481
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->SEARCH_SUGGEST_COLUMNS_CITIES:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 15
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x0

    .line 131
    const v0, 0x7f0300ad

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 133
    .local v8, "view":Landroid/view/View;
    const v0, 0x7f0801f9

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f08040c

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;

    .line 135
    const v0, 0x7f0801fa

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/StickyButton;

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    .line 137
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v1, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$2;-><init>(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->setupLYSViews()V

    .line 149
    new-instance v0, Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030131

    const/4 v3, 0x0

    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v5, "city"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-string/jumbo v9, "region"

    aput-object v9, v4, v5

    new-array v5, v10, [I

    fill-array-data v5, :array_c4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 155
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 156
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    new-instance v1, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$3;-><init>(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->setCursorToStringConverter(Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;)V

    .line 164
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$4;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$4;-><init>(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mTextWatcher:Landroid/text/TextWatcher;

    .line 188
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 190
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$5;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$5;-><init>(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 214
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$6;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$6;-><init>(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 222
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$7;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$7;-><init>(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 241
    const v0, 0x7f080095

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/AirMapView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    .line 243
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$8;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$8;-><init>(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 260
    const v0, 0x7f08040d

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 261
    .local v7, "locationButton":Landroid/widget/ImageView;
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$9;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$9;-><init>(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

    invoke-virtual {v0}, Lcom/airbnb/android/utils/LocationHelper;->connectLocationClient()V

    .line 274
    return-object v8

    .line 149
    nop

    :array_c4
    .array-data 4
        0x7f0800b7
        0x7f080215
    .end array-data
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 446
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseListYourSpaceFragment;->onDestroyView()V

    .line 448
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 449
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/AirMapView;->onDestroyView()V

    .line 450
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

    invoke-virtual {v0}, Lcom/airbnb/android/utils/LocationHelper;->disconnectLocationClient()V

    .line 451
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 4
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 486
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 487
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 56
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 491
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 492
    return-void
.end method

.method public onPause()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 418
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseListYourSpaceFragment;->onPause()V

    .line 420
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 422
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 424
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mGeocoderTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_21

    .line 425
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mGeocoderTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 426
    iput-object v4, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mGeocoderTask:Landroid/os/AsyncTask;

    .line 429
    :cond_21
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

    if-eqz v1, :cond_2c

    .line 430
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

    invoke-virtual {v1}, Lcom/airbnb/android/requests/ExternalStringRequest;->cancel()V

    .line 431
    iput-object v4, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

    .line 434
    :cond_2c
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 435
    .local v0, "lm":Landroid/support/v4/app/LoaderManager;
    invoke-virtual {v0, v3}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 436
    invoke-virtual {v0, v3}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 439
    :cond_39
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->notifyDataSetInvalidated()V

    .line 441
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 442
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 410
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseListYourSpaceFragment;->onResume()V

    .line 412
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->setStickyButtonEnabled()V

    .line 413
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 414
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseListYourSpaceFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 98
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mTransitions:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions;

    const v1, 0x7f0e0436

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions;->setActionBarTitle(I)V

    .line 99
    return-void
.end method
