.class public Lcom/airbnb/android/models/LastMinuteDealsFeedItem;
.super Ljava/lang/Object;
.source "LastMinuteDealsFeedItem.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/FeedItem;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 19
    instance-of v0, p1, Lcom/airbnb/android/models/LastMinuteDealsFeedItem;

    return v0
.end method

.method public getType()Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;
    .registers 2

    .prologue
    .line 12
    sget-object v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->LAST_MINUTE_BOOKINGS:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/airbnb/android/models/LastMinuteDealsFeedItem;->getType()Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->ordinal()I

    move-result v0

    return v0
.end method
