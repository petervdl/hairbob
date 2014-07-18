.class public Lcom/airbnb/android/activities/ManagePhotosActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "ManagePhotosActivity.java"


# instance fields
.field private mManagePhotosFragment:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method public static intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 20
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/ManagePhotosActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "managed_listing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 22
    return-object v0
.end method


# virtual methods
.method public finish()V
    .registers 4

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v0, "data":Landroid/content/Intent;
    const-string/jumbo v1, "managed_listing"

    iget-object v2, p0, Lcom/airbnb/android/activities/ManagePhotosActivity;->mManagePhotosFragment:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 58
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/airbnb/android/activities/ManagePhotosActivity;->setResult(ILandroid/content/Intent;)V

    .line 60
    invoke-super {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->finish()V

    .line 61
    return-void
.end method

.method protected getWindowFeatures()[I
    .registers 2

    .prologue
    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 4
        0x5
        0x9
        0xa
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 36
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v3}, Lcom/airbnb/android/activities/ManagePhotosActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    move-result-object v0

    .line 40
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 42
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManagePhotosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "managed_listing"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Listing;

    .line 44
    .local v2, "listing":Lcom/airbnb/android/models/Listing;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManagePhotosActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 45
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    const v3, 0x7f080025

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    iput-object v3, p0, Lcom/airbnb/android/activities/ManagePhotosActivity;->mManagePhotosFragment:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    .line 47
    iget-object v3, p0, Lcom/airbnb/android/activities/ManagePhotosActivity;->mManagePhotosFragment:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    if-nez v3, :cond_39

    .line 48
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/activities/ManagePhotosActivity;->mManagePhotosFragment:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    .line 49
    iget-object v3, p0, Lcom/airbnb/android/activities/ManagePhotosActivity;->mManagePhotosFragment:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/airbnb/android/activities/ManagePhotosActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 52
    :cond_39
    return-void
.end method
