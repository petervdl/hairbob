.class public Lcom/airbnb/android/activities/ContactHostActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "ContactHostActivity.java"


# static fields
.field private static final EXTRA_FROM_REQUEST_TO_BOOK:Ljava/lang/String; = "request_to_book"

.field private static final EXTRA_SEARCH_DATES:Ljava/lang/String; = "search_dates"

.field private static final LISTING_EXTRA:Ljava/lang/String; = "listing"


# instance fields
.field private mListing:Lcom/airbnb/android/models/Listing;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method public static intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;ZZ)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "useSearchDates"    # Z
    .param p3, "fromRequestToBook"    # Z

    .prologue
    .line 23
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/ContactHostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 25
    const-string/jumbo v1, "search_dates"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26
    const-string/jumbo v1, "request_to_book"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 27
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 32
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ContactHostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "listing"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/Listing;

    iput-object v4, p0, Lcom/airbnb/android/activities/ContactHostActivity;->mListing:Lcom/airbnb/android/models/Listing;

    .line 35
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ContactHostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "search_dates"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 36
    .local v3, "useSearchDates":Z
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ContactHostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "request_to_book"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 38
    .local v2, "fromRequestToBook":Z
    if-eqz v2, :cond_63

    const v4, 0x7f0e0628

    :goto_2f
    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/airbnb/android/activities/ContactHostActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 40
    if-nez p1, :cond_62

    .line 41
    iget-object v4, p0, Lcom/airbnb/android/activities/ContactHostActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v4, v3}, Lcom/airbnb/android/fragments/ContactHostFragment;->newInstance(Lcom/airbnb/android/models/Listing;Z)Lcom/airbnb/android/fragments/ContactHostFragment;

    move-result-object v1

    .line 42
    .local v1, "fragment":Lcom/airbnb/android/fragments/ContactHostFragment;
    invoke-virtual {p0, v1, v7}, Lcom/airbnb/android/activities/ContactHostActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 44
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 45
    .local v0, "currentUser":Lcom/airbnb/android/models/User;
    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->isInPhotoExperiment()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->hasProfilePic()Z

    move-result v4

    if-nez v4, :cond_62

    .line 46
    const-string/jumbo v4, "listing_page"

    invoke-static {v4}, Lcom/airbnb/android/analytics/GuestOnboardingAnalytics;->trackShowAddProfilePhotoFlow(Ljava/lang/String;)V

    .line 47
    iget-object v4, p0, Lcom/airbnb/android/activities/ContactHostActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {p0, v4, v6}, Lcom/airbnb/android/activities/AddProfilePhotoActivity;->intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;Z)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/airbnb/android/activities/ContactHostActivity;->startActivity(Landroid/content/Intent;)V

    .line 50
    .end local v0    # "currentUser":Lcom/airbnb/android/models/User;
    .end local v1    # "fragment":Lcom/airbnb/android/fragments/ContactHostFragment;
    :cond_62
    return-void

    .line 38
    :cond_63
    const v4, 0x7f0e074d

    goto :goto_2f
.end method
