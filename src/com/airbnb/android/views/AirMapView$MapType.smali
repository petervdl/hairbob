.class public final enum Lcom/airbnb/android/views/AirMapView$MapType;
.super Ljava/lang/Enum;
.source "AirMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/views/AirMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/views/AirMapView$MapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/views/AirMapView$MapType;

.field public static final enum AutoNavi:Lcom/airbnb/android/views/AirMapView$MapType;

.field public static final enum Google:Lcom/airbnb/android/views/AirMapView$MapType;

.field public static final enum GoogleWeb:Lcom/airbnb/android/views/AirMapView$MapType;

.field public static final enum GoogleWebChina:Lcom/airbnb/android/views/AirMapView$MapType;


# instance fields
.field public mDomain:Ljava/lang/String;

.field public mMapUrl:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/airbnb/android/views/AirMapView$MapType;

    const-string/jumbo v1, "Google"

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/views/AirMapView$MapType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/views/AirMapView$MapType;->Google:Lcom/airbnb/android/views/AirMapView$MapType;

    .line 34
    new-instance v3, Lcom/airbnb/android/views/AirMapView$MapType;

    const-string/jumbo v4, "GoogleWeb"

    const-string/jumbo v6, "google_map.html"

    const-string/jumbo v7, "https://maps.googleapis.com/maps/api/js"

    const-string/jumbo v8, "www.googleapis.com"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/airbnb/android/views/AirMapView$MapType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/airbnb/android/views/AirMapView$MapType;->GoogleWeb:Lcom/airbnb/android/views/AirMapView$MapType;

    .line 35
    new-instance v3, Lcom/airbnb/android/views/AirMapView$MapType;

    const-string/jumbo v4, "GoogleWebChina"

    const-string/jumbo v6, "google_map.html"

    const-string/jumbo v7, "http://ditu.google.cn/maps/api/js"

    const-string/jumbo v8, "www.google.cn"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/airbnb/android/views/AirMapView$MapType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/airbnb/android/views/AirMapView$MapType;->GoogleWebChina:Lcom/airbnb/android/views/AirMapView$MapType;

    .line 36
    new-instance v3, Lcom/airbnb/android/views/AirMapView$MapType;

    const-string/jumbo v4, "AutoNavi"

    const-string/jumbo v6, "autonavi_map.html"

    const-string/jumbo v7, "https://webapi.amap.com/maps"

    const-string/jumbo v8, "www.amap.com"

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/airbnb/android/views/AirMapView$MapType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/airbnb/android/views/AirMapView$MapType;->AutoNavi:Lcom/airbnb/android/views/AirMapView$MapType;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/android/views/AirMapView$MapType;

    sget-object v1, Lcom/airbnb/android/views/AirMapView$MapType;->Google:Lcom/airbnb/android/views/AirMapView$MapType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/views/AirMapView$MapType;->GoogleWeb:Lcom/airbnb/android/views/AirMapView$MapType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/airbnb/android/views/AirMapView$MapType;->GoogleWebChina:Lcom/airbnb/android/views/AirMapView$MapType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/airbnb/android/views/AirMapView$MapType;->AutoNavi:Lcom/airbnb/android/views/AirMapView$MapType;

    aput-object v1, v0, v11

    sput-object v0, Lcom/airbnb/android/views/AirMapView$MapType;->$VALUES:[Lcom/airbnb/android/views/AirMapView$MapType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "mapUrl"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/airbnb/android/views/AirMapView$MapType;->mUrl:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/airbnb/android/views/AirMapView$MapType;->mMapUrl:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/airbnb/android/views/AirMapView$MapType;->mDomain:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static getState(I)Lcom/airbnb/android/views/AirMapView$MapType;
    .registers 3
    .param p0, "index"    # I

    .prologue
    .line 49
    invoke-static {}, Lcom/airbnb/android/views/AirMapView$MapType;->values()[Lcom/airbnb/android/views/AirMapView$MapType;

    move-result-object v0

    .line 50
    .local v0, "values":[Lcom/airbnb/android/views/AirMapView$MapType;
    if-ltz p0, :cond_9

    array-length v1, v0

    if-lt p0, v1, :cond_b

    .line 51
    :cond_9
    const/4 v1, 0x0

    .line 53
    :goto_a
    return-object v1

    :cond_b
    aget-object v1, v0, p0

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/views/AirMapView$MapType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/airbnb/android/views/AirMapView$MapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/AirMapView$MapType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/views/AirMapView$MapType;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/airbnb/android/views/AirMapView$MapType;->$VALUES:[Lcom/airbnb/android/views/AirMapView$MapType;

    invoke-virtual {v0}, [Lcom/airbnb/android/views/AirMapView$MapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/views/AirMapView$MapType;

    return-object v0
.end method
