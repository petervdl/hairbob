.class public Lcom/airbnb/android/fragments/ListingDetailsFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "ListingDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/ListingDetailsFragment$ListingUnlistedDialog;
    }
.end annotation


# static fields
.field private static final ARGS_PRICE_FROM_SEARCH:Ljava/lang/String; = "price_from_search"

.field private static final ARG_LISTING:Ljava/lang/String; = "listing"

.field private static final ARG_LISTING_ID:Ljava/lang/String; = "listing_id"

.field private static final ARG_RECOMMENDED_LISTINGS:Ljava/lang/String; = "recommended_listings"

.field private static final ARG_SEARCH_METHOD:Ljava/lang/String; = "search_method"

.field private static final ARG_SEARCH_TAB:Ljava/lang/String; = "search_tab"

.field private static final NUM_AMENITIES_TO_SHOW:I = 0x6

.field private static final RECOMMENDED_LISTINGS_TO_SHOW:I = 0x3

.field private static final REQUEST_CODE_SIGN_IN_ADD_TO_WISHLIST:I = 0x1cb

.field private static final SIGN_IN_FOR_BOOK_IT:I = 0x2e7

.field private static final SIGN_IN_FOR_CONTACT_HOST:I = 0x2e8

.field private static final SIGN_IN_FOR_REQUEST_TO_BOOK:I = 0x2e9

.field private static final TRACKING_POS_LISTING_PAGE:Ljava/lang/String; = "listing_page"


# instance fields
.field private impressionTracked:Z

.field private loadCount:I

.field mBookItSticky:Lcom/airbnb/android/views/StickyButton;

.field private mCalendarMap:Lcom/airbnb/android/models/SquareMap;

.field mFragmentRoot:Landroid/view/ViewGroup;

.field private mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

.field private mImagePagerAdapter:Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;

.field private mImageViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/views/AirImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mIsUnlisted:Z

.field private mListing:Lcom/airbnb/android/models/Listing;

.field private mListingFromIntent:Lcom/airbnb/android/models/Listing;

.field mListingsHeader:Landroid/widget/TextView;

.field mListingsLayout:Landroid/widget/LinearLayout;

.field mListingsList:Lcom/airbnb/android/views/LinearListView;

.field mListingsTopDivider:Landroid/view/View;

.field mListingsViewAllLink:Landroid/widget/TextView;

.field private mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

.field private mPageTimer:J

.field private mPriceFromSearch:I

.field private mRecommendedListings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private mShortMonthYearSdf:Ljava/text/SimpleDateFormat;

.field private mSocialConnectionsRequest:Lcom/airbnb/android/requests/SocialConnectionsRequest;

.field private mStickyButtonText:Ljava/lang/String;

.field private mUnselectedDrawable:Landroid/graphics/drawable/Drawable;

.field mWishListButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 140
    iput v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->loadCount:I

    .line 141
    iput-boolean v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->impressionTracked:Z

    .line 1132
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/ListingDetailsFragment;Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/views/LoaderFrame;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->openWishListSelector()V

    return-void
.end method

