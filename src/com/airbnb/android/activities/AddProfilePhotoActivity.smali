.class public Lcom/airbnb/android/activities/AddProfilePhotoActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "AddProfilePhotoActivity.java"


# static fields
.field private static final KEY_IS_INSTANT_BOOK:Ljava/lang/String; = "is_instant_book"

.field private static final KEY_LISTING:Ljava/lang/String; = "listing"


# instance fields
.field private mFragment:Landroid/support/v4/app/Fragment;

.field private mListing:Lcom/airbnb/android/models/Listing;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method public static intentForDefault(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/AddProfilePhotoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;Z)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "isInstantBook"    # Z

    .prologue
    .line 25
    invoke-static {p0}, Lcom/airbnb/android/activities/AddProfilePhotoActivity;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 26
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 28
    const-string/jumbo v2, "is_instant_book"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 30
    return-object v1
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/android/activities/AddProfilePhotoActivity;->mFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/airbnb/android/activities/AddProfilePhotoActivity;->mFragment:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/airbnb/android/interfaces/OnBackListener;

    if-eqz v0, :cond_11

    .line 50
    iget-object v0, p0, Lcom/airbnb/android/activities/AddProfilePhotoActivity;->mFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/airbnb/android/interfaces/OnBackListener;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/OnBackListener;->onBackPressed()Z

    .line 53
    :cond_11
    invoke-super {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->onBackPressed()V

    .line 54
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/airbnb/android/activities/AddProfilePhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "listing"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    iput-object v1, p0, Lcom/airbnb/android/activities/AddProfilePhotoActivity;->mListing:Lcom/airbnb/android/models/Listing;

    .line 38
    invoke-virtual {p0}, Lcom/airbnb/android/activities/AddProfilePhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "is_instant_book"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 39
    .local v0, "isInstantBook":Z
    const v1, 0x7f0e065f

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/activities/AddProfilePhotoActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 41
    if-nez p1, :cond_39

    .line 42
    iget-object v1, p0, Lcom/airbnb/android/activities/AddProfilePhotoActivity;->mListing:Lcom/airbnb/android/models/Listing;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/airbnb/android/activities/AddProfilePhotoActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v1, v0}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->forListing(Lcom/airbnb/android/models/Listing;Z)Lcom/airbnb/android/fragments/AddProfilePhotoFragment;

    move-result-object v1

    :goto_32
    iput-object v1, p0, Lcom/airbnb/android/activities/AddProfilePhotoActivity;->mFragment:Landroid/support/v4/app/Fragment;

    .line 43
    iget-object v1, p0, Lcom/airbnb/android/activities/AddProfilePhotoActivity;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v1, v3}, Lcom/airbnb/android/activities/AddProfilePhotoActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 45
    :cond_39
    return-void

    .line 42
    :cond_3a
    invoke-static {}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->forDefault()Lcom/airbnb/android/fragments/AddProfilePhotoFragment;

    move-result-object v1

    goto :goto_32
.end method
