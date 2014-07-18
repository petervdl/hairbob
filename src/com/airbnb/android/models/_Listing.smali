.class abstract Lcom/airbnb/android/models/_Listing;
.super Ljava/lang/Object;
.source "_Listing.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAccess:Ljava/lang/String;

.field protected mAddress:Ljava/lang/String;

.field protected mAmenities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mAmenitiesIds:[I

.field protected mApartment:Ljava/lang/String;

.field protected mAutoPricing:Lcom/airbnb/android/models/AutoPricing;

.field protected mBathrooms:F

.field protected mBedCount:I

.field protected mBedType:Ljava/lang/String;

.field protected mBedTypeCategory:Ljava/lang/String;

.field protected mBedrooms:I

.field protected mCancellationPolicy:Ljava/lang/String;

.field protected mCancellationPolicyKey:Ljava/lang/String;

.field protected mCheckInTime:Ljava/lang/Integer;

.field protected mCheckOutTime:Ljava/lang/Integer;

.field protected mCity:Ljava/lang/String;

.field protected mCleaningFee:I

.field protected mCollectionIds:[J

.field protected mCountry:Ljava/lang/String;

.field protected mCountryCode:Ljava/lang/String;

.field protected mDescription:Ljava/lang/String;

.field protected mDirections:Ljava/lang/String;

.field protected mDistance:Ljava/lang/String;

.field protected mDoubleBlindReviews:Ljava/lang/Boolean;

.field protected mExtraGuestPrice:I

.field protected mGuestsIncluded:I

.field protected mHasBeenListed:Z

.field protected mHasClosedInstantBookFtue:Z

.field protected mHasSimplifiedBooking:Z

.field protected mHost:Lcom/airbnb/android/models/User;

.field protected mHouseManual:Ljava/lang/String;

.field protected mHouseRules:Ljava/lang/String;

.field protected mId:J

.field protected mInCtaCopyExperiment:Z

.field protected mInstantBookEligible:Z

.field protected mInstantBookLeadTimeHours:Ljava/lang/Integer;

.field protected mInstantBookable:Z

.field protected mInstantBookingVisibility:Ljava/lang/String;

.field protected mInteraction:Ljava/lang/String;

.field protected mIsPriceMonthly:Z

.field protected mLatitude:D

.field protected mListed:Z

.field protected mListing:Lcom/airbnb/android/models/Listing;

.field protected mListingCleaningFeeNative:Ljava/lang/Integer;

.field protected mListingMonthlyPriceNative:I

.field protected mListingNativeCurrency:Ljava/lang/String;

.field protected mListingPriceForExtraPersonNative:I

.field protected mListingPriceNative:I

.field protected mListingSecurityDepositNative:Ljava/lang/Integer;

.field protected mListingWeekendPriceNative:I

.field protected mListingWeeklyPriceNative:I

.field protected mLocationExact:Z

.field protected mLongitude:D

.field protected mMaxNights:I

.field protected mMinNights:I

.field protected mMonthlyPriceNative:I

.field protected mName:Ljava/lang/String;

.field protected mNativeCurrency:Ljava/lang/String;

.field protected mNeighborhood:Ljava/lang/String;

.field protected mNeighborhoodOverview:Ljava/lang/String;

.field protected mNotes:Ljava/lang/String;

.field protected mPersonCapacity:I

.field protected mPhotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Photo;",
            ">;"
        }
    .end annotation
.end field

.field protected mPictureCount:I

.field protected mPictureUrl:Ljava/lang/String;

.field protected mPictureUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPrice:D

.field protected mPriceFormatted:Ljava/lang/String;

.field protected mPriceNative:I

.field protected mProPhotoStatus:Ljava/lang/String;

.field protected mPropertyType:Ljava/lang/String;

.field protected mPropertyTypeId:I

.field protected mPublicAddress:Ljava/lang/String;

.field protected mRecentReview:Lcom/airbnb/android/models/Review;

.field protected mReviewsCount:I

.field protected mRoomType:Ljava/lang/String;

.field protected mRoomTypeKey:Ljava/lang/String;

.field protected mSecurityDeposit:I

.field protected mSmartLocation:Ljava/lang/String;

.field protected mSpace:Ljava/lang/String;

.field protected mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

.field protected mSquareFeet:Ljava/lang/String;

.field protected mStarRating:F

.field protected mState:Ljava/lang/String;

.field protected mStepsRemaining:I

.field protected mStreetAddress:Ljava/lang/String;

.field protected mSummary:Ljava/lang/String;

.field protected mThumbnailUrl:Ljava/lang/String;

.field protected mThumbnailUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mTransit:Ljava/lang/String;

.field protected mUserDefinedLocation:Z

.field protected mUserId:J

.field protected mWeekendPrice:I

.field protected mWeeklyPriceNative:I

.field protected mZipCode:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    return-void
.end method

.method protected constructor <init>(Lcom/airbnb/android/models/AutoPricing;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/Review;Lcom/airbnb/android/models/SpecialOffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/models/User;ZZZZZZZZZZDDDFFIIIIIIIIIIIIIIIIIIIIII[IJJ[J)V
    .registers 103
    .param p1, "autoPricing"    # Lcom/airbnb/android/models/AutoPricing;
    .param p2, "doubleBlindReviews"    # Ljava/lang/Boolean;
    .param p3, "checkInTime"    # Ljava/lang/Integer;
    .param p4, "checkOutTime"    # Ljava/lang/Integer;
    .param p5, "instantBookLeadTimeHours"    # Ljava/lang/Integer;
    .param p6, "listingSecurityDepositNative"    # Ljava/lang/Integer;
    .param p7, "listingCleaningFeeNative"    # Ljava/lang/Integer;
    .param p12, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p13, "recentReview"    # Lcom/airbnb/android/models/Review;
    .param p14, "specialOffer"    # Lcom/airbnb/android/models/SpecialOffer;
    .param p15, "access"    # Ljava/lang/String;
    .param p16, "address"    # Ljava/lang/String;
    .param p17, "apartment"    # Ljava/lang/String;
    .param p18, "streetAddress"    # Ljava/lang/String;
    .param p19, "bedType"    # Ljava/lang/String;
    .param p20, "bedTypeCategory"    # Ljava/lang/String;
    .param p21, "cancellationPolicy"    # Ljava/lang/String;
    .param p22, "cancellationPolicyKey"    # Ljava/lang/String;
    .param p23, "city"    # Ljava/lang/String;
    .param p24, "country"    # Ljava/lang/String;
    .param p25, "countryCode"    # Ljava/lang/String;
    .param p26, "description"    # Ljava/lang/String;
    .param p27, "directions"    # Ljava/lang/String;
    .param p28, "houseRules"    # Ljava/lang/String;
    .param p29, "houseManual"    # Ljava/lang/String;
    .param p30, "listingNativeCurrency"    # Ljava/lang/String;
    .param p31, "instantBookingVisibility"    # Ljava/lang/String;
    .param p32, "interaction"    # Ljava/lang/String;
    .param p33, "name"    # Ljava/lang/String;
    .param p34, "proPhotoStatus"    # Ljava/lang/String;
    .param p35, "publicAddress"    # Ljava/lang/String;
    .param p36, "nativeCurrency"    # Ljava/lang/String;
    .param p37, "neighborhood"    # Ljava/lang/String;
    .param p38, "neighborhoodOverview"    # Ljava/lang/String;
    .param p39, "notes"    # Ljava/lang/String;
    .param p40, "pictureUrl"    # Ljava/lang/String;
    .param p41, "propertyType"    # Ljava/lang/String;
    .param p42, "priceFormatted"    # Ljava/lang/String;
    .param p43, "roomType"    # Ljava/lang/String;
    .param p44, "roomTypeKey"    # Ljava/lang/String;
    .param p45, "smartLocation"    # Ljava/lang/String;
    .param p46, "space"    # Ljava/lang/String;
    .param p47, "state"    # Ljava/lang/String;
    .param p48, "summary"    # Ljava/lang/String;
    .param p49, "squareFeet"    # Ljava/lang/String;
    .param p50, "thumbnailUrl"    # Ljava/lang/String;
    .param p51, "transit"    # Ljava/lang/String;
    .param p52, "zipCode"    # Ljava/lang/String;
    .param p53, "distance"    # Ljava/lang/String;
    .param p54, "host"    # Lcom/airbnb/android/models/User;
    .param p55, "listed"    # Z
    .param p56, "hasBeenListed"    # Z
    .param p57, "hasClosedInstantBookFtue"    # Z
    .param p58, "instantBookable"    # Z
    .param p59, "instantBookEligible"    # Z
    .param p60, "userDefinedLocation"    # Z
    .param p61, "locationExact"    # Z
    .param p62, "hasSimplifiedBooking"    # Z
    .param p63, "inCtaCopyExperiment"    # Z
    .param p64, "isPriceMonthly"    # Z
    .param p65, "latitude"    # D
    .param p67, "longitude"    # D
    .param p69, "price"    # D
    .param p71, "bathrooms"    # F
    .param p72, "starRating"    # F
    .param p73, "bedrooms"    # I
    .param p74, "bedCount"    # I
    .param p75, "cleaningFee"    # I
    .param p76, "extraGuestPrice"    # I
    .param p77, "guestsIncluded"    # I
    .param p78, "listingPriceNative"    # I
    .param p79, "listingWeeklyPriceNative"    # I
    .param p80, "listingMonthlyPriceNative"    # I
    .param p81, "listingWeekendPriceNative"    # I
    .param p82, "listingPriceForExtraPersonNative"    # I
    .param p83, "minNights"    # I
    .param p84, "maxNights"    # I
    .param p85, "monthlyPriceNative"    # I
    .param p86, "personCapacity"    # I
    .param p87, "pictureCount"    # I
    .param p88, "priceNative"    # I
    .param p89, "propertyTypeId"    # I
    .param p90, "reviewsCount"    # I
    .param p91, "securityDeposit"    # I
    .param p92, "weeklyPriceNative"    # I
    .param p93, "weekendPrice"    # I
    .param p94, "stepsRemaining"    # I
    .param p95, "amenitiesIds"    # [I
    .param p96, "id"    # J
    .param p98, "userId"    # J
    .param p100, "collectionIds"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/AutoPricing;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Photo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/airbnb/android/models/Listing;",
            "Lcom/airbnb/android/models/Review;",
            "Lcom/airbnb/android/models/SpecialOffer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/models/User;",
            "ZZZZZZZZZZDDDFFIIIIIIIIIIIIIIIIIIIIII[IJJ[J)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p8, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Photo;>;"
    .local p9, "amenities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p10, "pictureUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p11, "thumbnailUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/airbnb/android/models/_Listing;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mAutoPricing:Lcom/airbnb/android/models/AutoPricing;

    .line 113
    iput-object p2, p0, Lcom/airbnb/android/models/_Listing;->mDoubleBlindReviews:Ljava/lang/Boolean;

    .line 114
    iput-object p3, p0, Lcom/airbnb/android/models/_Listing;->mCheckInTime:Ljava/lang/Integer;

    .line 115
    iput-object p4, p0, Lcom/airbnb/android/models/_Listing;->mCheckOutTime:Ljava/lang/Integer;

    .line 116
    iput-object p5, p0, Lcom/airbnb/android/models/_Listing;->mInstantBookLeadTimeHours:Ljava/lang/Integer;

    .line 117
    iput-object p6, p0, Lcom/airbnb/android/models/_Listing;->mListingSecurityDepositNative:Ljava/lang/Integer;

    .line 118
    iput-object p7, p0, Lcom/airbnb/android/models/_Listing;->mListingCleaningFeeNative:Ljava/lang/Integer;

    .line 119
    iput-object p8, p0, Lcom/airbnb/android/models/_Listing;->mPhotos:Ljava/util/List;

    .line 120
    iput-object p9, p0, Lcom/airbnb/android/models/_Listing;->mAmenities:Ljava/util/List;

    .line 121
    iput-object p10, p0, Lcom/airbnb/android/models/_Listing;->mPictureUrls:Ljava/util/List;

    .line 122
    iput-object p11, p0, Lcom/airbnb/android/models/_Listing;->mThumbnailUrls:Ljava/util/List;

    .line 123
    iput-object p12, p0, Lcom/airbnb/android/models/_Listing;->mListing:Lcom/airbnb/android/models/Listing;

    .line 124
    iput-object p13, p0, Lcom/airbnb/android/models/_Listing;->mRecentReview:Lcom/airbnb/android/models/Review;

    .line 125
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

    .line 126
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mAccess:Ljava/lang/String;

    .line 127
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mAddress:Ljava/lang/String;

    .line 128
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mApartment:Ljava/lang/String;

    .line 129
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mStreetAddress:Ljava/lang/String;

    .line 130
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mBedType:Ljava/lang/String;

    .line 131
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mBedTypeCategory:Ljava/lang/String;

    .line 132
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mCancellationPolicy:Ljava/lang/String;

    .line 133
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mCancellationPolicyKey:Ljava/lang/String;

    .line 134
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mCity:Ljava/lang/String;

    .line 135
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mCountry:Ljava/lang/String;

    .line 136
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mCountryCode:Ljava/lang/String;

    .line 137
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mDescription:Ljava/lang/String;

    .line 138
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mDirections:Ljava/lang/String;

    .line 139
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mHouseRules:Ljava/lang/String;

    .line 140
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mHouseManual:Ljava/lang/String;

    .line 141
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mListingNativeCurrency:Ljava/lang/String;

    .line 142
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mInstantBookingVisibility:Ljava/lang/String;

    .line 143
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mInteraction:Ljava/lang/String;

    .line 144
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mName:Ljava/lang/String;

    .line 145
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mProPhotoStatus:Ljava/lang/String;

    .line 146
    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mPublicAddress:Ljava/lang/String;

    .line 147
    move-object/from16 v0, p36

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mNativeCurrency:Ljava/lang/String;

    .line 148
    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mNeighborhood:Ljava/lang/String;

    .line 149
    move-object/from16 v0, p38

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mNeighborhoodOverview:Ljava/lang/String;

    .line 150
    move-object/from16 v0, p39

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mNotes:Ljava/lang/String;

    .line 151
    move-object/from16 v0, p40

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mPictureUrl:Ljava/lang/String;

    .line 152
    move-object/from16 v0, p41

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mPropertyType:Ljava/lang/String;

    .line 153
    move-object/from16 v0, p42

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mPriceFormatted:Ljava/lang/String;

    .line 154
    move-object/from16 v0, p43

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mRoomType:Ljava/lang/String;

    .line 155
    move-object/from16 v0, p44

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mRoomTypeKey:Ljava/lang/String;

    .line 156
    move-object/from16 v0, p45

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mSmartLocation:Ljava/lang/String;

    .line 157
    move-object/from16 v0, p46

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mSpace:Ljava/lang/String;

    .line 158
    move-object/from16 v0, p47

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mState:Ljava/lang/String;

    .line 159
    move-object/from16 v0, p48

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mSummary:Ljava/lang/String;

    .line 160
    move-object/from16 v0, p49

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mSquareFeet:Ljava/lang/String;

    .line 161
    move-object/from16 v0, p50

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mThumbnailUrl:Ljava/lang/String;

    .line 162
    move-object/from16 v0, p51

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mTransit:Ljava/lang/String;

    .line 163
    move-object/from16 v0, p52

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mZipCode:Ljava/lang/String;

    .line 164
    move-object/from16 v0, p53

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mDistance:Ljava/lang/String;

    .line 165
    move-object/from16 v0, p54

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mHost:Lcom/airbnb/android/models/User;

    .line 166
    move/from16 v0, p55

    iput-boolean v0, p0, Lcom/airbnb/android/models/_Listing;->mListed:Z

    .line 167
    move/from16 v0, p56

    iput-boolean v0, p0, Lcom/airbnb/android/models/_Listing;->mHasBeenListed:Z

    .line 168
    move/from16 v0, p57

    iput-boolean v0, p0, Lcom/airbnb/android/models/_Listing;->mHasClosedInstantBookFtue:Z

    .line 169
    move/from16 v0, p58

    iput-boolean v0, p0, Lcom/airbnb/android/models/_Listing;->mInstantBookable:Z

    .line 170
    move/from16 v0, p59

    iput-boolean v0, p0, Lcom/airbnb/android/models/_Listing;->mInstantBookEligible:Z

    .line 171
    move/from16 v0, p60

    iput-boolean v0, p0, Lcom/airbnb/android/models/_Listing;->mUserDefinedLocation:Z

    .line 172
    move/from16 v0, p61

    iput-boolean v0, p0, Lcom/airbnb/android/models/_Listing;->mLocationExact:Z

    .line 173
    move/from16 v0, p62

    iput-boolean v0, p0, Lcom/airbnb/android/models/_Listing;->mHasSimplifiedBooking:Z

    .line 174
    move/from16 v0, p63

    iput-boolean v0, p0, Lcom/airbnb/android/models/_Listing;->mInCtaCopyExperiment:Z

    .line 175
    move/from16 v0, p64

    iput-boolean v0, p0, Lcom/airbnb/android/models/_Listing;->mIsPriceMonthly:Z

    .line 176
    move-wide/from16 v0, p65

    iput-wide v0, p0, Lcom/airbnb/android/models/_Listing;->mLatitude:D

    .line 177
    move-wide/from16 v0, p67

    iput-wide v0, p0, Lcom/airbnb/android/models/_Listing;->mLongitude:D

    .line 178
    move-wide/from16 v0, p69

    iput-wide v0, p0, Lcom/airbnb/android/models/_Listing;->mPrice:D

    .line 179
    move/from16 v0, p71

    iput v0, p0, Lcom/airbnb/android/models/_Listing;->mBathrooms:F

    .line 180
    move/from16 v0, p72

    iput v0, p0, Lcom/airbnb/android/models/_Listing;->mStarRating:F

    .line 181
    move/from16 v0, p73

    iput v0, p0, Lcom/airbnb/android/models/_Listing;->mBedrooms:I

    .line 182
    move/from16 v0, p74

    iput v0, p0, Lcom/airbnb/android/models/_Listing;->mBedCount:I

    .line 183
    move/from16 v0, p75

    iput v0, p0, Lcom/airbnb/android/models/_Listing;->mCleaningFee:I

    .line 184
    move/from16 v0, p76

    iput v0, p0, Lcom/airbnb/android/models/_Listing;->mExtraGuestPrice:I

    .line 185
    move/from16 v0, p77

    iput v0, p0, Lcom/airbnb/android/models/_Listing;->mGuestsIncluded:I

    .line 186
    move/from16 v0, p78

    iput v0, p0, Lcom/airbnb/android/models/_Listing;->mListingPriceNative:I

    .line 187
    move/from16 v0, p79

    iput v0, p0, Lcom/airbnb/android/models/_Listing;->mListingWeeklyPriceNative:I

    .line 188
    move/from16 v0, p80

    iput v0, p0, Lcom/airbnb/android/models/_Listing;->mListingMonthlyPriceNative:I

    .line 189
    move/from16 v0, p81

    iput v0, p0, Lcom/airbnb/android/models/_Listing;->mListingWeekendPriceNative:I

    .line 190
    move/from16 v0, p82

    iput v0, p0, Lcom/airbnb/android/models/_Listing;->mListingPriceForExtraPersonNative:I

    .line 191
    move/from16 v0, p83

    iput v0, p0, Lcom/airbnb/android/models/_Listing;->mMinNights:I

    .line 192
    move/from16 v0, p84

    iput v0, p0, Lcom/airbnb/android/models/_Listing;->mMaxNights:I

    .line 193
    move/from16 v0, p85

    iput v0, p0, Lcom/airbnb/android/models/_Listing;->mMonthlyPriceNative:I

    .line 194
    move/from16 v0, p86

    iput v0, p0, Lcom/airbnb/android/models/_Listing;->mPersonCapacity:I

    .line 195
    move/from16 v0, p87

    iput v0, p0, Lcom/airbnb/android/models/_Listing;->mPictureCount:I

    .line 196
    move/from16 v0, p88

    iput v0, p0, Lcom/airbnb/android/models/_Listing;->mPriceNative:I

    .line 197
    move/from16 v0, p89

    iput v0, p0, Lcom/airbnb/android/models/_Listing;->mPropertyTypeId:I

    .line 198
    move/from16 v0, p90

    iput v0, p0, Lcom/airbnb/android/models/_Listing;->mReviewsCount:I

    .line 199
    move/from16 v0, p91

    iput v0, p0, Lcom/airbnb/android/models/_Listing;->mSecurityDeposit:I

    .line 200
    move/from16 v0, p92

    iput v0, p0, Lcom/airbnb/android/models/_Listing;->mWeeklyPriceNative:I

    .line 201
    move/from16 v0, p93

    iput v0, p0, Lcom/airbnb/android/models/_Listing;->mWeekendPrice:I

    .line 202
    move/from16 v0, p94

    iput v0, p0, Lcom/airbnb/android/models/_Listing;->mStepsRemaining:I

    .line 203
    move-object/from16 v0, p95

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mAmenitiesIds:[I

    .line 204
    move-wide/from16 v0, p96

    iput-wide v0, p0, Lcom/airbnb/android/models/_Listing;->mId:J

    .line 205
    move-wide/from16 v0, p98

    iput-wide v0, p0, Lcom/airbnb/android/models/_Listing;->mUserId:J

    .line 206
    move-object/from16 v0, p100

    iput-object v0, p0, Lcom/airbnb/android/models/_Listing;->mCollectionIds:[J

    .line 207
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 1247
    const/4 v0, 0x0

    return v0
.end method

.method public getAccess()Ljava/lang/String;
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mAccess:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAmenities()Ljava/util/List;
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
    .line 302
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mAmenities:Ljava/util/List;

    return-object v0
.end method

.method public getAmenitiesIds()[I
    .registers 2

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mAmenitiesIds:[I

    return-object v0
.end method

.method public getApartment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mApartment:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoPricing()Lcom/airbnb/android/models/AutoPricing;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mAutoPricing:Lcom/airbnb/android/models/AutoPricing;

    return-object v0
.end method

.method public getBathrooms()F
    .registers 2

    .prologue
    .line 939
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mBathrooms:F

    return v0
.end method

.method public getBedCount()I
    .registers 2

    .prologue
    .line 972
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mBedCount:I

    return v0
.end method

.method public getBedType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mBedType:Ljava/lang/String;

    return-object v0
.end method

.method public getBedTypeCategory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mBedTypeCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getBedrooms()I
    .registers 2

    .prologue
    .line 961
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mBedrooms:I

    return v0
.end method

.method public getCancellationPolicy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mCancellationPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public getCancellationPolicyKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mCancellationPolicyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckInTime()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mCheckInTime:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCheckOutTime()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mCheckOutTime:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCleaningFee()I
    .registers 2

    .prologue
    .line 983
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mCleaningFee:I

    return v0
.end method

.method public getCollectionIds()[J
    .registers 2

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mCollectionIds:[J

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDirections()Ljava/lang/String;
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mDirections:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()Ljava/lang/String;
    .registers 2

    .prologue
    .line 780
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mDistance:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraGuestPrice()I
    .registers 2

    .prologue
    .line 994
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mExtraGuestPrice:I

    return v0
.end method

.method public getGuestsIncluded()I
    .registers 2

    .prologue
    .line 1005
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mGuestsIncluded:I

    return v0
.end method

.method public getHost()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 791
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mHost:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method public getHouseManual()Ljava/lang/String;
    .registers 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mHouseManual:Ljava/lang/String;

    return-object v0
.end method

.method public getHouseRules()Ljava/lang/String;
    .registers 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mHouseRules:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 1214
    iget-wide v0, p0, Lcom/airbnb/android/models/_Listing;->mId:J

    return-wide v0
.end method

.method public getInstantBookLeadTimeHours()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mInstantBookLeadTimeHours:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInstantBookingVisibility()Ljava/lang/String;
    .registers 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mInstantBookingVisibility:Ljava/lang/String;

    return-object v0
.end method

.method public getInteraction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mInteraction:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 906
    iget-wide v0, p0, Lcom/airbnb/android/models/_Listing;->mLatitude:D

    return-wide v0
.end method

.method public getListing()Lcom/airbnb/android/models/Listing;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method public getListingCleaningFeeNative()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mListingCleaningFeeNative:Ljava/lang/Integer;

    return-object v0
.end method

.method public getListingMonthlyPriceNative()I
    .registers 2

    .prologue
    .line 1038
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mListingMonthlyPriceNative:I

    return v0
.end method

.method public getListingNativeCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mListingNativeCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getListingPriceForExtraPersonNative()I
    .registers 2

    .prologue
    .line 1060
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mListingPriceForExtraPersonNative:I

    return v0
.end method

.method public getListingPriceNative()I
    .registers 2

    .prologue
    .line 1016
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mListingPriceNative:I

    return v0
.end method

.method public getListingSecurityDepositNative()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mListingSecurityDepositNative:Ljava/lang/Integer;

    return-object v0
.end method

.method public getListingWeekendPriceNative()I
    .registers 2

    .prologue
    .line 1049
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mListingWeekendPriceNative:I

    return v0
.end method

.method public getListingWeeklyPriceNative()I
    .registers 2

    .prologue
    .line 1027
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mListingWeeklyPriceNative:I

    return v0
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 917
    iget-wide v0, p0, Lcom/airbnb/android/models/_Listing;->mLongitude:D

    return-wide v0
.end method

.method public getMaxNights()I
    .registers 2

    .prologue
    .line 1082
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mMaxNights:I

    return v0
.end method

.method public getMinNights()I
    .registers 2

    .prologue
    .line 1071
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mMinNights:I

    return v0
.end method

.method public getMonthlyPriceNative()I
    .registers 2

    .prologue
    .line 1093
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mMonthlyPriceNative:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mNativeCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getNeighborhood()Ljava/lang/String;
    .registers 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mNeighborhood:Ljava/lang/String;

    return-object v0
.end method

.method public getNeighborhoodOverview()Ljava/lang/String;
    .registers 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mNeighborhoodOverview:Ljava/lang/String;

    return-object v0
.end method

.method public getNotes()Ljava/lang/String;
    .registers 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mNotes:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonCapacity()I
    .registers 2

    .prologue
    .line 1104
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mPersonCapacity:I

    return v0
.end method

.method public getPhotos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Photo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mPhotos:Ljava/util/List;

    return-object v0
.end method

.method public getPictureCount()I
    .registers 2

    .prologue
    .line 1115
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mPictureCount:I

    return v0
.end method

.method public getPictureUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mPictureUrl:Ljava/lang/String;

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
    .line 313
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mPictureUrls:Ljava/util/List;

    return-object v0
.end method

.method public getPrice()D
    .registers 3

    .prologue
    .line 928
    iget-wide v0, p0, Lcom/airbnb/android/models/_Listing;->mPrice:D

    return-wide v0
.end method

.method public getPriceFormatted()Ljava/lang/String;
    .registers 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mPriceFormatted:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceNative()I
    .registers 2

    .prologue
    .line 1126
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mPriceNative:I

    return v0
.end method

.method public getProPhotoStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mProPhotoStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mPropertyType:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyTypeId()I
    .registers 2

    .prologue
    .line 1137
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mPropertyTypeId:I

    return v0
.end method

.method public getPublicAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mPublicAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentReview()Lcom/airbnb/android/models/Review;
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mRecentReview:Lcom/airbnb/android/models/Review;

    return-object v0
.end method

.method public getReviewsCount()I
    .registers 2

    .prologue
    .line 1148
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mReviewsCount:I

    return v0
.end method

.method public getRoomType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 670
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mRoomType:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomTypeKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mRoomTypeKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityDeposit()I
    .registers 2

    .prologue
    .line 1159
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mSecurityDeposit:I

    return v0
.end method

.method public getSmartLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mSmartLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getSpace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mSpace:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecialOffer()Lcom/airbnb/android/models/SpecialOffer;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

    return-object v0
.end method

.method public getSquareFeet()Ljava/lang/String;
    .registers 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mSquareFeet:Ljava/lang/String;

    return-object v0
.end method

.method public getStarRating()F
    .registers 2

    .prologue
    .line 950
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mStarRating:F

    return v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public getStepsRemaining()I
    .registers 2

    .prologue
    .line 1192
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mStepsRemaining:I

    return v0
.end method

.method public getStreetAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mStreetAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .registers 2

    .prologue
    .line 725
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mThumbnailUrl:Ljava/lang/String;

    return-object v0
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
    .line 324
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mThumbnailUrls:Ljava/util/List;

    return-object v0
.end method

.method public getTransit()Ljava/lang/String;
    .registers 2

    .prologue
    .line 758
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mTransit:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .registers 3

    .prologue
    .line 1225
    iget-wide v0, p0, Lcom/airbnb/android/models/_Listing;->mUserId:J

    return-wide v0
.end method

.method public getWeekendPrice()I
    .registers 2

    .prologue
    .line 1181
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mWeekendPrice:I

    return v0
.end method

.method public getWeeklyPriceNative()I
    .registers 2

    .prologue
    .line 1170
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mWeeklyPriceNative:I

    return v0
.end method

.method public getZipCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 769
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mZipCode:Ljava/lang/String;

    return-object v0
.end method

.method public hasBeenListed()Z
    .registers 2

    .prologue
    .line 807
    iget-boolean v0, p0, Lcom/airbnb/android/models/_Listing;->mHasBeenListed:Z

    return v0
.end method

.method public hasClosedInstantBookFtue()Z
    .registers 2

    .prologue
    .line 818
    iget-boolean v0, p0, Lcom/airbnb/android/models/_Listing;->mHasClosedInstantBookFtue:Z

    return v0
.end method

.method public hasSimplifiedBooking()Z
    .registers 2

    .prologue
    .line 873
    iget-boolean v0, p0, Lcom/airbnb/android/models/_Listing;->mHasSimplifiedBooking:Z

    return v0
.end method

.method public isDoubleBlindReviews()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mDoubleBlindReviews:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isInCtaCopyExperiment()Z
    .registers 2

    .prologue
    .line 884
    iget-boolean v0, p0, Lcom/airbnb/android/models/_Listing;->mInCtaCopyExperiment:Z

    return v0
.end method

.method public isInstantBookEligible()Z
    .registers 2

    .prologue
    .line 840
    iget-boolean v0, p0, Lcom/airbnb/android/models/_Listing;->mInstantBookEligible:Z

    return v0
.end method

.method public isInstantBookable()Z
    .registers 2

    .prologue
    .line 829
    iget-boolean v0, p0, Lcom/airbnb/android/models/_Listing;->mInstantBookable:Z

    return v0
.end method

.method public isListed()Z
    .registers 2

    .prologue
    .line 796
    iget-boolean v0, p0, Lcom/airbnb/android/models/_Listing;->mListed:Z

    return v0
.end method

.method public isLocationExact()Z
    .registers 2

    .prologue
    .line 862
    iget-boolean v0, p0, Lcom/airbnb/android/models/_Listing;->mLocationExact:Z

    return v0
.end method

.method public isPriceMonthly()Z
    .registers 2

    .prologue
    .line 895
    iget-boolean v0, p0, Lcom/airbnb/android/models/_Listing;->mIsPriceMonthly:Z

    return v0
.end method

.method public isUserDefinedLocation()Z
    .registers 2

    .prologue
    .line 851
    iget-boolean v0, p0, Lcom/airbnb/android/models/_Listing;->mUserDefinedLocation:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1340
    const-class v1, Lcom/airbnb/android/models/AutoPricing;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/AutoPricing;

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mAutoPricing:Lcom/airbnb/android/models/AutoPricing;

    .line 1341
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mDoubleBlindReviews:Ljava/lang/Boolean;

    .line 1342
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mCheckInTime:Ljava/lang/Integer;

    .line 1343
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mCheckOutTime:Ljava/lang/Integer;

    .line 1344
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mInstantBookLeadTimeHours:Ljava/lang/Integer;

    .line 1345
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mListingSecurityDepositNative:Ljava/lang/Integer;

    .line 1346
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mListingCleaningFeeNative:Ljava/lang/Integer;

    .line 1347
    sget-object v1, Lcom/airbnb/android/models/Photo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mPhotos:Ljava/util/List;

    .line 1348
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mAmenities:Ljava/util/List;

    .line 1349
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mPictureUrls:Ljava/util/List;

    .line 1350
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mThumbnailUrls:Ljava/util/List;

    .line 1351
    const-class v1, Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mListing:Lcom/airbnb/android/models/Listing;

    .line 1352
    const-class v1, Lcom/airbnb/android/models/Review;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Review;

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mRecentReview:Lcom/airbnb/android/models/Review;

    .line 1353
    const-class v1, Lcom/airbnb/android/models/SpecialOffer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/SpecialOffer;

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

    .line 1354
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mAccess:Ljava/lang/String;

    .line 1355
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mAddress:Ljava/lang/String;

    .line 1356
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mApartment:Ljava/lang/String;

    .line 1357
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mStreetAddress:Ljava/lang/String;

    .line 1358
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mBedType:Ljava/lang/String;

    .line 1359
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mBedTypeCategory:Ljava/lang/String;

    .line 1360
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mCancellationPolicy:Ljava/lang/String;

    .line 1361
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mCancellationPolicyKey:Ljava/lang/String;

    .line 1362
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mCity:Ljava/lang/String;

    .line 1363
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mCountry:Ljava/lang/String;

    .line 1364
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mCountryCode:Ljava/lang/String;

    .line 1365
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mDescription:Ljava/lang/String;

    .line 1366
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mDirections:Ljava/lang/String;

    .line 1367
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mHouseRules:Ljava/lang/String;

    .line 1368
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mHouseManual:Ljava/lang/String;

    .line 1369
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mListingNativeCurrency:Ljava/lang/String;

    .line 1370
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mInstantBookingVisibility:Ljava/lang/String;

    .line 1371
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mInteraction:Ljava/lang/String;

    .line 1372
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mName:Ljava/lang/String;

    .line 1373
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mProPhotoStatus:Ljava/lang/String;

    .line 1374
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mPublicAddress:Ljava/lang/String;

    .line 1375
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mNativeCurrency:Ljava/lang/String;

    .line 1376
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mNeighborhood:Ljava/lang/String;

    .line 1377
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mNeighborhoodOverview:Ljava/lang/String;

    .line 1378
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mNotes:Ljava/lang/String;

    .line 1379
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mPictureUrl:Ljava/lang/String;

    .line 1380
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mPropertyType:Ljava/lang/String;

    .line 1381
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mPriceFormatted:Ljava/lang/String;

    .line 1382
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mRoomType:Ljava/lang/String;

    .line 1383
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mRoomTypeKey:Ljava/lang/String;

    .line 1384
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mSmartLocation:Ljava/lang/String;

    .line 1385
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mSpace:Ljava/lang/String;

    .line 1386
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mState:Ljava/lang/String;

    .line 1387
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mSummary:Ljava/lang/String;

    .line 1388
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mSquareFeet:Ljava/lang/String;

    .line 1389
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mThumbnailUrl:Ljava/lang/String;

    .line 1390
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mTransit:Ljava/lang/String;

    .line 1391
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mZipCode:Ljava/lang/String;

    .line 1392
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mDistance:Ljava/lang/String;

    .line 1393
    const-class v1, Lcom/airbnb/android/models/User;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/User;

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mHost:Lcom/airbnb/android/models/User;

    .line 1394
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 1395
    .local v0, "bools":[Z
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/_Listing;->mListed:Z

    .line 1396
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/_Listing;->mHasBeenListed:Z

    .line 1397
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/_Listing;->mHasClosedInstantBookFtue:Z

    .line 1398
    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/_Listing;->mInstantBookable:Z

    .line 1399
    const/4 v1, 0x4

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/_Listing;->mInstantBookEligible:Z

    .line 1400
    const/4 v1, 0x5

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/_Listing;->mUserDefinedLocation:Z

    .line 1401
    const/4 v1, 0x6

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/_Listing;->mLocationExact:Z

    .line 1402
    const/4 v1, 0x7

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/_Listing;->mHasSimplifiedBooking:Z

    .line 1403
    const/16 v1, 0x8

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/_Listing;->mInCtaCopyExperiment:Z

    .line 1404
    const/16 v1, 0x9

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/_Listing;->mIsPriceMonthly:Z

    .line 1405
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/airbnb/android/models/_Listing;->mLatitude:D

    .line 1406
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/airbnb/android/models/_Listing;->mLongitude:D

    .line 1407
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/airbnb/android/models/_Listing;->mPrice:D

    .line 1408
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_Listing;->mBathrooms:F

    .line 1409
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_Listing;->mStarRating:F

    .line 1410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_Listing;->mBedrooms:I

    .line 1411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_Listing;->mBedCount:I

    .line 1412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_Listing;->mCleaningFee:I

    .line 1413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_Listing;->mExtraGuestPrice:I

    .line 1414
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_Listing;->mGuestsIncluded:I

    .line 1415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_Listing;->mListingPriceNative:I

    .line 1416
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_Listing;->mListingWeeklyPriceNative:I

    .line 1417
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_Listing;->mListingMonthlyPriceNative:I

    .line 1418
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_Listing;->mListingWeekendPriceNative:I

    .line 1419
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_Listing;->mListingPriceForExtraPersonNative:I

    .line 1420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_Listing;->mMinNights:I

    .line 1421
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_Listing;->mMaxNights:I

    .line 1422
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_Listing;->mMonthlyPriceNative:I

    .line 1423
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_Listing;->mPersonCapacity:I

    .line 1424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_Listing;->mPictureCount:I

    .line 1425
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_Listing;->mPriceNative:I

    .line 1426
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_Listing;->mPropertyTypeId:I

    .line 1427
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_Listing;->mReviewsCount:I

    .line 1428
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_Listing;->mSecurityDeposit:I

    .line 1429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_Listing;->mWeeklyPriceNative:I

    .line 1430
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_Listing;->mWeekendPrice:I

    .line 1431
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_Listing;->mStepsRemaining:I

    .line 1432
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mAmenitiesIds:[I

    .line 1434
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/airbnb/android/models/_Listing;->mId:J

    .line 1435
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/airbnb/android/models/_Listing;->mUserId:J

    .line 1436
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Listing;->mCollectionIds:[J

    .line 1438
    return-void
.end method

.method public setAccess(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "access"
    .end annotation

    .prologue
    .line 368
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mAccess:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "address"
    .end annotation

    .prologue
    .line 379
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mAddress:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public setAmenities(Ljava/util/List;)V
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "amenities"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mAmenities:Ljava/util/List;

    .line 309
    return-void
.end method

.method public setAmenitiesIds([I)V
    .registers 2
    .param p1, "value"    # [I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "amenities_ids"
    .end annotation

    .prologue
    .line 1209
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mAmenitiesIds:[I

    .line 1210
    return-void
.end method

.method public setApartment(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "apt"
    .end annotation

    .prologue
    .line 390
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mApartment:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public setAutoPricing(Lcom/airbnb/android/models/AutoPricing;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/AutoPricing;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ap_pricing"
    .end annotation

    .prologue
    .line 220
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mAutoPricing:Lcom/airbnb/android/models/AutoPricing;

    .line 221
    return-void
.end method

.method public setBathrooms(F)V
    .registers 2
    .param p1, "value"    # F
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "bathrooms"
    .end annotation

    .prologue
    .line 945
    iput p1, p0, Lcom/airbnb/android/models/_Listing;->mBathrooms:F

    .line 946
    return-void
.end method

.method public setBedCount(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "beds"
    .end annotation

    .prologue
    .line 978
    iput p1, p0, Lcom/airbnb/android/models/_Listing;->mBedCount:I

    .line 979
    return-void
.end method

.method public setBedType(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "bed_type"
    .end annotation

    .prologue
    .line 412
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mBedType:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public setBedTypeCategory(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "bed_type_category"
    .end annotation

    .prologue
    .line 423
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mBedTypeCategory:Ljava/lang/String;

    .line 424
    return-void
.end method

.method public setBedrooms(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "bedrooms"
    .end annotation

    .prologue
    .line 967
    iput p1, p0, Lcom/airbnb/android/models/_Listing;->mBedrooms:I

    .line 968
    return-void
.end method

.method public setCancellationPolicy(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cancel_policy_short_str"
    .end annotation

    .prologue
    .line 434
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mCancellationPolicy:Ljava/lang/String;

    .line 435
    return-void
.end method

.method public setCancellationPolicyKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cancellation_policy"
    .end annotation

    .prologue
    .line 445
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mCancellationPolicyKey:Ljava/lang/String;

    .line 446
    return-void
.end method

.method public setCheckInTime(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "check_in_time"
    .end annotation

    .prologue
    .line 242
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mCheckInTime:Ljava/lang/Integer;

    .line 243
    return-void
.end method

.method public setCheckOutTime(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "check_out_time"
    .end annotation

    .prologue
    .line 253
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mCheckOutTime:Ljava/lang/Integer;

    .line 254
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "city"
    .end annotation

    .prologue
    .line 456
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mCity:Ljava/lang/String;

    .line 457
    return-void
.end method

.method public setCleaningFee(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cleaning_fee_native"
    .end annotation

    .prologue
    .line 989
    iput p1, p0, Lcom/airbnb/android/models/_Listing;->mCleaningFee:I

    .line 990
    return-void
.end method

.method public setCollectionIds([J)V
    .registers 2
    .param p1, "value"    # [J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "collection_ids"
    .end annotation

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mCollectionIds:[J

    .line 1243
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "country"
    .end annotation

    .prologue
    .line 467
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mCountry:Ljava/lang/String;

    .line 468
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "country_code"
    .end annotation

    .prologue
    .line 478
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mCountryCode:Ljava/lang/String;

    .line 479
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "description"
    .end annotation

    .prologue
    .line 489
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mDescription:Ljava/lang/String;

    .line 490
    return-void
.end method

.method public setDirections(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "directions"
    .end annotation

    .prologue
    .line 500
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mDirections:Ljava/lang/String;

    .line 501
    return-void
.end method

.method public setDistance(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "distance"
    .end annotation

    .prologue
    .line 786
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mDistance:Ljava/lang/String;

    .line 787
    return-void
.end method

.method public setDoubleBlindReviews(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "has_double_blind_reviews"
    .end annotation

    .prologue
    .line 231
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mDoubleBlindReviews:Ljava/lang/Boolean;

    .line 232
    return-void
.end method

.method public setExtraGuestPrice(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "price_for_extra_person_native"
    .end annotation

    .prologue
    .line 1000
    iput p1, p0, Lcom/airbnb/android/models/_Listing;->mExtraGuestPrice:I

    .line 1001
    return-void
.end method

.method public setGuestsIncluded(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "guests_included"
    .end annotation

    .prologue
    .line 1011
    iput p1, p0, Lcom/airbnb/android/models/_Listing;->mGuestsIncluded:I

    .line 1012
    return-void
.end method

.method public setHasBeenListed(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "has_ever_been_available"
    .end annotation

    .prologue
    .line 813
    iput-boolean p1, p0, Lcom/airbnb/android/models/_Listing;->mHasBeenListed:Z

    .line 814
    return-void
.end method

.method public setHasClosedInstantBookFtue(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "has_closed_instant_book_ftue"
    .end annotation

    .prologue
    .line 824
    iput-boolean p1, p0, Lcom/airbnb/android/models/_Listing;->mHasClosedInstantBookFtue:Z

    .line 825
    return-void
.end method

.method public setHasSimplifiedBooking(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "has_simplified_booking"
    .end annotation

    .prologue
    .line 879
    iput-boolean p1, p0, Lcom/airbnb/android/models/_Listing;->mHasSimplifiedBooking:Z

    .line 880
    return-void
.end method

.method public setHouseManual(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "house_manual"
    .end annotation

    .prologue
    .line 522
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mHouseManual:Ljava/lang/String;

    .line 523
    return-void
.end method

.method public setHouseRules(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "house_rules"
    .end annotation

    .prologue
    .line 511
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mHouseRules:Ljava/lang/String;

    .line 512
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 1220
    iput-wide p1, p0, Lcom/airbnb/android/models/_Listing;->mId:J

    .line 1221
    return-void
.end method

.method public setInCtaCopyExperiment(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "in_cta_copy_experiment"
    .end annotation

    .prologue
    .line 890
    iput-boolean p1, p0, Lcom/airbnb/android/models/_Listing;->mInCtaCopyExperiment:Z

    .line 891
    return-void
.end method

.method public setInstantBookEligible(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "instant_book_eligible"
    .end annotation

    .prologue
    .line 846
    iput-boolean p1, p0, Lcom/airbnb/android/models/_Listing;->mInstantBookEligible:Z

    .line 847
    return-void
.end method

.method public setInstantBookLeadTimeHours(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "instant_book_lead_time_hours"
    .end annotation

    .prologue
    .line 264
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mInstantBookLeadTimeHours:Ljava/lang/Integer;

    .line 265
    return-void
.end method

.method public setInstantBookable(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "instant_bookable"
    .end annotation

    .prologue
    .line 835
    iput-boolean p1, p0, Lcom/airbnb/android/models/_Listing;->mInstantBookable:Z

    .line 836
    return-void
.end method

.method public setInstantBookingVisibility(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "instant_booking_visibility"
    .end annotation

    .prologue
    .line 544
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mInstantBookingVisibility:Ljava/lang/String;

    .line 545
    return-void
.end method

.method public setInteraction(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "interaction"
    .end annotation

    .prologue
    .line 555
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mInteraction:Ljava/lang/String;

    .line 556
    return-void
.end method

.method public setIsPriceMonthly(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_price_monthly"
    .end annotation

    .prologue
    .line 901
    iput-boolean p1, p0, Lcom/airbnb/android/models/_Listing;->mIsPriceMonthly:Z

    .line 902
    return-void
.end method

.method public setLatitude(D)V
    .registers 3
    .param p1, "value"    # D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "lat"
    .end annotation

    .prologue
    .line 912
    iput-wide p1, p0, Lcom/airbnb/android/models/_Listing;->mLatitude:D

    .line 913
    return-void
.end method

.method public setListed(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "has_availability"
    .end annotation

    .prologue
    .line 802
    iput-boolean p1, p0, Lcom/airbnb/android/models/_Listing;->mListed:Z

    .line 803
    return-void
.end method

.method public setListing(Lcom/airbnb/android/models/Listing;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/Listing;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listing"
    .end annotation

    .prologue
    .line 341
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mListing:Lcom/airbnb/android/models/Listing;

    .line 342
    return-void
.end method

.method public setListingCleaningFeeNative(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listing_cleaning_fee_native"
    .end annotation

    .prologue
    .line 286
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mListingCleaningFeeNative:Ljava/lang/Integer;

    .line 287
    return-void
.end method

.method public setListingMonthlyPriceNative(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listing_monthly_price_native"
    .end annotation

    .prologue
    .line 1044
    iput p1, p0, Lcom/airbnb/android/models/_Listing;->mListingMonthlyPriceNative:I

    .line 1045
    return-void
.end method

.method public setListingNativeCurrency(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listing_native_currency"
    .end annotation

    .prologue
    .line 533
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mListingNativeCurrency:Ljava/lang/String;

    .line 534
    return-void
.end method

.method public setListingPriceForExtraPersonNative(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listing_price_for_extra_person_native"
    .end annotation

    .prologue
    .line 1066
    iput p1, p0, Lcom/airbnb/android/models/_Listing;->mListingPriceForExtraPersonNative:I

    .line 1067
    return-void
.end method

.method public setListingPriceNative(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listing_price_native"
    .end annotation

    .prologue
    .line 1022
    iput p1, p0, Lcom/airbnb/android/models/_Listing;->mListingPriceNative:I

    .line 1023
    return-void
.end method

.method public setListingSecurityDepositNative(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listing_security_deposit_native"
    .end annotation

    .prologue
    .line 275
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mListingSecurityDepositNative:Ljava/lang/Integer;

    .line 276
    return-void
.end method

.method public setListingWeekendPriceNative(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listing_weekend_price_native"
    .end annotation

    .prologue
    .line 1055
    iput p1, p0, Lcom/airbnb/android/models/_Listing;->mListingWeekendPriceNative:I

    .line 1056
    return-void
.end method

.method public setListingWeeklyPriceNative(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listing_weekly_price_native"
    .end annotation

    .prologue
    .line 1033
    iput p1, p0, Lcom/airbnb/android/models/_Listing;->mListingWeeklyPriceNative:I

    .line 1034
    return-void
.end method

.method public setLocationExact(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_location_exact"
    .end annotation

    .prologue
    .line 868
    iput-boolean p1, p0, Lcom/airbnb/android/models/_Listing;->mLocationExact:Z

    .line 869
    return-void
.end method

.method public setLongitude(D)V
    .registers 3
    .param p1, "value"    # D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "lng"
    .end annotation

    .prologue
    .line 923
    iput-wide p1, p0, Lcom/airbnb/android/models/_Listing;->mLongitude:D

    .line 924
    return-void
.end method

.method public setMaxNights(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "max_nights"
    .end annotation

    .prologue
    .line 1088
    iput p1, p0, Lcom/airbnb/android/models/_Listing;->mMaxNights:I

    .line 1089
    return-void
.end method

.method public setMinNights(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "min_nights"
    .end annotation

    .prologue
    .line 1077
    iput p1, p0, Lcom/airbnb/android/models/_Listing;->mMinNights:I

    .line 1078
    return-void
.end method

.method public setMonthlyPriceNative(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "monthly_price_native"
    .end annotation

    .prologue
    .line 1099
    iput p1, p0, Lcom/airbnb/android/models/_Listing;->mMonthlyPriceNative:I

    .line 1100
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation

    .prologue
    .line 566
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mName:Ljava/lang/String;

    .line 567
    return-void
.end method

.method public setNativeCurrency(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "native_currency"
    .end annotation

    .prologue
    .line 599
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mNativeCurrency:Ljava/lang/String;

    .line 600
    return-void
.end method

.method public setNeighborhood(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "neighborhood"
    .end annotation

    .prologue
    .line 610
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mNeighborhood:Ljava/lang/String;

    .line 611
    return-void
.end method

.method public setNeighborhoodOverview(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "neighborhood_overview"
    .end annotation

    .prologue
    .line 621
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mNeighborhoodOverview:Ljava/lang/String;

    .line 622
    return-void
.end method

.method public setNotes(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "notes"
    .end annotation

    .prologue
    .line 632
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mNotes:Ljava/lang/String;

    .line 633
    return-void
.end method

.method public setPersonCapacity(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "person_capacity"
    .end annotation

    .prologue
    .line 1110
    iput p1, p0, Lcom/airbnb/android/models/_Listing;->mPersonCapacity:I

    .line 1111
    return-void
.end method

.method public setPhotos(Ljava/util/List;)V
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "photos"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Photo;>;"
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mPhotos:Ljava/util/List;

    .line 298
    return-void
.end method

.method public setPictureCount(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "picture_count"
    .end annotation

    .prologue
    .line 1121
    iput p1, p0, Lcom/airbnb/android/models/_Listing;->mPictureCount:I

    .line 1122
    return-void
.end method

.method public setPictureUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "picture_url"
    .end annotation

    .prologue
    .line 643
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mPictureUrl:Ljava/lang/String;

    .line 644
    return-void
.end method

.method public setPictureUrls(Ljava/util/List;)V
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "picture_urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mPictureUrls:Ljava/util/List;

    .line 320
    return-void
.end method

.method public setPrice(D)V
    .registers 3
    .param p1, "value"    # D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "price"
    .end annotation

    .prologue
    .line 934
    iput-wide p1, p0, Lcom/airbnb/android/models/_Listing;->mPrice:D

    .line 935
    return-void
.end method

.method public setPriceFormatted(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "price_formatted"
    .end annotation

    .prologue
    .line 665
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mPriceFormatted:Ljava/lang/String;

    .line 666
    return-void
.end method

.method public setPriceNative(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "price_native"
    .end annotation

    .prologue
    .line 1132
    iput p1, p0, Lcom/airbnb/android/models/_Listing;->mPriceNative:I

    .line 1133
    return-void
.end method

.method public setProPhotoStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "photography_status"
    .end annotation

    .prologue
    .line 577
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mProPhotoStatus:Ljava/lang/String;

    .line 578
    return-void
.end method

.method public setPropertyType(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "property_type"
    .end annotation

    .prologue
    .line 654
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mPropertyType:Ljava/lang/String;

    .line 655
    return-void
.end method

.method public setPropertyTypeId(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "property_type_id"
    .end annotation

    .prologue
    .line 1143
    iput p1, p0, Lcom/airbnb/android/models/_Listing;->mPropertyTypeId:I

    .line 1144
    return-void
.end method

.method public setPublicAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "public_address"
    .end annotation

    .prologue
    .line 588
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mPublicAddress:Ljava/lang/String;

    .line 589
    return-void
.end method

.method public setReviewsCount(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reviews_count"
    .end annotation

    .prologue
    .line 1154
    iput p1, p0, Lcom/airbnb/android/models/_Listing;->mReviewsCount:I

    .line 1155
    return-void
.end method

.method public setRoomType(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "room_type"
    .end annotation

    .prologue
    .line 676
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mRoomType:Ljava/lang/String;

    .line 677
    return-void
.end method

.method public setRoomTypeKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "room_type_category"
    .end annotation

    .prologue
    .line 687
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mRoomTypeKey:Ljava/lang/String;

    .line 688
    return-void
.end method

.method public setSecurityDeposit(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "security_deposit_native"
    .end annotation

    .prologue
    .line 1165
    iput p1, p0, Lcom/airbnb/android/models/_Listing;->mSecurityDeposit:I

    .line 1166
    return-void
.end method

.method public setSmartLocation(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "smart_location"
    .end annotation

    .prologue
    .line 698
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mSmartLocation:Ljava/lang/String;

    .line 699
    return-void
.end method

.method public setSpace(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "space"
    .end annotation

    .prologue
    .line 709
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mSpace:Ljava/lang/String;

    .line 710
    return-void
.end method

.method public setSpecialOffer(Lcom/airbnb/android/models/SpecialOffer;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/SpecialOffer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "special_offer"
    .end annotation

    .prologue
    .line 357
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

    .line 358
    return-void
.end method

.method public setSquareFeet(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "square_feet"
    .end annotation

    .prologue
    .line 742
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mSquareFeet:Ljava/lang/String;

    .line 743
    return-void
.end method

.method public setStarRating(F)V
    .registers 2
    .param p1, "value"    # F
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "star_rating"
    .end annotation

    .prologue
    .line 956
    iput p1, p0, Lcom/airbnb/android/models/_Listing;->mStarRating:F

    .line 957
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "state"
    .end annotation

    .prologue
    .line 720
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mState:Ljava/lang/String;

    .line 721
    return-void
.end method

.method public setStepsRemaining(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "steps_remaining"
    .end annotation

    .prologue
    .line 1198
    iput p1, p0, Lcom/airbnb/android/models/_Listing;->mStepsRemaining:I

    .line 1199
    return-void
.end method

.method public setStreetAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "street"
    .end annotation

    .prologue
    .line 401
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mStreetAddress:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "summary"
    .end annotation

    .prologue
    .line 731
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mSummary:Ljava/lang/String;

    .line 732
    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "thumbnail_url"
    .end annotation

    .prologue
    .line 753
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mThumbnailUrl:Ljava/lang/String;

    .line 754
    return-void
.end method

.method public setThumbnailUrls(Ljava/util/List;)V
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "thumbnail_urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mThumbnailUrls:Ljava/util/List;

    .line 331
    return-void
.end method

.method public setTransit(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "transit"
    .end annotation

    .prologue
    .line 764
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mTransit:Ljava/lang/String;

    .line 765
    return-void
.end method

.method public setUserDefinedLocation(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user_defined_location"
    .end annotation

    .prologue
    .line 857
    iput-boolean p1, p0, Lcom/airbnb/android/models/_Listing;->mUserDefinedLocation:Z

    .line 858
    return-void
.end method

.method public setUserId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user_id"
    .end annotation

    .prologue
    .line 1231
    iput-wide p1, p0, Lcom/airbnb/android/models/_Listing;->mUserId:J

    .line 1232
    return-void
.end method

.method public setWeekendPrice(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "weekend_price_native"
    .end annotation

    .prologue
    .line 1187
    iput p1, p0, Lcom/airbnb/android/models/_Listing;->mWeekendPrice:I

    .line 1188
    return-void
.end method

.method public setWeeklyPriceNative(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "weekly_price_native"
    .end annotation

    .prologue
    .line 1176
    iput p1, p0, Lcom/airbnb/android/models/_Listing;->mWeeklyPriceNative:I

    .line 1177
    return-void
.end method

.method public setZipCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "zipcode"
    .end annotation

    .prologue
    .line 775
    iput-object p1, p0, Lcom/airbnb/android/models/_Listing;->mZipCode:Ljava/lang/String;

    .line 776
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 1251
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mAutoPricing:Lcom/airbnb/android/models/AutoPricing;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1252
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mDoubleBlindReviews:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1253
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mCheckInTime:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1254
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mCheckOutTime:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1255
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mInstantBookLeadTimeHours:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1256
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mListingSecurityDepositNative:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1257
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mListingCleaningFeeNative:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1258
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mPhotos:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1259
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mAmenities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1260
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mPictureUrls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1261
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mThumbnailUrls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1262
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1263
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mRecentReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1264
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1265
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mAccess:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1266
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1267
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mApartment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1268
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mStreetAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1269
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mBedType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1270
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mBedTypeCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1271
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mCancellationPolicy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1272
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mCancellationPolicyKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1273
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mCity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1274
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mCountry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1275
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1276
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1277
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mDirections:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1278
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mHouseRules:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1279
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mHouseManual:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1280
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mListingNativeCurrency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1281
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mInstantBookingVisibility:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1282
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mInteraction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1283
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1284
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mProPhotoStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1285
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mPublicAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1286
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mNativeCurrency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1287
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mNeighborhood:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1288
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mNeighborhoodOverview:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1289
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mNotes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1290
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mPictureUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1291
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mPropertyType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1292
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mPriceFormatted:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1293
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mRoomType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1294
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mRoomTypeKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1295
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mSmartLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1296
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mSpace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1297
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1298
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1299
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mSquareFeet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1300
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mThumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1301
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mTransit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1302
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mZipCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1303
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mDistance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1304
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mHost:Lcom/airbnb/android/models/User;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1305
    const/16 v0, 0xa

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/airbnb/android/models/_Listing;->mListed:Z

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/airbnb/android/models/_Listing;->mHasBeenListed:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/airbnb/android/models/_Listing;->mHasClosedInstantBookFtue:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/airbnb/android/models/_Listing;->mInstantBookable:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/airbnb/android/models/_Listing;->mInstantBookEligible:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/airbnb/android/models/_Listing;->mUserDefinedLocation:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/airbnb/android/models/_Listing;->mLocationExact:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/airbnb/android/models/_Listing;->mHasSimplifiedBooking:Z

    aput-boolean v2, v0, v1

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/airbnb/android/models/_Listing;->mInCtaCopyExperiment:Z

    aput-boolean v2, v0, v1

    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/airbnb/android/models/_Listing;->mIsPriceMonthly:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 1306
    iget-wide v0, p0, Lcom/airbnb/android/models/_Listing;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1307
    iget-wide v0, p0, Lcom/airbnb/android/models/_Listing;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1308
    iget-wide v0, p0, Lcom/airbnb/android/models/_Listing;->mPrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1309
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mBathrooms:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1310
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mStarRating:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1311
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mBedrooms:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1312
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mBedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1313
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mCleaningFee:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1314
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mExtraGuestPrice:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1315
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mGuestsIncluded:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1316
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mListingPriceNative:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1317
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mListingWeeklyPriceNative:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1318
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mListingMonthlyPriceNative:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1319
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mListingWeekendPriceNative:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1320
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mListingPriceForExtraPersonNative:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1321
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mMinNights:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1322
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mMaxNights:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1323
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mMonthlyPriceNative:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1324
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mPersonCapacity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1325
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mPictureCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1326
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mPriceNative:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1327
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mPropertyTypeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1328
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mReviewsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1329
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mSecurityDeposit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1330
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mWeeklyPriceNative:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1331
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mWeekendPrice:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1332
    iget v0, p0, Lcom/airbnb/android/models/_Listing;->mStepsRemaining:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1333
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mAmenitiesIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1334
    iget-wide v0, p0, Lcom/airbnb/android/models/_Listing;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1335
    iget-wide v0, p0, Lcom/airbnb/android/models/_Listing;->mUserId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1336
    iget-object v0, p0, Lcom/airbnb/android/models/_Listing;->mCollectionIds:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1337
    return-void
.end method
