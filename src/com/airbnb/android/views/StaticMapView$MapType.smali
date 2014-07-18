.class public final enum Lcom/airbnb/android/views/StaticMapView$MapType;
.super Ljava/lang/Enum;
.source "StaticMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/views/StaticMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/views/StaticMapView$MapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/views/StaticMapView$MapType;

.field public static final enum AutoNavi:Lcom/airbnb/android/views/StaticMapView$MapType;

.field public static final enum GoogleWeb:Lcom/airbnb/android/views/StaticMapView$MapType;

.field public static final enum GoogleWebChina:Lcom/airbnb/android/views/StaticMapView$MapType;


# instance fields
.field public mCenter:Ljava/lang/String;

.field public mCirclePathPrefix:Ljava/lang/String;

.field public mCirclePathSection:Ljava/lang/String;

.field public mColorMarker:Ljava/lang/String;

.field public mDomain:Ljava/lang/String;

.field public mMarker:Ljava/lang/String;

.field public mScale:Ljava/lang/String;

.field public mSize:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    .line 36
    new-instance v0, Lcom/airbnb/android/views/StaticMapView$MapType;

    const-string/jumbo v1, "GoogleWeb"

    const/4 v2, 0x0

    const-string/jumbo v3, "https://maps.googleapis.com"

    const-string/jumbo v4, "/maps/api/staticmap?sensor=false&language=%1$s&region=%2$s&"

    const-string/jumbo v5, "center=%1$.6f,%2$.6f&zoom=%3$d&"

    const-string/jumbo v6, "size=%1$dx%2$d"

    const-string/jumbo v7, "scale=%1$d&"

    const-string/jumbo v8, "markers=%1$.6f,%2$.6f&"

    const-string/jumbo v9, "markers=color:0x%1$s%%7Clabel:%2$s%%7C%3$.6f,%4$.6f&"

    const-string/jumbo v10, "path=weight:2%%7Ccolor:%1$s%%7Cfillcolor:%2$s"

    const-string/jumbo v11, "%%7C%1$.6f,%2$.6f"

    invoke-direct/range {v0 .. v11}, Lcom/airbnb/android/views/StaticMapView$MapType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/views/StaticMapView$MapType;->GoogleWeb:Lcom/airbnb/android/views/StaticMapView$MapType;

    .line 39
    new-instance v0, Lcom/airbnb/android/views/StaticMapView$MapType;

    const-string/jumbo v1, "GoogleWebChina"

    const/4 v2, 0x1

    const-string/jumbo v3, "http://ditu.google.cn"

    const-string/jumbo v4, "/maps/api/staticmap?sensor=false&language=%1$s&region=%2$s&"

    const-string/jumbo v5, "center=%1$.6f,%2$.6f&zoom=%3$d&"

    const-string/jumbo v6, "size=%1$dx%2$d"

    const-string/jumbo v7, "scale=%1$d&"

    const-string/jumbo v8, "markers=%1$.6f,%2$.6f&"

    const-string/jumbo v9, "markers=color:0x%1$s%%7Clabel:%2$s%%7C%3$.6f,%4$.6f&"

    const-string/jumbo v10, "path=weight:2%%7Ccolor:%1$s%%7Cfillcolor:%2$s"

    const-string/jumbo v11, "%%7C%1$.6f,%2$.6f"

    invoke-direct/range {v0 .. v11}, Lcom/airbnb/android/views/StaticMapView$MapType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/views/StaticMapView$MapType;->GoogleWebChina:Lcom/airbnb/android/views/StaticMapView$MapType;

    .line 44
    new-instance v0, Lcom/airbnb/android/views/StaticMapView$MapType;

    const-string/jumbo v1, "AutoNavi"

    const/4 v2, 0x2

    const-string/jumbo v3, "http://restapi.amap.com"

    const-string/jumbo v4, "/v3/staticmap?key=db94caecca47a81a81085abeb0e50691&e1=%1$s&e2=%2$s&"

    const-string/jumbo v5, "location=%2$.6f,%1$.6f&zoom=%3$d&"

    const-string/jumbo v6, "size=%1$d*%2$d"

    const-string/jumbo v7, "scale=%1$d&"

    const-string/jumbo v8, "markers=,,:%2$.6f,%1$.6f&"

    const-string/jumbo v9, "markers=,,:%2$.6f,%1$.6f&"

    const-string/jumbo v10, "paths=2,%1$s,%2$s:"

    const-string/jumbo v11, "%2$.6f,%1$.6f;"

    invoke-direct/range {v0 .. v11}, Lcom/airbnb/android/views/StaticMapView$MapType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/views/StaticMapView$MapType;->AutoNavi:Lcom/airbnb/android/views/StaticMapView$MapType;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/airbnb/android/views/StaticMapView$MapType;

    const/4 v1, 0x0

    sget-object v2, Lcom/airbnb/android/views/StaticMapView$MapType;->GoogleWeb:Lcom/airbnb/android/views/StaticMapView$MapType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/airbnb/android/views/StaticMapView$MapType;->GoogleWebChina:Lcom/airbnb/android/views/StaticMapView$MapType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/airbnb/android/views/StaticMapView$MapType;->AutoNavi:Lcom/airbnb/android/views/StaticMapView$MapType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/views/StaticMapView$MapType;->$VALUES:[Lcom/airbnb/android/views/StaticMapView$MapType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "center"    # Ljava/lang/String;
    .param p6, "size"    # Ljava/lang/String;
    .param p7, "scale"    # Ljava/lang/String;
    .param p8, "marker"    # Ljava/lang/String;
    .param p9, "colorMarker"    # Ljava/lang/String;
    .param p10, "circlePathPrefix"    # Ljava/lang/String;
    .param p11, "circlePathSection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput-object p3, p0, Lcom/airbnb/android/views/StaticMapView$MapType;->mDomain:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/airbnb/android/views/StaticMapView$MapType;->mUrl:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/airbnb/android/views/StaticMapView$MapType;->mCenter:Ljava/lang/String;

    .line 62
    iput-object p6, p0, Lcom/airbnb/android/views/StaticMapView$MapType;->mSize:Ljava/lang/String;

    .line 63
    iput-object p7, p0, Lcom/airbnb/android/views/StaticMapView$MapType;->mScale:Ljava/lang/String;

    .line 64
    iput-object p8, p0, Lcom/airbnb/android/views/StaticMapView$MapType;->mMarker:Ljava/lang/String;

    .line 65
    iput-object p9, p0, Lcom/airbnb/android/views/StaticMapView$MapType;->mColorMarker:Ljava/lang/String;

    .line 66
    iput-object p10, p0, Lcom/airbnb/android/views/StaticMapView$MapType;->mCirclePathPrefix:Ljava/lang/String;

    .line 67
    iput-object p11, p0, Lcom/airbnb/android/views/StaticMapView$MapType;->mCirclePathSection:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static getState(I)Lcom/airbnb/android/views/StaticMapView$MapType;
    .registers 3
    .param p0, "index"    # I

    .prologue
    .line 71
    invoke-static {}, Lcom/airbnb/android/views/StaticMapView$MapType;->values()[Lcom/airbnb/android/views/StaticMapView$MapType;

    move-result-object v0

    .line 72
    .local v0, "values":[Lcom/airbnb/android/views/StaticMapView$MapType;
    if-ltz p0, :cond_9

    array-length v1, v0

    if-lt p0, v1, :cond_b

    .line 73
    :cond_9
    const/4 v1, 0x0

    .line 75
    :goto_a
    return-object v1

    :cond_b
    aget-object v1, v0, p0

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/views/StaticMapView$MapType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/airbnb/android/views/StaticMapView$MapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/StaticMapView$MapType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/views/StaticMapView$MapType;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/airbnb/android/views/StaticMapView$MapType;->$VALUES:[Lcom/airbnb/android/views/StaticMapView$MapType;

    invoke-virtual {v0}, [Lcom/airbnb/android/views/StaticMapView$MapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/views/StaticMapView$MapType;

    return-object v0
.end method
