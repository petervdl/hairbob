.class public Lcom/airbnb/android/activities/ListingDetailsActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "ListingDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/activities/ListingDetailsActivity$ListingDetailsErrorDialog;
    }
.end annotation


# static fields
.field protected static final ARGS_PRICE_FROM_SEARCH:Ljava/lang/String; = "price_from_search"

.field protected static final ARG_LISTING:Ljava/lang/String; = "listing"

.field protected static final ARG_LISTING_ID:Ljava/lang/String; = "listing_id"

.field protected static final INTENT_EXTRA_SEARCH_METHOD:Ljava/lang/String; = "search_method"

.field protected static final INTENT_EXTRA_SEARCH_TAB:Ljava/lang/String; = "search_tab"

.field private static final INVALID_ID:J = -0x1L

.field private static final TRACKING_CLICK_OVERFLOW:Ljava/lang/String; = "click_overflow_menu"

.field private static final TRACKING_CLICK_SHARE:Ljava/lang/String; = "click_share"

.field private static final TRACKING_LISTING_PAGE:Ljava/lang/String; = "Listing_Page"


# instance fields
.field private mListingId:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    .line 180
    return-void
.end method

.method private static checkForWebIntent(Landroid/content/Intent;)Ljava/lang/Long;
    .registers 10
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 158
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 159
    .local v0, "intentData":Landroid/net/Uri;
    if-eqz v0, :cond_8a

    .line 160
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 161
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v6, :cond_52

    const-string/jumbo v3, "rooms"

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    const-string/jumbo v3, "listings"

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 163
    :cond_2e
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    .local v1, "listingId":Ljava/lang/String;
    new-array v3, v8, [Ljava/lang/String;

    sget-object v4, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->DeepLinking:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v4, v4, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    const-string/jumbo v4, "app_open"

    aput-object v4, v3, v6

    const-string/jumbo v4, "listing_details_intent"

    aput-object v4, v3, v7

    invoke-static {v3}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 166
    :try_start_49
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_50
    .catch Ljava/lang/NumberFormatException; {:try_start_49 .. :try_end_50} :catch_89

    move-result-object v3

    .line 177
    .end local v1    # "listingId":Ljava/lang/String;
    .end local v2    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_51
    return-object v3

    .line 170
    .restart local v2    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_52
    const-string/jumbo v3, "rooms"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8a

    .line 171
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    .restart local v1    # "listingId":Ljava/lang/String;
    new-array v3, v8, [Ljava/lang/String;

    sget-object v4, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->DeepLinking:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v4, v4, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    const-string/jumbo v4, "app_open"

    aput-object v4, v3, v6

    const-string/jumbo v4, "listing_details_intent"

    aput-object v4, v3, v7

    invoke-static {v3}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 173
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_51

    .line 167
    :catch_89
    move-exception v3

    .line 177
    .end local v1    # "listingId":Ljava/lang/String;
    .end local v2    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8a
    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_51
.end method

.method public static intentForFullListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "completeListingObj"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/airbnb/android/activities/ListingDetailsActivity;->intentForListingById(Landroid/content/Context;Ljava/lang/Long;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/airbnb/android/activities/ListingDetailsActivity;->intentForListingById(Landroid/content/Context;Ljava/lang/Long;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static intentForListingById(Landroid/content/Context;Ljava/lang/Long;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listingId"    # Ljava/lang/Long;

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/ListingDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "listing_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 59
    return-object v0
.end method

.method public static intentForListingFromSearch(Landroid/content/Context;Lcom/airbnb/android/models/Listing;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "searchTab"    # Ljava/lang/String;
    .param p3, "searchMethod"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/ListingDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "listing_id"

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 65
    const-string/jumbo v1, "price_from_search"

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getPriceNative()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    const-string/jumbo v1, "search_tab"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string/jumbo v1, "search_method"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    return-object v0
.end method

.method private navigateUp()V
    .registers 4

    .prologue
    .line 145
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 146
    .local v0, "upIntent":Landroid/content/Intent;
    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 148
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 151
    const/high16 v1, 0x7f040000

    const v2, 0x7f040003

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/activities/ListingDetailsActivity;->overridePendingTransition(II)V

    .line 155
    :goto_1d
    return-void

    .line 153
    :cond_1e
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ListingDetailsActivity;->finish()V

    goto :goto_1d
.end method

.method private onSharePressed()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 128
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "Listing_Page"

    aput-object v5, v4, v7

    const-string/jumbo v5, "click_overflow_menu"

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const-string/jumbo v6, "click_share"

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 130
    iget-wide v4, p0, Lcom/airbnb/android/activities/ListingDetailsActivity;->mListingId:J

    invoke-static {v4, v5}, Lcom/airbnb/android/analytics/ListingDetailAnalytics;->trackClickShare(J)V

    .line 132
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, "shareIntent":Landroid/content/Intent;
    const-string/jumbo v4, "text/plain"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "https://airbnb.com/rooms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/airbnb/android/activities/ListingDetailsActivity;->mListingId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "url":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.extra.TEXT"

    const v5, 0x7f0e06f5

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/airbnb/android/activities/ListingDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 137
    .local v0, "currUser":Lcom/airbnb/android/models/User;
    if-nez v0, :cond_78

    const v4, 0x7f0e06f7

    invoke-virtual {p0, v4}, Lcom/airbnb/android/activities/ListingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "subject":Ljava/lang/String;
    :goto_63
    const-string/jumbo v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const v4, 0x7f0e06fd

    invoke-virtual {p0, v4}, Lcom/airbnb/android/activities/ListingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/airbnb/android/activities/ListingDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 142
    return-void

    .line 137
    .end local v2    # "subject":Ljava/lang/String;
    :cond_78
    const v4, 0x7f0e06f6

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/airbnb/android/activities/ListingDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_63
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v8, -0x1

    .line 73
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ListingDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "listing"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    .line 78
    .local v1, "listing":Lcom/airbnb/android/models/Listing;
    const-string/jumbo v6, "listing_id"

    invoke-virtual {v0, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 79
    .local v2, "listingId":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_66

    .line 80
    invoke-static {v0}, Lcom/airbnb/android/activities/ListingDetailsActivity;->checkForWebIntent(Landroid/content/Intent;)Ljava/lang/Long;

    move-result-object v2

    .line 85
    :goto_29
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_39

    .line 86
    if-eqz v1, :cond_6d

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v6

    :goto_37
    iput-wide v6, p0, Lcom/airbnb/android/activities/ListingDetailsActivity;->mListingId:J

    .line 89
    :cond_39
    iget-wide v6, p0, Lcom/airbnb/android/activities/ListingDetailsActivity;->mListingId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_6f

    .line 90
    invoke-static {}, Lcom/airbnb/android/activities/ListingDetailsActivity$ListingDetailsErrorDialog;->newInstance()Lcom/airbnb/android/activities/ListingDetailsActivity$ListingDetailsErrorDialog;

    move-result-object v6

    invoke-virtual {p0}, Lcom/airbnb/android/activities/ListingDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/airbnb/android/activities/ListingDetailsActivity$ListingDetailsErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v6, "P3"

    const/4 v7, 0x1

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v8

    const-string/jumbo v9, "listing_intent_data"

    invoke-virtual {p0}, Lcom/airbnb/android/activities/ListingDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 101
    :cond_65
    :goto_65
    return-void

    .line 82
    :cond_66
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/airbnb/android/activities/ListingDetailsActivity;->mListingId:J

    goto :goto_29

    :cond_6d
    move-wide v6, v8

    .line 86
    goto :goto_37

    .line 93
    :cond_6f
    const-string/jumbo v6, "price_from_search"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 94
    .local v3, "priceFromSearch":I
    const-string/jumbo v6, "search_tab"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "searchTab":Ljava/lang/String;
    const-string/jumbo v6, "search_method"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "searchMethod":Ljava/lang/String;
    if-nez p1, :cond_65

    .line 98
    invoke-static {v1, v2, v3, v5, v4}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->newInstance(Lcom/airbnb/android/models/Listing;Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/fragments/ListingDetailsFragment;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/airbnb/android/activities/ListingDetailsActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_65
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ListingDetailsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 112
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_16

    .line 120
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 114
    :sswitch_d
    invoke-direct {p0}, Lcom/airbnb/android/activities/ListingDetailsActivity;->onSharePressed()V

    goto :goto_c

    .line 117
    :sswitch_11
    invoke-direct {p0}, Lcom/airbnb/android/activities/ListingDetailsActivity;->navigateUp()V

    goto :goto_c

    .line 112
    nop

    :sswitch_data_16
    .sparse-switch
        0x102002c -> :sswitch_11
        0x7f080537 -> :sswitch_d
    .end sparse-switch
.end method
