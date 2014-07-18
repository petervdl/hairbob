.class public Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;
.super Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;
.source "AdditionalChargesFragment.java"


# static fields
.field private static final ARG_LISTING:Ljava/lang/String; = "listing"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdditionalGuestsCount:I

.field private mAdditionalGuestsCountTextView:Landroid/widget/TextView;

.field private mAdditionalGuestsExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

.field private mCleaningFeeEditText:Lcom/airbnb/android/views/PriceEditText;

.field private mCleaningFeeExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

.field private mExtraGuestsEditText:Lcom/airbnb/android/views/PriceEditText;

.field private mListing:Lcom/airbnb/android/models/Listing;

.field private mSecurityDepositEditText:Lcom/airbnb/android/views/PriceEditText;

.field private mSecurityDepositExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

.field private mWeekendPricingEditText:Lcom/airbnb/android/views/PriceEditText;

.field private mWeekendPricingExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Lcom/airbnb/android/views/PriceEditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mCleaningFeeEditText:Lcom/airbnb/android/views/PriceEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;Landroid/view/View;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->openKeyboard(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Lcom/airbnb/android/views/ExpandableSwitchView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mAdditionalGuestsExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Lcom/airbnb/android/views/ExpandableSwitchView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mSecurityDepositExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Lcom/airbnb/android/views/PriceEditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mWeekendPricingEditText:Lcom/airbnb/android/views/PriceEditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    .prologue
    .line 23
    iget v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mAdditionalGuestsCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mAdditionalGuestsCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mAdditionalGuestsCountTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Lcom/airbnb/android/views/PriceEditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mExtraGuestsEditText:Lcom/airbnb/android/views/PriceEditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Lcom/airbnb/android/views/PriceEditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mSecurityDepositEditText:Lcom/airbnb/android/views/PriceEditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Lcom/airbnb/android/views/ExpandableSwitchView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mCleaningFeeExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)Lcom/airbnb/android/views/ExpandableSwitchView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mWeekendPricingExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    return-object v0
.end method

.method public static newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;
    .registers 4
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 45
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;-><init>()V

    .line 46
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 49
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-object v1
.end method

