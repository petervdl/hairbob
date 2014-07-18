.class public Lcom/airbnb/android/adapters/TravelLocationsViewPagerAdapter;
.super Lcom/airbnb/android/adapters/LoopingPagerAdapter;
.source "TravelLocationsViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/adapters/LoopingPagerAdapter",
        "<",
        "Lcom/airbnb/android/models/TravelLocation;",
        ">;"
    }
.end annotation


# instance fields
.field private final mSidePadding:I

.field private final mTravelLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/TravelLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/TravelLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "travelLocations":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/TravelLocation;>;"
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/LoopingPagerAdapter;-><init>(Ljava/util/List;)V

    .line 27
    iput-object p1, p0, Lcom/airbnb/android/adapters/TravelLocationsViewPagerAdapter;->mTravelLocations:Ljava/util/List;

    .line 29
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/TravelLocationsViewPagerAdapter;->isPeekEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :goto_1a
    iput v0, p0, Lcom/airbnb/android/adapters/TravelLocationsViewPagerAdapter;->mSidePadding:I

    .line 30
    return-void

    .line 29
    :cond_1d
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 12
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v8, 0x0

    .line 34
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030185

    invoke-virtual {v6, v7, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 35
    .local v5, "view":Landroid/view/View;
    iget v6, p0, Lcom/airbnb/android/adapters/TravelLocationsViewPagerAdapter;->mSidePadding:I

    iget v7, p0, Lcom/airbnb/android/adapters/TravelLocationsViewPagerAdapter;->mSidePadding:I

    invoke-virtual {v5, v6, v8, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 37
    const v6, 0x7f080405

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/AirImageView;

    .line 38
    .local v0, "airImage":Lcom/airbnb/android/views/AirImageView;
    invoke-virtual {v0, v8}, Lcom/airbnb/android/views/AirImageView;->setFadeEnabled(Z)V

    .line 39
    const v6, 0x7f0a001c

    invoke-virtual {v0, v6}, Lcom/airbnb/android/views/AirImageView;->setDefaultImageResId(I)V

    .line 41
    iget-object v6, p0, Lcom/airbnb/android/adapters/TravelLocationsViewPagerAdapter;->mTravelLocations:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/airbnb/android/adapters/TravelLocationsViewPagerAdapter;->getAdjustedPosition(I)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/TravelLocation;

    .line 42
    .local v4, "travelLocation":Lcom/airbnb/android/models/TravelLocation;
    invoke-virtual {v4}, Lcom/airbnb/android/models/TravelLocation;->getPicture_url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 44
    const v6, 0x7f080406

    invoke-static {v5, v6}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/airbnb/android/models/TravelLocation;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v6, 0x7f080407

    invoke-static {v5, v6}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 48
    .local v3, "subtitleTextView":Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/airbnb/android/models/TravelLocation;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "subtitle":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 50
    .local v2, "subtitleIsEmpty":Z
    invoke-static {v3, v2}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(Landroid/view/View;Z)V

    .line 51
    if-nez v2, :cond_69

    .line 52
    invoke-virtual {v4}, Lcom/airbnb/android/models/TravelLocation;->getSubtitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :cond_69
    return-object v5
.end method
