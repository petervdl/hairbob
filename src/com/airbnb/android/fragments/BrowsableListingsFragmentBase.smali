.class public abstract Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;
.super Lcom/airbnb/android/fragments/BaseDrawerFragment;
.source "BrowsableListingsFragmentBase.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/airbnb/android/interfaces/BrowsableListingsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$1;,
        Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;
    }
.end annotation


# static fields
.field private static final SAVED_GEOGRAPHY:Ljava/lang/String; = "geography"

.field private static final SAVED_LISTINGS:Ljava/lang/String; = "listings"

.field private static final SAVED_STATE:Ljava/lang/String; = "state"

.field public static TAG:Ljava/lang/String;


# instance fields
.field protected mBrowsableSectionsAdapter:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;

.field private mBrowsableType:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

.field protected mBrowsableViewPager:Lcom/airbnb/android/views/BrowsableViewPager;

.field protected mContentFrame:Landroid/view/View;

.field protected mCurrentState:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

.field protected mEmptyResults:Lcom/airbnb/android/views/EmptyResults;

.field protected mGeography:Lcom/airbnb/android/models/SearchGeography;

.field protected mListings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

.field private mMapMenuItem:Landroid/view/MenuItem;

.field private mMenuItemVisibility:Z

.field protected mNoResultViews:Landroid/view/View;

.field private mPhotoMenuItem:Landroid/view/MenuItem;

.field protected mTotalListingsCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;-><init>()V

    .line 65
    sget-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->Search:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    iput-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mBrowsableType:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    .line 73
    return-void
.end method

.method private fadeMenuItems(F)V
    .registers 6
    .param p1, "slideOffset"    # F

    .prologue
    const/high16 v3, 0x437f0000

    .line 326
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->isWideMode()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 327
    const/high16 v2, 0x3f800000

    sub-float v0, v2, p1

    .line 328
    .local v0, "diff":F
    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mMapMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 329
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1d

    .line 330
    mul-float v2, v3, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 332
    :cond_1d
    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mPhotoMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 333
    if-eqz v1, :cond_2e

    .line 334
    mul-float v2, v3, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 337
    .end local v0    # "diff":F
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2e
    return-void
.end method


# virtual methods
.method protected clearListings()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mListings:Ljava/util/List;

    .line 258
    iput v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mTotalListingsCount:I

    .line 259
    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->updateChildFragments(Z)V

    .line 260
    return-void
.end method

