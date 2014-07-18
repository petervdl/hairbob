.class public Lcom/airbnb/android/activities/BookingDetailsActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "BookingDetailsActivity.java"


# static fields
.field private static final EXTRA_CHECKIN:Ljava/lang/String; = "checkin"

.field private static final EXTRA_CHECKOUT:Ljava/lang/String; = "checkout"

.field private static final EXTRA_NUM_GUESTS:Ljava/lang/String; = "num_guests"

.field private static final EXTRA_SPECIAL_OFFER:Ljava/lang/String; = "special_offer"

.field private static final LISTING_EXTRA:Ljava/lang/String; = "listing"

.field private static final REQUEST_CODE_INSTANT_BOOK:I = 0x192

.field private static final SEARCH_DATES_EXTRA:Ljava/lang/String; = "search_dates"


# instance fields
.field private mListing:Lcom/airbnb/android/models/Listing;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method public static intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;Z)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "useSearchDates"    # Z

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/BookingDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 32
    const-string/jumbo v1, "search_dates"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    return-object v0
.end method

.method public static intentForListingWithDates(Landroid/content/Context;Lcom/airbnb/android/models/Listing;JJI)Landroid/content/Intent;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "checkin"    # J
    .param p4, "checkout"    # J
    .param p6, "numGuests"    # I

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/BookingDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 46
    const-string/jumbo v1, "num_guests"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    const-string/jumbo v1, "checkin"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 48
    const-string/jumbo v1, "checkout"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 50
    return-object v0
.end method

.method public static intentForListingWithOffer(Landroid/content/Context;Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/SpecialOffer;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "specialOffer"    # Lcom/airbnb/android/models/SpecialOffer;

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/BookingDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 39
    const-string/jumbo v1, "special_offer"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 40
    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 102
    const/16 v0, 0x192

    if-ne p1, v0, :cond_b

    .line 103
    const/4 v0, -0x1

    if-eq p2, v0, :cond_a

    .line 105
    invoke-virtual {p0}, Lcom/airbnb/android/activities/BookingDetailsActivity;->finish()V

    .line 110
    :cond_a
    :goto_a
    return-void

    .line 108
    :cond_b
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/activities/SolitAirActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/airbnb/android/activities/BookingDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v10, "listing"

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    iput-object v0, p0, Lcom/airbnb/android/activities/BookingDetailsActivity;->mListing:Lcom/airbnb/android/models/Listing;

    .line 58
    invoke-virtual {p0}, Lcom/airbnb/android/activities/BookingDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v10, "special_offer"

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/airbnb/android/models/SpecialOffer;

    .line 59
    .local v8, "specialOffer":Lcom/airbnb/android/models/SpecialOffer;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/BookingDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v10, "search_dates"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 61
    .local v9, "useSearchDates":Z
    invoke-virtual {p0}, Lcom/airbnb/android/activities/BookingDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v10, "checkin"

    const-wide/16 v11, -0x1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 62
    .local v1, "checkin":J
    invoke-virtual {p0}, Lcom/airbnb/android/activities/BookingDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v10, "checkout"

    const-wide/16 v11, -0x1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 63
    .local v3, "checkout":J
    invoke-virtual {p0}, Lcom/airbnb/android/activities/BookingDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v10, "num_guests"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 65
    .local v5, "numGuests":I
    const v0, 0x7f0e074b

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v10}, Lcom/airbnb/android/activities/BookingDetailsActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 74
    if-nez p1, :cond_9a

    .line 76
    const-wide/16 v10, 0x0

    cmp-long v0, v1, v10

    if-lez v0, :cond_9b

    const-wide/16 v10, 0x0

    cmp-long v0, v3, v10

    if-lez v0, :cond_9b

    .line 77
    iget-object v0, p0, Lcom/airbnb/android/activities/BookingDetailsActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static/range {v0 .. v5}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->instanceForDates(Lcom/airbnb/android/models/Listing;JJI)Lcom/airbnb/android/fragments/BookingDetailsFragment;

    move-result-object v7

    .line 84
    .local v7, "fragment":Lcom/airbnb/android/fragments/BookingDetailsFragment;
    :goto_6e
    const/4 v0, 0x1

    invoke-virtual {p0, v7, v0}, Lcom/airbnb/android/activities/BookingDetailsActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 86
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v6

    .line 87
    .local v6, "currentUser":Lcom/airbnb/android/models/User;
    invoke-virtual {v6}, Lcom/airbnb/android/models/User;->hasProfilePic()Z

    move-result v0

    if-nez v0, :cond_9a

    .line 88
    iget-object v0, p0, Lcom/airbnb/android/activities/BookingDetailsActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->isInstantBookable()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 89
    const-string/jumbo v0, "instant_book"

    invoke-static {v0}, Lcom/airbnb/android/analytics/GuestOnboardingAnalytics;->trackShowAddProfilePhotoFlow(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/airbnb/android/activities/BookingDetailsActivity;->mListing:Lcom/airbnb/android/models/Listing;

    const/4 v10, 0x1

    invoke-static {p0, v0, v10}, Lcom/airbnb/android/activities/AddProfilePhotoActivity;->intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;Z)Landroid/content/Intent;

    move-result-object v0

    const/16 v10, 0x192

    invoke-virtual {p0, v0, v10}, Lcom/airbnb/android/activities/BookingDetailsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 98
    .end local v6    # "currentUser":Lcom/airbnb/android/models/User;
    .end local v7    # "fragment":Lcom/airbnb/android/fragments/BookingDetailsFragment;
    :cond_9a
    :goto_9a
    return-void

    .line 78
    :cond_9b
    if-eqz v8, :cond_a4

    .line 79
    iget-object v0, p0, Lcom/airbnb/android/activities/BookingDetailsActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v0, v8}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->instanceForSpecialOffer(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/SpecialOffer;)Lcom/airbnb/android/fragments/BookingDetailsFragment;

    move-result-object v7

    .restart local v7    # "fragment":Lcom/airbnb/android/fragments/BookingDetailsFragment;
    goto :goto_6e

    .line 81
    .end local v7    # "fragment":Lcom/airbnb/android/fragments/BookingDetailsFragment;
    :cond_a4
    iget-object v0, p0, Lcom/airbnb/android/activities/BookingDetailsActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v0, v9}, Lcom/airbnb/android/fragments/BookingDetailsFragment;->newInstance(Lcom/airbnb/android/models/Listing;Z)Lcom/airbnb/android/fragments/BookingDetailsFragment;

    move-result-object v7

    .restart local v7    # "fragment":Lcom/airbnb/android/fragments/BookingDetailsFragment;
    goto :goto_6e

    .line 92
    .restart local v6    # "currentUser":Lcom/airbnb/android/models/User;
    :cond_ab
    invoke-virtual {v6}, Lcom/airbnb/android/models/User;->isInPhotoExperiment()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 93
    const-string/jumbo v0, "listing_page"

    invoke-static {v0}, Lcom/airbnb/android/analytics/GuestOnboardingAnalytics;->trackShowAddProfilePhotoFlow(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/airbnb/android/activities/BookingDetailsActivity;->mListing:Lcom/airbnb/android/models/Listing;

    const/4 v10, 0x0

    invoke-static {p0, v0, v10}, Lcom/airbnb/android/activities/AddProfilePhotoActivity;->intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/BookingDetailsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9a
.end method
