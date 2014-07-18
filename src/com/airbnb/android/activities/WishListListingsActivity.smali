.class public Lcom/airbnb/android/activities/WishListListingsActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "WishListListingsActivity.java"


# static fields
.field private static final IS_MINE_KEY:Ljava/lang/String; = "is_mine"

.field private static final TAG:Ljava/lang/String;

.field private static final WEB_INTENT_PARAM_WISHLISTS:Ljava/lang/String; = "wishlists"

.field private static final WISHLIST_KEY:Ljava/lang/String; = "wishlist"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/airbnb/android/activities/WishListListingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/activities/WishListListingsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method private getWishlistFromWebIntent(Landroid/content/Intent;)Lcom/airbnb/android/models/Collection;
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/airbnb/android/activities/WishListListingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 83
    .local v1, "intentData":Landroid/net/Uri;
    const-wide/16 v4, -0x1

    .line 84
    .local v4, "wishlistId":J
    if-eqz v1, :cond_42

    .line 85
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 86
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/airbnb/android/utils/MiscUtils;->detectAffiliateParams(Landroid/net/Uri;)V

    .line 87
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v8, :cond_4e

    const-string/jumbo v6, "wishlists"

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 90
    const/4 v6, 0x1

    :try_start_2a
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_33} :catch_43

    move-result-wide v4

    .line 104
    :cond_34
    :goto_34
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_42

    .line 105
    new-instance v3, Lcom/airbnb/android/models/Collection;

    invoke-direct {v3}, Lcom/airbnb/android/models/Collection;-><init>()V

    .line 106
    .local v3, "wishlist":Lcom/airbnb/android/models/Collection;
    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/models/Collection;->setId(J)V

    .line 110
    .end local v2    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "wishlist":Lcom/airbnb/android/models/Collection;
    :cond_42
    :goto_42
    return-object v3

    .line 91
    .restart local v2    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_43
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/airbnb/android/activities/WishListListingsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 95
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_4e
    const-string/jumbo v6, "wishlists"

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_34

    .line 97
    const/4 v6, 0x0

    :try_start_62
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_6b
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_6b} :catch_6d

    move-result-wide v4

    goto :goto_34

    .line 98
    :catch_6d
    move-exception v0

    .line 99
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/airbnb/android/activities/WishListListingsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method private handleUpNavigation()V
    .registers 4

    .prologue
    .line 69
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 70
    .local v0, "upIntent":Landroid/content/Intent;
    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 72
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 75
    const/high16 v1, 0x7f040000

    const v2, 0x7f040003

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/activities/WishListListingsActivity;->overridePendingTransition(II)V

    .line 79
    :goto_1d
    return-void

    .line 77
    :cond_1e
    invoke-virtual {p0}, Lcom/airbnb/android/activities/WishListListingsActivity;->finish()V

    goto :goto_1d
.end method

.method public static intentForWishList(Landroid/content/Context;Lcom/airbnb/android/models/Collection;Z)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/airbnb/android/models/Collection;
    .param p2, "isMine"    # Z

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/WishListListingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "wishlist"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 34
    const-string/jumbo v1, "is_mine"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 35
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 40
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/4 v2, 0x0

    .line 43
    .local v2, "isMine":Z
    invoke-virtual {p0}, Lcom/airbnb/android/activities/WishListListingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 45
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/airbnb/android/activities/WishListListingsActivity;->getWishlistFromWebIntent(Landroid/content/Intent;)Lcom/airbnb/android/models/Collection;

    move-result-object v4

    .line 46
    .local v4, "wishList":Lcom/airbnb/android/models/Collection;
    if-nez v4, :cond_2e

    .line 47
    const-string/jumbo v5, "wishlist"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4    # "wishList":Lcom/airbnb/android/models/Collection;
    check-cast v4, Lcom/airbnb/android/models/Collection;

    .line 48
    .restart local v4    # "wishList":Lcom/airbnb/android/models/Collection;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/WishListListingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/airbnb/android/utils/WishListUtils;->getWishListActionBarSubtitle(Landroid/content/res/Resources;Lcom/airbnb/android/models/Collection;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "subtitle":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/airbnb/android/models/Collection;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v3}, Lcom/airbnb/android/activities/WishListListingsActivity;->setupActionBar(Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActionBar;

    .line 50
    const-string/jumbo v5, "is_mine"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 53
    .end local v3    # "subtitle":Ljava/lang/String;
    :cond_2e
    invoke-virtual {p0}, Lcom/airbnb/android/activities/WishListListingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 54
    .local v0, "fragManager":Landroid/support/v4/app/FragmentManager;
    if-eqz v2, :cond_3c

    invoke-static {v4}, Lcom/airbnb/android/fragments/MyWishListListingsFragment;->findOrCreateRetainFragment(Lcom/airbnb/android/models/Collection;)Lcom/airbnb/android/fragments/MyWishListListingsFragment;

    move-result-object v5

    :goto_38
    invoke-virtual {p0, v5, v6}, Lcom/airbnb/android/activities/WishListListingsActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 57
    return-void

    .line 54
    :cond_3c
    invoke-static {v0, v4}, Lcom/airbnb/android/fragments/PublicWishlistFragment;->getInstance(Landroid/support/v4/app/FragmentManager;Lcom/airbnb/android/models/Collection;)Lcom/airbnb/android/fragments/PublicWishlistFragment;

    move-result-object v5

    goto :goto_38
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 61
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 62
    invoke-direct {p0}, Lcom/airbnb/android/activities/WishListListingsActivity;->handleUpNavigation()V

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_d
.end method
