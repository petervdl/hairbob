.class public Lcom/airbnb/android/fragments/SearchFilterFragment;
.super Lcom/airbnb/android/fragments/SlideUpTransparentFragment;
.source "SearchFilterFragment.java"


# instance fields
.field private mAmenityClickListener:Landroid/view/View$OnClickListener;

.field mAmenityLayout:Landroid/widget/LinearLayout;

.field mBathroomCounter:Lcom/airbnb/android/views/GroupedCounter;

.field mBedCounter:Lcom/airbnb/android/views/GroupedCounter;

.field mBedroomCounter:Lcom/airbnb/android/views/GroupedCounter;

.field private mCheckInDate:Ljava/util/Calendar;

.field private mCheckOutDate:Ljava/util/Calendar;

.field mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

.field mEntirePlaceCheck:Lcom/airbnb/android/views/CheckableLinearLayout;

.field private mExponentialPrices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mInstantBookCheck:Lcom/airbnb/android/views/GroupedCheck;

.field private mMaxPrice:I

.field private mMinPrice:I

.field private mNumBathrooms:I

.field private mNumBedrooms:I

.field private mNumBeds:I

.field private mNumGuests:I

.field mPriceText:Landroid/widget/TextView;

.field mPrivateRoomCheck:Lcom/airbnb/android/views/CheckableLinearLayout;

.field private mRangeSeekBar:Lcom/airbnb/android/views/RangeSeekBar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/android/views/RangeSeekBar",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mRangeSeekBarContainer:Landroid/widget/FrameLayout;

