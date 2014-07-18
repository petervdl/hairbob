.class public Lcom/airbnb/android/adapters/ListingsRowAdapter;
.super Lcom/airbnb/android/adapters/BaseListingAdapter;
.source "ListingsRowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/ListingsRowAdapter$1;,
        Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;
    }
.end annotation


# instance fields
.field private final mDescriptionType:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;)V
    .registers 3
    .param p1, "type"    # Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/android/adapters/BaseListingAdapter;-><init>(Z)V

    .line 44
    iput-object p1, p0, Lcom/airbnb/android/adapters/ListingsRowAdapter;->mDescriptionType:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;)V
    .registers 4
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "type"    # Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/android/adapters/BaseListingAdapter;-><init>(Z)V

    .line 49
    iput-object p2, p0, Lcom/airbnb/android/adapters/ListingsRowAdapter;->mDescriptionType:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    .line 50
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/ListingsRowAdapter;->addListing(Lcom/airbnb/android/models/Listing;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;)V
    .registers 4
    .param p2, "type"    # Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;",
            "Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/android/adapters/BaseListingAdapter;-><init>(Z)V

    .line 55
    iput-object p2, p0, Lcom/airbnb/android/adapters/ListingsRowAdapter;->mDescriptionType:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    .line 56
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/ListingsRowAdapter;->setData(Ljava/util/List;)V

    .line 57
    return-void
.end method

.method private static getTextWithRoomType(Lcom/airbnb/android/models/Listing;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getRoomType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTextWithRoomTypeStatus(Lcom/airbnb/android/models/Listing;)Ljava/lang/CharSequence;
    .registers 8
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 156
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/AirbnbApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 157
    .local v0, "c":Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v1, "description":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/Listing;->getListingStatusAndColor(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v4

    .line 160
    .local v4, "statusAndColor":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 161
    .local v2, "listStatus":Ljava/lang/String;
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 163
    .local v3, "listStatusColor":I
    const-string/jumbo v6, "#%SUBSTRING%#"

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getRoomType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    const v6, 0x7f0e00a6

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, "tokenizedString":Ljava/lang/String;
    invoke-static {v5, v2, v3}, Lcom/airbnb/android/utils/MiscUtils;->makeColoredSubstring(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v6

    return-object v6
.end method

.method private static getTextWithRoomsBathsBeds(Lcom/airbnb/android/models/Listing;)Ljava/lang/CharSequence;
    .registers 9
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 133
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 134
    .local v1, "r":Landroid/content/res/Resources;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v0, "description":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const v2, 0x7f0d0003

    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getBedrooms()I

    move-result v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getBedrooms()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    const v2, 0x7f0d0001

    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getBathrooms()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getBathrooms()F

    move-result v5

    invoke-static {v5}, Lcom/airbnb/android/utils/MiscUtils;->floatToString(F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    const v2, 0x7f0d0004

    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getBedCount()I

    move-result v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getBedCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    const v2, 0x7f0e00a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static makeMiniMe(Landroid/view/View;)V
    .registers 7
    .param p0, "inflatedView"    # Landroid/view/View;

    .prologue
    .line 174
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/AirbnbApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 179
    .local v3, "r":Landroid/content/res/Resources;
    const v4, 0x7f0803a7

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 180
    .local v1, "listingPic":Landroid/view/View;
    const v4, 0x7f0b00b6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 181
    .local v0, "height":I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 182
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 183
    int-to-float v4, v0

    const v5, 0x3f2aaaab

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 184
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    const v4, 0x7f080065

    invoke-static {p0, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 187
    return-void
.end method

.method public static setupListingRow(Landroid/view/View;Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;)Landroid/view/View;
    .registers 14
    .param p0, "inflatedView"    # Landroid/view/View;
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "type"    # Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 80
    const v5, 0x7f0803a7

    invoke-static {p0, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/AirImageView;

    .line 82
    .local v1, "listingPictureView":Lcom/airbnb/android/views/AirImageView;
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getPictureCount()I

    move-result v5

    if-lez v5, :cond_84

    .line 83
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getPictureUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 89
    :goto_18
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "title":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e071a

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getRoomType()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getCity()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 93
    :cond_3c
    const v5, 0x7f080065

    invoke-static {p0, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "chars":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 97
    .local v3, "showPrice":Z
    sget-object v5, Lcom/airbnb/android/adapters/ListingsRowAdapter$1;->$SwitchMap$com$airbnb$android$adapters$ListingsRowAdapter$DescriptionType:[I

    invoke-virtual {p2}, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_aa

    .line 116
    :goto_55
    const v5, 0x7f0803a8

    invoke-static {p0, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    if-eqz v3, :cond_83

    .line 119
    const v5, 0x7f0803a9

    invoke-static {p0, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 120
    .local v2, "priceText":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v5

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getPriceNative()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {v5, v6, v7, v10}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    .end local v2    # "priceText":Landroid/widget/TextView;
    :cond_83
    return-object p0

    .line 86
    .end local v0    # "chars":Ljava/lang/CharSequence;
    .end local v3    # "showPrice":Z
    .end local v4    # "title":Ljava/lang/String;
    :cond_84
    const v5, 0x7f0200be

    const v6, 0x7f0a0014

    invoke-static {v5, v6}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/airbnb/android/views/AirImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_18

    .line 99
    .restart local v0    # "chars":Ljava/lang/CharSequence;
    .restart local v3    # "showPrice":Z
    .restart local v4    # "title":Ljava/lang/String;
    :pswitch_92
    invoke-static {p1}, Lcom/airbnb/android/adapters/ListingsRowAdapter;->getTextWithRoomType(Lcom/airbnb/android/models/Listing;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 100
    goto :goto_55

    .line 102
    :pswitch_97
    invoke-static {p1}, Lcom/airbnb/android/adapters/ListingsRowAdapter;->getTextWithRoomsBathsBeds(Lcom/airbnb/android/models/Listing;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 103
    goto :goto_55

    .line 105
    :pswitch_9c
    invoke-static {p0}, Lcom/airbnb/android/adapters/ListingsRowAdapter;->makeMiniMe(Landroid/view/View;)V

    .line 108
    :pswitch_9f
    invoke-static {p1}, Lcom/airbnb/android/adapters/ListingsRowAdapter;->getTextWithRoomTypeStatus(Lcom/airbnb/android/models/Listing;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 109
    goto :goto_55

    .line 111
    :pswitch_a4
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getNumReviewsText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 112
    const/4 v3, 0x1

    goto :goto_55

    .line 97
    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_92
        :pswitch_97
        :pswitch_9c
        :pswitch_9f
        :pswitch_a4
    .end packed-switch
.end method


# virtual methods
.method public cancelAdditionalLoading()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 192
    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->isProduction()Z

    move-result v0

    if-nez v0, :cond_26

    .line 193
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancel additional loading not supported in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/airbnb/android/adapters/ListingsRowAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_26
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    if-nez p2, :cond_12

    .line 62
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030162

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 65
    :cond_12
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/ListingsRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v0

    .line 67
    .local v0, "listing":Lcom/airbnb/android/models/Listing;
    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingsRowAdapter;->mDescriptionType:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    invoke-static {p2, v0, v1}, Lcom/airbnb/android/adapters/ListingsRowAdapter;->setupListingRow(Landroid/view/View;Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected loadMoreListings()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 200
    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->isProduction()Z

    move-result v0

    if-nez v0, :cond_26

    .line 201
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "load more listings not supported in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/airbnb/android/adapters/ListingsRowAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_26
    return-void
.end method
