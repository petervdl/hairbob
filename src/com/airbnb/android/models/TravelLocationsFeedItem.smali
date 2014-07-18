.class public Lcom/airbnb/android/models/TravelLocationsFeedItem;
.super Ljava/lang/Object;
.source "TravelLocationsFeedItem.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/FeedItem;


# instance fields
.field private mKey:Ljava/lang/String;

.field private final mLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/TravelLocation;",
            ">;"
        }
    .end annotation
.end field

.field private mLoggingParams:Lcom/airbnb/android/utils/Strap;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V
    .registers 4
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "loggingParams"    # Lcom/airbnb/android/utils/Strap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/TravelLocation;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/utils/Strap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/TravelLocation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/airbnb/android/models/TravelLocationsFeedItem;->mLocations:Ljava/util/List;

    .line 17
    iput-object p2, p0, Lcom/airbnb/android/models/TravelLocationsFeedItem;->mKey:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/airbnb/android/models/TravelLocationsFeedItem;->mLoggingParams:Lcom/airbnb/android/utils/Strap;

    .line 19
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    if-ne p0, p1, :cond_5

    .line 43
    :cond_4
    :goto_4
    return v1

    .line 37
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 39
    check-cast v0, Lcom/airbnb/android/models/TravelLocationsFeedItem;

    .line 41
    .local v0, "that":Lcom/airbnb/android/models/TravelLocationsFeedItem;
    iget-object v3, p0, Lcom/airbnb/android/models/TravelLocationsFeedItem;->mKey:Ljava/lang/String;

    iget-object v4, v0, Lcom/airbnb/android/models/TravelLocationsFeedItem;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public getLocations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/TravelLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/models/TravelLocationsFeedItem;->mLocations:Ljava/util/List;

    return-object v0
.end method

.method public getLoggingParams()Lcom/airbnb/android/utils/Strap;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/models/TravelLocationsFeedItem;->mLoggingParams:Lcom/airbnb/android/utils/Strap;

    return-object v0
.end method

.method public getType()Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;
    .registers 2

    .prologue
    .line 23
    sget-object v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->LOCATIONS:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/airbnb/android/models/TravelLocationsFeedItem;->mKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
