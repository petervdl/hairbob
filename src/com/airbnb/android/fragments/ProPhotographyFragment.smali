.class public Lcom/airbnb/android/fragments/ProPhotographyFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "ProPhotographyFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingAdapter;,
        Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;
    }
.end annotation


# static fields
.field private static INVALID_ID:J = 0x0L

.field private static LISTING_ID:Ljava/lang/String; = null

.field private static LISTING_NAME:Ljava/lang/String; = null

.field private static final PHOTO_LIMIT:I = 0x4


# instance fields
.field private mConfirmRequestDialog:Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

.field private mLimitReachedDialog:Lcom/airbnb/android/fragments/ZenDialog;

.field private mListings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingProgressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

.field private mProPhotoRequest:Lcom/airbnb/android/requests/ProPhotoRequest;

.field private mSelectListingDialog:Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;

.field private originForAnalytics:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    const-string/jumbo v0, "listing_id"

    sput-object v0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->LISTING_ID:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "listing_name"

    sput-object v0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->LISTING_NAME:Ljava/lang/String;

    .line 45
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->INVALID_ID:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 373
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/ProPhotographyFragment;)Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProPhotographyFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->originForAnalytics:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    return-object v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/fragments/ProPhotographyFragment;Lcom/airbnb/android/fragments/ZenDialog;)Lcom/airbnb/android/fragments/ZenDialog;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProPhotographyFragment;
    .param p1, "x1"    # Lcom/airbnb/android/fragments/ZenDialog;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mLimitReachedDialog:Lcom/airbnb/android/fragments/ZenDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/airbnb/android/fragments/ProPhotographyFragment;)Lcom/airbnb/android/requests/ProPhotoRequest;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProPhotographyFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mProPhotoRequest:Lcom/airbnb/android/requests/ProPhotoRequest;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/airbnb/android/fragments/ProPhotographyFragment;Lcom/airbnb/android/requests/ProPhotoRequest;)Lcom/airbnb/android/requests/ProPhotoRequest;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProPhotographyFragment;
    .param p1, "x1"    # Lcom/airbnb/android/requests/ProPhotoRequest;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mProPhotoRequest:Lcom/airbnb/android/requests/ProPhotoRequest;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/airbnb/android/fragments/ProPhotographyFragment;)Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProPhotographyFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mConfirmRequestDialog:Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->LISTING_ID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()J
    .registers 2

    .prologue
    .line 40
    sget-wide v0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->INVALID_ID:J

    return-wide v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->LISTING_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/ProPhotographyFragment;JLjava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProPhotographyFragment;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->showConfirmDialogForListing(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/ProPhotographyFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProPhotographyFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->showSelectListingDialog()V

    return-void
.end method

.method static synthetic access$702(Lcom/airbnb/android/fragments/ProPhotographyFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProPhotographyFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mListings:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/ProPhotographyFragment;)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProPhotographyFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mLoadingProgressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    return-object v0
.end method

.method static synthetic access$900(Lcom/airbnb/android/fragments/ProPhotographyFragment;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProPhotographyFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->showSelectListingDialogWithData(Ljava/util/ArrayList;)V

    return-void
.end method

.method private checkForLimitReached(Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "rawListings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    const/4 v7, 0x0

    .line 199
    sget-object v8, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->REQUESTED:Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

    iget-object v5, v8, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->value:Ljava/lang/String;

    .line 200
    .local v5, "requested":Ljava/lang/String;
    sget-object v8, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->FINISHED:Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

    iget-object v2, v8, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->value:Ljava/lang/String;

    .line 201
    .local v2, "finished":Ljava/lang/String;
    sget-object v8, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->AVAILABLE:Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

    iget-object v0, v8, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->value:Ljava/lang/String;

    .line 202
    .local v0, "available":Ljava/lang/String;
    const/4 v1, 0x0

    .line 203
    .local v1, "countOfRequested":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/Listing;

    .line 204
    .local v4, "listing":Lcom/airbnb/android/models/Listing;
    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getProPhotoStatus()Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, "status":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2e

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 206
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 207
    :cond_31
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 226
    .end local v4    # "listing":Lcom/airbnb/android/models/Listing;
    .end local v6    # "status":Ljava/lang/String;
    :cond_37
    :goto_37
    return v7

    .line 212
    :cond_38
    const/4 v8, 0x4

    if-lt v1, v8, :cond_37

    .line 213
    iget-object v7, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mLimitReachedDialog:Lcom/airbnb/android/fragments/ZenDialog;

    if-nez v7, :cond_69

    .line 216
    iget-object v7, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mSelectListingDialog:Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;

    if-eqz v7, :cond_48

    .line 217
    iget-object v7, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mSelectListingDialog:Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;

    invoke-virtual {v7}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->dismiss()V

    .line 219
    :cond_48
    const v7, 0x7f0e05e7

    const v8, 0x7f0e05e8

    const v9, 0x7f0e0563

    invoke-static {v7, v8, v9}, Lcom/airbnb/android/fragments/ZenDialog;->createSingleButtonDialog(III)Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mLimitReachedDialog:Lcom/airbnb/android/fragments/ZenDialog;

    .line 221
    iget-object v7, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mLimitReachedDialog:Lcom/airbnb/android/fragments/ZenDialog;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 222
    iget-object v7, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->originForAnalytics:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    const-string/jumbo v8, "limit_reached"

    invoke-static {v7, v8}, Lcom/airbnb/android/analytics/ProPhotoAnalytics;->trackImpression(Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;Ljava/lang/String;)V

    .line 224
    :cond_69
    const/4 v7, 0x1

    goto :goto_37
.end method

.method public static newInstance(I)Lcom/airbnb/android/fragments/ProPhotographyFragment;
    .registers 4
    .param p0, "proPhotoAnalyticsOriginOrdinal"    # I

    .prologue
    .line 56
    new-instance v1, Lcom/airbnb/android/fragments/ProPhotographyFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/ProPhotographyFragment;-><init>()V

    .line 57
    .local v1, "f":Lcom/airbnb/android/fragments/ProPhotographyFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v0, "args":Landroid/os/Bundle;
    sget-object v2, Lcom/airbnb/android/activities/ProPhotographyActivity;->ORIGIN_FOR_ANALYTICS:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->setArguments(Landroid/os/Bundle;)V

    .line 60
    return-object v1
.end method

.method public static newInstanceForListing(IJLjava/lang/String;)Lcom/airbnb/android/fragments/ProPhotographyFragment;
    .registers 7
    .param p0, "proPhotoAnalyticsOriginOrdinal"    # I
    .param p1, "listingId"    # J
    .param p3, "listingName"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v1, Lcom/airbnb/android/fragments/ProPhotographyFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/ProPhotographyFragment;-><init>()V

    .line 65
    .local v1, "f":Lcom/airbnb/android/fragments/ProPhotographyFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v0, "args":Landroid/os/Bundle;
    sget-object v2, Lcom/airbnb/android/activities/ProPhotographyActivity;->ORIGIN_FOR_ANALYTICS:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    sget-object v2, Lcom/airbnb/android/fragments/ProPhotographyFragment;->LISTING_ID:Ljava/lang/String;

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 68
    sget-object v2, Lcom/airbnb/android/fragments/ProPhotographyFragment;->LISTING_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    return-object v1
.end method

.method private preLoadListings()V
    .registers 5

    .prologue
    .line 115
    new-instance v0, Lcom/airbnb/android/requests/MySpacesRequest;

    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/airbnb/android/fragments/ProPhotographyFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/ProPhotographyFragment$2;-><init>(Lcom/airbnb/android/fragments/ProPhotographyFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/requests/MySpacesRequest;-><init>(Ljava/lang/String;ZLcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/MySpacesRequest;->execute()V

    .line 127
    return-void
.end method

.method private showConfirmDialogForListing(JLjava/lang/String;)V
    .registers 9
    .param p1, "listingId"    # J
    .param p3, "listingName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 234
    const v0, 0x7f0e05e2

    const v1, 0x7f0e05e3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e0735

    invoke-static {v0, v1, p3, v2}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->newInstanceWithBold(ILjava/lang/String;Ljava/lang/String;I)Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mConfirmRequestDialog:Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    .line 236
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mConfirmRequestDialog:Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    new-instance v1, Lcom/airbnb/android/fragments/ProPhotographyFragment$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/airbnb/android/fragments/ProPhotographyFragment$5;-><init>(Lcom/airbnb/android/fragments/ProPhotographyFragment;J)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->setSingleButtonDialogListener(Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment$SingleButtonDialogListener;)V

    .line 284
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mSelectListingDialog:Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mSelectListingDialog:Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 285
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mConfirmRequestDialog:Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mSelectListingDialog:Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 289
    :goto_47
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->originForAnalytics:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    const-string/jumbo v1, "confirm_request"

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/ProPhotoAnalytics;->trackImpression(Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;Ljava/lang/String;)V

    .line 290
    return-void

    .line 287
    :cond_50
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mConfirmRequestDialog:Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_47
.end method

.method private showSelectListingDialog()V
    .registers 5

    .prologue
    .line 133
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mListings:Ljava/util/ArrayList;

    if-eqz v0, :cond_28

    .line 134
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mListings:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->showSelectListingDialogWithData(Ljava/util/ArrayList;)V

    .line 141
    :goto_9
    new-instance v0, Lcom/airbnb/android/fragments/ProPhotographyFragment$4;

    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/airbnb/android/fragments/ProPhotographyFragment$3;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/ProPhotographyFragment$3;-><init>(Lcom/airbnb/android/fragments/ProPhotographyFragment;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/airbnb/android/fragments/ProPhotographyFragment$4;-><init>(Lcom/airbnb/android/fragments/ProPhotographyFragment;Ljava/lang/String;ZLcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0, p0}, Lcom/airbnb/android/fragments/ProPhotographyFragment$4;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 166
    return-void

    .line 136
    :cond_28
    const v0, 0x7f0e03fe

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->newInstance(II)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mLoadingProgressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    .line 137
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mLoadingProgressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private showSelectListingDialogWithData(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "rawListings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/Listing;>;"
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->checkForLimitReached(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 175
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mSelectListingDialog:Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mSelectListingDialog:Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 176
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mSelectListingDialog:Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->setListViewData(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->access$1000(Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;Ljava/util/List;)V

    .line 191
    :cond_17
    :goto_17
    return-void

    .line 180
    :cond_18
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mSelectListingDialog:Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;

    if-eqz v0, :cond_21

    .line 181
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mSelectListingDialog:Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->dismiss()V

    .line 183
    :cond_21
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mLimitReachedDialog:Lcom/airbnb/android/fragments/ZenDialog;

    if-eqz v0, :cond_2a

    .line 184
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mLimitReachedDialog:Lcom/airbnb/android/fragments/ZenDialog;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog;->dismiss()V

    .line 186
    :cond_2a
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->originForAnalytics:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    invoke-virtual {v0}, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->ordinal()I

    move-result v0

    invoke-static {p1, v0}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->newInstance(Ljava/util/ArrayList;I)Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mSelectListingDialog:Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;

    .line 187
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mSelectListingDialog:Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->mSelectListingDialog:Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    goto :goto_17
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->preLoadListings()V

    .line 77
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/airbnb/android/activities/ProPhotographyActivity;->ORIGIN_FOR_ANALYTICS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->EDIT_LISTING:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    invoke-virtual {v1}, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_25

    sget-object v0, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->EDIT_LISTING:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    :goto_1a
    iput-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->originForAnalytics:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    .line 79
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment;->originForAnalytics:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    const-string/jumbo v1, "get_photography"

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/ProPhotoAnalytics;->trackImpression(Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;Ljava/lang/String;)V

    .line 80
    return-void

    .line 77
    :cond_25
    sget-object v0, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->HOSPITALITY:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    goto :goto_1a
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    const v3, 0x7f0300d6

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 86
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f080256

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/CircleBadgeView;

    .line 87
    .local v1, "circleBadge":Lcom/airbnb/android/views/CircleBadgeView;
    invoke-virtual {v1}, Lcom/airbnb/android/views/CircleBadgeView;->initializeAsInactiveBadge()V

    .line 89
    const v3, 0x7f080257

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/StickyButton;

    .line 90
    .local v0, "applyButton":Lcom/airbnb/android/views/StickyButton;
    const v3, 0x7f0e05ea

    invoke-virtual {v0, v3}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 91
    new-instance v3, Lcom/airbnb/android/fragments/ProPhotographyFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/ProPhotographyFragment$1;-><init>(Lcom/airbnb/android/fragments/ProPhotographyFragment;)V

    invoke-virtual {v0, v3}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-object v2
.end method
