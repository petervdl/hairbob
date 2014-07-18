.class public Lcom/airbnb/android/utils/ExponentialPricesUtil;
.super Ljava/lang/Object;
.source "ExponentialPricesUtil.java"


# static fields
.field private static final curviness:D = 2.5

.field private static final sigFigs:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExponentialPrices(II)Ljava/util/List;
    .registers 15
    .param p0, "minPrice"    # I
    .param p1, "maxPrice"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    const/16 v7, 0x64

    .line 19
    .local v7, "steps":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .local v5, "prices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sub-int v8, p1, p0

    .line 21
    .local v8, "toDomain":I
    invoke-static {v7}, Lcom/airbnb/android/utils/ExponentialPricesUtil;->transferFunction(I)J

    move-result-wide v0

    .line 22
    .local v0, "domain":J
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v7, :cond_30

    .line 24
    invoke-static {v2}, Lcom/airbnb/android/utils/ExponentialPricesUtil;->transferFunction(I)J

    move-result-wide v9

    int-to-long v11, v8

    mul-long/2addr v9, v11

    div-long/2addr v9, v0

    int-to-long v11, p0

    add-long v3, v9, v11

    .line 25
    .local v3, "price":J
    long-to-int v9, v3

    invoke-static {v9}, Lcom/airbnb/android/utils/ExponentialPricesUtil;->roundSmart(I)I

    move-result v6

    .line 26
    .local v6, "rounded":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 28
    .end local v3    # "price":J
    .end local v6    # "rounded":I
    :cond_30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    return-object v5
.end method

.method private static roundSmart(I)I
    .registers 11
    .param p0, "i"    # I

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L

    .line 38
    int-to-double v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    add-double v0, v6, v8

    .line 39
    .local v0, "incomingDigits":D
    const-wide/high16 v6, 0x4000000000000000L

    sub-double v6, v0, v6

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 40
    .local v4, "roundfigs":D
    const-wide/high16 v6, 0x4024000000000000L

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 41
    .local v2, "multiplier":D
    int-to-double v6, p0

    div-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    double-to-int v7, v2

    mul-int/2addr v6, v7

    return v6
.end method

.method private static transferFunction(I)J
    .registers 5
    .param p0, "i"    # I

    .prologue
    .line 34
    int-to-double v0, p0

    const-wide/high16 v2, 0x4004000000000000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method