.method protected enableListingsResult(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->isWideMode()Z

    move-result v2

    if-nez v2, :cond_13

    .line 192
    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mBrowsableViewPager:Lcom/airbnb/android/views/BrowsableViewPager;

    if-eqz p1, :cond_11

    :goto_d
    invoke-virtual {v2, v0}, Lcom/airbnb/android/views/BrowsableViewPager;->setVisibility(I)V

    .line 196
    :goto_10
    return-void

    :cond_11
    move v0, v1

    .line 192
    goto :goto_d

    .line 194
    :cond_13
    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mContentFrame:Landroid/view/View;

    if-eqz p1, :cond_1b

    :goto_17
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    :cond_1b
    move v0, v1

    goto :goto_17
.end method

.method protected abstract getBrowsableType()Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;
.end method

.method protected abstract getLayoutId()I
.end method

.method public getListings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mListings:Ljava/util/List;

    return-object v0
.end method

.method public getSearchGeography()Lcom/airbnb/android/models/SearchGeography;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mGeography:Lcom/airbnb/android/models/SearchGeography;

    return-object v0
.end method

.method public getTotalListingCount()I
    .registers 2

    .prologue
    .line 269
    iget v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mTotalListingsCount:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 347
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 351
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 352
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v1, :cond_25

    .line 353
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 354
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v3, v0, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;

    if-eqz v3, :cond_11

    .line 355
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_11

    .line 359
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_25
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 81
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    iput-boolean v4, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mMenuItemVisibility:Z

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mListings:Ljava/util/List;

    .line 86
    sget-object v1, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->NewFetch:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    iput-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mCurrentState:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    .line 88
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->getBrowsableType()Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mBrowsableType:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    .line 89
    new-instance v1, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mBrowsableType:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    invoke-direct {v1, v2, v3}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;)V

    iput-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mBrowsableSectionsAdapter:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;

    .line 91
    if-eqz p1, :cond_4b

    .line 92
    const-string/jumbo v1, "state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, "state":I
    if-ltz v0, :cond_37

    .line 94
    invoke-static {}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->values()[Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    move-result-object v1

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mCurrentState:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    .line 96
    :cond_37
    const-string/jumbo v1, "listings"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mListings:Ljava/util/List;

    .line 97
    const-string/jumbo v1, "geography"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/SearchGeography;

    iput-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mGeography:Lcom/airbnb/android/models/SearchGeography;

    .line 100
    .end local v0    # "state":I
    :cond_4b
    invoke-virtual {p0, v4}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->setHasOptionsMenu(Z)V

    .line 101
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->isWideMode()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 163
    const v0, 0x7f100003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 164
    const v0, 0x7f080530

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mPhotoMenuItem:Landroid/view/MenuItem;

    .line 165
    const v0, 0x7f080534

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mMapMenuItem:Landroid/view/MenuItem;

    .line 168
    :cond_1e
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 169
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->getLayoutId()I

    move-result v1

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 108
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f080150

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/LoaderFrame;

    iput-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    .line 109
    const v1, 0x7f08025f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mNoResultViews:Landroid/view/View;

    .line 110
    const v1, 0x7f080107

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/EmptyResults;

    iput-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mEmptyResults:Lcom/airbnb/android/views/EmptyResults;

    .line 111
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mEmptyResults:Lcom/airbnb/android/views/EmptyResults;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/EmptyResults;->setVisibility(I)V

    .line 112
    const v1, 0x7f080260

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/BrowsableViewPager;

    iput-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mBrowsableViewPager:Lcom/airbnb/android/views/BrowsableViewPager;

    .line 114
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mBrowsableViewPager:Lcom/airbnb/android/views/BrowsableViewPager;

    if-eqz v1, :cond_5b

    .line 116
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mBrowsableViewPager:Lcom/airbnb/android/views/BrowsableViewPager;

    invoke-virtual {v1, p0}, Lcom/airbnb/android/views/BrowsableViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 117
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mBrowsableViewPager:Lcom/airbnb/android/views/BrowsableViewPager;

    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mBrowsableSectionsAdapter:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/BrowsableViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 118
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mBrowsableViewPager:Lcom/airbnb/android/views/BrowsableViewPager;

    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mBrowsableSectionsAdapter:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/BrowsableViewPager;->setOffscreenPageLimit(I)V

    .line 119
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mBrowsableViewPager:Lcom/airbnb/android/views/BrowsableViewPager;

    invoke-virtual {v1, v3}, Lcom/airbnb/android/views/BrowsableViewPager;->enable(Z)V

    .line 127
    :goto_5a
    return-object v0

    .line 122
    :cond_5b
    const v1, 0x7f08010e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mContentFrame:Landroid/view/View;

    .line 123
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080261

    iget-object v3, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mBrowsableType:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    invoke-static {v3}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;->getBrowsablePhotoFragment(Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080262

    iget-object v3, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mBrowsableType:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    invoke-static {v3}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;->getBrowsableMapFragment(Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_5a
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 173
    invoke-super {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onDestroyView()V

    .line 175
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LoaderFrame;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 177
    return-void
.end method

.method public onDrawerClosed()V
    .registers 2

    .prologue
    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mDrawerOpen:Z

    .line 342
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->setMenuItemsVisibility(Z)V

    .line 343
    return-void
.end method

.method public onDrawerOpened()V
    .registers 2

    .prologue
    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mDrawerOpen:Z

    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->setMenuItemsVisibility(Z)V

    .line 316
    return-void
.end method

.method public onDrawerSlide(F)V
    .registers 2
    .param p1, "slideOffset"    # F

    .prologue
    .line 320
    iput p1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mSlideOffset:F

    .line 322
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->fadeMenuItems(F)V

    .line 323
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 133
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_26

    .line 141
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 135
    :sswitch_d
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mBrowsableViewPager:Lcom/airbnb/android/views/BrowsableViewPager;

    sget-object v2, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->Photo:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/BrowsableViewPager;->setCurrentItem(I)V

    goto :goto_c

    .line 138
    :sswitch_19
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mBrowsableViewPager:Lcom/airbnb/android/views/BrowsableViewPager;

    sget-object v2, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->Map:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/BrowsableViewPager;->setCurrentItem(I)V

    goto :goto_c

    .line 133
    nop

    :sswitch_data_26
    .sparse-switch
        0x7f080530 -> :sswitch_d
        0x7f080534 -> :sswitch_19
    .end sparse-switch
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "arg0"    # I

    .prologue
    .line 208
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 212
    return-void
.end method

.method public onPageSelected(I)V
    .registers 6
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 217
    sget-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->Map:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_26

    .line 219
    const-string/jumbo v0, "map_toggle_click"

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackListResultsAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 220
    const-string/jumbo v0, "impression"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "number_listings"

    iget v3, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mTotalListingsCount:I

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackMapResultsAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 226
    :goto_22
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->setMenuState()V

    .line 227
    return-void

    .line 223
    :cond_26
    const-string/jumbo v0, "list_toggle_click"

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackMapResultsAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 224
    const-string/jumbo v0, "impression"

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackListResultsAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    goto :goto_22
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 148
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->setMenuState()V

    .line 149
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 182
    const-string/jumbo v0, "state"

    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mCurrentState:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mListings:Ljava/util/List;

    if-eqz v0, :cond_20

    .line 184
    const-string/jumbo v0, "listings"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mListings:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 186
    :cond_20
    const-string/jumbo v0, "geography"

    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mGeography:Lcom/airbnb/android/models/SearchGeography;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 187
    return-void
.end method

.method public setListingsData(Ljava/util/List;I)V
    .registers 4
    .param p2, "totalListingCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    iput p2, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mTotalListingsCount:I

    .line 275
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mListings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 276
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mListings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->updateChildFragments(Z)V

    .line 278
    return-void
.end method

.method public setMenuItemsVisibility(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mMenuItemVisibility:Z

    .line 309
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->setMenuState()V

    .line 310
    return-void
.end method

.method public setMenuState()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->isWideMode()Z

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mBrowsableViewPager:Lcom/airbnb/android/views/BrowsableViewPager;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mPhotoMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mMapMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_39

    .line 154
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mBrowsableViewPager:Lcom/airbnb/android/views/BrowsableViewPager;

    invoke-virtual {v1}, Lcom/airbnb/android/views/BrowsableViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v1}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->getSection(I)Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    move-result-object v0

    .line 155
    .local v0, "selectedSearchSection":Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;
    iget-object v4, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mPhotoMenuItem:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mMenuItemVisibility:Z

    if-eqz v1, :cond_3a

    sget-object v1, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->Photo:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    if-eq v0, v1, :cond_3a

    move v1, v2

    :goto_29
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 156
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mMapMenuItem:Landroid/view/MenuItem;

    iget-boolean v4, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mMenuItemVisibility:Z

    if-eqz v4, :cond_3c

    sget-object v4, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->Map:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    if-eq v0, v4, :cond_3c

    :goto_36
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 158
    .end local v0    # "selectedSearchSection":Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;
    :cond_39
    return-void

    .restart local v0    # "selectedSearchSection":Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;
    :cond_3a
    move v1, v3

    .line 155
    goto :goto_29

    :cond_3c
    move v2, v3

    .line 156
    goto :goto_36
.end method

.method protected setState(Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;)V
    .registers 7
    .param p1, "state"    # Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 230
    sget-object v0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$1;->$SwitchMap$com$airbnb$android$fragments$BrowsableListingsFragmentBase$BrowsableState:[I

    invoke-virtual {p1}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    .line 253
    :goto_f
    iput-object p1, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mCurrentState:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    .line 254
    return-void

    .line 232
    :pswitch_12
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mNoResultViews:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mEmptyResults:Lcom/airbnb/android/views/EmptyResults;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/EmptyResults;->setVisibility(I)V

    .line 234
    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->enableListingsResult(Z)V

    .line 235
    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->showLoadingSpinner(Z)V

    goto :goto_f

    .line 238
    :pswitch_23
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mNoResultViews:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 239
    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->enableListingsResult(Z)V

    .line 240
    invoke-virtual {p0, v4}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->showLoadingSpinner(Z)V

    goto :goto_f

    .line 243
    :pswitch_2f
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mNoResultViews:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 244
    invoke-virtual {p0, v4}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->enableListingsResult(Z)V

    .line 245
    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->showLoadingSpinner(Z)V

    goto :goto_f

    .line 248
    :pswitch_3b
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mNoResultViews:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 249
    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->enableListingsResult(Z)V

    .line 250
    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->showLoadingSpinner(Z)V

    goto :goto_f

    .line 230
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_12
        :pswitch_23
        :pswitch_2f
        :pswitch_3b
    .end packed-switch
.end method

.method protected showLoadingSpinner(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 199
    if-eqz p1, :cond_8

    .line 200
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->startAnimation()V

    .line 204
    :goto_7
    return-void

    .line 202
    :cond_8
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    goto :goto_7
.end method

.method protected updateChildFragments(Z)V
    .registers 7
    .param p1, "newSearch"    # Z

    .prologue
    const/4 v4, 0x1

    .line 286
    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mBrowsableViewPager:Lcom/airbnb/android/views/BrowsableViewPager;

    if-eqz v2, :cond_20

    .line 287
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mBrowsableSectionsAdapter:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 288
    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->mBrowsableSectionsAdapter:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;

    invoke-virtual {v2, v1}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 289
    .local v0, "f":Landroid/support/v4/app/Fragment;
    instance-of v2, v0, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;

    if-eqz v2, :cond_1d

    .line 290
    check-cast v0, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;

    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, p1}, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;->updateSearchResults(Z)V

    .line 287
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 294
    .end local v1    # "i":I
    :cond_20
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f080261

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 295
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    instance-of v2, v0, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;

    if-eqz v2, :cond_38

    move-object v2, v0

    .line 296
    check-cast v2, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;

    invoke-virtual {v2, p1}, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;->updateSearchResults(Z)V

    .line 297
    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 299
    :cond_38
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f080262

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 300
    instance-of v2, v0, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;

    if-eqz v2, :cond_50

    move-object v2, v0

    .line 301
    check-cast v2, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;

    invoke-virtual {v2, p1}, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;->updateSearchResults(Z)V

    .line 302
    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 305
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_50
    return-void
.end method
