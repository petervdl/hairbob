.class public Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;
.super Lcom/airbnb/android/fragments/ZenDialog;
.source "ListingPricingDetailsDialogFragment.java"


# static fields
.field private static final LISTING:Ljava/lang/String; = "listing"


# instance fields
.field private mCurr:Lcom/airbnb/android/utils/CurrencyHelper;

.field private mFrameView:Landroid/view/View;

.field private mNeedHideTopBorder:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ZenDialog;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;->mNeedHideTopBorder:Z

    return-void
.end method

.method public static hasContentToDisplay(Lcom/airbnb/android/models/Listing;)Z
    .registers 2
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getCleaningFee()I

    move-result v0

    if-gtz v0, :cond_1e

    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getExtraGuestPrice()I

    move-result v0

    if-gtz v0, :cond_1e

    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getSecurityDeposit()I

    move-result v0

    if-gtz v0, :cond_1e

    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getWeeklyPriceNative()I

    move-result v0

    if-gtz v0, :cond_1e

    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getMonthlyPriceNative()I

    move-result v0

    if-lez v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private hideTopBorderIfNeeded(Lcom/airbnb/android/views/GroupedCell;)V
    .registers 4
    .param p1, "cell"    # Lcom/airbnb/android/views/GroupedCell;

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;->mNeedHideTopBorder:Z

    if-eqz v0, :cond_a

    .line 82
    invoke-virtual {p1, v1}, Lcom/airbnb/android/views/GroupedCell;->showTopBorder(Z)V

    .line 83
    iput-boolean v1, p0, Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;->mNeedHideTopBorder:Z

    .line 85
    :cond_a
    return-void
.end method

.method public static newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;
    .registers 4
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 27
    new-instance v1, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    new-instance v2, Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;

    invoke-direct {v2}, Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;-><init>()V

    invoke-direct {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;-><init>(Lcom/airbnb/android/fragments/ZenDialog;)V

    const v2, 0x7f0e05cf

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withCustomLayout()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSwipeToDismiss()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;

    .line 31
    .local v0, "dialog":Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;
    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "listing"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 32
    return-object v0
.end method

.method private setAdditionalGuests(ILcom/airbnb/android/models/Listing;)V
    .registers 14
    .param p1, "viewId"    # I
    .param p2, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 66
    iget-object v3, p0, Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;->mFrameView:Landroid/view/View;

    invoke-static {v3, p1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .line 67
    .local v0, "cell":Lcom/airbnb/android/views/GroupedCell;
    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getExtraGuestPrice()I

    move-result v3

    if-lez v3, :cond_4f

    .line 68
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;->hideTopBorderIfNeeded(Lcom/airbnb/android/views/GroupedCell;)V

    .line 70
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 71
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x7f0e03e0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;->mCurr:Lcom/airbnb/android/utils/CurrencyHelper;

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getExtraGuestPrice()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {v5, v6, v7, v9}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const v5, 0x7f0d002d

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getGuestsIncluded()I

    move-result v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getGuestsIncluded()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 78
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "str":Ljava/lang/String;
    :goto_4e
    return-void

    .line 76
    :cond_4f
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    goto :goto_4e
.end method

.method private setPriceField(II)V
    .registers 8
    .param p1, "viewId"    # I
    .param p2, "priceNative"    # I

    .prologue
    .line 56
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;->mFrameView:Landroid/view/View;

    invoke-static {v1, p1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .line 57
    .local v0, "cell":Lcom/airbnb/android/views/GroupedCell;
    if-gtz p2, :cond_10

    .line 58
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setVisibility(I)V

    .line 63
    :goto_f
    return-void

    .line 60
    :cond_10
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;->hideTopBorderIfNeeded(Lcom/airbnb/android/views/GroupedCell;)V

    .line 61
    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;->mCurr:Lcom/airbnb/android/utils/CurrencyHelper;

    int-to-double v2, p2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/ZenDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 39
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;->mCurr:Lcom/airbnb/android/utils/CurrencyHelper;

    .line 40
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "listing"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    .line 42
    .local v0, "listing":Lcom/airbnb/android/models/Listing;
    const v2, 0x7f03017d

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;->mFrameView:Landroid/view/View;

    .line 44
    const v2, 0x7f0803f0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getCleaningFee()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;->setPriceField(II)V

    .line 45
    const v2, 0x7f0803f1

    invoke-direct {p0, v2, v0}, Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;->setAdditionalGuests(ILcom/airbnb/android/models/Listing;)V

    .line 46
    const v2, 0x7f0803f2

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getSecurityDeposit()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;->setPriceField(II)V

    .line 47
    const v2, 0x7f0803f3

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getWeeklyPriceNative()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;->setPriceField(II)V

    .line 48
    const v2, 0x7f0803f4

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getMonthlyPriceNative()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;->setPriceField(II)V

    .line 50
    iget-object v2, p0, Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;->mFrameView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/ListingPricingDetailsDialogFragment;->setCustomView(Landroid/view/View;)V

    .line 52
    return-object v1
.end method
