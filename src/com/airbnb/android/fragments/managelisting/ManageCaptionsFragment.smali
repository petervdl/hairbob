.class public Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;
.super Landroid/support/v4/app/Fragment;
.source "ManageCaptionsFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final ARGS_LISTING:Ljava/lang/String; = "listing"

.field private static final ARGS_PHOTO_INDEX:Ljava/lang/String; = "photo_index"


# instance fields
.field private mCurrentCaption:I

.field private mCurrentPhotoCaptionManager:Lcom/airbnb/android/interfaces/CurrentPhotoCaptionManager;

.field private mEditCaption:Landroid/widget/EditText;

.field private mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

.field private mImagePagerAdapter:Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;

.field private mListing:Lcom/airbnb/android/models/Listing;

.field private mOriginalCaptions:[Ljava/lang/String;

.field private mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mEditCaption:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    .prologue
    .line 28
    iget v0, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mCurrentCaption:I

    return v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mCurrentCaption:I

    return p1
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;)Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePagerAdapter:Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;)Lcom/airbnb/android/interfaces/CurrentPhotoCaptionManager;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mCurrentPhotoCaptionManager:Lcom/airbnb/android/interfaces/CurrentPhotoCaptionManager;

    return-object v0
.end method

.method private static doStringsDiffer(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 250
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 253
    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    .line 251
    goto :goto_e

    .line 253
    :cond_11
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move v0, v1

    goto :goto_e
.end method

.method public static newInstance(Lcom/airbnb/android/models/Listing;I)Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;
    .registers 5
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p1, "photoIndex"    # I

    .prologue
    .line 47
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;-><init>()V

    .line 48
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 50
    const-string/jumbo v2, "photo_index"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v1
.end method

.method private onNext()V
    .registers 5

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->saveCurrentCaption()V

    .line 203
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v1}, Lcom/airbnb/android/views/ClickableViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 204
    .local v0, "index":I
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePagerAdapter:Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_14

    .line 205
    const/4 v0, 0x0

    .line 207
    :cond_14
    iput v0, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mCurrentCaption:I

    .line 208
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/ClickableViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 209
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/airbnb/android/views/ClickableViewPager;->setCurrentItem(IZ)V

    .line 210
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/ClickableViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 211
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mEditCaption:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getPhotos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Photo;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Photo;->getCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mCurrentPhotoCaptionManager:Lcom/airbnb/android/interfaces/CurrentPhotoCaptionManager;

    iget v2, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mCurrentCaption:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePagerAdapter:Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->getCount()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/airbnb/android/interfaces/CurrentPhotoCaptionManager;->updateCurrentPhotoCaption(II)V

    .line 213
    return-void
.end method

.method private onPrevious()V
    .registers 5

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->saveCurrentCaption()V

    .line 188
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v1}, Lcom/airbnb/android/views/ClickableViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 189
    .local v0, "index":I
    if-gez v0, :cond_15

    .line 190
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePagerAdapter:Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 192
    :cond_15
    iput v0, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mCurrentCaption:I

    .line 193
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/ClickableViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 194
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/airbnb/android/views/ClickableViewPager;->setCurrentItem(IZ)V

    .line 195
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/ClickableViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 196
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mEditCaption:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getPhotos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Photo;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Photo;->getCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mCurrentPhotoCaptionManager:Lcom/airbnb/android/interfaces/CurrentPhotoCaptionManager;

    iget v2, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mCurrentCaption:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePagerAdapter:Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->getCount()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/airbnb/android/interfaces/CurrentPhotoCaptionManager;->updateCurrentPhotoCaption(II)V

    .line 198
    return-void
.end method

.method private storeCaptions()V
    .registers 6

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->saveCurrentCaption()V

    .line 105
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->getNumCaptionsUpodated()I

    move-result v0

    .line 106
    .local v0, "captionsUpdated":I
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string/jumbo v1, "ml_post_list"

    .line 107
    .local v1, "mixPanelListingState":Ljava/lang/String;
    :goto_12
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v4, v4, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "photos"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "photo_home"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "caption_save_click"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 109
    return-void

    .line 106
    .end local v1    # "mixPanelListingState":Ljava/lang/String;
    :cond_3c
    const-string/jumbo v1, "ml_pre_list"

    goto :goto_12
.end method


