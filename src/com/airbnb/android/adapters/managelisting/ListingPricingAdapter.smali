.class public Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListingPricingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter$1;
    }
.end annotation


# instance fields
.field private mData:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;",
            ">;"
        }
    .end annotation
.end field

.field private mRes:Landroid/content/res/Resources;

.field private mValues:Ljava/util/HashMap;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/EnumSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;Ljava/lang/Object;>;"
    .local p3, "priceData":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;->mRes:Landroid/content/res/Resources;

    .line 27
    iput-object p2, p0, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;->mValues:Ljava/util/HashMap;

    .line 28
    iput-object p3, p0, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;->mData:Ljava/util/EnumSet;

    .line 29
    return-void
.end method

.method private getAdditionalChargesBoolean()Z
    .registers 4

    .prologue
    .line 93
    iget-object v1, p0, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;->mValues:Ljava/util/HashMap;

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->AdditionalCharges:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    .local v0, "hasLongTerm":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_13

    .line 95
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "hasLongTerm":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 98
    :goto_12
    return v1

    .restart local v0    # "hasLongTerm":Ljava/lang/Object;
    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private getBasePrice()I
    .registers 4

    .prologue
    .line 111
    iget-object v1, p0, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;->mValues:Ljava/util/HashMap;

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->BasePrice:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, "basePrice":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_13

    .line 113
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "basePrice":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 115
    :goto_12
    return v1

    .restart local v0    # "basePrice":Ljava/lang/Object;
    :cond_13
    const/4 v1, -0x1

    goto :goto_12
.end method

.method private getCurrencyCode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 119
    iget-object v1, p0, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;->mValues:Ljava/util/HashMap;

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->Currency:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 120
    .local v0, "currency":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 121
    check-cast v0, Ljava/lang/String;

    .line 123
    .end local v0    # "currency":Ljava/lang/Object;
    :goto_e
    return-object v0

    .restart local v0    # "currency":Ljava/lang/Object;
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private getLongTermPricesBoolean()Z
    .registers 4

    .prologue
    .line 102
    iget-object v1, p0, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;->mValues:Ljava/util/HashMap;

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->LongTermPrices:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    .local v0, "hasLongTerm":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_13

    .line 104
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "hasLongTerm":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 107
    :goto_12
    return v1

    .restart local v0    # "hasLongTerm":Ljava/lang/Object;
    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;->mData:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;->mData:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 43
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    if-nez p2, :cond_12

    .line 49
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030196

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_12
    move-object v3, p2

    .line 51
    check-cast v3, Lcom/airbnb/android/views/GroupedCell;

    .line 52
    .local v3, "groupedCell":Lcom/airbnb/android/views/GroupedCell;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    .line 54
    .local v6, "pricing":Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;
    if-eqz p1, :cond_32

    const/4 v7, 0x1

    :goto_1e
    invoke-virtual {v3, v7}, Lcom/airbnb/android/views/GroupedCell;->showTopBorder(Z)V

    .line 57
    iget v7, v6, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->mTitleId:I

    invoke-virtual {v3, v7}, Lcom/airbnb/android/views/GroupedCell;->setTitle(I)V

    .line 60
    sget-object v7, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter$1;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ListingPricing:[I

    invoke-virtual {v6}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_90

    .line 89
    :cond_31
    :goto_31
    return-object v3

    .line 54
    :cond_32
    const/4 v7, 0x0

    goto :goto_1e

    .line 62
    :pswitch_34
    invoke-direct {p0}, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;->getBasePrice()I

    move-result v0

    .line 63
    .local v0, "basePrice":I
    invoke-direct {p0}, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "currencyCode":Ljava/lang/String;
    const/4 v7, -0x1

    if-eq v0, v7, :cond_31

    if-eqz v2, :cond_31

    .line 65
    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    .line 66
    .local v1, "currency":Ljava/util/Currency;
    iget-object v7, p0, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f0e04bb

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_31

    .line 71
    .end local v0    # "basePrice":I
    .end local v1    # "currency":Ljava/util/Currency;
    .end local v2    # "currencyCode":Ljava/lang/String;
    :pswitch_63
    invoke-direct {p0}, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;->getLongTermPricesBoolean()Z

    move-result v5

    .line 72
    .local v5, "hasLongTerm":Z
    if-eqz v5, :cond_70

    const v7, 0x7f0e0565

    :goto_6c
    invoke-virtual {v3, v7}, Lcom/airbnb/android/views/GroupedCell;->setContent(I)V

    goto :goto_31

    :cond_70
    const v7, 0x7f0e0562

    goto :goto_6c

    .line 76
    .end local v5    # "hasLongTerm":Z
    :pswitch_74
    invoke-direct {p0}, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;->getAdditionalChargesBoolean()Z

    move-result v4

    .line 77
    .local v4, "hasAdditionalCharges":Z
    if-eqz v4, :cond_81

    const v7, 0x7f0e0565

    :goto_7d
    invoke-virtual {v3, v7}, Lcom/airbnb/android/views/GroupedCell;->setContent(I)V

    goto :goto_31

    :cond_81
    const v7, 0x7f0e0562

    goto :goto_7d

    .line 81
    .end local v4    # "hasAdditionalCharges":Z
    :pswitch_85
    invoke-direct {p0}, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "currency":Ljava/lang/String;
    if-eqz v1, :cond_31

    .line 83
    invoke-virtual {v3, v1}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_31

    .line 60
    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_34
        :pswitch_63
        :pswitch_74
        :pswitch_85
    .end packed-switch
.end method

.method public setPriceMap(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "priceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;->mValues:Ljava/util/HashMap;

    .line 128
    return-void
.end method
