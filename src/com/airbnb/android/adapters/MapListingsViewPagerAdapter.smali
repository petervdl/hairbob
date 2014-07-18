.class public Lcom/airbnb/android/adapters/MapListingsViewPagerAdapter;
.super Lcom/airbnb/android/adapters/LoopingPagerAdapter;
.source "MapListingsViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/adapters/LoopingPagerAdapter",
        "<",
        "Lcom/airbnb/android/models/Listing;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/LoopingPagerAdapter;-><init>(Ljava/util/List;)V

    .line 21
    iput-object p1, p0, Lcom/airbnb/android/adapters/MapListingsViewPagerAdapter;->mListings:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 9
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 26
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030162

    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 27
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/airbnb/android/adapters/MapListingsViewPagerAdapter;->mListings:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/airbnb/android/adapters/MapListingsViewPagerAdapter;->getAdjustedPosition(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    .line 28
    .local v1, "listing":Lcom/airbnb/android/models/Listing;
    sget-object v3, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;->WITH_REVIEW_COUNT_AND_PRICE:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    invoke-static {v2, v1, v3}, Lcom/airbnb/android/adapters/ListingsRowAdapter;->setupListingRow(Landroid/view/View;Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;)Landroid/view/View;

    move-result-object v2

    .line 31
    const v3, 0x7f0803a7

    invoke-static {v2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/AirImageView;

    .line 32
    .local v0, "airImage":Lcom/airbnb/android/views/AirImageView;
    invoke-virtual {v0, v5}, Lcom/airbnb/android/views/AirImageView;->setFadeEnabled(Z)V

    .line 33
    const v3, 0x7f0a001c

    invoke-virtual {v0, v3}, Lcom/airbnb/android/views/AirImageView;->setDefaultImageResId(I)V

    .line 35
    return-object v2
.end method

.method public getListingPosition(J)I
    .registers 6
    .param p1, "listingId"    # J

    .prologue
    .line 39
    iget-object v1, p0, Lcom/airbnb/android/adapters/MapListingsViewPagerAdapter;->mListings:Ljava/util/List;

    if-eqz v1, :cond_21

    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Lcom/airbnb/android/adapters/MapListingsViewPagerAdapter;->mListings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 41
    iget-object v1, p0, Lcom/airbnb/android/adapters/MapListingsViewPagerAdapter;->mListings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-nez v1, :cond_1e

    .line 46
    .end local v0    # "i":I
    :goto_1d
    return v0

    .line 40
    .restart local v0    # "i":I
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 46
    .end local v0    # "i":I
    :cond_21
    const/4 v0, -0x1

    goto :goto_1d
.end method