.field private mSelectedAmenities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSharedRoomCheck:Lcom/airbnb/android/views/CheckableLinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/SearchFilterFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFilterFragment;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mMinPrice:I

    return p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/SearchFilterFragment;I)I
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFilterFragment;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/SearchFilterFragment;->mapSeekBarValueToPrice(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/airbnb/android/fragments/SearchFilterFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFilterFragment;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mMaxPrice:I

    return p1
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/SearchFilterFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFilterFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SearchFilterFragment;->updateSeekBarText()V

    return-void
.end method

.method static synthetic access$402(Lcom/airbnb/android/fragments/SearchFilterFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFilterFragment;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mNumGuests:I

    return p1
.end method

.method static synthetic access$502(Lcom/airbnb/android/fragments/SearchFilterFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFilterFragment;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mNumBedrooms:I

    return p1
.end method

.method static synthetic access$602(Lcom/airbnb/android/fragments/SearchFilterFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFilterFragment;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mNumBeds:I

    return p1
.end method

.method static synthetic access$702(Lcom/airbnb/android/fragments/SearchFilterFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFilterFragment;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mNumBathrooms:I

    return p1
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/SearchFilterFragment;Landroid/view/View;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFilterFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/SearchFilterFragment;->toggleAmenity(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Lcom/airbnb/android/fragments/SearchFilterFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFilterFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SearchFilterFragment;->showAllAmenities()V

    return-void
.end method

.method private mapPriceToSeekBarValue(I)I
    .registers 4
    .param p1, "price"    # I

    .prologue
    .line 427
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mExponentialPrices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 428
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mExponentialPrices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, p1, :cond_18

    .line 433
    .end local v0    # "i":I
    :goto_17
    return v0

    .line 427
    .restart local v0    # "i":I
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 433
    :cond_1b
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mExponentialPrices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_17
.end method

.method private mapSeekBarValueToPrice(I)I
    .registers 4
    .param p1, "seekBarValue"    # I

    .prologue
    .line 439
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mExponentialPrices:Ljava/util/List;

    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mExponentialPrices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/SearchFilterFragment;
    .registers 1

    .prologue
    .line 83
    new-instance v0, Lcom/airbnb/android/fragments/SearchFilterFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/SearchFilterFragment;-><init>()V

    return-object v0
.end method

.method private setupCheckboxes(Landroid/view/View;Lcom/airbnb/android/models/SearchInfo;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "searchInfo"    # Lcom/airbnb/android/models/SearchInfo;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 247
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mPrivateRoomCheck:Lcom/airbnb/android/views/CheckableLinearLayout;

    invoke-virtual {p2}, Lcom/airbnb/android/models/SearchInfo;->includePrivateRoom()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/CheckableLinearLayout;->setChecked(Z)V

    .line 248
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mSharedRoomCheck:Lcom/airbnb/android/views/CheckableLinearLayout;

    invoke-virtual {p2}, Lcom/airbnb/android/models/SearchInfo;->includeSharedRoom()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/CheckableLinearLayout;->setChecked(Z)V

    .line 249
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mEntirePlaceCheck:Lcom/airbnb/android/views/CheckableLinearLayout;

    invoke-virtual {p2}, Lcom/airbnb/android/models/SearchInfo;->includeEntirePlace()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/CheckableLinearLayout;->setChecked(Z)V

    .line 252
    const-string/jumbo v1, "search_filters"

    const-string/jumbo v2, "instant_book_filter_relaunch"

    const-string/jumbo v3, "enabled"

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/utils/Trebuchet;->launchGuestExperiment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 253
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mInstantBookCheck:Lcom/airbnb/android/views/GroupedCheck;

    invoke-virtual {v1, v5}, Lcom/airbnb/android/views/GroupedCheck;->setVisibility(I)V

    .line 256
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mInstantBookCheck:Lcom/airbnb/android/views/GroupedCheck;

    invoke-virtual {v1}, Lcom/airbnb/android/views/GroupedCheck;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    .line 257
    .local v0, "instantBookTitle":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFilterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 258
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFilterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 260
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mInstantBookCheck:Lcom/airbnb/android/views/GroupedCheck;

    invoke-virtual {p2}, Lcom/airbnb/android/models/SearchInfo;->isInstantBookOnly()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCheck;->setChecked(Z)V

    .line 261
    const-string/jumbo v1, "guest"

    const-string/jumbo v2, "mobile_cta_book_now_relaunch"

    const-string/jumbo v3, "enabled"

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/utils/Trebuchet;->launchGuestExperiment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 262
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mInstantBookCheck:Lcom/airbnb/android/views/GroupedCheck;

    const v2, 0x7f0e00a0

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/SearchFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCheck;->setTitle(Ljava/lang/String;)V

    .line 265
    :cond_77
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mInstantBookCheck:Lcom/airbnb/android/views/GroupedCheck;

    invoke-virtual {v1}, Lcom/airbnb/android/views/GroupedCheck;->getTooltip()Lcom/airbnb/android/views/GroupedTooltip;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/SearchFilterFragment$9;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/SearchFilterFragment$9;-><init>(Lcom/airbnb/android/fragments/SearchFilterFragment;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedTooltip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    .end local v0    # "instantBookTitle":Landroid/widget/TextView;
    :goto_85
    return-void

    .line 275
    :cond_86
    invoke-virtual {p2, v5}, Lcom/airbnb/android/models/SearchInfo;->setIsInstantBookOnly(Z)V

    goto :goto_85
.end method

.method private showAllAmenities()V
    .registers 6

    .prologue
    .line 330
    invoke-static {}, Lcom/airbnb/android/models/Amenities;->getAmenitiesWithoutPets()Ljava/util/List;

    move-result-object v2

    .line 333
    .local v2, "undisplayedAmenities":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Amenities;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mAmenityLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_25

    .line 334
    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mAmenityLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Amenities;

    .line 335
    .local v0, "amenity":Lcom/airbnb/android/models/Amenities;
    iget v3, v0, Lcom/airbnb/android/models/Amenities;->mId:I

    invoke-static {v3}, Lcom/airbnb/android/models/Amenities;->getAmenityForId(I)Lcom/airbnb/android/models/Amenities;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 338
    .end local v0    # "amenity":Lcom/airbnb/android/models/Amenities;
    :cond_25
    invoke-direct {p0, v2}, Lcom/airbnb/android/fragments/SearchFilterFragment;->showAmenity(Ljava/util/List;)V

    .line 341
    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mAmenityLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mAmenityLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080346

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 342
    return-void
.end method

.method private showAmenity(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Amenities;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "amenities":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Amenities;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 293
    .local v5, "inflater":Landroid/view/LayoutInflater;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Amenities;

    .line 294
    .local v0, "am":Lcom/airbnb/android/models/Amenities;
    sget-object v6, Lcom/airbnb/android/models/Amenities;->Essentials:Lcom/airbnb/android/models/Amenities;

    if-eq v0, v6, :cond_c

    sget-object v6, Lcom/airbnb/android/models/Amenities;->Shampoo:Lcom/airbnb/android/models/Amenities;

    if-eq v0, v6, :cond_c

    .line 298
    const v6, 0x7f030130

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 299
    .local v1, "amView":Landroid/view/View;
    const v6, 0x7f080344

    invoke-static {v1, v6}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget v7, v0, Lcom/airbnb/android/models/Amenities;->mStringId:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 301
    const v6, 0x7f080343

    invoke-static {v1, v6}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 302
    .local v3, "amenityIcon":Landroid/widget/ImageView;
    iget v6, v0, Lcom/airbnb/android/models/Amenities;->mDrawableId:I

    const v7, 0x7f0a001a

    invoke-static {v6, v7}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 303
    .local v2, "amenityDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    iget-object v6, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mAmenityClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 308
    iget-object v6, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mSelectedAmenities:Ljava/util/Set;

    iget v7, v0, Lcom/airbnb/android/models/Amenities;->mId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 309
    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/SearchFilterFragment;->toggleAmenity(Landroid/view/View;)V

    .line 311
    :cond_64
    iget-object v6, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mAmenityLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_c

    .line 313
    .end local v0    # "am":Lcom/airbnb/android/models/Amenities;
    .end local v1    # "amView":Landroid/view/View;
    .end local v2    # "amenityDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "amenityIcon":Landroid/widget/ImageView;
    :cond_6a
    return-void
.end method

.method private showTopOrSelectedAmenities()V
    .registers 6

    .prologue
    .line 316
    invoke-static {}, Lcom/airbnb/android/models/Amenities;->getTopAmenities()Ljava/util/List;

    move-result-object v1

    .line 317
    .local v1, "amToShow":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Amenities;>;"
    iget-object v4, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mSelectedAmenities:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 318
    .local v0, "amId":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/airbnb/android/models/Amenities;->getAmenityForId(I)Lcom/airbnb/android/models/Amenities;

    move-result-object v2

    .line 319
    .local v2, "amenityToAdd":Lcom/airbnb/android/models/Amenities;
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 320
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 323
    .end local v0    # "amId":Ljava/lang/Integer;
    .end local v2    # "amenityToAdd":Lcom/airbnb/android/models/Amenities;
    :cond_28
    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/SearchFilterFragment;->showAmenity(Ljava/util/List;)V

    .line 324
    return-void
.end method

.method private toggleAmenity(Landroid/view/View;)V
    .registers 6
    .param p1, "amenityFilter"    # Landroid/view/View;

    .prologue
    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Amenities;

    .line 346
    .local v1, "amenity":Lcom/airbnb/android/models/Amenities;
    if-nez v1, :cond_11

    .line 347
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "amenity views need to have a tag which is the amenity"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 350
    :cond_11
    const v2, 0x7f080345

    invoke-static {p1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 351
    .local v0, "amCheckmark":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 353
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 354
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mSelectedAmenities:Ljava/util/Set;

    iget v3, v1, Lcom/airbnb/android/models/Amenities;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 359
    :goto_2e
    return-void

    .line 356
    :cond_2f
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mSelectedAmenities:Ljava/util/Set;

    iget v3, v1, Lcom/airbnb/android/models/Amenities;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2e
.end method

.method private updateSeekBarText()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 407
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v0

    .line 408
    .local v0, "currency":Lcom/airbnb/android/utils/CurrencyHelper;
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v4

    .line 410
    .local v4, "searchInfo":Lcom/airbnb/android/models/SearchInfo;
    iget v6, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mMinPrice:I

    int-to-double v6, v6

    invoke-virtual {v0, v6, v7, v8}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, "minPriceString":Ljava/lang/String;
    iget v6, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mMaxPrice:I

    invoke-virtual {v4}, Lcom/airbnb/android/models/SearchInfo;->getMaxFilterPrice()I

    move-result v7

    if-ne v6, v7, :cond_4d

    .line 414
    iget v6, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mMaxPrice:I

    int-to-double v6, v6

    invoke-virtual {v0, v6, v7, v8}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, "nativeCurrency":Ljava/lang/String;
    const v6, 0x7f0e0577

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v3, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/airbnb/android/fragments/SearchFilterFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .end local v3    # "nativeCurrency":Ljava/lang/String;
    .local v1, "maxPriceString":Ljava/lang/String;
    :goto_33
    invoke-virtual {v4}, Lcom/airbnb/android/models/SearchInfo;->isPriceRangeMonthly()Z

    move-result v6

    if-eqz v6, :cond_55

    const v5, 0x7f0e06be

    .line 423
    .local v5, "stringToUse":I
    :goto_3c
    iget-object v6, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mPriceText:Landroid/widget/TextView;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v9

    aput-object v1, v7, v8

    invoke-virtual {p0, v5, v7}, Lcom/airbnb/android/fragments/SearchFilterFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    return-void

    .line 418
    .end local v1    # "maxPriceString":Ljava/lang/String;
    .end local v5    # "stringToUse":I
    :cond_4d
    iget v6, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mMaxPrice:I

    int-to-double v6, v6

    invoke-virtual {v0, v6, v7, v8}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "maxPriceString":Ljava/lang/String;
    goto :goto_33

    .line 421
    :cond_55
    const v5, 0x7f0e06bd

    goto :goto_3c
.end method


# virtual methods
.method public getTransparentHeaderHeight()F
    .registers 3

    .prologue
    .line 281
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getScreenSize()Landroid/graphics/Point;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 282
    .local v0, "screenHeight":I
    div-int/lit8 v1, v0, 0x6

    int-to-float v1, v1

    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v5, -0x1

    .line 444
    const/4 v4, -0x1

    if-ne p2, v4, :cond_3d

    .line 445
    packed-switch p1, :pswitch_data_42

    .line 456
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 461
    :goto_b
    return-void

    .line 447
    :pswitch_c
    const-string/jumbo v4, "start_time"

    invoke-virtual {p3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 448
    .local v2, "startTime":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/utils/CalendarHelper;->getCalendarFromLong(Ljava/lang/Long;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mCheckInDate:Ljava/util/Calendar;

    .line 449
    const-string/jumbo v4, "end_time"

    invoke-virtual {p3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 450
    .local v0, "endTime":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/utils/CalendarHelper;->getCalendarFromLong(Ljava/lang/Long;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mCheckOutDate:Ljava/util/Calendar;

    .line 451
    iget-object v4, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    iget-object v5, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mCheckInDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/DateAndGuestCountView;->setCheckInDate(Ljava/util/Calendar;)V

    .line 452
    iget-object v4, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    iget-object v5, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mCheckOutDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/DateAndGuestCountView;->setCheckOutDate(Ljava/util/Calendar;)V

    goto :goto_b

    .line 459
    .end local v0    # "endTime":J
    .end local v2    # "startTime":J
    :cond_3d
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_b

    .line 445
    nop

    :pswitch_data_42
    .packed-switch 0x65
        :pswitch_c
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 18
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super/range {p0 .. p3}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v8

    .line 89
    .local v8, "outerView":Landroid/view/View;
    const v0, 0x7f0300e6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 90
    .local v13, "view":Landroid/view/View;
    invoke-static {p0, v13}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 92
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v11

    .line 95
    .local v11, "searchInfo":Lcom/airbnb/android/models/SearchInfo;
    invoke-direct {p0, v13, v11}, Lcom/airbnb/android/fragments/SearchFilterFragment;->setupCheckboxes(Landroid/view/View;Lcom/airbnb/android/models/SearchInfo;)V

    .line 97
    invoke-virtual {v11}, Lcom/airbnb/android/models/SearchInfo;->getMinFilterPrice()I

    move-result v0

    invoke-virtual {v11}, Lcom/airbnb/android/models/SearchInfo;->getMaxFilterPrice()I

    move-result v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/ExponentialPricesUtil;->getExponentialPrices(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mExponentialPrices:Ljava/util/List;

    .line 99
    new-instance v0, Lcom/airbnb/android/views/RangeSeekBar;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mExponentialPrices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lcom/airbnb/android/views/RangeSeekBar;-><init>(Ljava/lang/Number;Ljava/lang/Number;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mRangeSeekBar:Lcom/airbnb/android/views/RangeSeekBar;

    .line 101
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mRangeSeekBar:Lcom/airbnb/android/views/RangeSeekBar;

    new-instance v1, Lcom/airbnb/android/fragments/SearchFilterFragment$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/SearchFilterFragment$1;-><init>(Lcom/airbnb/android/fragments/SearchFilterFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/RangeSeekBar;->setOnRangeSeekBarChangeListener(Lcom/airbnb/android/views/RangeSeekBar$OnRangeSeekBarChangeListener;)V

    .line 111
    invoke-virtual {v11}, Lcom/airbnb/android/models/SearchInfo;->getMinPrice()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mMinPrice:I

    .line 112
    invoke-virtual {v11}, Lcom/airbnb/android/models/SearchInfo;->getMaxPrice()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mMaxPrice:I

    .line 113
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SearchFilterFragment;->updateSeekBarText()V

    .line 115
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mRangeSeekBar:Lcom/airbnb/android/views/RangeSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/RangeSeekBar;->setNotifyWhileDragging(Z)V

    .line 116
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mRangeSeekBar:Lcom/airbnb/android/views/RangeSeekBar;

    iget v1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mMinPrice:I

    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/SearchFilterFragment;->mapPriceToSeekBarValue(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/RangeSeekBar;->setSelectedMinValue(Ljava/lang/Number;)V

    .line 117
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mRangeSeekBar:Lcom/airbnb/android/views/RangeSeekBar;

    iget v1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mMaxPrice:I

    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/SearchFilterFragment;->mapPriceToSeekBarValue(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/RangeSeekBar;->setSelectedMaxValue(Ljava/lang/Number;)V

    .line 119
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {v9, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 121
    .local v9, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mRangeSeekBarContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mRangeSeekBar:Lcom/airbnb/android/views/RangeSeekBar;

    invoke-virtual {v0, v1, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFilterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 124
    .local v3, "MAX_NUM_GUESTS":I
    const/4 v0, 0x1

    invoke-virtual {v11}, Lcom/airbnb/android/models/SearchInfo;->getGuestCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mNumGuests:I

    .line 125
    invoke-virtual {v11}, Lcom/airbnb/android/models/SearchInfo;->getCheckinDate()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mCheckInDate:Ljava/util/Calendar;

    .line 126
    invoke-virtual {v11}, Lcom/airbnb/android/models/SearchInfo;->getCheckoutDate()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mCheckOutDate:Ljava/util/Calendar;

    .line 128
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    new-instance v1, Lcom/airbnb/android/fragments/SearchFilterFragment$2;

    invoke-direct {v1, p0, v11}, Lcom/airbnb/android/fragments/SearchFilterFragment$2;-><init>(Lcom/airbnb/android/fragments/SearchFilterFragment;Lcom/airbnb/android/models/SearchInfo;)V

    iget v2, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mNumGuests:I

    iget-object v4, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mCheckInDate:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mCheckOutDate:Ljava/util/Calendar;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/airbnb/android/views/DateAndGuestCountView;->init(Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;IILjava/util/Calendar;Ljava/util/Calendar;Lcom/airbnb/android/models/SpecialOffer;Z)V

    .line 158
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFilterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 160
    .local v10, "res":Landroid/content/res/Resources;
    invoke-virtual {v11}, Lcom/airbnb/android/models/SearchInfo;->getNumBedrooms()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mNumBedrooms:I

    .line 161
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mBedroomCounter:Lcom/airbnb/android/views/GroupedCounter;

    new-instance v1, Lcom/airbnb/android/fragments/SearchFilterFragment$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/SearchFilterFragment$3;-><init>(Lcom/airbnb/android/fragments/SearchFilterFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCounter;->setOnValueChangeListener(Lcom/airbnb/android/views/GroupedCounter$OnValueChangeListener;)V

    .line 168
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mBedroomCounter:Lcom/airbnb/android/views/GroupedCounter;

    iget v1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mNumBedrooms:I

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCounter;->setSelectedValue(I)V

    .line 169
    iget v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mNumBedrooms:I

    const v1, 0x7f0c0016

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_f1

    .line 170
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mBedroomCounter:Lcom/airbnb/android/views/GroupedCounter;

    const v1, 0x7f0e0469

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCounter;->setText(I)V

    .line 173
    :cond_f1
    invoke-virtual {v11}, Lcom/airbnb/android/models/SearchInfo;->getNumBeds()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mNumBeds:I

    .line 174
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mBedCounter:Lcom/airbnb/android/views/GroupedCounter;

    new-instance v1, Lcom/airbnb/android/fragments/SearchFilterFragment$4;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/SearchFilterFragment$4;-><init>(Lcom/airbnb/android/fragments/SearchFilterFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCounter;->setOnValueChangeListener(Lcom/airbnb/android/views/GroupedCounter$OnValueChangeListener;)V

    .line 181
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mBedCounter:Lcom/airbnb/android/views/GroupedCounter;

    iget v1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mNumBeds:I

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCounter;->setSelectedValue(I)V

    .line 182
    iget v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mNumBeds:I

    const v1, 0x7f0c0017

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_11b

    .line 183
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mBedCounter:Lcom/airbnb/android/views/GroupedCounter;

    const v1, 0x7f0e046a

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCounter;->setText(I)V

    .line 186
    :cond_11b
    invoke-virtual {v11}, Lcom/airbnb/android/models/SearchInfo;->getNumBathrooms()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mNumBathrooms:I

    .line 187
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mBathroomCounter:Lcom/airbnb/android/views/GroupedCounter;

    new-instance v1, Lcom/airbnb/android/fragments/SearchFilterFragment$5;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/SearchFilterFragment$5;-><init>(Lcom/airbnb/android/fragments/SearchFilterFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCounter;->setOnValueChangeListener(Lcom/airbnb/android/views/GroupedCounter$OnValueChangeListener;)V

    .line 194
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mBathroomCounter:Lcom/airbnb/android/views/GroupedCounter;

    iget v1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mNumBathrooms:I

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCounter;->setSelectedValue(I)V

    .line 195
    iget v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mNumBathrooms:I

    const v1, 0x7f0c0015

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_145

    .line 196
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mBathroomCounter:Lcom/airbnb/android/views/GroupedCounter;

    const v1, 0x7f0e0468

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCounter;->setText(I)V

    .line 201
    :cond_145
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {v11}, Lcom/airbnb/android/models/SearchInfo;->getAmenities()[Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mSelectedAmenities:Ljava/util/Set;

    .line 202
    new-instance v0, Lcom/airbnb/android/fragments/SearchFilterFragment$6;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/SearchFilterFragment$6;-><init>(Lcom/airbnb/android/fragments/SearchFilterFragment;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mAmenityClickListener:Landroid/view/View$OnClickListener;

    .line 210
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SearchFilterFragment;->showTopOrSelectedAmenities()V

    .line 212
    const v0, 0x7f080295

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 213
    .local v12, "showMoreAmenity":Landroid/view/View;
    new-instance v0, Lcom/airbnb/android/fragments/SearchFilterFragment$7;

    invoke-direct {v0, p0, v12}, Lcom/airbnb/android/fragments/SearchFilterFragment$7;-><init>(Lcom/airbnb/android/fragments/SearchFilterFragment;Landroid/view/View;)V

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mScrollViewContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const v1, 0x7f0e0086

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 229
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v1, Lcom/airbnb/android/fragments/SearchFilterFragment$8;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/SearchFilterFragment$8;-><init>(Lcom/airbnb/android/fragments/SearchFilterFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    return-object v8
.end method

.method public saveFilters()Z
    .registers 11

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 363
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/SearchInfo;->markNotChanged()V

    .line 366
    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "Search"

    aput-object v3, v2, v6

    const-string/jumbo v3, "click_filter_results"

    aput-object v3, v2, v5

    const-string/jumbo v3, "submit_filter_results"

    aput-object v3, v2, v7

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v0

    .line 369
    .local v0, "searchInfo":Lcom/airbnb/android/models/SearchInfo;
    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "Search"

    aput-object v3, v2, v6

    const-string/jumbo v3, "click_filter_results"

    aput-object v3, v2, v5

    const-string/jumbo v3, "change_private_room"

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mPrivateRoomCheck:Lcom/airbnb/android/views/CheckableLinearLayout;

    invoke-virtual {v3}, Lcom/airbnb/android/views/CheckableLinearLayout;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 370
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mPrivateRoomCheck:Lcom/airbnb/android/views/CheckableLinearLayout;

    invoke-virtual {v2}, Lcom/airbnb/android/views/CheckableLinearLayout;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/airbnb/android/models/SearchInfo;->setIncludePrivateRoom(Z)V

    .line 372
    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "Search"

    aput-object v3, v2, v6

    const-string/jumbo v3, "click_filter_results"

    aput-object v3, v2, v5

    const-string/jumbo v3, "change_shared_room"

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mSharedRoomCheck:Lcom/airbnb/android/views/CheckableLinearLayout;

    invoke-virtual {v3}, Lcom/airbnb/android/views/CheckableLinearLayout;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 373
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mSharedRoomCheck:Lcom/airbnb/android/views/CheckableLinearLayout;

    invoke-virtual {v2}, Lcom/airbnb/android/views/CheckableLinearLayout;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/airbnb/android/models/SearchInfo;->setIncludeSharedRoom(Z)V

    .line 375
    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "Search"

    aput-object v3, v2, v6

    const-string/jumbo v3, "click_filter_results"

    aput-object v3, v2, v5

    const-string/jumbo v3, "change_entire_home"

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mEntirePlaceCheck:Lcom/airbnb/android/views/CheckableLinearLayout;

    invoke-virtual {v3}, Lcom/airbnb/android/views/CheckableLinearLayout;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 376
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mEntirePlaceCheck:Lcom/airbnb/android/views/CheckableLinearLayout;

    invoke-virtual {v2}, Lcom/airbnb/android/views/CheckableLinearLayout;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/airbnb/android/models/SearchInfo;->setIncludeEntirePlace(Z)V

    .line 378
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "Search"

    aput-object v3, v2, v6

    const-string/jumbo v3, "click_filter_results"

    aput-object v3, v2, v5

    const-string/jumbo v3, "change_price"

    aput-object v3, v2, v7

    iget v3, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mMinPrice:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    iget v3, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mMaxPrice:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x5

    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->getMinPrice()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->getMaxPrice()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 380
    iget v2, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mMinPrice:I

    invoke-virtual {v0, v2}, Lcom/airbnb/android/models/SearchInfo;->setMinPrice(I)V

    .line 381
    iget v2, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mMaxPrice:I

    invoke-virtual {v0, v2}, Lcom/airbnb/android/models/SearchInfo;->setMaxPrice(I)V

    .line 383
    iget v2, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mNumGuests:I

    invoke-virtual {v0, v2}, Lcom/airbnb/android/models/SearchInfo;->setGuestCount(I)V

    .line 384
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mCheckInDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/models/SearchInfo;->setCheckinDate(Ljava/util/Calendar;)V

    .line 385
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mCheckOutDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/models/SearchInfo;->setCheckoutDate(Ljava/util/Calendar;)V

    .line 387
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "Search"

    aput-object v3, v2, v6

    const-string/jumbo v3, "click_filter_results"

    aput-object v3, v2, v5

    const-string/jumbo v3, "change_beds"

    aput-object v3, v2, v7

    iget v3, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mNumBeds:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->getNumBeds()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 388
    iget v2, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mNumBeds:I

    invoke-virtual {v0, v2}, Lcom/airbnb/android/models/SearchInfo;->setNumBeds(I)V

    .line 390
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "Search"

    aput-object v3, v2, v6

    const-string/jumbo v3, "click_filter_results"

    aput-object v3, v2, v5

    const-string/jumbo v3, "change_bedrooms"

    aput-object v3, v2, v7

    iget v3, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mNumBedrooms:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->getNumBedrooms()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 392
    iget v2, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mNumBedrooms:I

    invoke-virtual {v0, v2}, Lcom/airbnb/android/models/SearchInfo;->setNumBedrooms(I)V

    .line 394
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "Search"

    aput-object v3, v2, v6

    const-string/jumbo v3, "click_filter_results"

    aput-object v3, v2, v5

    const-string/jumbo v3, "change_bathrooms"

    aput-object v3, v2, v7

    iget v3, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mNumBathrooms:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->getNumBathrooms()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 396
    iget v2, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mNumBathrooms:I

    invoke-virtual {v0, v2}, Lcom/airbnb/android/models/SearchInfo;->setNumBathrooms(I)V

    .line 398
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mSelectedAmenities:Ljava/util/Set;

    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mSelectedAmenities:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    .line 399
    .local v1, "selectedAmenities":[Ljava/lang/Integer;
    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/SearchInfo;->setAmenities([Ljava/lang/Integer;)V

    .line 400
    invoke-virtual {v0, v5}, Lcom/airbnb/android/models/SearchInfo;->setUseDetailedFilters(Z)V

    .line 401
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mInstantBookCheck:Lcom/airbnb/android/views/GroupedCheck;

    invoke-virtual {v2}, Lcom/airbnb/android/views/GroupedCheck;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/airbnb/android/models/SearchInfo;->setIsInstantBookOnly(Z)V

    .line 403
    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->isChanged()Z

    move-result v2

    return v2
.end method

.method public useListView()Z
    .registers 2

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method
