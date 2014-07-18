.class public Lcom/airbnb/android/utils/LocationHelper;
.super Ljava/lang/Object;
.source "LocationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;
    }
.end annotation


# static fields
.field private static final CRITERIA_PRIORITY:I = 0x1

.field private static final LOCATION_TIMEOUT:J = 0x7530L

.field private static final REQUIRED_LOCATION_ACCURACY:F = 1000.0f

.field private static final REQUIRED_LOCATION_TIME:J = 0xdbba0L


# instance fields
.field private mCallbacks:Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;

.field private mClient:Lcom/google/android/gms/location/LocationClient;

.field private mLocationListener:Lcom/google/android/gms/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationUpdated:Z

.field private mNativeLocationListener:Landroid/location/LocationListener;

.field private mUpdateClientOnNewLocation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Lcom/airbnb/android/utils/LocationHelper$4;

    invoke-direct {v0, p0}, Lcom/airbnb/android/utils/LocationHelper$4;-><init>(Lcom/airbnb/android/utils/LocationHelper;)V

    iput-object v0, p0, Lcom/airbnb/android/utils/LocationHelper;->mLocationListener:Lcom/google/android/gms/location/LocationListener;

    .line 179
    new-instance v0, Lcom/airbnb/android/utils/LocationHelper$5;

    invoke-direct {v0, p0}, Lcom/airbnb/android/utils/LocationHelper$5;-><init>(Lcom/airbnb/android/utils/LocationHelper;)V

    iput-object v0, p0, Lcom/airbnb/android/utils/LocationHelper;->mNativeLocationListener:Landroid/location/LocationListener;

    .line 45
    iput-object p2, p0, Lcom/airbnb/android/utils/LocationHelper;->mCallbacks:Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;

    .line 46
    iget-object v0, p0, Lcom/airbnb/android/utils/LocationHelper;->mCallbacks:Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;

    if-nez v0, :cond_1e

    .line 47
    new-instance v0, Lcom/airbnb/android/utils/LocationHelper$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/utils/LocationHelper$1;-><init>(Lcom/airbnb/android/utils/LocationHelper;)V

    iput-object v0, p0, Lcom/airbnb/android/utils/LocationHelper;->mCallbacks:Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;

    .line 60
    :cond_1e
    new-instance v0, Lcom/google/android/gms/location/LocationClient;

    new-instance v1, Lcom/airbnb/android/utils/LocationHelper$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/utils/LocationHelper$2;-><init>(Lcom/airbnb/android/utils/LocationHelper;)V

    new-instance v2, Lcom/airbnb/android/utils/LocationHelper$3;

    invoke-direct {v2, p0, p1}, Lcom/airbnb/android/utils/LocationHelper$3;-><init>(Lcom/airbnb/android/utils/LocationHelper;Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/location/LocationClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    iput-object v0, p0, Lcom/airbnb/android/utils/LocationHelper;->mClient:Lcom/google/android/gms/location/LocationClient;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/utils/LocationHelper;)Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/utils/LocationHelper;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/airbnb/android/utils/LocationHelper;->mCallbacks:Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;

    return-object v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/utils/LocationHelper;Landroid/location/LocationManager;)Landroid/location/LocationManager;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/utils/LocationHelper;
    .param p1, "x1"    # Landroid/location/LocationManager;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/airbnb/android/utils/LocationHelper;->mLocationManager:Landroid/location/LocationManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/airbnb/android/utils/LocationHelper;Landroid/location/Location;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/utils/LocationHelper;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/airbnb/android/utils/LocationHelper;->handleLocationChanged(Landroid/location/Location;)V

    return-void
.end method

.method public static getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    :try_start_0
    const-string/jumbo v2, "location"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 124
    .local v1, "locationManager":Landroid/location/LocationManager;
    const-string/jumbo v2, "passive"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v2

    .line 126
    .end local v1    # "locationManager":Landroid/location/LocationManager;
    :goto_10
    return-object v2

    .line 125
    :catch_11
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_10
.end method

.method private handleLocationChanged(Landroid/location/Location;)V
    .registers 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/utils/LocationHelper;->mLocationUpdated:Z

    .line 200
    iget-boolean v0, p0, Lcom/airbnb/android/utils/LocationHelper;->mUpdateClientOnNewLocation:Z

    if-eqz v0, :cond_f

    .line 201
    iget-object v0, p0, Lcom/airbnb/android/utils/LocationHelper;->mCallbacks:Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;

    invoke-interface {v0, p1}, Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;->onLocationUpdated(Landroid/location/Location;)V

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/utils/LocationHelper;->mUpdateClientOnNewLocation:Z

    .line 204
    :cond_f
    return-void
.end method

