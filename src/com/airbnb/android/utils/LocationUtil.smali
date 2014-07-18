.class public Lcom/airbnb/android/utils/LocationUtil;
.super Ljava/lang/Object;
.source "LocationUtil.java"


# static fields
.field private static final R:I = 0x615274


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocationDistanceFromLocation(Lcom/google/android/gms/maps/model/LatLng;DD)Lcom/google/android/gms/maps/model/LatLng;
    .registers 18
    .param p0, "start"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "xDistance"    # D
    .param p3, "yDistance"    # D

    .prologue
    .line 40
    const-wide v4, 0x4158549d00000000L

    div-double v0, p3, v4

    .line 41
    .local v0, "dLat":D
    const-wide v4, 0x4158549d00000000L

    iget-wide v6, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    const-wide v8, 0x400921fb54442d18L

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    div-double v2, p1, v4

    .line 42
    .local v2, "dLng":D
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v5, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    const-wide v7, 0x4066800000000000L

    mul-double/2addr v7, v0

    const-wide v9, 0x400921fb54442d18L

    div-double/2addr v7, v9

    add-double/2addr v5, v7

    iget-wide v7, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const-wide v9, 0x4066800000000000L

    mul-double/2addr v9, v2

    const-wide v11, 0x400921fb54442d18L

    div-double/2addr v9, v11

    add-double/2addr v7, v9

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v4
.end method

.method public static getXRadius(IF)D
    .registers 8
    .param p0, "radius"    # I
    .param p1, "degrees"    # F

    .prologue
    .line 32
    int-to-double v0, p0

    float-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static getYRadius(IF)D
    .registers 8
    .param p0, "radius"    # I
    .param p1, "degrees"    # F

    .prologue
    .line 36
    int-to-double v0, p0

    float-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static haversine(DDDD)D
    .registers 22
    .param p0, "lat1"    # D
    .param p2, "lng1"    # D
    .param p4, "lat2"    # D
    .param p6, "lng2"    # D

    .prologue
    .line 19
    sub-double v8, p4, p0

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 20
    .local v4, "deltaLat":D
    sub-double v8, p6, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 21
    .local v6, "deltaLng":D
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    .line 22
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p4

    .line 24
    const-wide/high16 v8, 0x4000000000000000L

    div-double v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L

    div-double v10, v4, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L

    div-double v10, v6, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L

    div-double v12, v6, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double v0, v8, v10

    .line 26
    .local v0, "a":D
    const-wide/high16 v8, 0x4000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L

    sub-double/2addr v12, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    mul-double v2, v8, v10

    .line 28
    .local v2, "c":D
    const-wide v8, 0x4158549d00000000L

    mul-double/2addr v8, v2

    return-wide v8
.end method
