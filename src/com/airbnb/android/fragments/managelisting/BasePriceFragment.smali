.class public Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;
.super Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;
.source "BasePriceFragment.java"


# static fields
.field private static final ARG_LISTING:Ljava/lang/String; = "listing"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mListing:Lcom/airbnb/android/models/Listing;

.field private mPriceText:Lcom/airbnb/android/views/PriceEditText;

.field private mToolTipSeen:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->showTooltip()V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;)Lcom/airbnb/android/views/PriceEditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->mPriceText:Lcom/airbnb/android/views/PriceEditText;

    return-object v0
.end method

.method public static newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;
    .registers 4
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 39
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;-><init>()V

    .line 40
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 43
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->setArguments(Landroid/os/Bundle;)V

    .line 45
    return-object v1
.end method

.method private showTooltip()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 156
    const v1, 0x7f0e0771

    const v2, 0x7f0e0770

    invoke-static {v1, v2, v3, v3}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->newInstance(IIII)Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;

    move-result-object v0

    .line 158
    .local v0, "f":Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "tooltip"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 159
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 54
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "airbnb_prefs"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "base_price_tooltip_seen"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->mToolTipSeen:Z

    .line 55
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 15
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    const v8, 0x7f03006d

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 60
    .local v7, "view":Landroid/view/View;
    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    const v9, 0x7f0e04ba

    invoke-interface {v8, v9}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->setActionBarTitle(I)V

    .line 62
    const v8, 0x7f080036

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/airbnb/android/views/PriceEditText;

    iput-object v8, p0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->mPriceText:Lcom/airbnb/android/views/PriceEditText;

    .line 63
    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->mPriceText:Lcom/airbnb/android/views/PriceEditText;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/airbnb/android/views/PriceEditText;->hidePriceIfZero(Z)V

    .line 64
    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->mPriceText:Lcom/airbnb/android/views/PriceEditText;

    iget-object v9, p0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v9}, Lcom/airbnb/android/models/Listing;->getListingPriceNative()I

    move-result v9

    iget-object v10, p0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v10}, Lcom/airbnb/android/models/Listing;->getListingNativeCurrency()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/airbnb/android/views/PriceEditText;->setPrice(ILjava/lang/String;)V

    .line 66
    const v8, 0x7f080149

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 68
    .local v1, "autoPricing":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v8}, Lcom/airbnb/android/models/Listing;->getAutoPricingDaily()I

    move-result v8

    if-nez v8, :cond_5a

    .line 69
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    :goto_48
    const v8, 0x7f0800da

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 81
    .local v6, "toolTipImage":Landroid/widget/ImageView;
    new-instance v8, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment$1;

    invoke-direct {v8, p0}, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;)V

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-object v7

    .line 71
    .end local v6    # "toolTipImage":Landroid/widget/ImageView;
    :cond_5a
    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v8}, Lcom/airbnb/android/models/Listing;->getAutoPricingDaily()I

    move-result v8

    int-to-double v8, v8

    iget-object v10, p0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v10}, Lcom/airbnb/android/models/Listing;->getListingNativeCurrency()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/airbnb/android/utils/CurrencyHelper;->formatCurrencyAmount(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "priceFormatted":Ljava/lang/String;
    const v8, 0x7f0e040a

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "autoPrice":Ljava/lang/String;
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 74
    .local v5, "sb":Landroid/text/Spannable;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0026

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v2, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 75
    .local v2, "fcs":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 76
    .local v3, "index":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v3

    const/16 v9, 0x11

    invoke-interface {v5, v2, v3, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 77
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_48
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 112
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onPause()V

    .line 113
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 114
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 95
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onResume()V

    .line 97
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->mPriceText:Lcom/airbnb/android/views/PriceEditText;

    invoke-virtual {v0}, Lcom/airbnb/android/views/PriceEditText;->requestFocus()Z

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment$2;-><init>(Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    return-void
.end method

.method public onStart()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onStart()V

    .line 120
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 121
    .local v0, "actionbar":Landroid/app/ActionBar;
    const v1, 0x7f03005b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 122
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 123
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 124
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 125
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 127
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment$3;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment$3;-><init>(Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->mToolTipSeen:Z

    if-nez v1, :cond_4d

    .line 138
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->showTooltip()V

    .line 139
    iput-boolean v4, p0, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->mToolTipSeen:Z

    .line 140
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "airbnb_prefs"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "base_price_tooltip_seen"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    :cond_4d
    return-void
.end method

.method public onStop()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 146
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onStop()V

    .line 148
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 149
    .local v0, "actionbar":Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 150
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 151
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 152
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 153
    return-void
.end method
