.class public Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;
.super Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;
.source "PostListManageListingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$17;
    }
.end annotation


# static fields
.field private static final ARGS_LISTING:Ljava/lang/String; = "listing"

.field private static final ARGS_SHOW_IB_SELL:Ljava/lang/String; = "show_ib_sell"

.field private static final DIALOG_REQ_DELETE:I = 0x79b

.field public static final DIALOG_REQ_IB_FTUE:I = 0x799

.field private static final DIALOG_REQ_LIST_UNLIST:I = 0x79a

.field private static final IB_SCROLL_ANIM_DELAY:I = 0x1f4

.field private static final IB_SCROLL_ANIM_DURATION:I = 0x3e8


# instance fields
.field mDeleteCell:Lcom/airbnb/android/views/GroupedCell;

.field private mDetailsAdapter:Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;

.field private mDetailsItemOnClickListener:Lcom/airbnb/android/views/LinearListView$OnItemClickListener;

.field mDetailsList:Lcom/airbnb/android/views/LinearListView;

.field private mDetailsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mHideInstantBookSection:Z

.field private mInstantBookDisabled:Z

.field mInstantBookList:Lcom/airbnb/android/views/GroupedCell;

.field mInstantBookListHeader:Landroid/widget/TextView;

.field private mIsInitialized:Z

.field mLocalLaws:Landroid/widget/TextView;

.field mPreviewListingButton:Landroid/widget/TextView;

.field private mPriceItemOnClickListener:Lcom/airbnb/android/views/LinearListView$OnItemClickListener;

.field mPriceList:Lcom/airbnb/android/views/LinearListView;

.field private mPriceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPricingAdapter:Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;

.field private mScrollToInstantBook:Z

.field private mScrollValue:I

.field mScrollView:Landroid/widget/ScrollView;

.field mStickyListButton:Lcom/airbnb/android/views/StickyButton;

.field mSummaryLayout:Landroid/view/View;

.field mSummaryText:Landroid/widget/TextView;

.field mTitleLayout:Landroid/view/View;

.field mTitleText:Landroid/widget/TextView;

