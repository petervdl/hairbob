.class public Lcom/airbnb/android/activities/PropertyMapActivity;
.super Lcom/airbnb/android/activities/AirActivity;
.source "PropertyMapActivity.java"


# static fields
.field private static final INTENT_EXTRA_LISTING:Ljava/lang/String; = "listing"

.field private static final INTENT_EXTRA_SHOW_ADDRESS:Ljava/lang/String; = "show_address"


# instance fields
.field private mAddressHeight:I

.field private mAirMapView:Lcom/airbnb/android/views/AirMapView;

.field private mFirstZoom:F

.field private mListing:Lcom/airbnb/android/models/Listing;

.field private mMaxZoom:F

.field private mMinZoom:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/high16 v1, -0x40800000

    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/activities/AirActivity;-><init>()V

    .line 25
    iput v1, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mFirstZoom:F

    .line 26
    const/high16 v0, 0x42c80000

    iput v0, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mMinZoom:F

    .line 27
    iput v1, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mMaxZoom:F

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/activities/PropertyMapActivity;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/PropertyMapActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/activities/PropertyMapActivity;)Lcom/airbnb/android/views/AirMapView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/PropertyMapActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/activities/PropertyMapActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/PropertyMapActivity;

    .prologue
    .line 18
    iget v0, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mAddressHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/activities/PropertyMapActivity;)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/PropertyMapActivity;

    .prologue
    .line 18
    iget v0, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mFirstZoom:F

    return v0
.end method

.method static synthetic access$302(Lcom/airbnb/android/activities/PropertyMapActivity;F)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/PropertyMapActivity;
    .param p1, "x1"    # F

    .prologue
    .line 18
    iput p1, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mFirstZoom:F

    return p1
.end method

.method static synthetic access$400(Lcom/airbnb/android/activities/PropertyMapActivity;)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/PropertyMapActivity;

    .prologue
    .line 18
    iget v0, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mMinZoom:F

    return v0
.end method

.method static synthetic access$402(Lcom/airbnb/android/activities/PropertyMapActivity;F)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/PropertyMapActivity;
    .param p1, "x1"    # F

    .prologue
    .line 18
    iput p1, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mMinZoom:F

    return p1
.end method

.method static synthetic access$500(Lcom/airbnb/android/activities/PropertyMapActivity;)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/PropertyMapActivity;

    .prologue
    .line 18
    iget v0, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mMaxZoom:F

    return v0
.end method

.method static synthetic access$502(Lcom/airbnb/android/activities/PropertyMapActivity;F)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/PropertyMapActivity;
    .param p1, "x1"    # F

    .prologue
    .line 18
    iput p1, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mMaxZoom:F

    return p1
.end method

.method public static intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;Z)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "showAddress"    # Z

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/PropertyMapActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 36
    const-string/jumbo v1, "show_address"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 42
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v2, 0x7f0301a9

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/PropertyMapActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/airbnb/android/activities/PropertyMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "listing"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Listing;

    iput-object v2, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mListing:Lcom/airbnb/android/models/Listing;

    .line 47
    iget-object v2, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mListing:Lcom/airbnb/android/models/Listing;

    if-nez v2, :cond_3d

    .line 48
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No listing passed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/airbnb/android/activities/PropertyMapActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_3d
    iget-object v2, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/airbnb/android/activities/PropertyMapActivity;->setupActionBar(Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActionBar;

    .line 53
    const v2, 0x7f080095

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/PropertyMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/AirMapView;

    iput-object v2, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    .line 55
    iget-object v2, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    invoke-virtual {p0}, Lcom/airbnb/android/activities/PropertyMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Lcom/airbnb/android/activities/PropertyMapActivity$1;

    invoke-direct {v6, p0}, Lcom/airbnb/android/activities/PropertyMapActivity$1;-><init>(Lcom/airbnb/android/activities/PropertyMapActivity;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/airbnb/android/views/AirMapView;->onCreateView(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;ZLcom/airbnb/android/views/AirMapView$MapCallbacks;)V

    .line 76
    invoke-virtual {p0}, Lcom/airbnb/android/activities/PropertyMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "show_address"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 80
    iget-object v2, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getPublicAddress()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "addressToShow":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 82
    iget-object v2, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 85
    :cond_8b
    const v2, 0x7f08044d

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/PropertyMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 86
    .local v0, "address":Landroid/widget/TextView;
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {v0, v7, v7}, Landroid/widget/TextView;->measure(II)V

    .line 89
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mAddressHeight:I

    .line 92
    .end local v0    # "address":Landroid/widget/TextView;
    .end local v1    # "addressToShow":Ljava/lang/String;
    :cond_a3
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 109
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onDestroy()V

    .line 111
    iget-object v0, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/AirMapView;->onDestroyView()V

    .line 112
    return-void
.end method

.method protected onStop()V
    .registers 7

    .prologue
    .line 96
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onStop()V

    .line 97
    iget v0, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mFirstZoom:F

    const/high16 v1, -0x40800000

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_58

    .line 98
    const-string/jumbo v0, "android_eng"

    const/4 v1, 0x1

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "type"

    const-string/jumbo v4, "p3_map_zoom"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "lising_id"

    iget-object v4, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "first_zoom"

    iget v4, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mFirstZoom:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "min_zoom"

    iget v4, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mMinZoom:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "max_zoom"

    iget v4, p0, Lcom/airbnb/android/activities/PropertyMapActivity;->mMaxZoom:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 105
    :cond_58
    return-void
.end method