# virtual methods
.method public getListing()Lcom/airbnb/android/models/Listing;
    .registers 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->saveCurrentCaption()V

    .line 235
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method public getNumCaptionsUpodated()I
    .registers 5

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->saveCurrentCaption()V

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "captionsUpdated":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mOriginalCaptions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_29

    .line 225
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mOriginalCaptions:[Ljava/lang/String;

    aget-object v3, v2, v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getPhotos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Photo;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Photo;->getCaption()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->doStringsDiffer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 226
    add-int/lit8 v0, v0, 0x1

    .line 224
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 230
    :cond_29
    return v0
.end method

.method public hasLocalEdits()Z
    .registers 5

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->saveCurrentCaption()V

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "edited":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mOriginalCaptions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_26

    .line 243
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mOriginalCaptions:[Ljava/lang/String;

    aget-object v3, v2, v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getPhotos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Photo;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Photo;->getCaption()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->doStringsDiffer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 246
    :cond_26
    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 80
    instance-of v0, p1, Lcom/airbnb/android/interfaces/CurrentPhotoCaptionManager;

    if-nez v0, :cond_2f

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/airbnb/android/interfaces/CurrentPhotoCaptionManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_2f
    check-cast p1, Lcom/airbnb/android/interfaces/CurrentPhotoCaptionManager;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mCurrentPhotoCaptionManager:Lcom/airbnb/android/interfaces/CurrentPhotoCaptionManager;

    .line 84
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    const-string/jumbo v1, "ManageCaptionsFragment"

    invoke-static {v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_6
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v2, "ManageCaptionsFragment#onCreate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_f} :catch_4c

    .line 58
    :goto_f
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "listing"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 62
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getPhotos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mOriginalCaptions:[Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mOriginalCaptions:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_56

    .line 64
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mOriginalCaptions:[Ljava/lang/String;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getPhotos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Photo;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Photo;->getCaption()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 4294967295
    .end local v0    # "i":I
    :catch_4c
    move-exception v1

    const/4 v1, 0x0

    :try_start_4e
    const-string/jumbo v2, "ManageCaptionsFragment#onCreate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_55} :catch_4c

    goto :goto_f

    .line 67
    .restart local v0    # "i":I
    :cond_56
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->setHasOptionsMenu(Z)V

    .line 68
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 72
    const v0, 0x7f100014

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 73
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v7, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v5, "ManageCaptionsFragment#onCreateView"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_a} :catch_be

    .line 129
    :goto_a
    const v4, 0x7f0300c0

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 131
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f080033

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/ClickableViewPager;

    iput-object v4, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    .line 134
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 137
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 138
    .local v2, "screenSize":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 140
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v4}, Lcom/airbnb/android/views/ClickableViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 141
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    const v5, 0x3f2aaaab

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v4, v1}, Lcom/airbnb/android/views/ClickableViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    new-instance v5, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment$1;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/ClickableViewPager;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    new-instance v4, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    iget-object v6, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-direct {v4, v5, v6, v7}, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/airbnb/android/models/Listing;Z)V

    iput-object v4, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePagerAdapter:Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;

    .line 153
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePagerAdapter:Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/ClickableViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 155
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "photo_index"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5, v7}, Lcom/airbnb/android/views/ClickableViewPager;->setCurrentItem(IZ)V

    .line 156
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mCurrentPhotoCaptionManager:Lcom/airbnb/android/interfaces/CurrentPhotoCaptionManager;

    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v5}, Lcom/airbnb/android/views/ClickableViewPager;->getCurrentItem()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePagerAdapter:Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;

    invoke-virtual {v6}, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->getCount()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/airbnb/android/interfaces/CurrentPhotoCaptionManager;->updateCurrentPhotoCaption(II)V

    .line 158
    new-instance v4, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment$2;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment$2;-><init>(Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;)V

    iput-object v4, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 177
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/ClickableViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 179
    const v4, 0x7f080220

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mEditCaption:Landroid/widget/EditText;

    .line 180
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mEditCaption:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getPhotos()Ljava/util/List;

    move-result-object v4

    iget-object v6, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v6}, Lcom/airbnb/android/views/ClickableViewPager;->getCurrentItem()I

    move-result v6

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/Photo;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Photo;->getCaption()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 182
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v3

    .line 4294967295
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "screenSize":Landroid/graphics/Point;
    .end local v3    # "view":Landroid/view/View;
    :catch_be
    move-exception v4

    const/4 v4, 0x0

    :try_start_c0
    const-string/jumbo v5, "ManageCaptionsFragment#onCreateView"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_c7} :catch_be

    goto/16 :goto_a
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 113
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_16

    .line 124
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 115
    :pswitch_d
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->onPrevious()V

    goto :goto_c

    .line 119
    :pswitch_11
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->onNext()V

    goto :goto_c

    .line 113
    nop

    :pswitch_data_16
    .packed-switch 0x7f080548
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 96
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 98
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mEditCaption:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 99
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->storeCaptions()V

    .line 100
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 88
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 90
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mEditCaption:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 91
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mEditCaption:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->showSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 92
    return-void
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method

.method public saveCurrentCaption()V
    .registers 4

    .prologue
    .line 216
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v1}, Lcom/airbnb/android/views/ClickableViewPager;->getCurrentItem()I

    move-result v0

    .line 217
    .local v0, "index":I
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getPhotos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Photo;

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManageCaptionsFragment;->mEditCaption:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/models/Photo;->setCaption(Ljava/lang/String;)V

    .line 218
    return-void
.end method
