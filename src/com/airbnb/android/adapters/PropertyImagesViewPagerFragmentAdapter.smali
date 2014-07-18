.class public Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "PropertyImagesViewPagerFragmentAdapter.java"


# instance fields
.field private mDefaultImageRes:I

.field private mFragmentLayoutRes:I

.field private mListing:Lcom/airbnb/android/models/Listing;

.field private mShowCaption:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Lcom/airbnb/android/models/Listing;Z)V
    .registers 5
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p3, "showCaption"    # Z

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 19
    iput v0, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->mFragmentLayoutRes:I

    .line 20
    iput v0, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->mDefaultImageRes:I

    .line 24
    iput-object p2, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->mListing:Lcom/airbnb/android/models/Listing;

    .line 25
    iput-boolean p3, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->mShowCaption:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Lcom/airbnb/android/models/Listing;ZII)V
    .registers 7
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p3, "showCaption"    # Z
    .param p4, "fragmentLayoutRes"    # I
    .param p5, "defaultImageRes"    # I

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 19
    iput v0, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->mFragmentLayoutRes:I

    .line 20
    iput v0, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->mDefaultImageRes:I

    .line 33
    iput-object p2, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->mListing:Lcom/airbnb/android/models/Listing;

    .line 34
    iput-boolean p3, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->mShowCaption:Z

    .line 35
    iput p4, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->mFragmentLayoutRes:I

    .line 36
    iput p5, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->mDefaultImageRes:I

    .line 37
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->mListing:Lcom/airbnb/android/models/Listing;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getPictureUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 8
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 41
    iget-object v4, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getPictureUrls()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 42
    .local v2, "imageUrl":Ljava/lang/String;
    const/4 v1, 0x0

    .line 43
    .local v1, "imageCaption":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->mShowCaption:Z

    if-eqz v4, :cond_3d

    .line 44
    iget-object v4, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getPhotos()Ljava/util/List;

    move-result-object v3

    .line 45
    .local v3, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Photo;>;"
    if-eqz v3, :cond_4a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, p1, :cond_4a

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/Photo;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Photo;->getCaption()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4a

    const/4 v0, 0x1

    .line 46
    .local v0, "hasCaption":Z
    :goto_31
    if-eqz v0, :cond_4c

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/Photo;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Photo;->getCaption()Ljava/lang/String;

    move-result-object v1

    .line 48
    .end local v0    # "hasCaption":Z
    .end local v3    # "photos":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Photo;>;"
    :cond_3d
    :goto_3d
    iget v4, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->mFragmentLayoutRes:I

    if-lez v4, :cond_4e

    .line 49
    iget v4, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->mFragmentLayoutRes:I

    iget v5, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->mDefaultImageRes:I

    invoke-static {v2, v1, v4, v5}, Lcom/airbnb/android/fragments/ImageFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;II)Lcom/airbnb/android/fragments/ImageFragment;

    move-result-object v4

    .line 51
    :goto_49
    return-object v4

    .restart local v3    # "photos":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Photo;>;"
    :cond_4a
    move v0, v5

    .line 45
    goto :goto_31

    .line 46
    .restart local v0    # "hasCaption":Z
    :cond_4c
    const/4 v1, 0x0

    goto :goto_3d

    .line 51
    .end local v0    # "hasCaption":Z
    .end local v3    # "photos":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Photo;>;"
    :cond_4e
    invoke-static {v2, v1, v5}, Lcom/airbnb/android/fragments/ImageFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/airbnb/android/fragments/ImageFragment;

    move-result-object v4

    goto :goto_49
.end method

.method public setListing(Lcom/airbnb/android/models/Listing;)V
    .registers 2
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->mListing:Lcom/airbnb/android/models/Listing;

    .line 62
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/PropertyImagesViewPagerFragmentAdapter;->notifyDataSetChanged()V

    .line 63
    return-void
.end method
