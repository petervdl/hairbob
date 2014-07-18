.class public Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PropertyImagesViewPagerAdapter.java"


# static fields
.field public static final MAP_PAGE_INDEX:I = 0x0

.field public static final NUM_ADDITIONAL_PAGES:I = 0x1


# instance fields
.field private mListing:Lcom/airbnb/android/models/Listing;

.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/Listing;)V
    .registers 3
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;->mListing:Lcom/airbnb/android/models/Listing;

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;->mViews:Landroid/util/SparseArray;

    .line 26
    return-void
.end method

.method private setupImageView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 9
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03019e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 73
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f080405

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/AirImageView;

    .line 74
    .local v0, "airImage":Lcom/airbnb/android/views/AirImageView;
    add-int/lit8 v1, p2, -0x1

    .line 75
    .local v1, "imageIndex":I
    iget-object v3, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getPictureUrls()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 76
    return-object v2
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 94
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    .line 95
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 96
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getPictureUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 100
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 7
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 55
    iget-object v1, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 56
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_21

    .line 57
    if-nez p2, :cond_25

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03019f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 64
    :goto_1c
    iget-object v1, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    :cond_21
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    return-object v0

    .line 62
    :cond_25
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;->setupImageView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1c
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 50
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public set(Lcom/airbnb/android/models/Listing;)V
    .registers 3
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;->mListing:Lcom/airbnb/android/models/Listing;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/models/Listing;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 30
    :cond_c
    iput-object p1, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;->mListing:Lcom/airbnb/android/models/Listing;

    .line 31
    iget-object v0, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 32
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;->notifyDataSetChanged()V

    .line 34
    :cond_16
    return-void
.end method

.method public setupStaticMapView()V
    .registers 8

    .prologue
    .line 80
    iget-object v3, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;->mViews:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 81
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_c

    .line 90
    :goto_b
    return-void

    .line 84
    :cond_c
    const v3, 0x7f080213

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/StaticMapView;

    .line 85
    .local v1, "staticMapView":Lcom/airbnb/android/views/StaticMapView;
    iget-object v3, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1, v3}, Lcom/airbnb/android/views/StaticMapView;->setup(Lcom/airbnb/android/models/Listing;)V

    .line 86
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getLatitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getLongitude()D

    move-result-wide v5

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 87
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/airbnb/android/views/StaticMapView;->addCircleToMap(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 88
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/airbnb/android/views/StaticMapView;->centerMap(Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 89
    invoke-virtual {v1}, Lcom/airbnb/android/views/StaticMapView;->freeze()V

    goto :goto_b
.end method