.method private openKeyboard(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 245
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$8;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$8;-><init>(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;Landroid/view/View;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 253
    return-void
.end method

.method private setupAdditionalGuests()V
    .registers 9

    .prologue
    const/4 v5, 0x1

    .line 123
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mAdditionalGuestsExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    const v6, 0x7f08010f

    invoke-virtual {v4, v6}, Lcom/airbnb/android/views/ExpandableSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/PriceEditText;

    iput-object v4, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mExtraGuestsEditText:Lcom/airbnb/android/views/PriceEditText;

    .line 124
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mExtraGuestsEditText:Lcom/airbnb/android/views/PriceEditText;

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/PriceEditText;->hidePriceIfZero(Z)V

    .line 125
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mExtraGuestsEditText:Lcom/airbnb/android/views/PriceEditText;

    iget-object v6, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Listing;->getListingPriceForExtraPersonNative()I

    move-result v6

    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Listing;->getListingNativeCurrency()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/airbnb/android/views/PriceEditText;->setPrice(ILjava/lang/String;)V

    .line 127
    iget-object v6, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mAdditionalGuestsExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getListingPriceForExtraPersonNative()I

    move-result v4

    if-lez v4, :cond_92

    move v4, v5

    :goto_2f
    invoke-virtual {v6, v4}, Lcom/airbnb/android/views/ExpandableSwitchView;->setChecked(Z)V

    .line 129
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mAdditionalGuestsExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    const v5, 0x7f080111

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/ExpandableSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 130
    .local v2, "decrease":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mAdditionalGuestsExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    const v5, 0x7f080112

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/ExpandableSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mAdditionalGuestsCountTextView:Landroid/widget/TextView;

    .line 131
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mAdditionalGuestsExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    const v5, 0x7f080113

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/ExpandableSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 133
    .local v3, "increase":Landroid/widget/ImageView;
    const/4 v1, 0x0

    .line 134
    .local v1, "MIN":I
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getPersonCapacity()I

    move-result v0

    .line 136
    .local v0, "MAX":I
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getGuestsIncluded()I

    move-result v4

    if-lez v4, :cond_94

    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getGuestsIncluded()I

    move-result v4

    :goto_6a
    iput v4, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mAdditionalGuestsCount:I

    .line 137
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mAdditionalGuestsCountTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mAdditionalGuestsCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    new-instance v4, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$3;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$3;-><init>(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    new-instance v4, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$4;

    invoke-direct {v4, p0, v0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$4;-><init>(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mAdditionalGuestsExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    new-instance v5, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$5;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$5;-><init>(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/ExpandableSwitchView;->setOnCheckedChangeListener(Lcom/airbnb/android/views/ExpandableSwitchView$onCheckedChangeListener;)V

    .line 169
    return-void

    .line 127
    .end local v0    # "MAX":I
    .end local v1    # "MIN":I
    .end local v2    # "decrease":Landroid/widget/ImageView;
    .end local v3    # "increase":Landroid/widget/ImageView;
    :cond_92
    const/4 v4, 0x0

    goto :goto_2f

    .line 136
    .restart local v0    # "MAX":I
    .restart local v1    # "MIN":I
    .restart local v2    # "decrease":Landroid/widget/ImageView;
    .restart local v3    # "increase":Landroid/widget/ImageView;
    :cond_94
    const/4 v4, 0x2

    goto :goto_6a
.end method

.method private setupCleaning()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mCleaningFeeExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    const v2, 0x7f08010f

    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/ExpandableSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/PriceEditText;

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mCleaningFeeEditText:Lcom/airbnb/android/views/PriceEditText;

    .line 80
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mCleaningFeeEditText:Lcom/airbnb/android/views/PriceEditText;

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getListingCleaningFeeNative()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getListingCleaningFeeNative()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_22
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getListingNativeCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/airbnb/android/views/PriceEditText;->setPrice(ILjava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mCleaningFeeExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getListingCleaningFeeNative()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_36

    const/4 v1, 0x1

    :cond_36
    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/ExpandableSwitchView;->setChecked(Z)V

    .line 86
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mCleaningFeeExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    new-instance v1, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/ExpandableSwitchView;->setOnCheckedChangeListener(Lcom/airbnb/android/views/ExpandableSwitchView$onCheckedChangeListener;)V

    .line 98
    return-void

    :cond_44
    move v0, v1

    .line 80
    goto :goto_22
.end method

.method private setupSecurityDeposit()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mSecurityDepositExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    const v3, 0x7f08010f

    invoke-virtual {v0, v3}, Lcom/airbnb/android/views/ExpandableSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/PriceEditText;

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mSecurityDepositEditText:Lcom/airbnb/android/views/PriceEditText;

    .line 173
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mSecurityDepositEditText:Lcom/airbnb/android/views/PriceEditText;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/PriceEditText;->hidePriceIfZero(Z)V

    .line 174
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mSecurityDepositEditText:Lcom/airbnb/android/views/PriceEditText;

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getListingSecurityDepositNative()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getListingSecurityDepositNative()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_28
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getListingNativeCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/airbnb/android/views/PriceEditText;->setPrice(ILjava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mSecurityDepositExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getListingSecurityDepositNative()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3c

    move v1, v2

    :cond_3c
    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/ExpandableSwitchView;->setChecked(Z)V

    .line 179
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mSecurityDepositExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    new-instance v1, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$6;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$6;-><init>(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/ExpandableSwitchView;->setOnCheckedChangeListener(Lcom/airbnb/android/views/ExpandableSwitchView$onCheckedChangeListener;)V

    .line 191
    return-void

    :cond_4a
    move v0, v1

    .line 174
    goto :goto_28
.end method

.method private setupWeekendPricing()V
    .registers 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mWeekendPricingExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    const v1, 0x7f08010f

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/ExpandableSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/PriceEditText;

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mWeekendPricingEditText:Lcom/airbnb/android/views/PriceEditText;

    .line 102
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mWeekendPricingEditText:Lcom/airbnb/android/views/PriceEditText;

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getListingWeekendPriceNative()I

    move-result v0

    if-lez v0, :cond_3f

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getListingWeekendPriceNative()I

    move-result v0

    :goto_1d
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getListingNativeCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/airbnb/android/views/PriceEditText;->setPrice(ILjava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mWeekendPricingExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getListingWeekendPriceNative()I

    move-result v0

    if-lez v0, :cond_46

    const/4 v0, 0x1

    :goto_31
    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/ExpandableSwitchView;->setChecked(Z)V

    .line 108
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mWeekendPricingExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    new-instance v1, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$2;-><init>(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/ExpandableSwitchView;->setOnCheckedChangeListener(Lcom/airbnb/android/views/ExpandableSwitchView$onCheckedChangeListener;)V

    .line 120
    return-void

    .line 102
    :cond_3f
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getListingPriceNative()I

    move-result v0

    goto :goto_1d

    .line 106
    :cond_46
    const/4 v0, 0x0

    goto :goto_31
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 59
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    const v1, 0x7f03006a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f08013d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/ExpandableSwitchView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mCleaningFeeExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    .line 66
    const v1, 0x7f08013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/ExpandableSwitchView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mWeekendPricingExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    .line 67
    const v1, 0x7f08013f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/ExpandableSwitchView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mAdditionalGuestsExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    .line 68
    const v1, 0x7f080140

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/ExpandableSwitchView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->mSecurityDepositExpandableView:Lcom/airbnb/android/views/ExpandableSwitchView;

    .line 70
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->setupCleaning()V

    .line 71
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->setupWeekendPricing()V

    .line 72
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->setupAdditionalGuests()V

    .line 73
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->setupSecurityDeposit()V

    .line 75
    return-object v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 257
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onPause()V

    .line 258
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 259
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 195
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onStart()V

    .line 197
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 198
    .local v0, "actionbar":Landroid/app/ActionBar;
    const v1, 0x7f03005b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 199
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 200
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 201
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 202
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 204
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$7;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment$7;-><init>(Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    return-void
.end method

.method public onStop()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 263
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onStop()V

    .line 265
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 266
    .local v0, "actionbar":Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 267
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 268
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 269
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 270
    return-void
.end method
