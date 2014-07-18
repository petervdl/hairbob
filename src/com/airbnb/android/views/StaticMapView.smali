.class public Lcom/airbnb/android/views/StaticMapView;
.super Landroid/widget/ImageView;
.source "StaticMapView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/views/StaticMapView$MapType;
    }
.end annotation


# static fields
.field private static AUTONAVI_COLOR_STRING:Ljava/lang/String; = null

.field private static GOOGLE_COLOR_STRING:Ljava/lang/String; = null

.field private static final GOOGLE_STATIC_MAP_MAX_DIMEN:I = 0x280


# instance fields
.field private mCacheKey:Ljava/lang/String;

.field private mFetchImage:Z

.field private mFrozen:Z

.field private mMapType:Lcom/airbnb/android/views/StaticMapView$MapType;

.field private mScale:I

.field private mStaticMapCenterUrl:Ljava/lang/String;

.field private mStaticMapMarkerUrl:Ljava/lang/String;

.field private mStaticMapPathUrl:Ljava/lang/String;

.field private mStaticMapScaleUrl:Ljava/lang/String;

.field private mStaticMapSizeUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-string/jumbo v0, "0x%1$s%2$s"

    sput-object v0, Lcom/airbnb/android/views/StaticMapView;->GOOGLE_COLOR_STRING:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "0x%1$s,%2$s"

    sput-object v0, Lcom/airbnb/android/views/StaticMapView;->AUTONAVI_COLOR_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-direct {p0}, Lcom/airbnb/android/views/StaticMapView;->init()V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    invoke-direct {p0}, Lcom/airbnb/android/views/StaticMapView;->init()V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    invoke-direct {p0}, Lcom/airbnb/android/views/StaticMapView;->init()V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/StaticMapView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/StaticMapView;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/airbnb/android/views/StaticMapView;->mFetchImage:Z

    return v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/views/StaticMapView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/StaticMapView;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/airbnb/android/views/StaticMapView;->mFetchImage:Z

    return p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/views/StaticMapView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/StaticMapView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/airbnb/android/views/StaticMapView;->mCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/views/StaticMapView;Landroid/graphics/Bitmap;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/StaticMapView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/StaticMapView;->setBitmapAndFreeze(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$302(Lcom/airbnb/android/views/StaticMapView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/StaticMapView;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/airbnb/android/views/StaticMapView;->mFrozen:Z

    return p1
.end method

.method private buildColorString(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 275
    iget-object v1, p0, Lcom/airbnb/android/views/StaticMapView;->mMapType:Lcom/airbnb/android/views/StaticMapView$MapType;

    sget-object v2, Lcom/airbnb/android/views/StaticMapView$MapType;->AutoNavi:Lcom/airbnb/android/views/StaticMapView$MapType;

    if-ne v1, v2, :cond_3b

    .line 277
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%.1f"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x43800000

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "alpha":Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v2, Lcom/airbnb/android/views/StaticMapView;->AUTONAVI_COLOR_STRING:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 281
    .end local v0    # "alpha":Ljava/lang/String;
    :goto_3a
    return-object v1

    :cond_3b
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v2, Lcom/airbnb/android/views/StaticMapView;->GOOGLE_COLOR_STRING:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3a
.end method

.method private buildUrlPathSection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "strokeColor"    # Ljava/lang/String;
    .param p2, "fillColor"    # Ljava/lang/String;

    .prologue
    .line 269
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Lcom/airbnb/android/views/StaticMapView;->mMapType:Lcom/airbnb/android/views/StaticMapView$MapType;

    iget-object v1, v1, Lcom/airbnb/android/views/StaticMapView$MapType;->mCirclePathPrefix:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/airbnb/android/views/StaticMapView;->buildColorString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p2}, Lcom/airbnb/android/views/StaticMapView;->buildColorString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fetchImage(II)V
    .registers 15
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/16 v7, 0x280

    const/4 v9, 0x2

    const/high16 v6, 0x44200000

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 169
    if-le p1, v7, :cond_12

    .line 170
    int-to-float v5, p1

    div-float v4, v6, v5

    .line 171
    .local v4, "ratio":F
    int-to-float v5, p1

    mul-float/2addr v5, v4

    float-to-int p1, v5

    .line 172
    int-to-float v5, p2

    mul-float/2addr v5, v4

    float-to-int p2, v5

    .line 175
    .end local v4    # "ratio":F
    :cond_12
    if-le p2, v7, :cond_1d

    .line 176
    int-to-float v5, p2

    div-float v4, v6, v5

    .line 177
    .restart local v4    # "ratio":F
    int-to-float v5, p1

    mul-float/2addr v5, v4

    float-to-int p1, v5

    .line 178
    int-to-float v5, p2

    mul-float/2addr v5, v4

    float-to-int p2, v5

    .line 180
    .end local v4    # "ratio":F
    :cond_1d
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, p0, Lcom/airbnb/android/views/StaticMapView;->mMapType:Lcom/airbnb/android/views/StaticMapView$MapType;

    iget-object v6, v6, Lcom/airbnb/android/views/StaticMapView$MapType;->mSize:Ljava/lang/String;

    new-array v7, v9, [Ljava/lang/Object;

    iget v8, p0, Lcom/airbnb/android/views/StaticMapView;->mScale:I

    div-int v8, p1, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    iget v8, p0, Lcom/airbnb/android/views/StaticMapView;->mScale:I

    div-int v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapSizeUrl:Ljava/lang/String;

    .line 181
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, p0, Lcom/airbnb/android/views/StaticMapView;->mMapType:Lcom/airbnb/android/views/StaticMapView$MapType;

    iget-object v6, v6, Lcom/airbnb/android/views/StaticMapView$MapType;->mScale:Ljava/lang/String;

    new-array v7, v11, [Ljava/lang/Object;

    iget v8, p0, Lcom/airbnb/android/views/StaticMapView;->mScale:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapScaleUrl:Ljava/lang/String;

    .line 183
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 184
    .local v3, "locale":Ljava/util/Locale;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/airbnb/android/views/StaticMapView;->mMapType:Lcom/airbnb/android/views/StaticMapView$MapType;

    iget-object v6, v6, Lcom/airbnb/android/views/StaticMapView$MapType;->mDomain:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v7, p0, Lcom/airbnb/android/views/StaticMapView;->mMapType:Lcom/airbnb/android/views/StaticMapView$MapType;

    iget-object v7, v7, Lcom/airbnb/android/views/StaticMapView$MapType;->mUrl:Ljava/lang/String;

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "baseUrl":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapMarkerUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapPathUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapCenterUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapScaleUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapSizeUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "imageUrl":Ljava/lang/String;
    iput-object v2, p0, Lcom/airbnb/android/views/StaticMapView;->mCacheKey:Ljava/lang/String;

    .line 187
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/android/utils/BitmapLruCache;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/BitmapLruCache;

    move-result-object v5

    iget-object v6, p0, Lcom/airbnb/android/views/StaticMapView;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/airbnb/android/utils/BitmapLruCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 189
    .local v1, "cachedBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_c7

    .line 190
    invoke-direct {p0, v1}, Lcom/airbnb/android/views/StaticMapView;->setBitmapAndFreeze(Landroid/graphics/Bitmap;)V

    .line 215
    :goto_c6
    return-void

    .line 193
    :cond_c7
    new-instance v5, Lcom/airbnb/android/views/StaticMapView$2;

    invoke-direct {v5, p0}, Lcom/airbnb/android/views/StaticMapView$2;-><init>(Lcom/airbnb/android/views/StaticMapView;)V

    invoke-static {v2, v5}, Lcom/airbnb/android/views/AirImageView;->getImage(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V

    goto :goto_c6
.end method

.method public static getStaticMapType(Ljava/lang/String;)Lcom/airbnb/android/views/StaticMapView$MapType;
    .registers 3
    .param p0, "mapCountry"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p0}, Lcom/airbnb/android/utils/MiscUtils;->shouldUseAutoNaviMap(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 82
    sget-object v0, Lcom/airbnb/android/views/StaticMapView$MapType;->AutoNavi:Lcom/airbnb/android/views/StaticMapView$MapType;

    .line 91
    .local v0, "mapType":Lcom/airbnb/android/views/StaticMapView$MapType;
    :goto_8
    return-object v0

    .line 83
    .end local v0    # "mapType":Lcom/airbnb/android/views/StaticMapView$MapType;
    :cond_9
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->isCurrentIPInChina()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 86
    sget-object v0, Lcom/airbnb/android/views/StaticMapView$MapType;->GoogleWebChina:Lcom/airbnb/android/views/StaticMapView$MapType;

    .restart local v0    # "mapType":Lcom/airbnb/android/views/StaticMapView$MapType;
    goto :goto_8

    .line 88
    .end local v0    # "mapType":Lcom/airbnb/android/views/StaticMapView$MapType;
    :cond_12
    sget-object v0, Lcom/airbnb/android/views/StaticMapView$MapType;->GoogleWeb:Lcom/airbnb/android/views/StaticMapView$MapType;

    .restart local v0    # "mapType":Lcom/airbnb/android/views/StaticMapView$MapType;
    goto :goto_8
.end method

.method private init()V
    .registers 3

    .prologue
    .line 128
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapCenterUrl:Ljava/lang/String;

    .line 129
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapMarkerUrl:Ljava/lang/String;

    .line 130
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapSizeUrl:Ljava/lang/String;

    .line 131
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapPathUrl:Ljava/lang/String;

    .line 132
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/StaticMapView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 133
    const/4 v0, 0x1

    iput v0, p0, Lcom/airbnb/android/views/StaticMapView;->mScale:I

    .line 135
    invoke-virtual {p0}, Lcom/airbnb/android/views/StaticMapView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/views/StaticMapView$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/views/StaticMapView$1;-><init>(Lcom/airbnb/android/views/StaticMapView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 145
    return-void
.end method

.method private setBitmapAndFreeze(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/views/StaticMapView;->mFrozen:Z

    .line 230
    invoke-virtual {p0, p1}, Lcom/airbnb/android/views/StaticMapView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 231
    return-void
.end method


# virtual methods
.method public addCircleToMap(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    const/16 v12, 0x1f4

    const/4 v11, 0x0

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0072

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "strokeColor":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0071

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "fillColor":Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lcom/airbnb/android/views/StaticMapView;->buildUrlPathSection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapPathUrl:Ljava/lang/String;

    .line 245
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    const/16 v4, 0x168

    if-gt v2, v4, :cond_70

    .line 247
    int-to-float v4, v2

    invoke-static {v12, v4}, Lcom/airbnb/android/utils/LocationUtil;->getXRadius(IF)D

    move-result-wide v4

    int-to-float v6, v2

    invoke-static {v12, v6}, Lcom/airbnb/android/utils/LocationUtil;->getYRadius(IF)D

    move-result-wide v6

    invoke-static {p2, v4, v5, v6, v7}, Lcom/airbnb/android/utils/LocationUtil;->getLocationDistanceFromLocation(Lcom/google/android/gms/maps/model/LatLng;DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 250
    .local v0, "circle":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapPathUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v6, p0, Lcom/airbnb/android/views/StaticMapView;->mMapType:Lcom/airbnb/android/views/StaticMapView$MapType;

    iget-object v6, v6, Lcom/airbnb/android/views/StaticMapView$MapType;->mCirclePathSection:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v11

    const/4 v8, 0x1

    iget-wide v9, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapPathUrl:Ljava/lang/String;

    .line 245
    add-int/lit8 v2, v2, 0x5

    goto :goto_28

    .line 254
    .end local v0    # "circle":Lcom/google/android/gms/maps/model/LatLng;
    :cond_70
    iget-object v4, p0, Lcom/airbnb/android/views/StaticMapView;->mMapType:Lcom/airbnb/android/views/StaticMapView$MapType;

    sget-object v5, Lcom/airbnb/android/views/StaticMapView$MapType;->AutoNavi:Lcom/airbnb/android/views/StaticMapView$MapType;

    if-ne v4, v5, :cond_86

    .line 255
    iget-object v4, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapPathUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapPathUrl:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapPathUrl:Ljava/lang/String;

    .line 257
    :cond_86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapPathUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapPathUrl:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public addColoredLabelMarkerToMap(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;I)V
    .registers 13
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "color"    # I

    .prologue
    const/4 v8, 0x2

    .line 291
    invoke-virtual {p0}, Lcom/airbnb/android/views/StaticMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 292
    .local v1, "colorResource":I
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "colorHexValue":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapMarkerUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, p0, Lcom/airbnb/android/views/StaticMapView;->mMapType:Lcom/airbnb/android/views/StaticMapView$MapType;

    iget-object v4, v4, Lcom/airbnb/android/views/StaticMapView$MapType;->mColorMarker:Ljava/lang/String;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x3

    iget-wide v7, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapMarkerUrl:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public addMarkerToMap(Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 9
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapMarkerUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/airbnb/android/views/StaticMapView;->mMapType:Lcom/airbnb/android/views/StaticMapView$MapType;

    iget-object v2, v2, Lcom/airbnb/android/views/StaticMapView$MapType;->mMarker:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v5, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapMarkerUrl:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public centerMap(Lcom/google/android/gms/maps/model/LatLng;I)V
    .registers 9
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "zoom"    # I

    .prologue
    .line 307
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Lcom/airbnb/android/views/StaticMapView;->mMapType:Lcom/airbnb/android/views/StaticMapView$MapType;

    iget-object v1, v1, Lcom/airbnb/android/views/StaticMapView$MapType;->mCenter:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapCenterUrl:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public freeze()V
    .registers 4

    .prologue
    .line 156
    iget-boolean v2, p0, Lcom/airbnb/android/views/StaticMapView;->mFrozen:Z

    if-nez v2, :cond_13

    .line 158
    invoke-virtual {p0}, Lcom/airbnb/android/views/StaticMapView;->getWidth()I

    move-result v1

    .line 159
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/airbnb/android/views/StaticMapView;->getHeight()I

    move-result v0

    .line 160
    .local v0, "height":I
    if-eqz v1, :cond_10

    if-nez v0, :cond_14

    .line 161
    :cond_10
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/airbnb/android/views/StaticMapView;->mFetchImage:Z

    .line 166
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_13
    :goto_13
    return-void

    .line 163
    .restart local v0    # "height":I
    .restart local v1    # "width":I
    :cond_14
    invoke-direct {p0, v1, v0}, Lcom/airbnb/android/views/StaticMapView;->fetchImage(II)V

    goto :goto_13
.end method

.method public isFrozen()Z
    .registers 2

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/airbnb/android/views/StaticMapView;->mFrozen:Z

    return v0
.end method

.method public setScale(I)V
    .registers 6
    .param p1, "scale"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 299
    if-eq p1, v0, :cond_7

    const/4 v2, 0x2

    if-ne p1, v2, :cond_14

    :cond_7
    iget-object v2, p0, Lcom/airbnb/android/views/StaticMapView;->mMapType:Lcom/airbnb/android/views/StaticMapView$MapType;

    sget-object v3, Lcom/airbnb/android/views/StaticMapView$MapType;->AutoNavi:Lcom/airbnb/android/views/StaticMapView$MapType;

    if-eq v2, v3, :cond_1d

    move v2, v0

    :goto_e
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1f

    :goto_11
    and-int/2addr v0, v2

    if-eqz v0, :cond_21

    .line 300
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Static maps only supports scale type of 1,2 or 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    move v2, v1

    .line 299
    goto :goto_e

    :cond_1f
    move v0, v1

    goto :goto_11

    .line 303
    :cond_21
    iput p1, p0, Lcom/airbnb/android/views/StaticMapView;->mScale:I

    .line 304
    return-void
.end method

.method public setup()V
    .registers 2

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/StaticMapView;->setup(Lcom/airbnb/android/models/Listing;)V

    .line 149
    return-void
.end method

.method public setup(Lcom/airbnb/android/models/Listing;)V
    .registers 3
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 152
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lcom/airbnb/android/views/StaticMapView;->getStaticMapType(Ljava/lang/String;)Lcom/airbnb/android/views/StaticMapView$MapType;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/StaticMapView;->mMapType:Lcom/airbnb/android/views/StaticMapView$MapType;

    .line 153
    return-void

    .line 152
    :cond_d
    const-string/jumbo v0, ""

    goto :goto_6
.end method

.method public thaw()V
    .registers 2

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/airbnb/android/views/StaticMapView;->mFrozen:Z

    if-eqz v0, :cond_1f

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/views/StaticMapView;->mFrozen:Z

    .line 220
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapCenterUrl:Ljava/lang/String;

    .line 221
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapMarkerUrl:Ljava/lang/String;

    .line 222
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapSizeUrl:Ljava/lang/String;

    .line 223
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/airbnb/android/views/StaticMapView;->mStaticMapPathUrl:Ljava/lang/String;

    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/StaticMapView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 226
    :cond_1f
    return-void
.end method
