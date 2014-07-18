.class public Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "LastMinuteBookingSearchActivity.java"


# static fields
.field private static final GUEST_COUNT:I = 0x1

.field private static final LENGTH_OF_STAY:I = 0x1

.field private static final SAVED_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method public static intentForDefault(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private prefetchLastMinuteDealsForTomorrow()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x6

    .line 82
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v0

    .line 83
    .local v0, "searchInfo":Lcom/airbnb/android/models/SearchInfo;
    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->getCheckinDate()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->add(II)V

    .line 84
    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->getCheckoutDate()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->add(II)V

    .line 85
    new-instance v1, Lcom/airbnb/android/requests/SearchRequest;

    const/4 v2, 0x0

    new-instance v3, Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity$1;-><init>(Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;)V

    invoke-direct {v1, v0, v2, v3}, Lcom/airbnb/android/requests/SearchRequest;-><init>(Lcom/airbnb/android/models/SearchInfo;ILcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v1}, Lcom/airbnb/android/requests/SearchRequest;->execute()V

    .line 98
    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->getCheckinDate()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 99
    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->getCheckoutDate()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 100
    return-void
.end method

.method private setupSearchInfoForTonight()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/utils/CalendarHelper;->roundDateToMidnight(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 64
    .local v0, "checkIn":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/utils/CalendarHelper;->roundDateToMidnight(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 65
    .local v1, "checkOut":Ljava/util/Calendar;
    const/4 v2, 0x6

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 67
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    .line 68
    iget-object v2, p0, Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v2}, Lcom/airbnb/android/models/SearchInfo;->clearAllFilters()V

    .line 69
    iget-object v2, p0, Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-static {p0}, Lcom/airbnb/android/persist/LmbAirLocationStore;->getClosestAirLocation(Landroid/content/Context;)Lcom/airbnb/android/models/AirLocation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/models/SearchInfo;->setLmbLocation(Lcom/airbnb/android/models/AirLocation;)V

    .line 70
    iget-object v2, p0, Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v2, v0}, Lcom/airbnb/android/models/SearchInfo;->setCheckinDate(Ljava/util/Calendar;)V

    .line 71
    iget-object v2, p0, Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v2, v1}, Lcom/airbnb/android/models/SearchInfo;->setCheckoutDate(Ljava/util/Calendar;)V

    .line 72
    iget-object v2, p0, Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v2, v4}, Lcom/airbnb/android/models/SearchInfo;->setIsLastMinuteOnly(Z)V

    .line 73
    iget-object v2, p0, Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v2, v4}, Lcom/airbnb/android/models/SearchInfo;->setGuestCount(I)V

    .line 74
    iget-object v2, p0, Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v2}, Lcom/airbnb/android/models/SearchInfo;->getLmbLocation()Lcom/airbnb/android/models/AirLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/AirLocation;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;->mTitle:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    if-nez p1, :cond_31

    .line 38
    invoke-direct {p0}, Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;->setupSearchInfoForTonight()V

    .line 41
    iget-object v0, p0, Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->getLmbLocation()Lcom/airbnb/android/models/AirLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/AirLocation;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;->mTitle:Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;->prefetchLastMinuteDealsForTomorrow()V

    .line 46
    invoke-static {}, Lcom/airbnb/android/fragments/LastMinuteSearchFragment;->newInstanceForLastMinuteDeals()Lcom/airbnb/android/fragments/LastMinuteSearchFragment;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 51
    :goto_20
    const v0, 0x7f0e036e

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;->mTitle:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 52
    return-void

    .line 48
    :cond_31
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;->mTitle:Ljava/lang/String;

    goto :goto_20
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 58
    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/airbnb/android/activities/LastMinuteBookingSearchActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method
