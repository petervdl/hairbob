.class public Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;
.super Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;
.source "LongTermPricingFragment.java"


# static fields
.field private static final ARG_LISTING:Ljava/lang/String; = "listing"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mListing:Lcom/airbnb/android/models/Listing;

.field private mMonthlyPrice:Lcom/airbnb/android/views/PriceEditText;

.field private mMonthlyPriceExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

.field private mWeeklyPrice:Lcom/airbnb/android/views/PriceEditText;

.field private mWeeklyPriceExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;)Lcom/airbnb/android/views/ExpandableSwitchView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mWeeklyPriceExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;)Lcom/airbnb/android/views/PriceEditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mWeeklyPrice:Lcom/airbnb/android/views/PriceEditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;)Lcom/airbnb/android/views/ExpandableSwitchView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mMonthlyPriceExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;)Lcom/airbnb/android/views/PriceEditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mMonthlyPrice:Lcom/airbnb/android/views/PriceEditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;Landroid/view/View;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->openKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public static newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;
    .registers 4
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 44
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;-><init>()V

    .line 45
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 48
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    return-object v1
.end method

.method private openKeyboard(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 200
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment$4;-><init>(Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;Landroid/view/View;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    return-void
.end method

.method private setupMonthly()V
    .registers 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 162
    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mMonthlyPriceExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    const v10, 0x7f08010f

    invoke-virtual {v7, v10}, Lcom/airbnb/android/views/ExpandableSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/airbnb/android/views/PriceEditText;

    iput-object v7, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mMonthlyPrice:Lcom/airbnb/android/views/PriceEditText;

    .line 163
    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mMonthlyPrice:Lcom/airbnb/android/views/PriceEditText;

    invoke-virtual {v7, v8}, Lcom/airbnb/android/views/PriceEditText;->hidePriceIfZero(Z)V

    .line 164
    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mMonthlyPrice:Lcom/airbnb/android/views/PriceEditText;

    iget-object v10, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v10}, Lcom/airbnb/android/models/Listing;->getListingMonthlyPriceNative()I

    move-result v10

    iget-object v11, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v11}, Lcom/airbnb/android/models/Listing;->getListingNativeCurrency()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/airbnb/android/views/PriceEditText;->setPrice(ILjava/lang/String;)V

    .line 166
    iget-object v10, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mMonthlyPriceExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Listing;->getListingMonthlyPriceNative()I

    move-result v7

    if-eqz v7, :cond_a4

    move v7, v8

    :goto_30
    invoke-virtual {v10, v7}, Lcom/airbnb/android/views/ExpandableSwitchView;->setChecked(Z)V

    .line 168
    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mMonthlyPriceExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    const v10, 0x7f080114

    invoke-virtual {v7, v10}, Lcom/airbnb/android/views/ExpandableSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 169
    .local v4, "perMonth":Landroid/widget/TextView;
    const v7, 0x7f0e04fe

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 171
    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mMonthlyPriceExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    const v10, 0x7f080115

    invoke-virtual {v7, v10}, Lcom/airbnb/android/views/ExpandableSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 173
    .local v1, "autoPricing":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Listing;->getAutoPricingMonthly()I

    move-result v7

    if-lez v7, :cond_a6

    .line 174
    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Listing;->getAutoPricingMonthly()I

    move-result v7

    int-to-double v10, v7

    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Listing;->getListingNativeCurrency()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v11, v7}, Lcom/airbnb/android/utils/CurrencyHelper;->formatCurrencyAmount(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, "priceFormatted":Ljava/lang/String;
    const v7, 0x7f0e0437

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "autoPrice":Ljava/lang/String;
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 177
    .local v6, "sb":Landroid/text/Spannable;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0026

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v2, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 178
    .local v2, "fcs":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 179
    .local v3, "index":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    const/16 v8, 0x11

    invoke-interface {v6, v2, v3, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 180
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .end local v0    # "autoPrice":Ljava/lang/String;
    .end local v2    # "fcs":Landroid/text/style/ForegroundColorSpan;
    .end local v3    # "index":I
    .end local v5    # "priceFormatted":Ljava/lang/String;
    .end local v6    # "sb":Landroid/text/Spannable;
    :goto_99
    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mMonthlyPriceExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    new-instance v8, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment$3;

    invoke-direct {v8, p0}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment$3;-><init>(Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;)V

    invoke-virtual {v7, v8}, Lcom/airbnb/android/views/ExpandableSwitchView;->setOnCheckedChangeListener(Lcom/airbnb/android/views/ExpandableSwitchView$onCheckedChangeListener;)V

    .line 197
    return-void

    .end local v1    # "autoPricing":Landroid/widget/TextView;
    .end local v4    # "perMonth":Landroid/widget/TextView;
    :cond_a4
    move v7, v9

    .line 166
    goto :goto_30

    .line 182
    .restart local v1    # "autoPricing":Landroid/widget/TextView;
    .restart local v4    # "perMonth":Landroid/widget/TextView;
    :cond_a6
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_99
.end method

.method private setupWeekly()V
    .registers 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 123
    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mWeeklyPriceExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    const v10, 0x7f08010f

    invoke-virtual {v7, v10}, Lcom/airbnb/android/views/ExpandableSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/airbnb/android/views/PriceEditText;

    iput-object v7, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mWeeklyPrice:Lcom/airbnb/android/views/PriceEditText;

    .line 124
    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mWeeklyPrice:Lcom/airbnb/android/views/PriceEditText;

    invoke-virtual {v7, v8}, Lcom/airbnb/android/views/PriceEditText;->hidePriceIfZero(Z)V

    .line 125
    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mWeeklyPrice:Lcom/airbnb/android/views/PriceEditText;

    iget-object v10, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v10}, Lcom/airbnb/android/models/Listing;->getListingWeeklyPriceNative()I

    move-result v10

    iget-object v11, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v11}, Lcom/airbnb/android/models/Listing;->getListingNativeCurrency()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/airbnb/android/views/PriceEditText;->setPrice(ILjava/lang/String;)V

    .line 127
    iget-object v10, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mWeeklyPriceExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Listing;->getListingWeeklyPriceNative()I

    move-result v7

    if-eqz v7, :cond_a4

    move v7, v8

    :goto_30
    invoke-virtual {v10, v7}, Lcom/airbnb/android/views/ExpandableSwitchView;->setChecked(Z)V

    .line 129
    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mWeeklyPriceExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    const v10, 0x7f080114

    invoke-virtual {v7, v10}, Lcom/airbnb/android/views/ExpandableSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 130
    .local v4, "perWeek":Landroid/widget/TextView;
    const v7, 0x7f0e04ff

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 132
    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mWeeklyPriceExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    const v10, 0x7f080115

    invoke-virtual {v7, v10}, Lcom/airbnb/android/views/ExpandableSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 134
    .local v1, "autoPricing":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Listing;->getAutoPricingWeekly()I

    move-result v7

    if-lez v7, :cond_a6

    .line 135
    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Listing;->getAutoPricingWeekly()I

    move-result v7

    int-to-double v10, v7

    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Listing;->getListingNativeCurrency()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v11, v7}, Lcom/airbnb/android/utils/CurrencyHelper;->formatCurrencyAmount(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, "priceFormatted":Ljava/lang/String;
    const v7, 0x7f0e0438

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "autoPrice":Ljava/lang/String;
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 138
    .local v6, "sb":Landroid/text/Spannable;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0026

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v2, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 139
    .local v2, "fcs":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 140
    .local v3, "index":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    const/16 v8, 0x11

    invoke-interface {v6, v2, v3, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 141
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .end local v0    # "autoPrice":Ljava/lang/String;
    .end local v2    # "fcs":Landroid/text/style/ForegroundColorSpan;
    .end local v3    # "index":I
    .end local v5    # "priceFormatted":Ljava/lang/String;
    .end local v6    # "sb":Landroid/text/Spannable;
    :goto_99
    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mWeeklyPriceExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    new-instance v8, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment$2;

    invoke-direct {v8, p0}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment$2;-><init>(Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;)V

    invoke-virtual {v7, v8}, Lcom/airbnb/android/views/ExpandableSwitchView;->setOnCheckedChangeListener(Lcom/airbnb/android/views/ExpandableSwitchView$onCheckedChangeListener;)V

    .line 159
    return-void

    .end local v1    # "autoPricing":Landroid/widget/TextView;
    .end local v4    # "perWeek":Landroid/widget/TextView;
    :cond_a4
    move v7, v9

    .line 127
    goto :goto_30

    .line 143
    .restart local v1    # "autoPricing":Landroid/widget/TextView;
    .restart local v4    # "perWeek":Landroid/widget/TextView;
    :cond_a6
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_99
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 58
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string/jumbo v2, "impressions"

    aput-object v2, v1, v0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string/jumbo v0, "ml_post_list"

    :goto_2e
    aput-object v0, v1, v2

    const/4 v0, 0x3

    const-string/jumbo v2, "long_term_prices"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 60
    return-void

    .line 58
    :cond_3a
    const-string/jumbo v0, "ml_pre_list"

    goto :goto_2e
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    const v1, 0x7f0300ab

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0801f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/ExpandableSwitchView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mWeeklyPriceExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    .line 67
    const v1, 0x7f0801f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/ExpandableSwitchView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->mMonthlyPriceExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    .line 69
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->setupWeekly()V

    .line 70
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->setupMonthly()V

    .line 72
    return-object v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 212
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onPause()V

    .line 213
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 214
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onStart()V

    .line 79
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 80
    .local v0, "actionbar":Landroid/app/ActionBar;
    const v1, 0x7f03005b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 81
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 82
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 83
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 84
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 86
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method public onStop()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 113
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onStop()V

    .line 115
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 116
    .local v0, "actionbar":Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 117
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 118
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 119
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 120
    return-void
.end method
