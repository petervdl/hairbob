.class public Lcom/airbnb/android/models/SearchInfo;
.super Ljava/lang/Object;
.source "SearchInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/models/SearchInfo$SearchInfoContract;,
        Lcom/airbnb/android/models/SearchInfo$SortType;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_PRICE:I = 0x3e8

.field private static final DEFAULT_MIN_PRICE:I = 0xa


# instance fields
.field private mAmenities:[Ljava/lang/Integer;

.field private mCheckinDate:Ljava/util/Calendar;

.field private mCheckoutDate:Ljava/util/Calendar;

.field private mCurrencyType:Ljava/lang/String;

.field private mGuestCount:I

.field private mId:J

.field private mIncludeEntirePlace:Z

.field private mIncludePrivateRoom:Z

.field private mIncludeSharedRoom:Z

.field private mIsDirty:Z

.field private mIsInstantBookOnly:Z

.field private mIsLastMinuteOnly:Z

.field private mIsPriceRangeMonthly:Z

.field private mLmbLocation:Lcom/airbnb/android/models/AirLocation;

.field private mLocation:Lcom/google/android/gms/maps/model/LatLng;

.field private mMaxFilterPrice:I

.field private mMaxPrice:I

.field private mMinFilterPrice:I

.field private mMinPrice:I

.field private mNE:Lcom/google/android/gms/maps/model/LatLng;

.field private mNumBathrooms:I

.field private mNumBedrooms:I

.field private mNumBeds:I

.field private mPictureUrl:Ljava/lang/String;

.field private mQueryParamsFromServer:Lcom/airbnb/android/utils/Strap;

.field private mSW:Lcom/google/android/gms/maps/model/LatLng;

.field private mSearchTerm:Ljava/lang/String;

.field private mSortType:Lcom/airbnb/android/models/SearchInfo$SortType;

.field private mTotalListings:I

.field private mUseDetailedFilters:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mAmenities:[Ljava/lang/Integer;

    .line 68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/airbnb/android/models/SearchInfo;->mId:J

    .line 132
    invoke-virtual {p0}, Lcom/airbnb/android/models/SearchInfo;->clearAllFilters()V

    .line 133
    return-void
.end method

.method private getCalendarFromStrap(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Ljava/util/Calendar;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "strap"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "calendar":Ljava/util/Calendar;
    if-eqz p2, :cond_14

    invoke-virtual {p2, p1}, Lcom/airbnb/android/utils/Strap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 96
    invoke-virtual {p2, p1}, Lcom/airbnb/android/utils/Strap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/DateHelper;->getCalendarFromString(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 98
    invoke-virtual {p2, p1}, Lcom/airbnb/android/utils/Strap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_14
    return-object v0
.end method


# virtual methods
.method public clearAllFilters()V
    .registers 7

    .prologue
    const/16 v5, 0x3e8

    const/16 v2, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 437
    invoke-virtual {p0}, Lcom/airbnb/android/models/SearchInfo;->clearSearchTerm()V

    .line 438
    iput-boolean v3, p0, Lcom/airbnb/android/models/SearchInfo;->mUseDetailedFilters:Z

    .line 440
    iput-boolean v3, p0, Lcom/airbnb/android/models/SearchInfo;->mIncludePrivateRoom:Z

    .line 441
    iput-boolean v3, p0, Lcom/airbnb/android/models/SearchInfo;->mIncludeSharedRoom:Z

    .line 443
    iput-boolean v3, p0, Lcom/airbnb/android/models/SearchInfo;->mIncludeEntirePlace:Z

    .line 444
    iput-boolean v3, p0, Lcom/airbnb/android/models/SearchInfo;->mIsInstantBookOnly:Z

    .line 445
    iput-boolean v3, p0, Lcom/airbnb/android/models/SearchInfo;->mIsLastMinuteOnly:Z

    .line 447
    iput-boolean v3, p0, Lcom/airbnb/android/models/SearchInfo;->mIsPriceRangeMonthly:Z

    .line 450
    iput v2, p0, Lcom/airbnb/android/models/SearchInfo;->mMinPrice:I

    .line 451
    iput v5, p0, Lcom/airbnb/android/models/SearchInfo;->mMaxPrice:I

    .line 452
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/airbnb/android/models/SearchInfo;->mCurrencyType:Ljava/lang/String;

    .line 453
    iput v2, p0, Lcom/airbnb/android/models/SearchInfo;->mMinFilterPrice:I

    .line 454
    iput v5, p0, Lcom/airbnb/android/models/SearchInfo;->mMaxFilterPrice:I

    .line 456
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    .line 457
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/SearchInfo;->mNumBeds:I

    .line 458
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/SearchInfo;->mNumBedrooms:I

    .line 459
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/SearchInfo;->mNumBathrooms:I

    .line 460
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/SearchInfo;->mGuestCount:I

    .line 461
    iput-object v4, p0, Lcom/airbnb/android/models/SearchInfo;->mCurrencyType:Ljava/lang/String;

    .line 462
    iput-object v4, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckinDate:Ljava/util/Calendar;

    .line 463
    iput-object v4, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckoutDate:Ljava/util/Calendar;

    .line 464
    iput-boolean v3, p0, Lcom/airbnb/android/models/SearchInfo;->mIsDirty:Z

    .line 467
    iput-object v4, p0, Lcom/airbnb/android/models/SearchInfo;->mSW:Lcom/google/android/gms/maps/model/LatLng;

    .line 468
    iput-object v4, p0, Lcom/airbnb/android/models/SearchInfo;->mNE:Lcom/google/android/gms/maps/model/LatLng;

    .line 469
    iput-object v4, p0, Lcom/airbnb/android/models/SearchInfo;->mLocation:Lcom/google/android/gms/maps/model/LatLng;

    .line 470
    iput-object v4, p0, Lcom/airbnb/android/models/SearchInfo;->mQueryParamsFromServer:Lcom/airbnb/android/utils/Strap;

    .line 471
    iput-object v4, p0, Lcom/airbnb/android/models/SearchInfo;->mSortType:Lcom/airbnb/android/models/SearchInfo$SortType;

    .line 472
    iput-object v4, p0, Lcom/airbnb/android/models/SearchInfo;->mPictureUrl:Ljava/lang/String;

    .line 473
    iput v3, p0, Lcom/airbnb/android/models/SearchInfo;->mTotalListings:I

    .line 474
    iput-object v4, p0, Lcom/airbnb/android/models/SearchInfo;->mLmbLocation:Lcom/airbnb/android/models/AirLocation;

    .line 476
    new-array v1, v3, [Ljava/lang/Integer;

    iput-object v1, p0, Lcom/airbnb/android/models/SearchInfo;->mAmenities:[Ljava/lang/Integer;

    .line 477
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/airbnb/android/models/SearchInfo;->mId:J

    .line 478
    return-void
.end method

.method public clearDates()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckinDate:Ljava/util/Calendar;

    .line 153
    iput-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckoutDate:Ljava/util/Calendar;

    .line 154
    return-void
.end method

.method public clearLocation()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mLocation:Lcom/google/android/gms/maps/model/LatLng;

    .line 158
    iput-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mNE:Lcom/google/android/gms/maps/model/LatLng;

    .line 159
    iput-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mSW:Lcom/google/android/gms/maps/model/LatLng;

    .line 160
    return-void
.end method

.method public clearSearchTerm()V
    .registers 2

    .prologue
    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mSearchTerm:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 515
    if-eqz p1, :cond_14

    instance-of v0, p1, Lcom/airbnb/android/models/SearchInfo;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/airbnb/android/models/SearchInfo;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/airbnb/android/models/SearchInfo;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/airbnb/android/models/SearchInfo;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public getAmenities()[Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mAmenities:[Ljava/lang/Integer;

    if-nez v0, :cond_9

    .line 234
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mAmenities:[Ljava/lang/Integer;

    .line 236
    :cond_9
    iget-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mAmenities:[Ljava/lang/Integer;

    return-object v0
.end method

.method public getCheckinDate()Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getCheckinTimeMillis()J
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckinDate:Ljava/util/Calendar;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, -0x1

    goto :goto_a
.end method

.method public getCheckoutDate()Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckoutDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getCheckoutTimeMillis()J
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckoutDate:Ljava/util/Calendar;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckoutDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, -0x1

    goto :goto_a
.end method

.method public getContent()Landroid/content/ContentValues;
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 593
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 594
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "query"

    iget-object v3, p0, Lcom/airbnb/android/models/SearchInfo;->mSearchTerm:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string/jumbo v8, "checkin_date"

    iget-object v2, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckinDate:Ljava/util/Calendar;

    if-eqz v2, :cond_10c

    iget-object v2, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckinDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    :goto_1e
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 597
    const-string/jumbo v2, "checkout_date"

    iget-object v3, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckoutDate:Ljava/util/Calendar;

    if-eqz v3, :cond_32

    iget-object v3, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckoutDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    :cond_32
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 599
    const-string/jumbo v2, "num_guests"

    iget v3, p0, Lcom/airbnb/android/models/SearchInfo;->mGuestCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 600
    iget v2, p0, Lcom/airbnb/android/models/SearchInfo;->mMinPrice:I

    iget v3, p0, Lcom/airbnb/android/models/SearchInfo;->mMinFilterPrice:I

    if-gt v2, v3, :cond_51

    iget v2, p0, Lcom/airbnb/android/models/SearchInfo;->mMaxPrice:I

    iget v3, p0, Lcom/airbnb/android/models/SearchInfo;->mMaxFilterPrice:I

    if-ge v2, v3, :cond_71

    .line 601
    :cond_51
    const-string/jumbo v2, "min_price"

    iget v3, p0, Lcom/airbnb/android/models/SearchInfo;->mMinPrice:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 602
    const-string/jumbo v2, "max_price"

    iget v3, p0, Lcom/airbnb/android/models/SearchInfo;->mMaxPrice:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 603
    const-string/jumbo v2, "currency"

    iget-object v3, p0, Lcom/airbnb/android/models/SearchInfo;->mCurrencyType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :cond_71
    const-string/jumbo v2, "num_beds"

    iget v3, p0, Lcom/airbnb/android/models/SearchInfo;->mNumBeds:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 606
    const-string/jumbo v2, "num_bedrooms"

    iget v3, p0, Lcom/airbnb/android/models/SearchInfo;->mNumBedrooms:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 607
    const-string/jumbo v2, "num_bathrooms"

    iget v3, p0, Lcom/airbnb/android/models/SearchInfo;->mNumBathrooms:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 608
    const-string/jumbo v3, "private_room"

    iget-boolean v2, p0, Lcom/airbnb/android/models/SearchInfo;->mIncludePrivateRoom:Z

    if-eqz v2, :cond_10f

    move v2, v6

    :goto_9d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 609
    const-string/jumbo v3, "shared_room"

    iget-boolean v2, p0, Lcom/airbnb/android/models/SearchInfo;->mIncludeSharedRoom:Z

    if-eqz v2, :cond_111

    move v2, v6

    :goto_ac
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 610
    const-string/jumbo v3, "entire_place"

    iget-boolean v2, p0, Lcom/airbnb/android/models/SearchInfo;->mIncludeEntirePlace:Z

    if-eqz v2, :cond_113

    move v2, v6

    :goto_bb
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 611
    const-string/jumbo v2, "instant_book"

    iget-boolean v3, p0, Lcom/airbnb/android/models/SearchInfo;->mIsInstantBookOnly:Z

    if-eqz v3, :cond_ca

    move v7, v6

    :cond_ca
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 614
    new-instance v0, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/airbnb/android/models/SearchInfo;->mAmenities:[Ljava/lang/Integer;

    if-eqz v2, :cond_115

    iget-object v2, p0, Lcom/airbnb/android/models/SearchInfo;->mAmenities:[Ljava/lang/Integer;

    array-length v2, v2

    if-lez v2, :cond_115

    iget-object v2, p0, Lcom/airbnb/android/models/SearchInfo;->mAmenities:[Ljava/lang/Integer;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_e2
    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 615
    .local v0, "jsonArray":Lorg/json/JSONArray;
    const-string/jumbo v3, "amenities"

    instance-of v2, v0, Lorg/json/JSONArray;

    if-nez v2, :cond_11b

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    :goto_f0
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string/jumbo v2, "db_version"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 617
    const-string/jumbo v2, "last_update"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 618
    return-object v1

    :cond_10c
    move-wide v2, v4

    .line 596
    goto/16 :goto_1e

    :cond_10f
    move v2, v7

    .line 608
    goto :goto_9d

    :cond_111
    move v2, v7

    .line 609
    goto :goto_ac

    :cond_113
    move v2, v7

    .line 610
    goto :goto_bb

    .line 614
    :cond_115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_e2

    .line 615
    .restart local v0    # "jsonArray":Lorg/json/JSONArray;
    :cond_11b
    check-cast v0, Lorg/json/JSONArray;

    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    goto :goto_f0
.end method

.method public getCurrencyType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mCurrencyType:Ljava/lang/String;

    return-object v0
.end method

.method public getGuestCount()I
    .registers 2

    .prologue
    .line 185
    iget v0, p0, Lcom/airbnb/android/models/SearchInfo;->mGuestCount:I

    return v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 429
    iget-wide v0, p0, Lcom/airbnb/android/models/SearchInfo;->mId:J

    return-wide v0
.end method

.method public getLmbLocation()Lcom/airbnb/android/models/AirLocation;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mLmbLocation:Lcom/airbnb/android/models/AirLocation;

    return-object v0
.end method

.method public getLocation()Lcom/google/android/gms/maps/model/LatLng;
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mLocation:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getLocationLatitude()D
    .registers 3

    .prologue
    .line 405
    iget-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mLocation:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    return-wide v0
.end method

.method public getLocationLongitude()D
    .registers 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mLocation:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    return-wide v0
.end method

.method public getMaxFilterPrice()I
    .registers 2

    .prologue
    .line 389
    iget v0, p0, Lcom/airbnb/android/models/SearchInfo;->mMaxFilterPrice:I

    return v0
.end method

.method public getMaxPrice()I
    .registers 2

    .prologue
    .line 329
    iget v0, p0, Lcom/airbnb/android/models/SearchInfo;->mMaxPrice:I

    return v0
.end method

.method public getMinFilterPrice()I
    .registers 2

    .prologue
    .line 381
    iget v0, p0, Lcom/airbnb/android/models/SearchInfo;->mMinFilterPrice:I

    return v0
.end method

.method public getMinPrice()I
    .registers 2

    .prologue
    .line 318
    iget v0, p0, Lcom/airbnb/android/models/SearchInfo;->mMinPrice:I

    return v0
.end method

.method public getNECorner()Lcom/google/android/gms/maps/model/LatLng;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mNE:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getNights()I
    .registers 8

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xb

    const/16 v4, 0xc

    const/4 v2, 0x0

    .line 622
    iget-object v3, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckinDate:Ljava/util/Calendar;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckoutDate:Ljava/util/Calendar;

    if-nez v3, :cond_10

    .line 637
    :cond_f
    :goto_f
    return v2

    .line 627
    :cond_10
    iget-object v3, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckinDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 628
    .local v0, "checkIn":Ljava/util/Calendar;
    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 629
    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 630
    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 632
    iget-object v3, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckoutDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 633
    .local v1, "checkOut":Ljava/util/Calendar;
    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 634
    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 635
    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 637
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airbnb/android/utils/DateHelper;->dayCount(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    goto :goto_f
.end method

.method public getNumBathrooms()I
    .registers 2

    .prologue
    .line 362
    iget v0, p0, Lcom/airbnb/android/models/SearchInfo;->mNumBathrooms:I

    return v0
.end method

.method public getNumBedrooms()I
    .registers 2

    .prologue
    .line 351
    iget v0, p0, Lcom/airbnb/android/models/SearchInfo;->mNumBedrooms:I

    return v0
.end method

.method public getNumBeds()I
    .registers 2

    .prologue
    .line 340
    iget v0, p0, Lcom/airbnb/android/models/SearchInfo;->mNumBeds:I

    return v0
.end method

.method public getPictureUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mPictureUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryParamsServerGaveUs()Lcom/airbnb/android/utils/Strap;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mQueryParamsFromServer:Lcom/airbnb/android/utils/Strap;

    return-object v0
.end method

.method public getSWCorner()Lcom/google/android/gms/maps/model/LatLng;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mSW:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getSearchTerm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mSearchTerm:Ljava/lang/String;

    return-object v0
.end method

.method public getSortType()Lcom/airbnb/android/models/SearchInfo$SortType;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mSortType:Lcom/airbnb/android/models/SearchInfo$SortType;

    return-object v0
.end method

.method public getTotalListings()I
    .registers 2

    .prologue
    .line 589
    iget v0, p0, Lcom/airbnb/android/models/SearchInfo;->mTotalListings:I

    return v0
.end method

.method public hashCode()I
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 485
    const/16 v0, 0x1f

    .line 486
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 487
    .local v1, "result":I
    iget-object v2, p0, Lcom/airbnb/android/models/SearchInfo;->mSearchTerm:Ljava/lang/String;

    if-nez v2, :cond_a3

    move v2, v3

    :goto_a
    add-int/lit8 v1, v2, 0x1f

    .line 488
    mul-int/lit8 v5, v1, 0x1f

    iget-object v2, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckinDate:Ljava/util/Calendar;

    if-nez v2, :cond_ab

    move v2, v3

    :goto_13
    add-int v1, v5, v2

    .line 489
    mul-int/lit8 v5, v1, 0x1f

    iget-object v2, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckoutDate:Ljava/util/Calendar;

    if-nez v2, :cond_b3

    move v2, v3

    :goto_1c
    add-int v1, v5, v2

    .line 490
    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Lcom/airbnb/android/models/SearchInfo;->mGuestCount:I

    add-int v1, v2, v5

    .line 491
    mul-int/lit8 v5, v1, 0x1f

    iget-object v2, p0, Lcom/airbnb/android/models/SearchInfo;->mLocation:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v2, :cond_bb

    move v2, v3

    :goto_2b
    add-int v1, v5, v2

    .line 494
    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Lcom/airbnb/android/models/SearchInfo;->mIncludePrivateRoom:Z

    if-eqz v2, :cond_c3

    move v2, v4

    :goto_34
    add-int v1, v5, v2

    .line 495
    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Lcom/airbnb/android/models/SearchInfo;->mIncludeSharedRoom:Z

    if-eqz v2, :cond_c6

    move v2, v4

    :goto_3d
    add-int v1, v5, v2

    .line 496
    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Lcom/airbnb/android/models/SearchInfo;->mIncludeEntirePlace:Z

    if-eqz v2, :cond_c9

    move v2, v4

    :goto_46
    add-int v1, v5, v2

    .line 497
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v5, p0, Lcom/airbnb/android/models/SearchInfo;->mIsInstantBookOnly:Z

    if-eqz v5, :cond_cc

    :goto_4e
    add-int v1, v2, v4

    .line 498
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/airbnb/android/models/SearchInfo;->mMinPrice:I

    add-int v1, v2, v4

    .line 499
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/airbnb/android/models/SearchInfo;->mMaxPrice:I

    add-int v1, v2, v4

    .line 500
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/airbnb/android/models/SearchInfo;->mNumBeds:I

    add-int v1, v2, v4

    .line 501
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/airbnb/android/models/SearchInfo;->mNumBedrooms:I

    add-int v1, v2, v4

    .line 502
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/airbnb/android/models/SearchInfo;->mNumBathrooms:I

    add-int v1, v2, v4

    .line 503
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/airbnb/android/models/SearchInfo;->mCurrencyType:Ljava/lang/String;

    if-nez v2, :cond_ce

    move v2, v3

    :goto_75
    add-int v1, v4, v2

    .line 504
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/airbnb/android/models/SearchInfo;->mMinFilterPrice:I

    add-int v1, v2, v4

    .line 505
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/airbnb/android/models/SearchInfo;->mMaxFilterPrice:I

    add-int v1, v2, v4

    .line 506
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/airbnb/android/models/SearchInfo;->mSW:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v2, :cond_d5

    move v2, v3

    :goto_8a
    add-int v1, v4, v2

    .line 507
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/airbnb/android/models/SearchInfo;->mNE:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v2, :cond_dc

    move v2, v3

    :goto_93
    add-int v1, v4, v2

    .line 508
    iget-object v2, p0, Lcom/airbnb/android/models/SearchInfo;->mAmenities:[Ljava/lang/Integer;

    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 509
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/airbnb/android/models/SearchInfo;->mAmenities:[Ljava/lang/Integer;

    if-nez v4, :cond_e3

    :goto_a0
    add-int v1, v2, v3

    .line 510
    return v1

    .line 487
    :cond_a3
    iget-object v2, p0, Lcom/airbnb/android/models/SearchInfo;->mSearchTerm:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_a

    .line 488
    :cond_ab
    iget-object v2, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckinDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->hashCode()I

    move-result v2

    goto/16 :goto_13

    .line 489
    :cond_b3
    iget-object v2, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckoutDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->hashCode()I

    move-result v2

    goto/16 :goto_1c

    .line 491
    :cond_bb
    iget-object v2, p0, Lcom/airbnb/android/models/SearchInfo;->mLocation:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/LatLng;->hashCode()I

    move-result v2

    goto/16 :goto_2b

    :cond_c3
    move v2, v3

    .line 494
    goto/16 :goto_34

    :cond_c6
    move v2, v3

    .line 495
    goto/16 :goto_3d

    :cond_c9
    move v2, v3

    .line 496
    goto/16 :goto_46

    :cond_cc
    move v4, v3

    .line 497
    goto :goto_4e

    .line 503
    :cond_ce
    iget-object v2, p0, Lcom/airbnb/android/models/SearchInfo;->mCurrencyType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_75

    .line 506
    :cond_d5
    iget-object v2, p0, Lcom/airbnb/android/models/SearchInfo;->mSW:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/LatLng;->hashCode()I

    move-result v2

    goto :goto_8a

    .line 507
    :cond_dc
    iget-object v2, p0, Lcom/airbnb/android/models/SearchInfo;->mNE:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/LatLng;->hashCode()I

    move-result v2

    goto :goto_93

    .line 509
    :cond_e3
    iget-object v3, p0, Lcom/airbnb/android/models/SearchInfo;->mAmenities:[Ljava/lang/Integer;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    goto :goto_a0
.end method

.method public includeEntirePlace()Z
    .registers 2

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mIncludeEntirePlace:Z

    return v0
.end method

.method public includePrivateRoom()Z
    .registers 2

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mIncludePrivateRoom:Z

    return v0
.end method

.method public includeSharedRoom()Z
    .registers 2

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mIncludeSharedRoom:Z

    return v0
.end method

.method public isChanged()Z
    .registers 2

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mIsDirty:Z

    return v0
.end method

.method public isInstantBookOnly()Z
    .registers 2

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mIsInstantBookOnly:Z

    return v0
.end method

.method public isLastMinuteOnly()Z
    .registers 2

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mIsLastMinuteOnly:Z

    return v0
.end method

.method public isPriceRangeMonthly()Z
    .registers 2

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mIsPriceRangeMonthly:Z

    return v0
.end method

.method public isSortType(Lcom/airbnb/android/models/SearchInfo$SortType;)Z
    .registers 3
    .param p1, "type"    # Lcom/airbnb/android/models/SearchInfo$SortType;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mSortType:Lcom/airbnb/android/models/SearchInfo$SortType;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mSortType:Lcom/airbnb/android/models/SearchInfo$SortType;

    if-ne v0, p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isUseDetailedFilters()Z
    .registers 2

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mUseDetailedFilters:Z

    return v0
.end method

.method public markNotChanged()V
    .registers 2

    .prologue
    .line 520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mIsDirty:Z

    .line 521
    return-void
.end method

.method public setAmenities([Ljava/lang/Integer;)V
    .registers 8
    .param p1, "amenities"    # [Ljava/lang/Integer;

    .prologue
    .line 240
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/Integer;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v3, :cond_15

    aget-object v0, v1, v2

    .line 241
    .local v0, "amId":Ljava/lang/Integer;
    if-nez v0, :cond_12

    .line 242
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "cannot have null amenity id"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 240
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 246
    .end local v0    # "amId":Ljava/lang/Integer;
    :cond_15
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 247
    iget-object v4, p0, Lcom/airbnb/android/models/SearchInfo;->mAmenities:[Ljava/lang/Integer;

    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 249
    iget-object v4, p0, Lcom/airbnb/android/models/SearchInfo;->mAmenities:[Ljava/lang/Integer;

    invoke-static {p1, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 250
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/airbnb/android/models/SearchInfo;->mIsDirty:Z

    .line 251
    iput-object p1, p0, Lcom/airbnb/android/models/SearchInfo;->mAmenities:[Ljava/lang/Integer;

    .line 253
    :cond_2a
    return-void
.end method

.method public setCheckinDate(Ljava/util/Calendar;)V
    .registers 3
    .param p1, "checkinDate"    # Ljava/util/Calendar;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckinDate:Ljava/util/Calendar;

    invoke-static {p1, v0}, Lcom/airbnb/android/utils/CalendarHelper;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mIsDirty:Z

    .line 165
    iput-object p1, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckinDate:Ljava/util/Calendar;

    .line 167
    :cond_d
    return-void
.end method

.method public setCheckoutDate(Ljava/util/Calendar;)V
    .registers 3
    .param p1, "checkoutDate"    # Ljava/util/Calendar;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckoutDate:Ljava/util/Calendar;

    invoke-static {p1, v0}, Lcom/airbnb/android/utils/CalendarHelper;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mIsDirty:Z

    .line 180
    iput-object p1, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckoutDate:Ljava/util/Calendar;

    .line 182
    :cond_d
    return-void
.end method

.method public setCurrencyType(Ljava/lang/String;)V
    .registers 2
    .param p1, "currencyType"    # Ljava/lang/String;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/airbnb/android/models/SearchInfo;->mCurrencyType:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public setGuestCount(I)V
    .registers 3
    .param p1, "guestCount"    # I

    .prologue
    .line 189
    iget v0, p0, Lcom/airbnb/android/models/SearchInfo;->mGuestCount:I

    if-eq p1, v0, :cond_9

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mIsDirty:Z

    .line 191
    iput p1, p0, Lcom/airbnb/android/models/SearchInfo;->mGuestCount:I

    .line 193
    :cond_9
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "id"    # J

    .prologue
    .line 433
    iput-wide p1, p0, Lcom/airbnb/android/models/SearchInfo;->mId:J

    .line 434
    return-void
.end method

.method public setIncludeEntirePlace(Z)V
    .registers 3
    .param p1, "includeEntirePlace"    # Z

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mIncludeEntirePlace:Z

    if-eq p1, v0, :cond_9

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mIsDirty:Z

    .line 313
    iput-boolean p1, p0, Lcom/airbnb/android/models/SearchInfo;->mIncludeEntirePlace:Z

    .line 315
    :cond_9
    return-void
.end method

.method public setIncludePrivateRoom(Z)V
    .registers 3
    .param p1, "includePrivateRoom"    # Z

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mIncludePrivateRoom:Z

    if-eq p1, v0, :cond_9

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mIsDirty:Z

    .line 270
    iput-boolean p1, p0, Lcom/airbnb/android/models/SearchInfo;->mIncludePrivateRoom:Z

    .line 272
    :cond_9
    return-void
.end method

.method public setIncludeSharedRoom(Z)V
    .registers 3
    .param p1, "includeSharedRoom"    # Z

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mIncludeSharedRoom:Z

    if-eq p1, v0, :cond_9

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mIsDirty:Z

    .line 281
    iput-boolean p1, p0, Lcom/airbnb/android/models/SearchInfo;->mIncludeSharedRoom:Z

    .line 283
    :cond_9
    return-void
.end method

.method public setIsInstantBookOnly(Z)V
    .registers 3
    .param p1, "instantBookOnly"    # Z

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mIsInstantBookOnly:Z

    if-eq p1, v0, :cond_9

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mIsDirty:Z

    .line 296
    iput-boolean p1, p0, Lcom/airbnb/android/models/SearchInfo;->mIsInstantBookOnly:Z

    .line 298
    :cond_9
    return-void
.end method

.method public setIsLastMinuteOnly(Z)V
    .registers 3
    .param p1, "lastMinuteOnly"    # Z

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mIsLastMinuteOnly:Z

    if-eq p1, v0, :cond_6

    .line 306
    iput-boolean p1, p0, Lcom/airbnb/android/models/SearchInfo;->mIsLastMinuteOnly:Z

    .line 308
    :cond_6
    return-void
.end method

.method public setIsPriceRangeMonthly(Z)V
    .registers 2
    .param p1, "isPriceRangeMonthly"    # Z

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/airbnb/android/models/SearchInfo;->mIsPriceRangeMonthly:Z

    .line 394
    return-void
.end method

.method public setLmbLocation(Lcom/airbnb/android/models/AirLocation;)V
    .registers 3
    .param p1, "lmbLocation"    # Lcom/airbnb/android/models/AirLocation;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/airbnb/android/models/SearchInfo;->mLmbLocation:Lcom/airbnb/android/models/AirLocation;

    .line 209
    invoke-virtual {p1}, Lcom/airbnb/android/models/AirLocation;->getSearchTerm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/SearchInfo;->setSearchTerm(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .registers 7
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 421
    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/SearchInfo;->setLocation(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 422
    return-void

    .line 421
    :cond_7
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    goto :goto_3
.end method

.method public setLocation(Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 2
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/airbnb/android/models/SearchInfo;->mLocation:Lcom/google/android/gms/maps/model/LatLng;

    .line 418
    return-void
.end method

.method public setMaxFilterPrice(I)V
    .registers 2
    .param p1, "maxFilterPrice"    # I

    .prologue
    .line 401
    iput p1, p0, Lcom/airbnb/android/models/SearchInfo;->mMaxFilterPrice:I

    .line 402
    return-void
.end method

.method public setMaxPrice(I)V
    .registers 3
    .param p1, "maxPrice"    # I

    .prologue
    .line 333
    iget v0, p0, Lcom/airbnb/android/models/SearchInfo;->mMaxPrice:I

    if-eq p1, v0, :cond_9

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mIsDirty:Z

    .line 335
    iput p1, p0, Lcom/airbnb/android/models/SearchInfo;->mMaxPrice:I

    .line 337
    :cond_9
    return-void
.end method

.method public setMinFilterPrice(I)V
    .registers 2
    .param p1, "minFilterPrice"    # I

    .prologue
    .line 385
    iput p1, p0, Lcom/airbnb/android/models/SearchInfo;->mMinFilterPrice:I

    .line 386
    return-void
.end method

.method public setMinPrice(I)V
    .registers 3
    .param p1, "minPrice"    # I

    .prologue
    .line 322
    iget v0, p0, Lcom/airbnb/android/models/SearchInfo;->mMinPrice:I

    if-eq p1, v0, :cond_9

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mIsDirty:Z

    .line 324
    iput p1, p0, Lcom/airbnb/android/models/SearchInfo;->mMinPrice:I

    .line 326
    :cond_9
    return-void
.end method

.method public setNECorner(Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 2
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/airbnb/android/models/SearchInfo;->mNE:Lcom/google/android/gms/maps/model/LatLng;

    .line 230
    return-void
.end method

.method public setNumBathrooms(I)V
    .registers 3
    .param p1, "numBathrooms"    # I

    .prologue
    .line 366
    iget v0, p0, Lcom/airbnb/android/models/SearchInfo;->mNumBathrooms:I

    if-eq p1, v0, :cond_9

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mIsDirty:Z

    .line 368
    iput p1, p0, Lcom/airbnb/android/models/SearchInfo;->mNumBathrooms:I

    .line 370
    :cond_9
    return-void
.end method

.method public setNumBedrooms(I)V
    .registers 3
    .param p1, "numBedrooms"    # I

    .prologue
    .line 355
    iget v0, p0, Lcom/airbnb/android/models/SearchInfo;->mNumBedrooms:I

    if-eq p1, v0, :cond_9

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mIsDirty:Z

    .line 357
    iput p1, p0, Lcom/airbnb/android/models/SearchInfo;->mNumBedrooms:I

    .line 359
    :cond_9
    return-void
.end method

.method public setNumBeds(I)V
    .registers 3
    .param p1, "numBeds"    # I

    .prologue
    .line 344
    iget v0, p0, Lcom/airbnb/android/models/SearchInfo;->mNumBeds:I

    if-eq p1, v0, :cond_9

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/models/SearchInfo;->mIsDirty:Z

    .line 346
    iput p1, p0, Lcom/airbnb/android/models/SearchInfo;->mNumBeds:I

    .line 348
    :cond_9
    return-void
.end method

.method public setPictureUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/airbnb/android/models/SearchInfo;->mPictureUrl:Ljava/lang/String;

    .line 578
    return-void
.end method

.method public setQueryParamsFromServer(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p1, "strap"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/airbnb/android/models/SearchInfo;->mQueryParamsFromServer:Lcom/airbnb/android/utils/Strap;

    .line 78
    const-string/jumbo v2, "checkin"

    invoke-direct {p0, v2, p1}, Lcom/airbnb/android/models/SearchInfo;->getCalendarFromStrap(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Ljava/util/Calendar;

    move-result-object v0

    .line 79
    .local v0, "checkIn":Ljava/util/Calendar;
    if-eqz v0, :cond_e

    .line 80
    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/SearchInfo;->setCheckinDate(Ljava/util/Calendar;)V

    .line 83
    :cond_e
    const-string/jumbo v2, "checkout"

    invoke-direct {p0, v2, p1}, Lcom/airbnb/android/models/SearchInfo;->getCalendarFromStrap(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Ljava/util/Calendar;

    move-result-object v1

    .line 84
    .local v1, "checkOut":Ljava/util/Calendar;
    if-eqz v1, :cond_1a

    .line 85
    invoke-virtual {p0, v1}, Lcom/airbnb/android/models/SearchInfo;->setCheckoutDate(Ljava/util/Calendar;)V

    .line 87
    :cond_1a
    return-void
.end method

.method public setSWCorner(Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 2
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/airbnb/android/models/SearchInfo;->mSW:Lcom/google/android/gms/maps/model/LatLng;

    .line 222
    return-void
.end method

.method public setSearchTerm(Ljava/lang/String;)V
    .registers 2
    .param p1, "searchTerm"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/airbnb/android/models/SearchInfo;->mSearchTerm:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setSortType(Lcom/airbnb/android/models/SearchInfo$SortType;)V
    .registers 2
    .param p1, "type"    # Lcom/airbnb/android/models/SearchInfo$SortType;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/airbnb/android/models/SearchInfo;->mSortType:Lcom/airbnb/android/models/SearchInfo$SortType;

    .line 197
    return-void
.end method

.method public setTotalListings(I)V
    .registers 2
    .param p1, "listings"    # I

    .prologue
    .line 585
    iput p1, p0, Lcom/airbnb/android/models/SearchInfo;->mTotalListings:I

    .line 586
    return-void
.end method

.method public setUseDetailedFilters(Z)V
    .registers 2
    .param p1, "useDetailedFilters"    # Z

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/airbnb/android/models/SearchInfo;->mUseDetailedFilters:Z

    .line 261
    return-void
.end method

.method public updateFromCursor(Landroid/database/Cursor;Landroid/content/Context;)V
    .registers 15
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/airbnb/android/models/SearchInfo;->clearAllFilters()V

    .line 529
    const-string/jumbo v10, "_id"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/airbnb/android/models/SearchInfo;->mId:J

    .line 530
    const-string/jumbo v10, "query"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/airbnb/android/models/SearchInfo;->mSearchTerm:Ljava/lang/String;

    .line 531
    const-string/jumbo v10, "checkin_date"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 532
    .local v1, "checkIn":J
    const-wide/16 v10, 0x0

    cmp-long v10, v1, v10

    if-lez v10, :cond_34

    .line 533
    invoke-static {v1, v2}, Lcom/airbnb/android/utils/DateHelper;->getDateAsCalendar(J)Ljava/util/Calendar;

    move-result-object v10

    iput-object v10, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckinDate:Ljava/util/Calendar;

    .line 535
    :cond_34
    const-string/jumbo v10, "checkout_date"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 536
    .local v3, "checkOut":J
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-lez v10, :cond_4b

    .line 537
    invoke-static {v3, v4}, Lcom/airbnb/android/utils/DateHelper;->getDateAsCalendar(J)Ljava/util/Calendar;

    move-result-object v10

    iput-object v10, p0, Lcom/airbnb/android/models/SearchInfo;->mCheckoutDate:Ljava/util/Calendar;

    .line 539
    :cond_4b
    const-string/jumbo v10, "num_guests"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, p0, Lcom/airbnb/android/models/SearchInfo;->mGuestCount:I

    .line 540
    const-string/jumbo v10, "min_price"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 541
    .local v9, "minPrice":I
    if-lez v9, :cond_67

    .line 542
    iput v9, p0, Lcom/airbnb/android/models/SearchInfo;->mMinPrice:I

    .line 544
    :cond_67
    const-string/jumbo v10, "max_price"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 545
    .local v8, "maxPrice":I
    if-lez v8, :cond_76

    .line 546
    iput v8, p0, Lcom/airbnb/android/models/SearchInfo;->mMaxPrice:I

    .line 548
    :cond_76
    const-string/jumbo v10, "currency"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 549
    .local v5, "currency":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_89

    .line 550
    iput-object v5, p0, Lcom/airbnb/android/models/SearchInfo;->mCurrencyType:Ljava/lang/String;

    .line 553
    :cond_89
    const-string/jumbo v10, "num_beds"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, p0, Lcom/airbnb/android/models/SearchInfo;->mNumBeds:I

    .line 554
    const-string/jumbo v10, "num_bedrooms"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, p0, Lcom/airbnb/android/models/SearchInfo;->mNumBedrooms:I

    .line 555
    const-string/jumbo v10, "num_bathrooms"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, p0, Lcom/airbnb/android/models/SearchInfo;->mNumBathrooms:I

    .line 556
    const-string/jumbo v10, "private_room"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_125

    const/4 v10, 0x1

    :goto_be
    iput-boolean v10, p0, Lcom/airbnb/android/models/SearchInfo;->mIncludePrivateRoom:Z

    .line 557
    const-string/jumbo v10, "shared_room"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_127

    const/4 v10, 0x1

    :goto_ce
    iput-boolean v10, p0, Lcom/airbnb/android/models/SearchInfo;->mIncludeSharedRoom:Z

    .line 558
    const-string/jumbo v10, "entire_place"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_129

    const/4 v10, 0x1

    :goto_de
    iput-boolean v10, p0, Lcom/airbnb/android/models/SearchInfo;->mIncludeEntirePlace:Z

    .line 559
    const-string/jumbo v10, "instant_book"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_12b

    const/4 v10, 0x1

    :goto_ee
    iput-boolean v10, p0, Lcom/airbnb/android/models/SearchInfo;->mIsInstantBookOnly:Z

    .line 561
    const-string/jumbo v10, "amenities"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "amenitiesJson":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12e

    .line 565
    :try_start_101
    new-instance v10, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 566
    .local v7, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v10, v10, [Ljava/lang/Integer;

    iput-object v10, p0, Lcom/airbnb/android/models/SearchInfo;->mAmenities:[Ljava/lang/Integer;

    .line 567
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_110
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v6, v10, :cond_12e

    .line 568
    iget-object v10, p0, Lcom/airbnb/android/models/SearchInfo;->mAmenities:[Ljava/lang/Integer;

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6
    :try_end_122
    .catch Lorg/json/JSONException; {:try_start_101 .. :try_end_122} :catch_12d

    .line 567
    add-int/lit8 v6, v6, 0x1

    goto :goto_110

    .line 556
    .end local v0    # "amenitiesJson":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    :cond_125
    const/4 v10, 0x0

    goto :goto_be

    .line 557
    :cond_127
    const/4 v10, 0x0

    goto :goto_ce

    .line 558
    :cond_129
    const/4 v10, 0x0

    goto :goto_de

    .line 559
    :cond_12b
    const/4 v10, 0x0

    goto :goto_ee

    .line 570
    .restart local v0    # "amenitiesJson":Ljava/lang/String;
    :catch_12d
    move-exception v10

    .line 573
    :cond_12e
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/airbnb/android/models/SearchInfo;->mUseDetailedFilters:Z

    .line 574
    return-void
.end method
