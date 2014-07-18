.class public Lcom/airbnb/android/activities/PickWishListActivity;
.super Lcom/airbnb/android/activities/SlideUpTransparentActivity;
.source "PickWishListActivity.java"


# static fields
.field private static final BG_ALPHA_ANIM_DELAY:I = 0x258

.field private static final KEY_LISTING:Ljava/lang/String; = "listing"

.field private static final KEY_TRACKING_POSITION:Ljava/lang/String; = "tracking_pos"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;-><init>()V

    return-void
.end method

.method public static intentForListingToAdd(Landroid/content/Context;Lcom/airbnb/android/models/Listing;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "trackingPosition"    # Ljava/lang/String;

    .prologue
    .line 19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/PickWishListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 21
    const-string/jumbo v1, "tracking_pos"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    return-object v0
.end method


# virtual methods
.method protected getAlphaAnimDelay()I
    .registers 2

    .prologue
    .line 42
    const/16 v0, 0x258

    return v0
.end method

.method public getSlideUpTransparentFragment(Landroid/support/v4/app/FragmentManager;)Lcom/airbnb/android/fragments/SlideUpTransparentFragment;
    .registers 6
    .param p1, "fragManager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/airbnb/android/activities/PickWishListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 28
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "listing"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    .line 29
    .local v1, "listingToAdd":Lcom/airbnb/android/models/Listing;
    const-string/jumbo v3, "tracking_pos"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "trackingPosition":Ljava/lang/String;
    invoke-static {p1, v1, v2}, Lcom/airbnb/android/fragments/PickWishlistFragment;->findOrCreateRetainFragment(Landroid/support/v4/app/FragmentManager;Lcom/airbnb/android/models/Listing;Ljava/lang/String;)Lcom/airbnb/android/fragments/PickWishlistFragment;

    move-result-object v3

    return-object v3
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 36
    invoke-super {p0}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->onPause()V

    .line 37
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/AirbnbApi;->fetchWishLists(Lcom/airbnb/android/requests/RequestListener;)V

    .line 38
    return-void
.end method