.field mUnlistCell:Lcom/airbnb/android/views/GroupedCell;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;-><init>()V

    .line 97
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mPriceItemOnClickListener:Lcom/airbnb/android/views/LinearListView$OnItemClickListener;

    .line 127
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$2;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$2;-><init>(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mDetailsItemOnClickListener:Lcom/airbnb/android/views/LinearListView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mPricingAdapter:Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mDetailsAdapter:Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->listOrUnlist()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    .prologue
    .line 61
    iget v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mScrollValue:I

    return v0
.end method

.method private buildPriceMap(Lcom/airbnb/android/models/Listing;)V
    .registers 7
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 368
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mPriceMap:Ljava/util/HashMap;

    .line 369
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mPriceMap:Ljava/util/HashMap;

    sget-object v3, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->BasePrice:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getListingPriceNative()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mPriceMap:Ljava/util/HashMap;

    sget-object v3, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->Currency:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getListingNativeCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mPriceMap:Ljava/util/HashMap;

    sget-object v4, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->LongTermPrices:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getListingWeeklyPriceNative()I

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getListingMonthlyPriceNative()I

    move-result v0

    if-eqz v0, :cond_60

    :cond_33
    move v0, v2

    :goto_34
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mPriceMap:Ljava/util/HashMap;

    sget-object v3, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->AdditionalCharges:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getListingCleaningFeeNative()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_57

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getListingWeekendPriceNative()I

    move-result v4

    if-gtz v4, :cond_57

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getListingPriceForExtraPersonNative()I

    move-result v4

    if-gtz v4, :cond_57

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getListingSecurityDepositNative()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_58

    :cond_57
    move v1, v2

    :cond_58
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    return-void

    :cond_60
    move v0, v1

    .line 371
    goto :goto_34
.end method

.method private deleteListing()V
    .registers 6

    .prologue
    .line 502
    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v4, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v4, v4, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v2

    if-eqz v2, :cond_3f

    const-string/jumbo v2, "ml_post_list"

    :goto_18
    aput-object v2, v3, v4

    const/4 v2, 0x2

    const-string/jumbo v4, "delete_space_confirmation"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string/jumbo v4, "delete"

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v0

    .line 507
    .local v0, "listingId":J
    new-instance v2, Lcom/airbnb/android/requests/ListingDeleteRequest;

    new-instance v3, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$16;

    invoke-direct {v3, p0, v0, v1}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$16;-><init>(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;J)V

    invoke-direct {v2, v0, v1, v3}, Lcom/airbnb/android/requests/ListingDeleteRequest;-><init>(JLcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v2}, Lcom/airbnb/android/requests/ListingDeleteRequest;->execute()V

    .line 526
    return-void

    .line 502
    .end local v0    # "listingId":J
    :cond_3f
    const-string/jumbo v2, "ml_pre_list"

    goto :goto_18
.end method

.method private handleInstantBookSelling(Lcom/airbnb/android/models/Listing;)V
    .registers 3
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mScrollToInstantBook:Z

    if-eqz v0, :cond_7

    .line 480
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->scrollToInstantBookSettings()V

    .line 482
    :cond_7
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mInstantBookDisabled:Z

    if-nez v0, :cond_14

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->isInstantBookEligible()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 483
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->showInstantBookFtueIfNeeded(Lcom/airbnb/android/models/Listing;)V

    .line 485
    :cond_14
    return-void
.end method

.method private listOrUnlist()V
    .registers 9

    .prologue
    const v3, 0x7f0e07a0

    const v4, 0x7f0e03c2

    const/4 v2, 0x0

    .line 354
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->isListed()Z

    move-result v7

    .line 355
    .local v7, "isListed":Z
    if-eqz v7, :cond_4d

    const v0, 0x7f0e0513

    :goto_14
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 358
    .local v6, "bodyMessage":Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    if-eqz v7, :cond_51

    move v0, v3

    :goto_2c
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e00b0

    if-eqz v7, :cond_53

    :goto_39
    const/16 v4, 0x79a

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withDualButton(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 365
    return-void

    .line 355
    .end local v6    # "bodyMessage":Ljava/lang/String;
    :cond_4d
    const v0, 0x7f0e0516

    goto :goto_14

    .restart local v6    # "bodyMessage":Ljava/lang/String;
    :cond_51
    move v0, v4

    .line 358
    goto :goto_2c

    :cond_53
    move v3, v4

    goto :goto_39
.end method

.method public static newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;
    .registers 2
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->newInstance(Lcom/airbnb/android/models/Listing;Z)Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/airbnb/android/models/Listing;Z)Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;
    .registers 5
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p1, "showIbSell"    # Z

    .prologue
    .line 178
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;-><init>()V

    .line 179
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 180
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 181
    const-string/jumbo v2, "show_ib_sell"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 182
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 184
    return-object v1
.end method

.method private refreshInstantBookListView(Lcom/airbnb/android/models/Listing;)V
    .registers 5
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 451
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->isInstantBookableBySomeone()Z

    move-result v0

    .line 452
    .local v0, "isEnabled":Z
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mInstantBookList:Lcom/airbnb/android/views/GroupedCell;

    if-eqz v0, :cond_f

    const v1, 0x7f0e0565

    :goto_b
    invoke-virtual {v2, v1}, Lcom/airbnb/android/views/GroupedCell;->setContent(I)V

    .line 453
    return-void

    .line 452
    :cond_f
    const v1, 0x7f0e0562

    goto :goto_b
.end method

.method private refreshPriceListView()V
    .registers 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mPricingAdapter:Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mPriceMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;->setPriceMap(Ljava/util/HashMap;)V

    .line 447
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mPricingAdapter:Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;->notifyDataSetChanged()V

    .line 448
    return-void
.end method

.method private scrollToInstantBookSettings()V
    .registers 5

    .prologue
    .line 380
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$15;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$15;-><init>(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 397
    return-void
.end method

.method private showInstantBookFtueIfNeeded(Lcom/airbnb/android/models/Listing;)V
    .registers 5
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 488
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->isInstantBookableBySomeone()Z

    move-result v1

    if-nez v1, :cond_31

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->hasClosedInstantBookFtue()Z

    move-result v1

    if-nez v1, :cond_31

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeInstantBookFtue(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 489
    const/16 v1, 0x799

    invoke-static {p0, v1}, Lcom/airbnb/android/fragments/InstantBookFtueDialog;->newInstance(Landroid/support/v4/app/Fragment;I)Lcom/airbnb/android/fragments/InstantBookFtueDialog;

    move-result-object v0

    .line 490
    .local v0, "f":Lcom/airbnb/android/fragments/InstantBookFtueDialog;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/airbnb/android/fragments/InstantBookFtueDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/InstantBookFtueDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markInstantBookFtueAsSeen(Landroid/content/Context;)V

    .line 495
    .end local v0    # "f":Lcom/airbnb/android/fragments/InstantBookFtueDialog;
    :cond_30
    :goto_30
    return-void

    .line 492
    :cond_31
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->isInstantBookable()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 493
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markInstantBookFtueAsSeen(Landroid/content/Context;)V

    goto :goto_30
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 530
    const/16 v1, 0x799

    if-ne p1, v1, :cond_8

    .line 531
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->scrollToInstantBookSettings()V

    .line 541
    :goto_7
    return-void

    .line 532
    :cond_8
    const/16 v1, 0x79a

    if-ne p1, v1, :cond_28

    .line 533
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->isListed()Z

    move-result v1

    if-nez v1, :cond_26

    const/4 v0, 0x1

    .line 534
    .local v0, "listed":Z
    :goto_17
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/activities/ManageListingActivity;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/activities/ManageListingActivity;->listOrUnlist(Z)V

    .line 535
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mStickyListButton:Lcom/airbnb/android/views/StickyButton;

    invoke-static {v1, v0}, Lcom/airbnb/android/utils/MiscUtils;->setVisibleIf(Landroid/view/View;Z)V

    goto :goto_7

    .line 533
    .end local v0    # "listed":Z
    :cond_26
    const/4 v0, 0x0

    goto :goto_17

    .line 536
    :cond_28
    const/16 v1, 0x79b

    if-ne p1, v1, :cond_30

    .line 537
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->deleteListing()V

    goto :goto_7

    .line 539
    :cond_30
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 401
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 403
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "listing"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->setListingObject(Lcom/airbnb/android/models/Listing;)V

    .line 404
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "show_ib_sell"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mScrollToInstantBook:Z

    .line 405
    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->setHasOptionsMenu(Z)V

    .line 406
    const-string/jumbo v0, "instant_book_settings"

    const-string/jumbo v3, "disabled"

    invoke-static {v0, v3, v2}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mInstantBookDisabled:Z

    .line 408
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mInstantBookDisabled:Z

    if-eqz v0, :cond_43

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->isInstantBookableBySomeone()Z

    move-result v0

    if-nez v0, :cond_43

    move v0, v1

    :goto_40
    iput-boolean v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mHideInstantBookSection:Z

    .line 409
    return-void

    :cond_43
    move v0, v2

    .line 408
    goto :goto_40
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 413
    const v0, 0x7f100013

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 415
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 416
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 190
    const v4, 0x7f0300b7

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 191
    .local v3, "view":Landroid/view/View;
    invoke-static {p0, v3}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 192
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v1

    .line 194
    .local v1, "listing":Lcom/airbnb/android/models/Listing;
    new-instance v4, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$3;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$3;-><init>(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)V

    invoke-virtual {p0, v3, v1, v4}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->setupPhotosView(Landroid/view/View;Lcom/airbnb/android/models/Listing;Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15f

    const v4, 0x7f0e05c9

    invoke-virtual {p0, v4}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2a
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mTitleLayout:Landroid/view/View;

    new-instance v5, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$4;

    invoke-direct {v5, p0, v1}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$4;-><init>(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_165

    const v4, 0x7f0e05c8

    invoke-virtual {p0, v4}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_4a
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mSummaryLayout:Landroid/view/View;

    new-instance v5, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$5;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$5;-><init>(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mUnlistCell:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->isListed()Z

    move-result v4

    if-eqz v4, :cond_16b

    const v4, 0x7f0e07a0

    :goto_62
    invoke-virtual {v5, v4}, Lcom/airbnb/android/views/GroupedCell;->setTitle(I)V

    .line 228
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mUnlistCell:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {v4}, Lcom/airbnb/android/views/GroupedCell;->getTooltip()Lcom/airbnb/android/views/GroupedTooltip;

    move-result-object v4

    new-instance v5, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$6;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$6;-><init>(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/GroupedTooltip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mUnlistCell:Lcom/airbnb/android/views/GroupedCell;

    new-instance v5, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$7;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$7;-><init>(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mStickyListButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v5, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$8;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$8;-><init>(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->isListed()Z

    move-result v4

    if-nez v4, :cond_92

    .line 249
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mStickyListButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v4, v6}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    .line 253
    :cond_92
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mDeleteCell:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {v4}, Lcom/airbnb/android/views/GroupedCell;->getTooltip()Lcom/airbnb/android/views/GroupedTooltip;

    move-result-object v4

    new-instance v5, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$9;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$9;-><init>(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/GroupedTooltip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mDeleteCell:Lcom/airbnb/android/views/GroupedCell;

    new-instance v5, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$10;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$10;-><init>(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mPreviewListingButton:Landroid/widget/TextView;

    new-instance v5, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$11;

    invoke-direct {v5, p0, v1}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$11;-><init>(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-boolean v4, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mHideInstantBookSection:Z

    if-nez v4, :cond_d2

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->isInstantBookEligible()Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 278
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mInstantBookListHeader:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mInstantBookList:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {v4, v6}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 281
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mInstantBookList:Lcom/airbnb/android/views/GroupedCell;

    new-instance v5, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$12;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$12;-><init>(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    :cond_d2
    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->buildPriceMap(Lcom/airbnb/android/models/Listing;)V

    .line 293
    const-class v4, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    invoke-static {v4}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    .line 295
    .local v2, "priceData":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;>;"
    new-instance v4, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mPriceMap:Ljava/util/HashMap;

    invoke-direct {v4, v5, v6, v2}, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/EnumSet;)V

    iput-object v4, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mPricingAdapter:Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;

    .line 298
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mPriceList:Lcom/airbnb/android/views/LinearListView;

    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mPriceItemOnClickListener:Lcom/airbnb/android/views/LinearListView$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/LinearListView;->setOnItemClickListener(Lcom/airbnb/android/views/LinearListView$OnItemClickListener;)V

    .line 299
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mPriceList:Lcom/airbnb/android/views/LinearListView;

    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mPricingAdapter:Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 301
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mDetailsMap:Ljava/util/HashMap;

    .line 302
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mDetailsMap:Ljava/util/HashMap;

    sget-object v5, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Location:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getStreetAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mDetailsMap:Ljava/util/HashMap;

    sget-object v5, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Amenities:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    const v6, 0x7f0e0559

    invoke-virtual {p0, v6}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/airbnb/android/models/Listing;->getNumberAmenitiesAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-class v4, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-static {v4}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 307
    .local v0, "detailsData":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;>;"
    sget-object v4, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Details:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v0, v4}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 308
    new-instance v4, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mDetailsMap:Ljava/util/HashMap;

    invoke-direct {v4, v5, v6, v0}, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/EnumSet;)V

    iput-object v4, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mDetailsAdapter:Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;

    .line 311
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mDetailsList:Lcom/airbnb/android/views/LinearListView;

    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mDetailsItemOnClickListener:Lcom/airbnb/android/views/LinearListView$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/LinearListView;->setOnItemClickListener(Lcom/airbnb/android/views/LinearListView$OnItemClickListener;)V

    .line 312
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mDetailsList:Lcom/airbnb/android/views/LinearListView;

    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mDetailsAdapter:Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 314
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$13;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$13;-><init>(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 327
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mLocalLaws:Landroid/widget/TextView;

    new-instance v5, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$14;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$14;-><init>(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mIsInitialized:Z

    .line 349
    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->handleInstantBookSelling(Lcom/airbnb/android/models/Listing;)V

    .line 350
    return-object v3

    .line 203
    .end local v0    # "detailsData":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;>;"
    .end local v2    # "priceData":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;>;"
    :cond_15f
    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2a

    .line 214
    :cond_165
    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getDescription()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4a

    .line 227
    :cond_16b
    const v4, 0x7f0e03c2

    goto/16 :goto_62
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 420
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_62

    .line 429
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_c
    return v2

    .line 422
    :pswitch_d
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v1

    .line 423
    .local v1, "listing":Lcom/airbnb/android/models/Listing;
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v5, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v5, v5, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v2

    if-eqz v2, :cond_5d

    const-string/jumbo v2, "ml_post_list"

    :goto_24
    aput-object v2, v4, v3

    const/4 v2, 0x2

    const-string/jumbo v5, "general_nav"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string/jumbo v5, "preview_click"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getLocalStepsRemaining()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/airbnb/android/activities/ListingDetailsActivity;->intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;)Landroid/content/Intent;

    move-result-object v0

    .line 426
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 427
    goto :goto_c

    .line 423
    .end local v0    # "i":Landroid/content/Intent;
    :cond_5d
    const-string/jumbo v2, "ml_pre_list"

    goto :goto_24

    .line 420
    nop

    :pswitch_data_62
    .packed-switch 0x7f080546
        :pswitch_d
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 434
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onPause()V

    .line 436
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mScrollValue:I

    .line 437
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 441
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onResume()V

    .line 442
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    const v1, 0x7f0e03c4

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->setActionBarTitle(I)V

    .line 443
    return-void
.end method

.method protected updateViews(Lcom/airbnb/android/models/Listing;)V
    .registers 5
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mIsInitialized:Z

    if-eqz v0, :cond_5a

    .line 458
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->updatePhotoDetails(Lcom/airbnb/android/models/Listing;)V

    .line 460
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->buildPriceMap(Lcom/airbnb/android/models/Listing;)V

    .line 465
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->refreshPriceListView()V

    .line 467
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->refreshInstantBookListView(Lcom/airbnb/android/models/Listing;)V

    .line 469
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mDetailsMap:Ljava/util/HashMap;

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Amenities:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    const v2, 0x7f0e0559

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/airbnb/android/models/Listing;->getNumberAmenitiesAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mDetailsAdapter:Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mDetailsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;->setDetailsMap(Ljava/util/HashMap;)V

    .line 471
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mDetailsAdapter:Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;->notifyDataSetChanged()V

    .line 473
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mUnlistCell:Lcom/airbnb/android/views/GroupedCell;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->isListed()Z

    move-result v0

    if-eqz v0, :cond_5b

    const v0, 0x7f0e07a0

    :goto_4b
    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/GroupedCell;->setTitle(I)V

    .line 474
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mStickyListButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->isListed()Z

    move-result v0

    if-nez v0, :cond_5f

    const/4 v0, 0x1

    :goto_57
    invoke-static {v1, v0}, Lcom/airbnb/android/utils/MiscUtils;->setVisibleIf(Landroid/view/View;Z)V

    .line 476
    :cond_5a
    return-void

    .line 473
    :cond_5b
    const v0, 0x7f0e03c2

    goto :goto_4b

    .line 474
    :cond_5f
    const/4 v0, 0x0

    goto :goto_57
.end method