.method static synthetic access$1100(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->clickContactHost()V

    return-void
.end method

.method static synthetic access$1200(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/requests/SocialConnectionsRequest;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mSocialConnectionsRequest:Lcom/airbnb/android/requests/SocialConnectionsRequest;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/models/SquareMap;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mCalendarMap:Lcom/airbnb/android/models/SquareMap;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/airbnb/android/fragments/ListingDetailsFragment;Lcom/airbnb/android/models/SquareMap;)Lcom/airbnb/android/models/SquareMap;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/SquareMap;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mCalendarMap:Lcom/airbnb/android/models/SquareMap;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mRecommendedListings:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/airbnb/android/fragments/ListingDetailsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mRecommendedListings:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateRecommendedListings()V

    return-void
.end method

.method static synthetic access$1600(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->goToBookit()V

    return-void
.end method

.method static synthetic access$1700(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mStickyButtonText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/airbnb/android/fragments/ListingDetailsFragment;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->verifyIsSignedIn(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->goToRequestToBook()V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateWithListing()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->showRecommendedListingsIfNeeded()V

    return-void
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListingFromIntent:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mIsUnlisted:Z

    return v0
.end method

.method static synthetic access$502(Lcom/airbnb/android/fragments/ListingDetailsFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mIsUnlisted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mImageViews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/views/ClickableViewPager;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/ListingDetailsFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;

    .prologue
    .line 95
    iget v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mPriceFromSearch:I

    return v0
.end method

.method static synthetic access$900(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mUnselectedDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private clickContactHost()V
    .registers 6

    .prologue
    .line 1002
    const/16 v0, 0x2e8

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->verifyIsSignedIn(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1003
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->goToContactHost()V

    .line 1005
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v0

    const-string/jumbo v2, "CONTACT_HOST"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mStickyButtonText:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/airbnb/android/analytics/ListingDetailAnalytics;->trackClickBook(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    :cond_1a
    return-void
.end method

.method public static executePrefetchRequest(ZLcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/Listing;)V
    .registers 7
    .param p0, "useSearchInfo"    # Z
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "oldListing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 1111
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->isPrefetch()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1112
    new-instance v0, Lcom/airbnb/android/requests/ListingRequest;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/airbnb/android/requests/ListingRequest;-><init>(JZLcom/airbnb/android/requests/RequestListener;)V

    .line 1113
    .local v0, "request":Lcom/airbnb/android/requests/ListingRequest;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/requests/ListingRequest;->setParse(Z)V

    .line 1114
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/requests/ListingRequest;->setIsPrefetch(Z)V

    .line 1117
    invoke-virtual {v0, p1}, Lcom/airbnb/android/requests/ListingRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 1118
    if-eqz p2, :cond_28

    .line 1119
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 1122
    :cond_28
    sget-object v1, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/requests/ListingRequest;->setPriority(Lcom/android/volley/Request$Priority;)V

    .line 1123
    invoke-virtual {v0}, Lcom/airbnb/android/requests/ListingRequest;->willMissCache()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1124
    invoke-virtual {v0}, Lcom/airbnb/android/requests/ListingRequest;->execute()V

    .line 1127
    .end local v0    # "request":Lcom/airbnb/android/requests/ListingRequest;
    :cond_36
    return-void
.end method

.method private fromSearch()Z
    .registers 3

    .prologue
    .line 1043
    iget v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mPriceFromSearch:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private getAmenitySpacer()Landroid/view/View;
    .registers 6

    .prologue
    .line 796
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 797
    .local v0, "spacer":Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 798
    return-object v0
.end method

.method private goToBookit()V
    .registers 6

    .prologue
    .line 1030
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->fromSearch()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1031
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "search_tab"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1032
    .local v1, "searchTab":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "search_method"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1033
    .local v0, "searchMethod":Ljava/lang/String;
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Search"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "click_result"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "click_book_it"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 1035
    .end local v0    # "searchMethod":Ljava/lang/String;
    .end local v1    # "searchTab":Ljava/lang/String;
    :cond_3a
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getSpecialOffer()Lcom/airbnb/android/models/SpecialOffer;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 1036
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getSpecialOffer()Lcom/airbnb/android/models/SpecialOffer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/activities/BookingDetailsActivity;->intentForListingWithOffer(Landroid/content/Context;Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/SpecialOffer;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 1040
    :goto_55
    return-void

    .line 1038
    :cond_56
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->fromSearch()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/activities/BookingDetailsActivity;->intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_55
.end method

.method private goToContactHost()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1010
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->fromSearch()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1011
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "search_tab"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1012
    .local v1, "searchTab":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "search_method"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    .local v0, "searchMethod":Ljava/lang/String;
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "Search"

    aput-object v3, v2, v5

    const-string/jumbo v3, "click_result"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string/jumbo v4, "click_contact_host"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 1015
    .end local v0    # "searchMethod":Ljava/lang/String;
    .end local v1    # "searchTab":Ljava/lang/String;
    :cond_3a
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v2, v3, v6, v5}, Lcom/airbnb/android/activities/ContactHostActivity;->intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;ZZ)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 1017
    return-void
.end method

.method private goToRequestToBook()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1020
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->fromSearch()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1021
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "search_tab"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1022
    .local v1, "searchTab":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "search_method"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1023
    .local v0, "searchMethod":Ljava/lang/String;
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Search"

    aput-object v4, v2, v3

    const-string/jumbo v3, "click_result"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string/jumbo v4, "click_request_to_book"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 1025
    .end local v0    # "searchMethod":Ljava/lang/String;
    .end local v1    # "searchTab":Ljava/lang/String;
    :cond_3a
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v2, v3, v5, v5}, Lcom/airbnb/android/activities/ContactHostActivity;->intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;ZZ)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 1027
    return-void
.end method

.method private helperUpdateStarRating(Landroid/view/View;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 445
    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getReviewsCount()I

    move-result v3

    if-lez v3, :cond_50

    move v0, v4

    .line 446
    .local v0, "hasReviews":Z
    :goto_b
    const v3, 0x7f0803e6

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/airbnb/android/utils/MiscUtils;->setVisibleIf(Landroid/view/View;Z)V

    .line 448
    if-eqz v0, :cond_4f

    .line 449
    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getStarRating()F

    move-result v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_52

    move v1, v4

    .line 450
    .local v1, "hasStarRating":Z
    :goto_23
    const v3, 0x7f0803e7

    invoke-static {p1, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RatingBar;

    .line 451
    .local v2, "listingStars":Landroid/widget/RatingBar;
    if-eqz v1, :cond_54

    .line 452
    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getStarRating()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 457
    :goto_37
    const v3, 0x7f0803e8

    invoke-static {p1, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v1, :cond_5a

    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getReviewsCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :goto_4c
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    .end local v1    # "hasStarRating":Z
    .end local v2    # "listingStars":Landroid/widget/RatingBar;
    :cond_4f
    return-void

    .end local v0    # "hasReviews":Z
    :cond_50
    move v0, v5

    .line 445
    goto :goto_b

    .restart local v0    # "hasReviews":Z
    :cond_52
    move v1, v5

    .line 449
    goto :goto_23

    .line 454
    .restart local v1    # "hasStarRating":Z
    .restart local v2    # "listingStars":Landroid/widget/RatingBar;
    :cond_54
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_37

    .line 457
    :cond_5a
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0022

    iget-object v8, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v8}, Lcom/airbnb/android/models/Listing;->getReviewsCount()I

    move-result v8

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v9}, Lcom/airbnb/android/models/Listing;->getReviewsCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-virtual {v6, v7, v8, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4c
.end method

.method public static newInstance(Lcom/airbnb/android/models/Listing;Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/fragments/ListingDetailsFragment;
    .registers 10
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p1, "listingId"    # Ljava/lang/Long;
    .param p2, "priceFromSearch"    # I
    .param p3, "searchTab"    # Ljava/lang/String;
    .param p4, "searchMethod"    # Ljava/lang/String;

    .prologue
    .line 154
    new-instance v1, Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;-><init>()V

    .line 155
    .local v1, "f":Lcom/airbnb/android/fragments/ListingDetailsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 156
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 157
    const-string/jumbo v2, "listing_id"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 158
    const-string/jumbo v2, "price_from_search"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    const-string/jumbo v2, "search_tab"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string/jumbo v2, "search_method"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 162
    return-object v1
.end method

.method private openWishListSelector()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 898
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 899
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    const-string/jumbo v2, "listing_page"

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/activities/PickWishListActivity;->intentForListingToAdd(Landroid/content/Context;Lcom/airbnb/android/models/Listing;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 900
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->WishLists:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v1, v1, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "tap_heart"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "listing_page"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 905
    :goto_33
    return-void

    .line 902
    :cond_34
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0766

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/airbnb/android/activities/SignInActivity;->intentForToastDisplay(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x1cb

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_33
.end method

.method private setViewPagerHeight(Lcom/airbnb/android/views/PicTopScrollView;)V
    .registers 7
    .param p1, "picTopScrollView"    # Lcom/airbnb/android/views/PicTopScrollView;

    .prologue
    .line 318
    invoke-virtual {p1}, Lcom/airbnb/android/views/PicTopScrollView;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_1e

    invoke-virtual {p1}, Lcom/airbnb/android/views/PicTopScrollView;->getMeasuredWidth()I

    move-result v2

    .line 319
    .local v2, "width":I
    :goto_a
    int-to-float v3, v2

    const v4, 0x3f2aaaab

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 321
    .local v1, "viewPagerHeight":I
    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v3}, Lcom/airbnb/android/views/ClickableViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 322
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 323
    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v3, v0}, Lcom/airbnb/android/views/ClickableViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    return-void

    .line 318
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "viewPagerHeight":I
    .end local v2    # "width":I
    :cond_1e
    invoke-virtual {p1}, Lcom/airbnb/android/views/PicTopScrollView;->getWidth()I

    move-result v2

    goto :goto_a
.end method

.method public static setupListingPriceTag(Landroid/content/Context;Landroid/view/View;Lcom/airbnb/android/models/Listing;Ljava/lang/Integer;)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listingPriceTag"    # Landroid/view/View;
    .param p2, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p3, "overridePrice"    # Ljava/lang/Integer;

    .prologue
    .line 1161
    const v7, 0x7f0803ed

    invoke-static {p1, v7}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1162
    .local v5, "priceText":Landroid/widget/TextView;
    const v7, 0x7f0803ef

    invoke-static {p1, v7}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1163
    .local v2, "perMonthText":Landroid/widget/TextView;
    const v7, 0x7f0803ee

    invoke-static {p1, v7}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1166
    .local v1, "instantBookText":Landroid/widget/ImageView;
    if-eqz p3, :cond_4a

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_4a

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1167
    .local v6, "priceToUse":I
    :goto_27
    invoke-static {p0}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v0

    .line 1168
    .local v0, "currency":Lcom/airbnb/android/utils/CurrencyHelper;
    int-to-double v7, v6

    const/4 v9, 0x1

    invoke-virtual {v0, v7, v8, v9}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v4

    .line 1169
    .local v4, "price":Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/airbnb/android/utils/MiscUtils;->makeCurrencyTextSmall(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v3

    .line 1172
    .local v3, "prettyPrice":Landroid/text/Spannable;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1175
    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->isPriceMonthly()Z

    move-result v7

    invoke-static {v2, v7}, Lcom/airbnb/android/utils/MiscUtils;->setVisibleIf(Landroid/view/View;Z)V

    .line 1178
    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->isInstantBookable()Z

    move-result v7

    if-eqz v7, :cond_4f

    const/4 v7, 0x0

    :goto_46
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1180
    return-void

    .line 1166
    .end local v0    # "currency":Lcom/airbnb/android/utils/CurrencyHelper;
    .end local v3    # "prettyPrice":Landroid/text/Spannable;
    .end local v4    # "price":Ljava/lang/String;
    .end local v6    # "priceToUse":I
    :cond_4a
    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getPriceNative()I

    move-result v6

    goto :goto_27

    .line 1178
    .restart local v0    # "currency":Lcom/airbnb/android/utils/CurrencyHelper;
    .restart local v3    # "prettyPrice":Landroid/text/Spannable;
    .restart local v4    # "price":Ljava/lang/String;
    .restart local v6    # "priceToUse":I
    :cond_4f
    const/16 v7, 0x8

    goto :goto_46
.end method

.method private setupWishlist(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 390
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/AirbnbApi;->listingInWishList(Lcom/airbnb/android/models/Listing;)Z

    move-result v0

    .line 391
    .local v0, "selected":Z
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mWishListButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 392
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mWishListButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    :goto_15
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 393
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mWishListButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/airbnb/android/fragments/ListingDetailsFragment$5;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment$5;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    return-void

    .line 392
    :cond_23
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mUnselectedDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_15
.end method

.method public static showCancellationPolicyDialog(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/fragments/AirFragment;)V
    .registers 6
    .param p0, "mListing"    # Lcom/airbnb/android/models/Listing;
    .param p1, "fragment"    # Lcom/airbnb/android/fragments/AirFragment;

    .prologue
    .line 1199
    const v2, 0x7f0e0400

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->newInstance(II)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v0

    .line 1201
    .local v0, "progressDialog":Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    new-instance v1, Lcom/airbnb/android/requests/GetCancellationPolicyRequest;

    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getCancellationPolicyKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/airbnb/android/fragments/ListingDetailsFragment$28;

    invoke-direct {v3, v0, p1, p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment$28;-><init>(Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;Lcom/airbnb/android/fragments/AirFragment;Lcom/airbnb/android/models/Listing;)V

    invoke-direct {v1, v2, v3}, Lcom/airbnb/android/requests/GetCancellationPolicyRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 1221
    .local v1, "request":Lcom/airbnb/android/requests/GetCancellationPolicyRequest;
    invoke-virtual {v1}, Lcom/airbnb/android/requests/GetCancellationPolicyRequest;->willMissCache()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1222
    invoke-virtual {p1}, Lcom/airbnb/android/fragments/AirFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1225
    :cond_24
    invoke-virtual {v1, p1}, Lcom/airbnb/android/requests/GetCancellationPolicyRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 1227
    return-void
.end method

.method private showIbBolt()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1185
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mBookItSticky:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v1}, Lcom/airbnb/android/views/StickyButton;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    .line 1186
    .local v0, "bookItText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1187
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1189
    return-void
.end method

.method private showRecommendedListingsIfNeeded()V
    .registers 6

    .prologue
    .line 840
    const-string/jumbo v1, "guest"

    const-string/jumbo v2, "mobile_p3_recommended_listings_relaunch"

    const-string/jumbo v3, "enabled"

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/utils/Trebuchet;->launchGuestExperiment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 865
    :goto_f
    return-void

    .line 844
    :cond_10
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mRecommendedListings:Ljava/util/ArrayList;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mRecommendedListings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_20

    .line 846
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateRecommendedListings()V

    goto :goto_f

    .line 849
    :cond_20
    new-instance v0, Lcom/airbnb/android/fragments/ListingDetailsFragment$20;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment$20;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    .line 863
    .local v0, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/RecommendedListingsRequest;>;"
    new-instance v1, Lcom/airbnb/android/requests/RecommendedListingsRequest;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/airbnb/android/requests/RecommendedListingsRequest;-><init>(JLcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v1, p0}, Lcom/airbnb/android/requests/RecommendedListingsRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    goto :goto_f
.end method

.method private updateAmenities(Landroid/view/View;)V
    .registers 16
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x6

    const/4 v12, -0x2

    .line 730
    const v10, 0x7f0803c4

    invoke-static {p1, v10}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 732
    .local v6, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    if-lez v10, :cond_14

    .line 733
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 736
    :cond_14
    iget-object v10, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v10}, Lcom/airbnb/android/models/Listing;->getAmenitiesIds()[I

    move-result-object v3

    .line 738
    .local v3, "amenityIds":[I
    if-eqz v3, :cond_1f

    array-length v10, v3

    if-nez v10, :cond_25

    .line 739
    :cond_1f
    const/16 v10, 0x8

    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 790
    :cond_24
    :goto_24
    return-void

    .line 743
    :cond_25
    new-instance v7, Lcom/airbnb/android/fragments/ListingDetailsFragment$17;

    invoke-direct {v7, p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment$17;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    .line 754
    .local v7, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    const v10, 0x7f0803c5

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 757
    array-length v10, v3

    if-le v10, v11, :cond_7e

    const/4 v9, 0x5

    .line 760
    .local v9, "numAmenitiesToShow":I
    :goto_3b
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getAmenitySpacer()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 763
    const/4 v4, 0x0

    .line 764
    .local v4, "i":I
    const/4 v0, 0x0

    .line 765
    .local v0, "amenitiesShown":I
    :goto_44
    array-length v10, v3

    if-ge v4, v10, :cond_84

    if-ge v0, v9, :cond_84

    .line 766
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget v10, v3, v4

    invoke-static {v10}, Lcom/airbnb/android/models/Amenities;->getAmenityForId(I)Lcom/airbnb/android/models/Amenities;

    move-result-object v1

    .line 767
    .local v1, "amenity":Lcom/airbnb/android/models/Amenities;
    if-eqz v1, :cond_7c

    .line 768
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 769
    .local v2, "amenityIcon":Landroid/widget/ImageView;
    iget v10, v1, Lcom/airbnb/android/models/Amenities;->mDrawableId:I

    const v11, 0x7f0a0019

    invoke-static {v10, v11}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 770
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 772
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 773
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getAmenitySpacer()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 775
    add-int/lit8 v0, v0, 0x1

    .end local v2    # "amenityIcon":Landroid/widget/ImageView;
    :cond_7c
    move v4, v5

    .line 777
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_44

    .line 757
    .end local v0    # "amenitiesShown":I
    .end local v1    # "amenity":Lcom/airbnb/android/models/Amenities;
    .end local v4    # "i":I
    .end local v9    # "numAmenitiesToShow":I
    :cond_7e
    array-length v10, v3

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_3b

    .line 779
    .restart local v0    # "amenitiesShown":I
    .restart local v4    # "i":I
    .restart local v9    # "numAmenitiesToShow":I
    :cond_84
    array-length v10, v3

    if-ge v0, v10, :cond_24

    .line 780
    new-instance v8, Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/airbnb/android/views/AirTextView;-><init>(Landroid/content/Context;)V

    .line 781
    .local v8, "moreAmenities":Landroid/widget/TextView;
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 782
    const v10, 0x7f0e005e

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    array-length v13, v3

    sub-int/2addr v13, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const v11, 0x7f0f002a

    invoke-virtual {v8, v10, v11}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 784
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a002b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 786
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 787
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getAmenitySpacer()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_24
.end method

.method private updateDescription(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 567
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 568
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 611
    :cond_13
    :goto_13
    return-void

    .line 570
    :cond_14
    const v4, 0x7f0803c6

    invoke-static {p1, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 572
    .local v2, "description":Landroid/widget/TextView;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 573
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "string"

    iget-object v5, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    new-instance v5, Lcom/airbnb/android/fragments/ListingDetailsFragment$11;

    invoke-direct {v5, p0, v2}, Lcom/airbnb/android/fragments/ListingDetailsFragment$11;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;Landroid/widget/TextView;)V

    invoke-virtual {v4, v7, v0, v5}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 591
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    const v4, 0x7f0803c8

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/airbnb/android/fragments/ListingDetailsFragment$12;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment$12;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->hasPets()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 604
    const v4, 0x7f0803c7

    invoke-static {p1, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 606
    .local v3, "petsTextView":Landroid/widget/TextView;
    const v4, 0x7f020110

    const v5, 0x7f0a001a

    invoke-static {v4, v5}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 607
    .local v1, "coloredPetsIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v1, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 608
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_13
.end method

.method private updateHeader(Landroid/view/View;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 410
    const v2, 0x7f0803e5

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 411
    .local v1, "listingTitle":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    const v2, 0x7f0803cc

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0003

    iget-object v5, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getBedrooms()I

    move-result v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Listing;->getBedrooms()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    const v2, 0x7f0803d0

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0001

    iget-object v5, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getBathrooms()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Listing;->getBathrooms()F

    move-result v7

    invoke-static {v7}, Lcom/airbnb/android/utils/MiscUtils;->floatToString(F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    const v2, 0x7f0803ce

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0004

    iget-object v5, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getBedCount()I

    move-result v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Listing;->getBedCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    const v2, 0x7f0803ca

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d002d

    iget-object v5, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getPersonCapacity()I

    move-result v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Listing;->getPersonCapacity()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->helperUpdateStarRating(Landroid/view/View;)V

    .line 423
    const v2, 0x7f0803e9

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getRoomType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    const v2, 0x7f0803ea

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0e02c6

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    const v2, 0x7f0803d1

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 427
    .local v0, "contactHostButton":Landroid/widget/TextView;
    const-string/jumbo v2, "guest"

    const-string/jumbo v3, "mobile_cta_contact_host"

    const-string/jumbo v4, "enabled"

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/utils/Trebuchet;->launchGuestExperiment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_123

    const v2, 0x7f0e0099

    :goto_117
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 429
    new-instance v2, Lcom/airbnb/android/fragments/ListingDetailsFragment$6;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment$6;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    return-void

    .line 427
    :cond_123
    const v2, 0x7f0e012f

    goto :goto_117
.end method

.method private updateHostProfile(Landroid/view/View;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 815
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v1

    .line 816
    .local v1, "host":Lcom/airbnb/android/models/User;
    const v4, 0x7f08043f

    invoke-static {p1, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0e002e

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    const v4, 0x7f080440

    invoke-static {p1, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/views/HaloImageView;

    .line 818
    .local v3, "profileImage":Lcom/airbnb/android/views/HaloImageView;
    invoke-virtual {v3, v1}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 820
    const v4, 0x7f080441

    invoke-static {p1, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f080443

    invoke-static {p1, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateHostProfileInfo(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 823
    new-instance v2, Lcom/airbnb/android/fragments/ListingDetailsFragment$19;

    invoke-direct {v2, p0, v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment$19;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;Lcom/airbnb/android/models/User;)V

    .line 832
    .local v2, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {v3, v2}, Lcom/airbnb/android/views/HaloImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 834
    const v4, 0x7f080444

    invoke-static {p1, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 835
    .local v0, "btnMoreAboutUser":Landroid/widget/TextView;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 837
    return-void
.end method

.method private updateHostProfileInfo(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 7
    .param p1, "location"    # Landroid/widget/TextView;
    .param p2, "userAbout"    # Landroid/widget/TextView;

    .prologue
    .line 1075
    new-instance v0, Lcom/airbnb/android/requests/UserRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v1

    new-instance v3, Lcom/airbnb/android/fragments/ListingDetailsFragment$27;

    invoke-direct {v3, p0, p1, p2}, Lcom/airbnb/android/fragments/ListingDetailsFragment$27;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/requests/UserRequest;-><init>(JLcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/UserRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 1094
    return-void
.end method

.method private updateListingPictures(Landroid/view/View;I)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 537
    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getPhotos()Ljava/util/List;

    move-result-object v2

    .line 538
    .local v2, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Photo;>;"
    if-eqz v2, :cond_3a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, p2, :cond_3a

    .line 539
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Photo;

    .line 541
    .local v1, "photo":Lcom/airbnb/android/models/Photo;
    const v3, 0x7f0801c8

    invoke-static {p1, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/AirImageView;

    .line 542
    .local v0, "imageView":Lcom/airbnb/android/views/AirImageView;
    invoke-virtual {v1}, Lcom/airbnb/android/models/Photo;->getPictureUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 543
    new-instance v3, Lcom/airbnb/android/fragments/ListingDetailsFragment$9;

    invoke-direct {v3, p0, v0, p1}, Lcom/airbnb/android/fragments/ListingDetailsFragment$9;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;Lcom/airbnb/android/views/AirImageView;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Lcom/airbnb/android/views/AirImageView;->post(Ljava/lang/Runnable;)Z

    .line 552
    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mImageViews:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    new-instance v3, Lcom/airbnb/android/fragments/ListingDetailsFragment$10;

    invoke-direct {v3, p0, p2}, Lcom/airbnb/android/fragments/ListingDetailsFragment$10;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    .end local v0    # "imageView":Lcom/airbnb/android/views/AirImageView;
    .end local v1    # "photo":Lcom/airbnb/android/models/Photo;
    :goto_39
    return-void

    .line 562
    :cond_3a
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_39
.end method

.method private updateRecommendedListings()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 868
    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mRecommendedListings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_51

    .line 869
    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListingsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 870
    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListingsHeader:Landroid/widget/TextView;

    const v4, 0x7f0e05fd

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 871
    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListingsTopDivider:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 872
    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListingsViewAllLink:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 873
    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListingsViewAllLink:Landroid/widget/TextView;

    new-instance v4, Lcom/airbnb/android/fragments/ListingDetailsFragment$21;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment$21;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 881
    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mRecommendedListings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 882
    .local v1, "maxIndex":I
    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mRecommendedListings:Ljava/util/ArrayList;

    invoke-virtual {v3, v5, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 883
    .local v2, "recommendedListingsToShow":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    new-instance v0, Lcom/airbnb/android/adapters/ListingsRowAdapter;

    sget-object v3, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;->WITH_REVIEW_COUNT_AND_PRICE:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    invoke-direct {v0, v2, v3}, Lcom/airbnb/android/adapters/ListingsRowAdapter;-><init>(Ljava/util/List;Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;)V

    .line 885
    .local v0, "adapter":Lcom/airbnb/android/adapters/ListingsRowAdapter;
    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListingsList:Lcom/airbnb/android/views/LinearListView;

    invoke-virtual {v3, v0}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 886
    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListingsList:Lcom/airbnb/android/views/LinearListView;

    new-instance v4, Lcom/airbnb/android/fragments/ListingDetailsFragment$22;

    invoke-direct {v4, p0, v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment$22;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;Lcom/airbnb/android/adapters/ListingsRowAdapter;)V

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/LinearListView;->setOnItemClickListener(Lcom/airbnb/android/views/LinearListView$OnItemClickListener;)V

    .line 894
    .end local v0    # "adapter":Lcom/airbnb/android/adapters/ListingsRowAdapter;
    .end local v1    # "maxIndex":I
    .end local v2    # "recommendedListingsToShow":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    :cond_51
    return-void
.end method

.method private updateReviews(Landroid/view/View;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 466
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getReviewsCount()I

    move-result v1

    .line 467
    .local v1, "numReviews":I
    if-lez v1, :cond_8d

    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getRecentReview()Lcom/airbnb/android/models/Review;

    move-result-object v4

    if-eqz v4, :cond_8d

    .line 468
    const v4, 0x7f080455

    invoke-static {p1, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0022

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v1, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getRecentReview()Lcom/airbnb/android/models/Review;

    move-result-object v2

    .line 472
    .local v2, "review":Lcom/airbnb/android/models/Review;
    const v4, 0x7f080459

    invoke-static {p1, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Review;->getPublicFeedback()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    const v4, 0x7f080457

    invoke-static {p1, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Review;->getReviewer()Lcom/airbnb/android/models/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    const v4, 0x7f080456

    invoke-static {p1, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Review;->getReviewer()Lcom/airbnb/android/models/User;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 476
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mShortMonthYearSdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v4}, Lcom/airbnb/android/models/Review;->getFormattedCreationDate(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, "reviewDateString":Ljava/lang/String;
    const v4, 0x7f080458

    invoke-static {p1, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    const v0, 0x7f08045a

    .line 483
    .local v0, "clickTarget":I
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/airbnb/android/fragments/ListingDetailsFragment$7;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment$7;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    .end local v0    # "clickTarget":I
    .end local v2    # "review":Lcom/airbnb/android/models/Review;
    .end local v3    # "reviewDateString":Ljava/lang/String;
    :goto_8c
    return-void

    .line 497
    :cond_8d
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8c
.end method

.method private updateSocialConnections(Landroid/widget/FrameLayout;)V
    .registers 7
    .param p1, "view"    # Landroid/widget/FrameLayout;

    .prologue
    .line 502
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 503
    .local v0, "host":Lcom/airbnb/android/models/User;
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->isCurrentUserAuthorized()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mSocialConnectionsRequest:Lcom/airbnb/android/requests/SocialConnectionsRequest;

    if-nez v1, :cond_2b

    if-eqz v0, :cond_2b

    .line 505
    new-instance v1, Lcom/airbnb/android/requests/SocialConnectionsRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v2

    new-instance v4, Lcom/airbnb/android/fragments/ListingDetailsFragment$8;

    invoke-direct {v4, p0, v0, p1}, Lcom/airbnb/android/fragments/ListingDetailsFragment$8;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;Lcom/airbnb/android/models/User;Landroid/widget/FrameLayout;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/airbnb/android/requests/SocialConnectionsRequest;-><init>(JLcom/airbnb/android/requests/RequestListener;)V

    iput-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mSocialConnectionsRequest:Lcom/airbnb/android/requests/SocialConnectionsRequest;

    .line 532
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mSocialConnectionsRequest:Lcom/airbnb/android/requests/SocialConnectionsRequest;

    invoke-virtual {v1, p0}, Lcom/airbnb/android/requests/SocialConnectionsRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 534
    :cond_2b
    return-void
.end method

.method private updateStaticMap(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 802
    new-instance v0, Lcom/airbnb/android/fragments/ListingDetailsFragment$18;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment$18;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    .line 811
    .local v0, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v0, v3}, Lcom/airbnb/android/fragments/ROItineraryFragment;->setupMap(Landroid/content/Context;Landroid/view/View;Lcom/airbnb/android/models/Listing;Landroid/view/View$OnClickListener;Z)V

    .line 812
    return-void
.end method

.method private updateStats(Landroid/view/View;)V
    .registers 16
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v13, 0x7f0803dc

    const v6, 0x7f0803d7

    const/4 v12, 0x0

    const/16 v11, 0x8

    const/4 v10, 0x1

    .line 616
    const v4, 0x7f0803d6

    invoke-static {p1, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/GroupedCell;

    iget-object v5, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getRoomType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 617
    const-string/jumbo v4, "real_bed"

    iget-object v5, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getBedTypeCategory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a2

    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getBedCount()I

    move-result v4

    if-ne v4, v10, :cond_1a2

    .line 620
    invoke-static {p1, v6}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/GroupedCell;

    iget-object v5, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getBedType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 625
    :goto_42
    const v4, 0x7f0803d8

    invoke-static {p1, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d003d

    iget-object v7, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Listing;->getPersonCapacity()I

    move-result v7

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v9}, Lcom/airbnb/android/models/Listing;->getPersonCapacity()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 627
    const v4, 0x7f0803d9

    invoke-static {p1, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0002

    iget-object v7, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Listing;->getBedrooms()I

    move-result v7

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v9}, Lcom/airbnb/android/models/Listing;->getBedrooms()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 629
    const v4, 0x7f0803da

    invoke-static {p1, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0004

    iget-object v7, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Listing;->getBedCount()I

    move-result v7

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v9}, Lcom/airbnb/android/models/Listing;->getBedCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 631
    const v4, 0x7f0803db

    invoke-static {p1, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f0d0000

    iget-object v7, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Listing;->getBathrooms()F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v9}, Lcom/airbnb/android/models/Listing;->getBathrooms()F

    move-result v9

    invoke-static {v9}, Lcom/airbnb/android/utils/MiscUtils;->floatToString(F)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 634
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getMinNights()I

    move-result v4

    if-le v4, v10, :cond_1ad

    .line 635
    invoke-static {p1, v13}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0039

    iget-object v7, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Listing;->getMinNights()I

    move-result v7

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v9}, Lcom/airbnb/android/models/Listing;->getMinNights()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 640
    :goto_123
    const v4, 0x7f0803dd

    invoke-static {p1, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .line 641
    .local v0, "cancellationPolicyRow":Lcom/airbnb/android/views/GroupedCell;
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getCancellationPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 642
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getHouseRules()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b6

    .line 643
    const v4, 0x7f0803de

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 655
    :goto_14b
    const v4, 0x7f0803e2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 656
    .local v3, "detailedPricingView":Landroid/view/View;
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v4}, Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;->hasContentToDisplay(Lcom/airbnb/android/models/Listing;)Z

    move-result v4

    if-eqz v4, :cond_1c6

    .line 657
    new-instance v4, Lcom/airbnb/android/fragments/ListingDetailsFragment$14;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment$14;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    :goto_162
    const v4, 0x7f0803e0

    invoke-static {p1, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/GroupedCell;

    .line 669
    .local v1, "checkInCell":Lcom/airbnb/android/views/GroupedCell;
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getCheckInTime()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1ca

    .line 670
    invoke-virtual {v1, v11}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 675
    :goto_176
    const v4, 0x7f0803e1

    invoke-static {p1, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/GroupedCell;

    .line 676
    .local v2, "checkOutCell":Lcom/airbnb/android/views/GroupedCell;
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getCheckOutTime()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1dc

    .line 677
    invoke-virtual {v2, v11}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 682
    :goto_18a
    const v4, 0x7f0803df

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/airbnb/android/fragments/ListingDetailsFragment$15;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment$15;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 716
    new-instance v4, Lcom/airbnb/android/fragments/ListingDetailsFragment$16;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment$16;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    invoke-virtual {v0, v4}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    return-void

    .line 622
    .end local v0    # "cancellationPolicyRow":Lcom/airbnb/android/views/GroupedCell;
    .end local v1    # "checkInCell":Lcom/airbnb/android/views/GroupedCell;
    .end local v2    # "checkOutCell":Lcom/airbnb/android/views/GroupedCell;
    .end local v3    # "detailedPricingView":Landroid/view/View;
    :cond_1a2
    invoke-static {p1, v6}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {v4, v11}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    goto/16 :goto_42

    .line 638
    :cond_1ad
    invoke-virtual {p1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_123

    .line 645
    .restart local v0    # "cancellationPolicyRow":Lcom/airbnb/android/views/GroupedCell;
    :cond_1b6
    const v4, 0x7f0803de

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/airbnb/android/fragments/ListingDetailsFragment$13;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment$13;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_14b

    .line 665
    .restart local v3    # "detailedPricingView":Landroid/view/View;
    :cond_1c6
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_162

    .line 672
    .restart local v1    # "checkInCell":Lcom/airbnb/android/views/GroupedCell;
    :cond_1ca
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getCheckInTime()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/airbnb/android/utils/CalendarHelper;->formatHour(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_176

    .line 679
    .restart local v2    # "checkOutCell":Lcom/airbnb/android/views/GroupedCell;
    :cond_1dc
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getCheckOutTime()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/airbnb/android/utils/CalendarHelper;->formatHour(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_18a
.end method

.method private updateStickyButtons(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v5, 0x7f0e0628

    const/16 v4, 0x8

    .line 908
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/models/Listing;->isMine(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_15

    iget-boolean v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mIsUnlisted:Z

    if-eqz v2, :cond_33

    .line 909
    :cond_15
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mBookItSticky:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v2, v4}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    .line 910
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mFragmentRoot:Landroid/view/ViewGroup;

    const v3, 0x7f0803d1

    invoke-static {v2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 911
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mFragmentRoot:Landroid/view/ViewGroup;

    const v3, 0x7f0801de

    invoke-static {v2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 996
    :goto_32
    return-void

    .line 916
    :cond_33
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getSpecialOffer()Lcom/airbnb/android/models/SpecialOffer;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 918
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mBookItSticky:Lcom/airbnb/android/views/StickyButton;

    const v3, 0x7f0e0104

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 919
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->showIbBolt()V

    .line 920
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mBookItSticky:Lcom/airbnb/android/views/StickyButton;

    new-instance v3, Lcom/airbnb/android/fragments/ListingDetailsFragment$23;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment$23;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 931
    const-string/jumbo v2, "COMPLETE_BOOKING"

    iput-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mStickyButtonText:Ljava/lang/String;

    goto :goto_32

    .line 934
    :cond_56
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->hasSimplifiedBooking()Z

    move-result v2

    if-eqz v2, :cond_7b

    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->isInstantBookable()Z

    move-result v2

    if-nez v2, :cond_7b

    .line 936
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mBookItSticky:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v2, v5}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 937
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mBookItSticky:Lcom/airbnb/android/views/StickyButton;

    new-instance v3, Lcom/airbnb/android/fragments/ListingDetailsFragment$24;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment$24;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 948
    const-string/jumbo v2, "REQUEST_TO_BOOK"

    iput-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mStickyButtonText:Ljava/lang/String;

    goto :goto_32

    .line 951
    :cond_7b
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->isInCtaCopyExperiment()Z

    move-result v2

    if-eqz v2, :cond_af

    const-string/jumbo v2, "guest"

    const-string/jumbo v3, "mobile_cta_request_to_book_relaunch"

    const-string/jumbo v4, "enabled"

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/utils/Trebuchet;->launchGuestExperiment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_af

    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->isInstantBookable()Z

    move-result v2

    if-nez v2, :cond_af

    .line 955
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mBookItSticky:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v2, v5}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 956
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mBookItSticky:Lcom/airbnb/android/views/StickyButton;

    new-instance v3, Lcom/airbnb/android/fragments/ListingDetailsFragment$25;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment$25;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 967
    const-string/jumbo v2, "REQUEST_TO_BOOK"

    iput-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mStickyButtonText:Ljava/lang/String;

    goto :goto_32

    .line 973
    :cond_af
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->isInstantBookable()Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 974
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->showBookNowForInstantBook()Z

    move-result v2

    if-eqz v2, :cond_e3

    const v0, 0x7f0e00a0

    .line 975
    .local v0, "bookButtonResId":I
    :goto_c2
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->showIbBolt()V

    .line 979
    :goto_c5
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mBookItSticky:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v2, v0}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 981
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->isInstantBookable()Z

    move-result v2

    if-eqz v2, :cond_eb

    const-string/jumbo v1, "INSTANT_BOOK"

    .line 982
    .local v1, "bookButtonType":Ljava/lang/String;
    :goto_d5
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mBookItSticky:Lcom/airbnb/android/views/StickyButton;

    new-instance v3, Lcom/airbnb/android/fragments/ListingDetailsFragment$26;

    invoke-direct {v3, p0, v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment$26;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 994
    iput-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mStickyButtonText:Ljava/lang/String;

    goto/16 :goto_32

    .line 974
    .end local v0    # "bookButtonResId":I
    .end local v1    # "bookButtonType":Ljava/lang/String;
    :cond_e3
    const v0, 0x7f0e0365

    goto :goto_c2

    .line 977
    :cond_e7
    const v0, 0x7f0e009f

    .restart local v0    # "bookButtonResId":I
    goto :goto_c5

    .line 981
    :cond_eb
    const-string/jumbo v1, "BOOK_IT"

    goto :goto_d5
.end method

.method private updateViewPager(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v7, 0x7f080064

    const/4 v3, 0x0

    .line 328
    const v0, 0x7f0801d4

    invoke-static {p1, v0}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/views/PicTopScrollView;

    .line 330
    .local v6, "picTopScrollView":Lcom/airbnb/android/views/PicTopScrollView;
    invoke-virtual {v6}, Lcom/airbnb/android/views/PicTopScrollView;->getWidth()I

    move-result v0

    if-nez v0, :cond_22

    .line 331
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getScreenSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, v3}, Landroid/view/View;->measure(II)V

    .line 334
    :cond_22
    invoke-direct {p0, v6}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->setViewPagerHeight(Lcom/airbnb/android/views/PicTopScrollView;)V

    .line 336
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v6, v0}, Lcom/airbnb/android/views/PicTopScrollView;->setCurrentViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 338
    new-instance v0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    const v4, 0x7f030175

    const v5, 0x7f0a001e

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/airbnb/android/models/Listing;ZII)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mImagePagerAdapter:Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;

    .line 339
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mImagePagerAdapter:Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/ClickableViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 340
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v0}, Lcom/airbnb/android/views/ClickableViewPager;->startScrolling()V

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mImageViews:Ljava/util/List;

    .line 343
    new-instance v0, Lcom/airbnb/android/fragments/ListingDetailsFragment$2;

    invoke-direct {v0, p0, v6}, Lcom/airbnb/android/fragments/ListingDetailsFragment$2;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;Lcom/airbnb/android/views/PicTopScrollView;)V

    invoke-virtual {v6, v0}, Lcom/airbnb/android/views/PicTopScrollView;->setOnScrollListener(Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;)V

    .line 363
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    new-instance v1, Lcom/airbnb/android/fragments/ListingDetailsFragment$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment$3;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/ClickableViewPager;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v0, 0x7f0803ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->fromSearch()Z

    move-result v0

    if-eqz v0, :cond_9d

    iget v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mPriceFromSearch:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_7b
    invoke-static {v1, v2, v3, v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->setupListingPriceTag(Landroid/content/Context;Landroid/view/View;Lcom/airbnb/android/models/Listing;Ljava/lang/Integer;)V

    .line 374
    invoke-static {p1, v7}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/HaloImageView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 375
    invoke-static {p1, v7}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/fragments/ListingDetailsFragment$4;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment$4;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->setupWishlist(Landroid/view/View;)V

    .line 386
    return-void

    .line 372
    :cond_9d
    const/4 v0, 0x0

    goto :goto_7b
.end method

.method private updateWithListing()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 281
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/activities/ListingDetailsActivity;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/activities/ListingDetailsActivity;->setupActionBar(Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActionBar;

    .line 283
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mFragmentRoot:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateViewPager(Landroid/view/View;)V

    .line 284
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mFragmentRoot:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateHeader(Landroid/view/View;)V

    .line 286
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mFragmentRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0801d5

    invoke-static {v1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateReviews(Landroid/view/View;)V

    .line 287
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mFragmentRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0801dc

    invoke-static {v1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateSocialConnections(Landroid/widget/FrameLayout;)V

    .line 288
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mFragmentRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0801d6

    invoke-static {v1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v8}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateListingPictures(Landroid/view/View;I)V

    .line 289
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mFragmentRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0801d7

    invoke-static {v1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateDescription(Landroid/view/View;)V

    .line 290
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mFragmentRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0801d8

    invoke-static {v1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateListingPictures(Landroid/view/View;I)V

    .line 291
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mFragmentRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0801d9

    invoke-static {v1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateStats(Landroid/view/View;)V

    .line 293
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mFragmentRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0801da

    invoke-static {v1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateListingPictures(Landroid/view/View;I)V

    .line 294
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mFragmentRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0801db

    invoke-static {v1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateAmenities(Landroid/view/View;)V

    .line 295
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mFragmentRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0801e1

    invoke-static {v1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateStaticMap(Landroid/view/View;)V

    .line 296
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mFragmentRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0801dd

    invoke-static {v1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateHostProfile(Landroid/view/View;)V

    .line 297
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mFragmentRoot:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 298
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mFragmentRoot:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateStickyButtons(Landroid/view/View;)V

    .line 300
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mFragmentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 301
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "search_tab"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "searchTab":Ljava/lang/String;
    const-string/jumbo v1, "android_eng"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "type"

    const-string/jumbo v4, "p3_load_time"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "load_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mPageTimer:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "prefetch_source"

    invoke-virtual {v2, v3, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "load_cycle"

    iget v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->loadCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->loadCount:I

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "listing_id"

    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "prefetch_status"

    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->isPrefetch()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Z)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v1, v8, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 311
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->impressionTracked:Z

    if-nez v1, :cond_116

    .line 312
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mStickyButtonText:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/ListingDetailAnalytics;->trackViewListingPage(JLjava/lang/String;)V

    .line 313
    iput-boolean v8, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->impressionTracked:Z

    .line 315
    :cond_116
    return-void
.end method

.method private verifyIsSignedIn(I)Z
    .registers 6
    .param p1, "requestCode"    # I

    .prologue
    .line 1051
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->isCurrentUserAuthorized()Z

    move-result v0

    .line 1052
    .local v0, "isSignedIn":Z
    if-nez v0, :cond_1d

    .line 1053
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0e00a4

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/activities/SignInActivity;->intentForToastDisplayPendingBookIt(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1055
    :cond_1d
    return v0
.end method


# virtual methods
.method public listingUpdated(Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;)V
    .registers 6
    .param p1, "event"    # Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    if-eqz v0, :cond_18

    iget-object v0, p1, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;->listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 1099
    iget-object v0, p1, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;->listing:Lcom/airbnb/android/models/Listing;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 1101
    :cond_18
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 1061
    const/16 v0, 0x2e7

    if-ne p1, v0, :cond_b

    if-ne p2, v1, :cond_b

    .line 1062
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->goToBookit()V

    .line 1072
    :goto_a
    return-void

    .line 1063
    :cond_b
    const/16 v0, 0x2e8

    if-ne p1, v0, :cond_15

    if-ne p2, v1, :cond_15

    .line 1064
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->goToContactHost()V

    goto :goto_a

    .line 1065
    :cond_15
    const/16 v0, 0x2e9

    if-ne p1, v0, :cond_1f

    if-ne p2, v1, :cond_1f

    .line 1066
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->goToRequestToBook()V

    goto :goto_a

    .line 1067
    :cond_1f
    const/16 v0, 0x1cb

    if-ne p1, v0, :cond_29

    if-ne p2, v1, :cond_29

    .line 1068
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->openWishListSelector()V

    goto :goto_a

    .line 1070
    :cond_29
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/AirFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_a
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mPageTimer:J

    .line 168
    const v4, 0x7f0300a5

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 169
    .local v3, "view":Landroid/view/View;
    invoke-static {p0, v3}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 171
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mFragmentRoot:Landroid/view/ViewGroup;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 173
    const v4, 0x7f080033

    invoke-static {v3, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/ClickableViewPager;

    iput-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    .line 174
    const v4, 0x7f080026

    invoke-static {v3, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/LoaderFrame;

    iput-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    .line 177
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "listing"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/Listing;

    iput-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListingFromIntent:Lcom/airbnb/android/models/Listing;

    .line 178
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    if-nez v4, :cond_57

    if-eqz p3, :cond_57

    .line 179
    const-string/jumbo v4, "listing"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/Listing;

    iput-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 180
    const-string/jumbo v4, "recommended_listings"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mRecommendedListings:Ljava/util/ArrayList;

    .line 182
    :cond_57
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "price_from_search"

    const/4 v8, -0x1

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mPriceFromSearch:I

    .line 183
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    if-nez v4, :cond_91

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "listing_id"

    const-wide/16 v8, -0x1

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    :goto_76
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 186
    .local v0, "listingId":Ljava/lang/Long;
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    if-nez v4, :cond_98

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-gez v4, :cond_98

    .line 187
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "no listing or listing id passed into listing details activity"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 183
    .end local v0    # "listingId":Ljava/lang/Long;
    :cond_91
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v4

    goto :goto_76

    .line 190
    .restart local v0    # "listingId":Ljava/lang/Long;
    :cond_98
    const/4 v2, 0x1

    .line 191
    .local v2, "uncached":Z
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02023a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mUnselectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 192
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020239

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 195
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    if-nez v4, :cond_d0

    .line 196
    new-instance v1, Lcom/airbnb/android/requests/ListingRequest;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->fromSearch()Z

    move-result v8

    new-instance v9, Lcom/airbnb/android/fragments/ListingDetailsFragment$1;

    invoke-direct {v9, p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment$1;-><init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    invoke-direct {v1, v4, v5, v8, v9}, Lcom/airbnb/android/requests/ListingRequest;-><init>(JZLcom/airbnb/android/requests/RequestListener;)V

    .line 226
    .local v1, "listingRequest":Lcom/airbnb/android/requests/ListingRequest;
    invoke-virtual {v1, p0}, Lcom/airbnb/android/requests/ListingRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 227
    invoke-virtual {v1}, Lcom/airbnb/android/requests/ListingRequest;->willMissCache()Z

    move-result v2

    .line 230
    .end local v1    # "listingRequest":Lcom/airbnb/android/requests/ListingRequest;
    :cond_d0
    new-instance v4, Ljava/text/SimpleDateFormat;

    const v5, 0x7f0e052c

    invoke-virtual {p0, v5}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mShortMonthYearSdf:Ljava/text/SimpleDateFormat;

    .line 231
    sget-object v4, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v4, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 233
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    if-eqz v4, :cond_10c

    .line 234
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateWithListing()V

    .line 235
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->showRecommendedListingsIfNeeded()V

    .line 242
    :cond_ed
    :goto_ed
    const-string/jumbo v5, "android_eng"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    const-string/jumbo v8, "type"

    const-string/jumbo v9, "p3_cache_status"

    invoke-virtual {v4, v8, v9}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v8

    const-string/jumbo v9, "cached"

    if-nez v2, :cond_11e

    move v4, v6

    :goto_104
    invoke-virtual {v8, v9, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Z)Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 245
    return-object v3

    .line 236
    :cond_10c
    if-eqz v2, :cond_ed

    .line 237
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mFragmentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 238
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v4, v7}, Lcom/airbnb/android/views/LoaderFrame;->setVisibility(I)V

    .line 239
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v4}, Lcom/airbnb/android/views/LoaderFrame;->startAnimation()V

    goto :goto_ed

    :cond_11e
    move v4, v7

    .line 242
    goto :goto_104
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 269
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onDestroy()V

    .line 270
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 263
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onPause()V

    .line 264
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v0}, Lcom/airbnb/android/views/ClickableViewPager;->stopScrolling()V

    .line 265
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 250
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onResume()V

    .line 251
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mWishListButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_1f

    .line 252
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/AirbnbApi;->listingInWishList(Lcom/airbnb/android/models/Listing;)Z

    move-result v0

    .line 253
    .local v0, "selected":Z
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mWishListButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 254
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mWishListButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1c
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    .end local v0    # "selected":Z
    :cond_1f
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v1}, Lcom/airbnb/android/views/ClickableViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 257
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v1}, Lcom/airbnb/android/views/ClickableViewPager;->startScrolling()V

    .line 259
    :cond_2c
    return-void

    .line 254
    .restart local v0    # "selected":Z
    :cond_2d
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mUnselectedDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1c
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 275
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 276
    const-string/jumbo v0, "listing"

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 277
    const-string/jumbo v0, "recommended_listings"

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mRecommendedListings:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 278
    return-void
.end method
