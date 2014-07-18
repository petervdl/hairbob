.class public Lcom/airbnb/android/utils/BitmapLruCache;
.super Ljava/lang/Object;
.source "BitmapLruCache.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageCache;


# static fields
.field private static mInstance:Lcom/airbnb/android/utils/BitmapLruCache;


# instance fields
.field private mMemoryCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string/jumbo v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    .line 22
    .local v1, "memClass":I
    const/high16 v2, 0x100000

    mul-int/2addr v2, v1

    div-int/lit8 v0, v2, 0xa

    .line 23
    .local v0, "cacheSize":I
    new-instance v2, Lcom/airbnb/android/utils/BitmapLruCache$1;

    invoke-direct {v2, p0, v0}, Lcom/airbnb/android/utils/BitmapLruCache$1;-><init>(Lcom/airbnb/android/utils/BitmapLruCache;I)V

    iput-object v2, p0, Lcom/airbnb/android/utils/BitmapLruCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    .line 34
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/BitmapLruCache;
    .registers 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 37
    sget-object v0, Lcom/airbnb/android/utils/BitmapLruCache;->mInstance:Lcom/airbnb/android/utils/BitmapLruCache;

    if-nez v0, :cond_b

    .line 38
    new-instance v0, Lcom/airbnb/android/utils/BitmapLruCache;

    invoke-direct {v0, p0}, Lcom/airbnb/android/utils/BitmapLruCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/airbnb/android/utils/BitmapLruCache;->mInstance:Lcom/airbnb/android/utils/BitmapLruCache;

    .line 40
    :cond_b
    sget-object v0, Lcom/airbnb/android/utils/BitmapLruCache;->mInstance:Lcom/airbnb/android/utils/BitmapLruCache;

    return-object v0
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v1, p0, Lcom/airbnb/android/utils/BitmapLruCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 50
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public getCache()Landroid/support/v4/util/LruCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/airbnb/android/utils/BitmapLruCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airbnb/android/utils/BitmapLruCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method
