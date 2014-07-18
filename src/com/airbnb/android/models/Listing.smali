.class public Lcom/airbnb/android/models/Listing;
.super Lcom/airbnb/android/models/_Listing;
.source "Listing.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/Photoable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/models/Listing$ListingUpdateReceiver;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHasPets:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 286
    new-instance v0, Lcom/airbnb/android/models/Listing$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/Listing$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/Listing;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/airbnb/android/models/_Listing;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/models/Listing;->mHasPets:Ljava/lang/Boolean;

    .line 277
    return-void
.end method


# virtual methods
.method public addCollectionId(J)V
    .registers 7
    .param p1, "collectionId"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 233
    iget-object v2, p0, Lcom/airbnb/android/models/Listing;->mCollectionIds:[J

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/airbnb/android/models/Listing;->mCollectionIds:[J

    array-length v2, v2

    if-nez v2, :cond_12

    .line 234
    :cond_9
    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    iput-object v2, p0, Lcom/airbnb/android/models/Listing;->mCollectionIds:[J

    .line 241
    :goto_11
    return-void

    .line 236
    :cond_12
    iget-object v2, p0, Lcom/airbnb/android/models/Listing;->mCollectionIds:[J

    array-length v0, v2

    .line 237
    .local v0, "collectionIdsCount":I
    add-int/lit8 v1, v0, 0x1

    .line 238
    .local v1, "newCollectionIdIndex":I
    iget-object v2, p0, Lcom/airbnb/android/models/Listing;->mCollectionIds:[J

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/models/Listing;->mCollectionIds:[J

    .line 239
    iget-object v2, p0, Lcom/airbnb/android/models/Listing;->mCollectionIds:[J

    aput-wide p1, v2, v0

    goto :goto_11
.end method

.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 261
    if-ne p0, p1, :cond_5

    .line 274
    :cond_4
    :goto_4
    return v1

    .line 264
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 265
    goto :goto_4

    .line 267
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 268
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 270
    check-cast v0, Lcom/airbnb/android/models/Listing;

    .line 271
    .local v0, "other":Lcom/airbnb/android/models/Listing;
    iget-wide v3, p0, Lcom/airbnb/android/models/Listing;->mId:J

    iget-wide v5, v0, Lcom/airbnb/android/models/Listing;->mId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 272
    goto :goto_4
.end method

.method public bridge synthetic getAccess()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getAccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAmenities()Ljava/util/List;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getAmenities()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAmenitiesIds()[I
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getAmenitiesIds()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getApartment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getApartment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAutoPricing()Lcom/airbnb/android/models/AutoPricing;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getAutoPricing()Lcom/airbnb/android/models/AutoPricing;

    move-result-object v0

    return-object v0
.end method

.method public getAutoPricingCleaning()I
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/airbnb/android/models/Listing;->mAutoPricing:Lcom/airbnb/android/models/AutoPricing;

    if-nez v0, :cond_6

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/airbnb/android/models/Listing;->mAutoPricing:Lcom/airbnb/android/models/AutoPricing;

    iget v0, v0, Lcom/airbnb/android/models/AutoPricing;->mCleaning:I

    goto :goto_5
.end method

.method public getAutoPricingDaily()I
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/models/Listing;->mAutoPricing:Lcom/airbnb/android/models/AutoPricing;

    if-nez v0, :cond_6

    .line 41
    const/4 v0, 0x0

    .line 43
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/airbnb/android/models/Listing;->mAutoPricing:Lcom/airbnb/android/models/AutoPricing;

    iget v0, v0, Lcom/airbnb/android/models/AutoPricing;->mDaily:I

    goto :goto_5
.end method

.method public getAutoPricingMonthly()I
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/airbnb/android/models/Listing;->mAutoPricing:Lcom/airbnb/android/models/AutoPricing;

    if-nez v0, :cond_6

    .line 57
    const/4 v0, 0x0

    .line 59
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/airbnb/android/models/Listing;->mAutoPricing:Lcom/airbnb/android/models/AutoPricing;

    iget v0, v0, Lcom/airbnb/android/models/AutoPricing;->mMonthly:I

    goto :goto_5
.end method

.method public getAutoPricingWeekly()I
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/airbnb/android/models/Listing;->mAutoPricing:Lcom/airbnb/android/models/AutoPricing;

    if-nez v0, :cond_6

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/airbnb/android/models/Listing;->mAutoPricing:Lcom/airbnb/android/models/AutoPricing;

    iget v0, v0, Lcom/airbnb/android/models/AutoPricing;->mWeekly:I

    goto :goto_5
.end method

.method public bridge synthetic getBathrooms()F
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getBathrooms()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getBedCount()I
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getBedCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBedType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getBedType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBedTypeCategory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getBedTypeCategory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBedrooms()I
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getBedrooms()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCancellationPolicy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getCancellationPolicy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCancellationPolicyKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getCancellationPolicyKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCheckInTime()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getCheckInTime()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCheckOutTime()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getCheckOutTime()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getCity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCleaningFee()I
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getCleaningFee()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCollectionIds()[J
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getCollectionIds()[J

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCountryCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDirections()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getDirections()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDistance()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getDistance()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getExtraGuestPrice()I
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getExtraGuestPrice()I

    move-result v0

    return v0
.end method

.method public getFormattedAddress()Ljava/lang/String;
    .registers 3
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getStreetAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 183
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getStreetAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_1c
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getApartment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 187
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getApartment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_33
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 192
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_4a
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 196
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_61
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getZipCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getZipCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_7b
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_92

    .line 204
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getGuestsIncluded()I
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getGuestsIncluded()I

    move-result v0

    return v0
.end method

.method public getHasSetLocation()Z
    .registers 2

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/airbnb/android/models/Listing;->mLocationExact:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/airbnb/android/models/Listing;->mUserDefinedLocation:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic getHost()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHouseManual()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getHouseManual()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHouseRules()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getHouseRules()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()J
    .registers 3

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInstantBookAdvanceNotice()Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;
    .registers 3

    .prologue
    .line 226
    iget-object v1, p0, Lcom/airbnb/android/models/Listing;->mInstantBookLeadTimeHours:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->getTypeFromKey(I)Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    move-result-object v0

    .line 227
    .local v0, "notice":Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;
    if-eqz v0, :cond_d

    .end local v0    # "notice":Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;
    :goto_c
    return-object v0

    .restart local v0    # "notice":Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;
    :cond_d
    sget-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->sDefault:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    goto :goto_c
.end method

.method public bridge synthetic getInstantBookLeadTimeHours()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getInstantBookLeadTimeHours()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInstantBookingVisibility()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getInstantBookingVisibility()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInteraction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getInteraction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLatitude()D
    .registers 3

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getListing()Lcom/airbnb/android/models/Listing;
    .registers 5

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    .end local p0    # "this":Lcom/airbnb/android/models/Listing;
    :goto_a
    return-object p0

    .restart local p0    # "this":Lcom/airbnb/android/models/Listing;
    :cond_b
    iget-object p0, p0, Lcom/airbnb/android/models/Listing;->mListing:Lcom/airbnb/android/models/Listing;

    goto :goto_a
.end method

.method public bridge synthetic getListingCleaningFeeNative()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getListingCleaningFeeNative()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getListingMonthlyPriceNative()I
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getListingMonthlyPriceNative()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getListingNativeCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getListingNativeCurrency()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getListingPriceForExtraPersonNative()I
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getListingPriceForExtraPersonNative()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getListingPriceNative()I
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getListingPriceNative()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getListingSecurityDepositNative()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getListingSecurityDepositNative()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getListingStatusAndColor(Landroid/content/Context;)Landroid/util/Pair;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 308
    .local v0, "r":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->isListed()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 309
    new-instance v1, Landroid/util/Pair;

    const v2, 0x7f0e0515

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0028

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 313
    :goto_21
    return-object v1

    .line 310
    :cond_22
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getLocalStepsRemaining()I

    move-result v1

    if-lez v1, :cond_40

    .line 311
    new-instance v1, Landroid/util/Pair;

    const v2, 0x7f0e0364

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0013

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_21

    .line 313
    :cond_40
    new-instance v1, Landroid/util/Pair;

    const v2, 0x7f0e0518

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0014

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_21
.end method

.method public bridge synthetic getListingWeekendPriceNative()I
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getListingWeekendPriceNative()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getListingWeeklyPriceNative()I
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getListingWeeklyPriceNative()I

    move-result v0

    return v0
.end method

.method public getLocalStepsRemaining()I
    .registers 3

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 150
    const/4 v0, 0x0

    .line 175
    :cond_7
    :goto_7
    return v0

    .line 153
    :cond_8
    const/4 v0, 0x0

    .line 155
    .local v0, "mStepsRemaining":I
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 156
    add-int/lit8 v0, v0, 0x1

    .line 159
    :cond_15
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 160
    add-int/lit8 v0, v0, 0x1

    .line 163
    :cond_21
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getPictureCount()I

    move-result v1

    if-nez v1, :cond_29

    .line 164
    add-int/lit8 v0, v0, 0x1

    .line 167
    :cond_29
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getHasSetLocation()Z

    move-result v1

    if-nez v1, :cond_31

    .line 168
    add-int/lit8 v0, v0, 0x1

    .line 171
    :cond_31
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getListingPriceNative()I

    move-result v1

    if-nez v1, :cond_7

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public getLocation()Ljava/lang/String;
    .registers 6
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .prologue
    .line 121
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    const v1, 0x7f0e03de

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/airbnb/android/models/Listing;->mCity:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/airbnb/android/models/Listing;->mCountry:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/AirbnbApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLongitude()D
    .registers 3

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getMaxNights()I
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getMaxNights()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinNights()I
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getMinNights()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMonthlyPriceNative()I
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getMonthlyPriceNative()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNativeCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getNativeCurrency()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNeighborhood()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getNeighborhood()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNeighborhoodOverview()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getNeighborhoodOverview()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNotes()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getNotes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumReviewsText()Ljava/lang/CharSequence;
    .registers 7

    .prologue
    .line 321
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 322
    .local v0, "r":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getReviewsCount()I

    move-result v1

    .line 323
    .local v1, "reviewCount":I
    const v3, 0x7f0c0013

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-le v1, v3, :cond_2a

    const v3, 0x7f0e0576

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "reviewCountText":Ljava/lang/String;
    :goto_1c
    const v3, 0x7f0d0022

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 323
    .end local v2    # "reviewCountText":Ljava/lang/String;
    :cond_2a
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1c
.end method

.method public getNumberAmenitiesAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "defaultString"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/airbnb/android/models/Listing;->mAmenitiesIds:[I

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/airbnb/android/models/Listing;->mAmenitiesIds:[I

    array-length v0, v0

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/airbnb/android/models/Listing;->mAmenitiesIds:[I

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "defaultString":Ljava/lang/String;
    :cond_10
    return-object p1
.end method

.method public bridge synthetic getPersonCapacity()I
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getPersonCapacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPhotos()Ljava/util/List;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getPhotos()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPictureCount()I
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getPictureCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPictureUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getPictureUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPictureUrls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/airbnb/android/models/Listing;->mPictureUrls:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/airbnb/android/models/Listing;->mPictureUrls:Ljava/util/List;

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_6
.end method

.method public bridge synthetic getPrice()D
    .registers 3

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getPrice()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getPriceFormatted()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getPriceFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPriceNative()I
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getPriceNative()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getProPhotoStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getProPhotoStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPropertyType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getPropertyType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPropertyTypeId()I
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getPropertyTypeId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPublicAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getPublicAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRecentReview()Lcom/airbnb/android/models/Review;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getRecentReview()Lcom/airbnb/android/models/Review;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReviewsCount()I
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getReviewsCount()I

    move-result v0

    return v0
.end method

.method public getRoomType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 334
    iget-object v1, p0, Lcom/airbnb/android/models/Listing;->mRoomTypeKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->getTypeFromKey(Ljava/lang/String;)Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    move-result-object v0

    .line 335
    .local v0, "type":Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;
    if-eqz v0, :cond_13

    .line 336
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v1

    iget v2, v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->mTitleId:I

    invoke-virtual {v1, v2}, Lcom/airbnb/android/AirbnbApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 338
    :goto_12
    return-object v1

    :cond_13
    iget-object v1, p0, Lcom/airbnb/android/models/Listing;->mRoomType:Ljava/lang/String;

    goto :goto_12
.end method

.method public bridge synthetic getRoomTypeKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getRoomTypeKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecurityDeposit()I
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getSecurityDeposit()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSmartLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getSmartLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSpace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getSpace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSpecialOffer()Lcom/airbnb/android/models/SpecialOffer;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getSpecialOffer()Lcom/airbnb/android/models/SpecialOffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSquareFeet()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getSquareFeet()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStarRating()F
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getStarRating()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStepsRemaining()I
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getStepsRemaining()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getStreetAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getStreetAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSummary()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/airbnb/android/models/Listing;->mThumbnailUrl:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/android/models/Listing;->mThumbnailUrl:Ljava/lang/String;

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 100
    :cond_f
    const/4 v0, 0x0

    .line 102
    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/airbnb/android/models/Listing;->mThumbnailUrl:Ljava/lang/String;

    goto :goto_10
.end method

.method public getThumbnailUrls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/airbnb/android/models/Listing;->mThumbnailUrls:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/airbnb/android/models/Listing;->mThumbnailUrls:Ljava/util/List;

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_6
.end method

.method public bridge synthetic getTransit()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getTransit()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserId()J
    .registers 3

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getUserId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getWeekendPrice()I
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getWeekendPrice()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWeeklyPriceNative()I
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getWeeklyPriceNative()I

    move-result v0

    return v0
.end method

.method public getWhoCanBookInstantly()Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    .registers 3

    .prologue
    .line 221
    iget-object v1, p0, Lcom/airbnb/android/models/Listing;->mInstantBookingVisibility:Ljava/lang/String;

    invoke-static {v1}, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->getTypeFromKey(Ljava/lang/String;)Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    move-result-object v0

    .line 222
    .local v0, "visibility":Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    if-eqz v0, :cond_9

    .end local v0    # "visibility":Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    :goto_8
    return-object v0

    .restart local v0    # "visibility":Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    :cond_9
    sget-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->sDefault:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    goto :goto_8
.end method

.method public bridge synthetic getZipCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->getZipCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hasBeenListed()Z
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->hasBeenListed()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasClosedInstantBookFtue()Z
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->hasClosedInstantBookFtue()Z

    move-result v0

    return v0
.end method

.method public hasPets()Z
    .registers 7

    .prologue
    .line 125
    iget-object v5, p0, Lcom/airbnb/android/models/Listing;->mHasPets:Ljava/lang/Boolean;

    if-eqz v5, :cond_b

    .line 126
    iget-object v5, p0, Lcom/airbnb/android/models/Listing;->mHasPets:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 137
    :goto_a
    return v5

    .line 129
    :cond_b
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 130
    .local v0, "amenities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getAmenitiesIds()[I

    move-result-object v2

    .local v2, "arr$":[I
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_16
    if-ge v3, v4, :cond_24

    aget v1, v2, v3

    .line 131
    .local v1, "amenityId":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 133
    .end local v1    # "amenityId":I
    :cond_24
    sget-object v5, Lcom/airbnb/android/models/Amenities;->HasPets:Lcom/airbnb/android/models/Amenities;

    iget v5, v5, Lcom/airbnb/android/models/Amenities;->mId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5c

    sget-object v5, Lcom/airbnb/android/models/Amenities;->HasPetCats:Lcom/airbnb/android/models/Amenities;

    iget v5, v5, Lcom/airbnb/android/models/Amenities;->mId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5c

    sget-object v5, Lcom/airbnb/android/models/Amenities;->HasPetDogs:Lcom/airbnb/android/models/Amenities;

    iget v5, v5, Lcom/airbnb/android/models/Amenities;->mId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5c

    sget-object v5, Lcom/airbnb/android/models/Amenities;->HasPetOther:Lcom/airbnb/android/models/Amenities;

    iget v5, v5, Lcom/airbnb/android/models/Amenities;->mId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    :cond_5c
    const/4 v5, 0x1

    :goto_5d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/Listing;->mHasPets:Ljava/lang/Boolean;

    .line 137
    iget-object v5, p0, Lcom/airbnb/android/models/Listing;->mHasPets:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_a

    .line 133
    :cond_6a
    const/4 v5, 0x0

    goto :goto_5d
.end method

.method public bridge synthetic hasSimplifiedBooking()Z
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->hasSimplifiedBooking()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 8

    .prologue
    .line 253
    const/16 v0, 0x1f

    .line 254
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 255
    .local v1, "result":I
    iget-wide v2, p0, Lcom/airbnb/android/models/Listing;->mId:J

    iget-wide v4, p0, Lcom/airbnb/android/models/Listing;->mId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 256
    return v1
.end method

.method public inWishList()Z
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/airbnb/android/models/Listing;->mCollectionIds:[J

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/airbnb/android/models/Listing;->mCollectionIds:[J

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public bridge synthetic isDoubleBlindReviews()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->isDoubleBlindReviews()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isInCtaCopyExperiment()Z
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->isInCtaCopyExperiment()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInstantBookEligible()Z
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->isInstantBookEligible()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInstantBookable()Z
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->isInstantBookable()Z

    move-result v0

    return v0
.end method

.method public isInstantBookableBySomeone()Z
    .registers 3

    .prologue
    .line 216
    iget-object v1, p0, Lcom/airbnb/android/models/Listing;->mInstantBookingVisibility:Ljava/lang/String;

    invoke-static {v1}, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->getTypeFromKey(Ljava/lang/String;)Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    move-result-object v0

    .line 217
    .local v0, "visibility":Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    if-eqz v0, :cond_12

    sget-object v1, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->Off:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public bridge synthetic isListed()Z
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->isListed()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLocationExact()Z
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->isLocationExact()Z

    move-result v0

    return v0
.end method

.method public isMine(Landroid/content/Context;)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    invoke-static {p1}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 142
    .local v0, "current":Lcom/airbnb/android/models/User;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getUserId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_18

    .line 143
    const/4 v1, 0x1

    .line 145
    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public bridge synthetic isPriceMonthly()Z
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->isPriceMonthly()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isUserDefinedLocation()Z
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/airbnb/android/models/_Listing;->isUserDefinedLocation()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setAccess(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setAccess(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setAddress(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setAmenities(Ljava/util/List;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setAmenities(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setAmenitiesIds([I)V
    .registers 2
    .param p1, "x0"    # [I

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setAmenitiesIds([I)V

    return-void
.end method

.method public bridge synthetic setApartment(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setApartment(Ljava/lang/String;)V

    return-void
.end method

.method public setAutoPricing(Lcom/airbnb/android/models/AutoPricing;)V
    .registers 3
    .param p1, "value"    # Lcom/airbnb/android/models/AutoPricing;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ap_pricing"
    .end annotation

    .prologue
    .line 80
    if-nez p1, :cond_a

    .line 81
    new-instance v0, Lcom/airbnb/android/models/AutoPricing;

    invoke-direct {v0}, Lcom/airbnb/android/models/AutoPricing;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/models/Listing;->mAutoPricing:Lcom/airbnb/android/models/AutoPricing;

    .line 85
    :goto_9
    return-void

    .line 83
    :cond_a
    iput-object p1, p0, Lcom/airbnb/android/models/Listing;->mAutoPricing:Lcom/airbnb/android/models/AutoPricing;

    goto :goto_9
.end method

.method public bridge synthetic setBathrooms(F)V
    .registers 2
    .param p1, "x0"    # F

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setBathrooms(F)V

    return-void
.end method

.method public bridge synthetic setBedCount(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setBedCount(I)V

    return-void
.end method

.method public bridge synthetic setBedType(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setBedType(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setBedTypeCategory(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setBedTypeCategory(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setBedrooms(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setBedrooms(I)V

    return-void
.end method

.method public bridge synthetic setCancellationPolicy(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setCancellationPolicy(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCancellationPolicyKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setCancellationPolicyKey(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCheckInTime(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Integer;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setCheckInTime(Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic setCheckOutTime(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Integer;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setCheckOutTime(Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic setCity(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setCity(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCleaningFee(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setCleaningFee(I)V

    return-void
.end method

.method public bridge synthetic setCollectionIds([J)V
    .registers 2
    .param p1, "x0"    # [J

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setCollectionIds([J)V

    return-void
.end method

.method public bridge synthetic setCountry(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setCountry(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCountryCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setCountryCode(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDirections(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setDirections(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDistance(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setDistance(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDoubleBlindReviews(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Boolean;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setDoubleBlindReviews(Ljava/lang/Boolean;)V

    return-void
.end method

.method public bridge synthetic setExtraGuestPrice(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setExtraGuestPrice(I)V

    return-void
.end method

.method public bridge synthetic setGuestsIncluded(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setGuestsIncluded(I)V

    return-void
.end method

.method public bridge synthetic setHasBeenListed(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setHasBeenListed(Z)V

    return-void
.end method

.method public bridge synthetic setHasClosedInstantBookFtue(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setHasClosedInstantBookFtue(Z)V

    return-void
.end method

.method public bridge synthetic setHasSimplifiedBooking(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setHasSimplifiedBooking(Z)V

    return-void
.end method

.method public setHost(Lcom/airbnb/android/requests/Wrappers$UserWrapper;)V
    .registers 3
    .param p1, "userWrapper"    # Lcom/airbnb/android/requests/Wrappers$UserWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user"
    .end annotation

    .prologue
    .line 283
    iget-object v0, p1, Lcom/airbnb/android/requests/Wrappers$UserWrapper;->user:Lcom/airbnb/android/models/User;

    iput-object v0, p0, Lcom/airbnb/android/models/Listing;->mHost:Lcom/airbnb/android/models/User;

    .line 284
    return-void
.end method

.method public bridge synthetic setHouseManual(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setHouseManual(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setHouseRules(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setHouseRules(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_Listing;->setId(J)V

    return-void
.end method

.method public bridge synthetic setInCtaCopyExperiment(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setInCtaCopyExperiment(Z)V

    return-void
.end method

.method public bridge synthetic setInstantBookEligible(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setInstantBookEligible(Z)V

    return-void
.end method

.method public bridge synthetic setInstantBookLeadTimeHours(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Integer;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setInstantBookLeadTimeHours(Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic setInstantBookable(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setInstantBookable(Z)V

    return-void
.end method

.method public bridge synthetic setInstantBookingVisibility(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setInstantBookingVisibility(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setInteraction(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setInteraction(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setIsPriceMonthly(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setIsPriceMonthly(Z)V

    return-void
.end method

.method public bridge synthetic setLatitude(D)V
    .registers 3
    .param p1, "x0"    # D

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_Listing;->setLatitude(D)V

    return-void
.end method

.method public bridge synthetic setListed(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setListed(Z)V

    return-void
.end method

.method public bridge synthetic setListing(Lcom/airbnb/android/models/Listing;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setListing(Lcom/airbnb/android/models/Listing;)V

    return-void
.end method

.method public bridge synthetic setListingCleaningFeeNative(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Integer;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setListingCleaningFeeNative(Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic setListingMonthlyPriceNative(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setListingMonthlyPriceNative(I)V

    return-void
.end method

.method public bridge synthetic setListingNativeCurrency(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setListingNativeCurrency(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setListingPriceForExtraPersonNative(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setListingPriceForExtraPersonNative(I)V

    return-void
.end method

.method public bridge synthetic setListingPriceNative(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setListingPriceNative(I)V

    return-void
.end method

.method public bridge synthetic setListingSecurityDepositNative(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Integer;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setListingSecurityDepositNative(Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic setListingWeekendPriceNative(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setListingWeekendPriceNative(I)V

    return-void
.end method

.method public bridge synthetic setListingWeeklyPriceNative(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setListingWeeklyPriceNative(I)V

    return-void
.end method

.method public bridge synthetic setLocationExact(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setLocationExact(Z)V

    return-void
.end method

.method public bridge synthetic setLongitude(D)V
    .registers 3
    .param p1, "x0"    # D

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_Listing;->setLongitude(D)V

    return-void
.end method

.method public bridge synthetic setMaxNights(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setMaxNights(I)V

    return-void
.end method

.method public bridge synthetic setMinNights(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setMinNights(I)V

    return-void
.end method

.method public bridge synthetic setMonthlyPriceNative(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setMonthlyPriceNative(I)V

    return-void
.end method

.method public bridge synthetic setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setNativeCurrency(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setNativeCurrency(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setNeighborhood(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setNeighborhood(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setNeighborhoodOverview(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setNeighborhoodOverview(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setNotes(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setNotes(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPersonCapacity(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setPersonCapacity(I)V

    return-void
.end method

.method public bridge synthetic setPhotos(Ljava/util/List;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setPhotos(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setPictureCount(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setPictureCount(I)V

    return-void
.end method

.method public bridge synthetic setPictureUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setPictureUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPictureUrls(Ljava/util/List;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setPictureUrls(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setPrice(D)V
    .registers 3
    .param p1, "x0"    # D

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_Listing;->setPrice(D)V

    return-void
.end method

.method public bridge synthetic setPriceFormatted(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setPriceFormatted(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPriceNative(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setPriceNative(I)V

    return-void
.end method

.method public bridge synthetic setProPhotoStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setProPhotoStatus(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPropertyType(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setPropertyType(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPropertyTypeId(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setPropertyTypeId(I)V

    return-void
.end method

.method public bridge synthetic setPublicAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setPublicAddress(Ljava/lang/String;)V

    return-void
.end method

.method public setReview(Lcom/airbnb/android/requests/Wrappers$ReviewWrapper;)V
    .registers 3
    .param p1, "reviewWrapper"    # Lcom/airbnb/android/requests/Wrappers$ReviewWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "recent_review"
    .end annotation

    .prologue
    .line 94
    iget-object v0, p1, Lcom/airbnb/android/requests/Wrappers$ReviewWrapper;->review:Lcom/airbnb/android/models/Review;

    iput-object v0, p0, Lcom/airbnb/android/models/Listing;->mRecentReview:Lcom/airbnb/android/models/Review;

    .line 95
    return-void
.end method

.method public bridge synthetic setReviewsCount(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setReviewsCount(I)V

    return-void
.end method

.method public bridge synthetic setRoomType(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setRoomType(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRoomTypeKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setRoomTypeKey(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setSecurityDeposit(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setSecurityDeposit(I)V

    return-void
.end method

.method public bridge synthetic setSmartLocation(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setSmartLocation(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setSpace(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setSpace(Ljava/lang/String;)V

    return-void
.end method

.method public setSpecialOffer(Lcom/airbnb/android/models/SpecialOffer;)V
    .registers 6
    .param p1, "value"    # Lcom/airbnb/android/models/SpecialOffer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "special_offer"
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/airbnb/android/models/SpecialOffer;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    .end local p1    # "value":Lcom/airbnb/android/models/SpecialOffer;
    :goto_a
    iput-object p1, p0, Lcom/airbnb/android/models/Listing;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

    .line 75
    return-void

    .line 74
    .restart local p1    # "value":Lcom/airbnb/android/models/SpecialOffer;
    :cond_d
    invoke-virtual {p1}, Lcom/airbnb/android/models/SpecialOffer;->getSpecialOffer()Lcom/airbnb/android/models/SpecialOffer;

    move-result-object p1

    goto :goto_a
.end method

.method public bridge synthetic setSquareFeet(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setSquareFeet(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setStarRating(F)V
    .registers 2
    .param p1, "x0"    # F

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setStarRating(F)V

    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setState(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setStepsRemaining(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setStepsRemaining(I)V

    return-void
.end method

.method public bridge synthetic setStreetAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setStreetAddress(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setSummary(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setSummary(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setThumbnailUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setThumbnailUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setThumbnailUrls(Ljava/util/List;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setThumbnailUrls(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setTransit(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setTransit(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setUserDefinedLocation(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setUserDefinedLocation(Z)V

    return-void
.end method

.method public bridge synthetic setUserId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_Listing;->setUserId(J)V

    return-void
.end method

.method public bridge synthetic setWeekendPrice(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setWeekendPrice(I)V

    return-void
.end method

.method public bridge synthetic setWeeklyPriceNative(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setWeeklyPriceNative(I)V

    return-void
.end method

.method public bridge synthetic setZipCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Listing;->setZipCode(Ljava/lang/String;)V

    return-void
.end method

.method public showBookNowForInstantBook()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->isInCtaCopyExperiment()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string/jumbo v1, "guest"

    const-string/jumbo v2, "mobile_cta_book_now_relaunch"

    const-string/jumbo v3, "enabled"

    invoke-static {v1, v2, v3, v0}, Lcom/airbnb/android/utils/Trebuchet;->launchGuestExperiment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_Listing;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