.method public static refreshLastLocation(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    new-instance v0, Lcom/airbnb/android/utils/LocationHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/airbnb/android/utils/LocationHelper;-><init>(Landroid/content/Context;Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;)V

    invoke-virtual {v0}, Lcom/airbnb/android/utils/LocationHelper;->connectLocationClient()V

    .line 132
    return-void
.end method


# virtual methods
.method public connectLocationClient()V
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/airbnb/android/utils/LocationHelper;->mClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationClient;->connect()V

    .line 85
    return-void
.end method

.method public disconnectLocationClient()V
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/airbnb/android/utils/LocationHelper;->mClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/airbnb/android/utils/LocationHelper;->mClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationClient;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 89
    :cond_10
    iget-object v0, p0, Lcom/airbnb/android/utils/LocationHelper;->mClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationClient;->disconnect()V

    .line 91
    iget-object v0, p0, Lcom/airbnb/android/utils/LocationHelper;->mClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 92
    iget-object v0, p0, Lcom/airbnb/android/utils/LocationHelper;->mClient:Lcom/google/android/gms/location/LocationClient;

    iget-object v1, p0, Lcom/airbnb/android/utils/LocationHelper;->mLocationListener:Lcom/google/android/gms/location/LocationListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V

    .line 97
    :cond_24
    :goto_24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/utils/LocationHelper;->mUpdateClientOnNewLocation:Z

    .line 98
    return-void

    .line 94
    :cond_28
    iget-object v0, p0, Lcom/airbnb/android/utils/LocationHelper;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_24

    .line 95
    iget-object v0, p0, Lcom/airbnb/android/utils/LocationHelper;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/airbnb/android/utils/LocationHelper;->mNativeLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_24
.end method

.method public getLastLocation()Landroid/location/Location;
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/airbnb/android/utils/LocationHelper;->mClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 107
    iget-object v0, p0, Lcom/airbnb/android/utils/LocationHelper;->mClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationClient;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    .line 111
    :goto_e
    return-object v0

    .line 108
    :cond_f
    iget-object v0, p0, Lcom/airbnb/android/utils/LocationHelper;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1d

    .line 109
    iget-object v0, p0, Lcom/airbnb/android/utils/LocationHelper;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_e

    .line 111
    :cond_1d
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isLocationUpdateRequired(Landroid/location/Location;)Z
    .registers 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 207
    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x447a0000

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public requestLocationUpdates()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 137
    iget-object v3, p0, Lcom/airbnb/android/utils/LocationHelper;->mClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v3}, Lcom/google/android/gms/location/LocationClient;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 138
    iget-object v3, p0, Lcom/airbnb/android/utils/LocationHelper;->mClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v3}, Lcom/google/android/gms/location/LocationClient;->getLastLocation()Landroid/location/Location;

    move-result-object v1

    .line 139
    .local v1, "location":Landroid/location/Location;
    invoke-virtual {p0, v1}, Lcom/airbnb/android/utils/LocationHelper;->isLocationUpdateRequired(Landroid/location/Location;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 140
    iget-object v3, p0, Lcom/airbnb/android/utils/LocationHelper;->mClient:Lcom/google/android/gms/location/LocationClient;

    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v4

    const/16 v5, 0x66

    invoke-virtual {v4, v5}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v4

    const-wide/16 v5, 0x7530

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/location/LocationRequest;->setExpirationDuration(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/location/LocationRequest;->setNumUpdates(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/android/utils/LocationHelper;->mLocationListener:Lcom/google/android/gms/location/LocationListener;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/location/LocationClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V

    .line 142
    iput-boolean v8, p0, Lcom/airbnb/android/utils/LocationHelper;->mLocationUpdated:Z

    .line 164
    :goto_33
    iget-boolean v3, p0, Lcom/airbnb/android/utils/LocationHelper;->mLocationUpdated:Z

    if-eqz v3, :cond_73

    .line 165
    iget-object v3, p0, Lcom/airbnb/android/utils/LocationHelper;->mCallbacks:Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;

    invoke-interface {v3, v1}, Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;->onLocationUpdated(Landroid/location/Location;)V

    .line 169
    :goto_3c
    return-void

    .line 144
    :cond_3d
    iput-boolean v7, p0, Lcom/airbnb/android/utils/LocationHelper;->mLocationUpdated:Z

    goto :goto_33

    .line 147
    .end local v1    # "location":Landroid/location/Location;
    :cond_40
    iget-object v3, p0, Lcom/airbnb/android/utils/LocationHelper;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v4, "passive"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 148
    .restart local v1    # "location":Landroid/location/Location;
    invoke-virtual {p0, v1}, Lcom/airbnb/android/utils/LocationHelper;->isLocationUpdateRequired(Landroid/location/Location;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 150
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 151
    .local v0, "criteria":Landroid/location/Criteria;
    invoke-virtual {v0, v7}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 154
    iget-object v3, p0, Lcom/airbnb/android/utils/LocationHelper;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v0, v7}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 155
    .local v2, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_6d

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6d

    .line 156
    iget-object v3, p0, Lcom/airbnb/android/utils/LocationHelper;->mLocationManager:Landroid/location/LocationManager;

    iget-object v4, p0, Lcom/airbnb/android/utils/LocationHelper;->mNativeLocationListener:Landroid/location/LocationListener;

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/location/LocationManager;->requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 158
    :cond_6d
    iput-boolean v8, p0, Lcom/airbnb/android/utils/LocationHelper;->mLocationUpdated:Z

    goto :goto_33

    .line 160
    .end local v0    # "criteria":Landroid/location/Criteria;
    .end local v2    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_70
    iput-boolean v7, p0, Lcom/airbnb/android/utils/LocationHelper;->mLocationUpdated:Z

    goto :goto_33

    .line 167
    :cond_73
    iput-boolean v7, p0, Lcom/airbnb/android/utils/LocationHelper;->mUpdateClientOnNewLocation:Z

    goto :goto_3c
.end method
