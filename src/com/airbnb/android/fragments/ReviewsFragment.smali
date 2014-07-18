.class public Lcom/airbnb/android/fragments/ReviewsFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "ReviewsFragment.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/ReviewsFragment$6;
    }
.end annotation


# static fields
.field private static final ARG_LISTING:Ljava/lang/String; = "listing"

.field private static final ARG_REVIEW_MODE:Ljava/lang/String; = "reviewMode"

.field private static final ARG_USER:Ljava/lang/String; = "user"

.field private static final NOT_YET_SET:I = -0x1


# instance fields
.field private mListing:Lcom/airbnb/android/models/Listing;

.field private mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

.field private mOppositeReviewsCount:I

.field private mReviewMode:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

.field private mReviewsCount:I

.field private mUser:Lcom/airbnb/android/models/User;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 35
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 47
    iput v0, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mReviewsCount:I

    .line 48
    iput v0, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mOppositeReviewsCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/ReviewsFragment;)Lcom/airbnb/android/models/User;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ReviewsFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mUser:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/ReviewsFragment;)Lcom/airbnb/android/views/LoaderListView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ReviewsFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/ReviewsFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ReviewsFragment;

    .prologue
    .line 35
    iget v0, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mReviewsCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/ReviewsFragment;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ReviewsFragment;
    .param p1, "x1"    # Ljava/lang/Integer;
    .param p2, "x2"    # Ljava/lang/Integer;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/fragments/ReviewsFragment;->inputReviewCount(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/ReviewsFragment;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ReviewsFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method private addActionBarSpinnerIfNeeded()V
    .registers 8

    .prologue
    .line 216
    new-instance v0, Lcom/airbnb/android/requests/ReviewsRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/airbnb/android/fragments/ReviewsFragment;->getOppositeMode()Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    move-result-object v3

    const/16 v4, 0x3e8

    const/4 v5, 0x1

    new-instance v6, Lcom/airbnb/android/fragments/ReviewsFragment$5;

    invoke-direct {v6, p0}, Lcom/airbnb/android/fragments/ReviewsFragment$5;-><init>(Lcom/airbnb/android/fragments/ReviewsFragment;)V

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/android/requests/ReviewsRequest;-><init>(JLcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;IILcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/ReviewsRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 228
    return-void
.end method

.method private getOppositeMode()Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;
    .registers 3

    .prologue
    .line 234
    sget-object v0, Lcom/airbnb/android/fragments/ReviewsFragment$6;->$SwitchMap$com$airbnb$android$activities$ReviewsActivity$ReviewsMode:[I

    iget-object v1, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mReviewMode:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "is there an unsupported ReviewsMode? "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :pswitch_16
    sget-object v0, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_HOST:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    .line 240
    :goto_18
    return-object v0

    :pswitch_19
    sget-object v0, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_GUEST:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    goto :goto_18

    .line 234
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_19
    .end packed-switch
.end method

.method private inputReviewCount(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 6
    .param p1, "defaultModeCount"    # Ljava/lang/Integer;
    .param p2, "oppositeModeCount"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 256
    if-nez p1, :cond_12

    move v2, v0

    :goto_5
    if-nez p2, :cond_14

    :goto_7
    if-ne v2, v0, :cond_16

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "you are supposed to pass in one count type per volley response!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move v2, v1

    .line 256
    goto :goto_5

    :cond_14
    move v0, v1

    goto :goto_7

    .line 260
    :cond_16
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1c
    iput v0, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mReviewsCount:I

    .line 261
    if-eqz p2, :cond_3b

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_24
    iput v0, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mOppositeReviewsCount:I

    .line 264
    iget v0, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mReviewsCount:I

    if-lez v0, :cond_3e

    iget v0, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mOppositeReviewsCount:I

    if-lez v0, :cond_3e

    iget v0, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mReviewsCount:I

    iget v1, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mOppositeReviewsCount:I

    if-eq v0, v1, :cond_3e

    .line 265
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ReviewsFragment;->showReviewTypeSpinnerInActionBar()V

    .line 276
    :cond_37
    :goto_37
    return-void

    .line 260
    :cond_38
    iget v0, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mReviewsCount:I

    goto :goto_1c

    .line 261
    :cond_3b
    iget v0, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mOppositeReviewsCount:I

    goto :goto_24

    .line 266
    :cond_3e
    iget v0, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mReviewsCount:I

    if-nez v0, :cond_37

    iget v0, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mOppositeReviewsCount:I

    if-lez v0, :cond_37

    .line 267
    iget-object v0, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mReviewMode:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    sget-object v1, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_LISTING:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    if-eq v0, v1, :cond_37

    .line 272
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ReviewsFragment;->getOppositeMode()Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/ReviewsFragment;->setUserReviewAdapter(Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;)V

    goto :goto_37
.end method

.method public static newInstanceForListing(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;)Landroid/support/v4/app/Fragment;
    .registers 6
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p1, "reviewMode"    # Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    .prologue
    .line 60
    new-instance v1, Lcom/airbnb/android/fragments/ReviewsFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/ReviewsFragment;-><init>()V

    .line 61
    .local v1, "f":Landroid/support/v4/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "reviewMode"

    invoke-virtual {p1}, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    return-object v1
.end method

.method public static newInstanceForUser(Lcom/airbnb/android/models/User;Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;)Landroid/support/v4/app/Fragment;
    .registers 6
    .param p0, "user"    # Lcom/airbnb/android/models/User;
    .param p1, "reviewMode"    # Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    .prologue
    .line 51
    new-instance v1, Lcom/airbnb/android/fragments/ReviewsFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/ReviewsFragment;-><init>()V

    .line 52
    .local v1, "f":Landroid/support/v4/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "reviewMode"

    invoke-virtual {p1}, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 55
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    return-object v1
.end method

.method private setListingReviewAdapter()V
    .registers 7

    .prologue
    .line 143
    new-instance v2, Lcom/airbnb/android/adapters/ReviewsAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ReviewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0301b9

    iget-object v5, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mReviewMode:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    invoke-direct {v2, v3, v4, v5}, Lcom/airbnb/android/adapters/ReviewsAdapter;-><init>(Landroid/content/Context;ILcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;)V

    .line 145
    .local v2, "reviewListAdapter":Lcom/airbnb/android/adapters/ReviewsAdapter;
    new-instance v1, Lcom/airbnb/android/fragments/ReviewsFragment$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ReviewsFragment$3;-><init>(Lcom/airbnb/android/fragments/ReviewsFragment;)V

    .line 154
    .local v1, "factory":Lcom/airbnb/android/requests/AirRequestFactory;, "Lcom/airbnb/android/requests/AirRequestFactory<Lcom/airbnb/android/requests/ListingReviewsRequest;>;"
    new-instance v0, Lcom/airbnb/android/utils/InfiniteAdapter;

    const v3, 0x7f03014c

    invoke-direct {v0, v2, v3, v1, p0}, Lcom/airbnb/android/utils/InfiniteAdapter;-><init>(Landroid/widget/ArrayAdapter;ILcom/airbnb/android/requests/AirRequestFactory;Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 157
    .local v0, "adapter":Lcom/airbnb/android/utils/InfiniteAdapter;, "Lcom/airbnb/android/utils/InfiniteAdapter<Lcom/airbnb/android/requests/ListingReviewsRequest;Lcom/airbnb/android/models/Review;>;"
    new-instance v3, Lcom/airbnb/android/fragments/ReviewsFragment$4;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/ReviewsFragment$4;-><init>(Lcom/airbnb/android/fragments/ReviewsFragment;)V

    invoke-virtual {v0, v3}, Lcom/airbnb/android/utils/InfiniteAdapter;->setRequestListener(Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener;)V

    .line 174
    iget-object v3, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/LoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    return-void
.end method

.method private setUserReviewAdapter(Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;)V
    .registers 7
    .param p1, "mode"    # Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    .prologue
    .line 106
    new-instance v2, Lcom/airbnb/android/adapters/ReviewsAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ReviewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0301b9

    invoke-direct {v2, v3, v4, p1}, Lcom/airbnb/android/adapters/ReviewsAdapter;-><init>(Landroid/content/Context;ILcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;)V

    .line 108
    .local v2, "reviewListAdapter":Lcom/airbnb/android/adapters/ReviewsAdapter;
    new-instance v1, Lcom/airbnb/android/fragments/ReviewsFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/fragments/ReviewsFragment$1;-><init>(Lcom/airbnb/android/fragments/ReviewsFragment;Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;)V

    .line 117
    .local v1, "factory":Lcom/airbnb/android/requests/AirRequestFactory;, "Lcom/airbnb/android/requests/AirRequestFactory<Lcom/airbnb/android/requests/ReviewsRequest;>;"
    new-instance v0, Lcom/airbnb/android/utils/InfiniteAdapter;

    const v3, 0x7f03014c

    invoke-direct {v0, v2, v3, v1, p0}, Lcom/airbnb/android/utils/InfiniteAdapter;-><init>(Landroid/widget/ArrayAdapter;ILcom/airbnb/android/requests/AirRequestFactory;Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 120
    .local v0, "adapter":Lcom/airbnb/android/utils/InfiniteAdapter;, "Lcom/airbnb/android/utils/InfiniteAdapter<Lcom/airbnb/android/requests/ReviewsRequest;Lcom/airbnb/android/models/Review;>;"
    new-instance v3, Lcom/airbnb/android/fragments/ReviewsFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/ReviewsFragment$2;-><init>(Lcom/airbnb/android/fragments/ReviewsFragment;)V

    invoke-virtual {v0, v3}, Lcom/airbnb/android/utils/InfiniteAdapter;->setRequestListener(Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener;)V

    .line 137
    iget-object v3, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/LoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    return-void
.end method

.method private showReviewTypeSpinnerInActionBar()V
    .registers 19

    .prologue
    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ReviewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    check-cast v13, Lcom/airbnb/android/activities/ReviewsActivity;

    invoke-virtual {v13}, Lcom/airbnb/android/activities/ReviewsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 280
    .local v1, "actionBar":Landroid/app/ActionBar;
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 281
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 284
    const/4 v8, 0x0

    .line 286
    .local v8, "spinnerSubtitles":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/ReviewsFragment;->mReviewMode:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    sget-object v14, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_LISTING:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    if-ne v13, v14, :cond_a9

    .line 287
    const/4 v13, 0x2

    new-array v5, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const v14, 0x7f0e066f

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ReviewsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/airbnb/android/fragments/ReviewsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v5, v13

    const/4 v13, 0x1

    const v14, 0x7f0e066f

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ReviewsFragment;->mUser:Lcom/airbnb/android/models/User;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/android/models/User;->getName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/airbnb/android/fragments/ReviewsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v5, v13

    .line 291
    .local v5, "listingSpinnerTitles":[Ljava/lang/String;
    move-object v9, v5

    .line 293
    .local v9, "spinnerTitles":[Ljava/lang/String;
    const/4 v13, 0x2

    new-array v4, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const v14, 0x7f0e066a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/airbnb/android/fragments/ReviewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v13

    const/4 v13, 0x1

    const v14, 0x7f0e0669

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ReviewsFragment;->mUser:Lcom/airbnb/android/models/User;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/android/models/User;->getName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/airbnb/android/fragments/ReviewsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v13

    .line 297
    .local v4, "listingDropdownTitles":[Ljava/lang/String;
    move-object v3, v4

    .line 323
    .end local v4    # "listingDropdownTitles":[Ljava/lang/String;
    .end local v5    # "listingSpinnerTitles":[Ljava/lang/String;
    .local v3, "dropdownTitles":[Ljava/lang/String;
    :goto_86
    new-instance v7, Lcom/airbnb/android/adapters/AirSpinnerAdapter;

    invoke-direct {v7, v9, v8, v3}, Lcom/airbnb/android/adapters/AirSpinnerAdapter;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 325
    .local v7, "spinnerAdapter":Landroid/widget/SpinnerAdapter;
    move-object/from16 v0, p0

    invoke-virtual {v1, v7, v0}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 326
    const/4 v2, 0x0

    .line 327
    .local v2, "defaultPosition":I
    sget-object v13, Lcom/airbnb/android/fragments/ReviewsFragment$6;->$SwitchMap$com$airbnb$android$activities$ReviewsActivity$ReviewsMode:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/airbnb/android/fragments/ReviewsFragment;->mReviewMode:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    invoke-virtual {v14}, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_12a

    .line 339
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string/jumbo v14, "unexpected position"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 300
    .end local v2    # "defaultPosition":I
    .end local v3    # "dropdownTitles":[Ljava/lang/String;
    .end local v7    # "spinnerAdapter":Landroid/widget/SpinnerAdapter;
    .end local v9    # "spinnerTitles":[Ljava/lang/String;
    :cond_a9
    const v13, 0x7f0e066f

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/ReviewsFragment;->mUser:Lcom/airbnb/android/models/User;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/android/models/User;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/airbnb/android/fragments/ReviewsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 301
    .local v6, "reviewsForUser":Ljava/lang/String;
    const/4 v13, 0x3

    new-array v12, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    const/4 v13, 0x1

    aput-object v6, v12, v13

    const/4 v13, 0x2

    aput-object v6, v12, v13

    .line 306
    .local v12, "userSpinnerTitles":[Ljava/lang/String;
    move-object v9, v12

    .line 308
    .restart local v9    # "spinnerTitles":[Ljava/lang/String;
    const/4 v13, 0x3

    new-array v11, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const v14, 0x7f0e0667

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/airbnb/android/fragments/ReviewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x1

    const v14, 0x7f0e0671

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/airbnb/android/fragments/ReviewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x2

    const v14, 0x7f0e0673

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/airbnb/android/fragments/ReviewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    .line 313
    .local v11, "userSpinnerSubtitles":[Ljava/lang/String;
    move-object v8, v11

    .line 315
    const/4 v13, 0x3

    new-array v10, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const v14, 0x7f0e0667

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/airbnb/android/fragments/ReviewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v13

    const/4 v13, 0x1

    const v14, 0x7f0e0670

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/airbnb/android/fragments/ReviewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v13

    const/4 v13, 0x2

    const v14, 0x7f0e0672

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/airbnb/android/fragments/ReviewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v13

    .line 320
    .local v10, "userDropdownTitles":[Ljava/lang/String;
    move-object v3, v10

    .restart local v3    # "dropdownTitles":[Ljava/lang/String;
    goto/16 :goto_86

    .line 330
    .end local v6    # "reviewsForUser":Ljava/lang/String;
    .end local v10    # "userDropdownTitles":[Ljava/lang/String;
    .end local v11    # "userSpinnerSubtitles":[Ljava/lang/String;
    .end local v12    # "userSpinnerTitles":[Ljava/lang/String;
    .restart local v2    # "defaultPosition":I
    .restart local v7    # "spinnerAdapter":Landroid/widget/SpinnerAdapter;
    :pswitch_121
    const/4 v2, 0x0

    .line 341
    :goto_122
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 342
    return-void

    .line 333
    :pswitch_126
    const/4 v2, 0x1

    .line 334
    goto :goto_122

    .line 336
    :pswitch_128
    const/4 v2, 0x2

    .line 337
    goto :goto_122

    .line 327
    :pswitch_data_12a
    .packed-switch 0x1
        :pswitch_121
        :pswitch_128
        :pswitch_121
        :pswitch_126
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ReviewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 73
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    iput-object v1, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 74
    iget-object v1, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    if-nez v1, :cond_34

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/User;

    :goto_1f
    iput-object v1, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mUser:Lcom/airbnb/android/models/User;

    .line 75
    invoke-static {}, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->values()[Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    move-result-object v1

    const-string/jumbo v2, "reviewMode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mReviewMode:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    .line 77
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ReviewsFragment;->addActionBarSpinnerIfNeeded()V

    .line 78
    return-void

    .line 74
    :cond_34
    iget-object v1, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v1

    goto :goto_1f
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    const v3, 0x7f0300e1

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 83
    .local v2, "v":Landroid/view/View;
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/views/LoaderListView;

    iput-object v3, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    .line 85
    iget-object v3, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/LoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 86
    .local v1, "listView":Landroid/widget/ListView;
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ReviewsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 88
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ReviewsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 89
    .local v0, "dividerHeight":I
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 91
    iget-object v3, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/LoaderListView;->startLoader()V

    .line 93
    iget-object v3, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mReviewMode:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    sget-object v4, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_LISTING:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    if-ne v3, v4, :cond_4a

    .line 94
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ReviewsFragment;->setListingReviewAdapter()V

    .line 99
    :goto_49
    return-object v2

    .line 96
    :cond_4a
    iget-object v3, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mReviewMode:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    invoke-direct {p0, v3}, Lcom/airbnb/android/fragments/ReviewsFragment;->setUserReviewAdapter(Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;)V

    goto :goto_49
.end method

.method public onNavigationItemSelected(IJ)Z
    .registers 7
    .param p1, "itemPosition"    # I
    .param p2, "itemId"    # J

    .prologue
    .line 182
    sget-object v0, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_ALL:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    .line 183
    .local v0, "mode":Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;
    packed-switch p1, :pswitch_data_2c

    .line 198
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "unexpected position"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :pswitch_e
    iget-object v1, p0, Lcom/airbnb/android/fragments/ReviewsFragment;->mReviewMode:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    sget-object v2, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_LISTING:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    if-ne v1, v2, :cond_1f

    .line 186
    sget-object v0, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_LISTING:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    .line 201
    :goto_16
    sget-object v1, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_LISTING:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    if-ne v0, v1, :cond_28

    .line 202
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ReviewsFragment;->setListingReviewAdapter()V

    .line 206
    :goto_1d
    const/4 v1, 0x1

    return v1

    .line 188
    :cond_1f
    sget-object v0, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_ALL:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    .line 190
    goto :goto_16

    .line 192
    :pswitch_22
    sget-object v0, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_HOST:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    .line 193
    goto :goto_16

    .line 195
    :pswitch_25
    sget-object v0, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_GUEST:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    .line 196
    goto :goto_16

    .line 204
    :cond_28
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/ReviewsFragment;->setUserReviewAdapter(Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;)V

    goto :goto_1d

    .line 183
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_e
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method
