.class public Lcom/airbnb/android/activities/TravelLocationSearchActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "TravelLocationSearchActivity.java"


# static fields
.field private static final KEY_LOCATION:Ljava/lang/String; = "travel_location"

.field private static final KEY_SEARCH_PARAMS:Ljava/lang/String; = "search_params"

.field private static final WEEKEND_GETAWAY_STAY_LENGTH:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method public static intentFor(Landroid/content/Context;Lcom/airbnb/android/models/TravelLocation;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "travelLocation"    # Lcom/airbnb/android/models/TravelLocation;

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/TravelLocationSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "travel_location"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 30
    const-string/jumbo v1, "search_params"

    invoke-virtual {p1}, Lcom/airbnb/android/models/TravelLocation;->getSearchParams()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/utils/ParcelStrap;->make(Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/ParcelStrap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 31
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x6

    .line 36
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v6

    .line 40
    .local v6, "searchInfo":Lcom/airbnb/android/models/SearchInfo;
    invoke-virtual {v6}, Lcom/airbnb/android/models/SearchInfo;->clearAllFilters()V

    .line 43
    const/4 v8, 0x0

    .line 45
    .local v8, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/TravelLocationSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v11, "travel_location"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4d

    .line 46
    invoke-virtual {p0}, Lcom/airbnb/android/activities/TravelLocationSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v11, "travel_location"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/airbnb/android/models/TravelLocation;

    .line 47
    .local v9, "travelLocation":Lcom/airbnb/android/models/TravelLocation;
    invoke-virtual {v9}, Lcom/airbnb/android/models/TravelLocation;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 48
    invoke-virtual {p0}, Lcom/airbnb/android/activities/TravelLocationSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v11, "search_params"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/airbnb/android/utils/ParcelStrap;

    invoke-virtual {v10}, Lcom/airbnb/android/utils/ParcelStrap;->internal()Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    .line 76
    .end local v9    # "travelLocation":Lcom/airbnb/android/models/TravelLocation;
    .local v7, "searchParams":Lcom/airbnb/android/utils/Strap;
    :cond_3f
    :goto_3f
    invoke-virtual {v6, v7}, Lcom/airbnb/android/models/SearchInfo;->setQueryParamsFromServer(Lcom/airbnb/android/utils/Strap;)V

    .line 78
    if-nez p1, :cond_4c

    .line 79
    invoke-static {v8}, Lcom/airbnb/android/fragments/TravelLocationSearchFragment;->newInstance(Ljava/lang/String;)Lcom/airbnb/android/fragments/TravelLocationSearchFragment;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/airbnb/android/activities/TravelLocationSearchActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 81
    :cond_4c
    return-void

    .line 50
    .end local v7    # "searchParams":Lcom/airbnb/android/utils/Strap;
    :cond_4d
    invoke-virtual {p0}, Lcom/airbnb/android/activities/TravelLocationSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-static {v10}, Lcom/airbnb/android/utils/DeepLinkDispatch;->newInstance(Landroid/content/Intent;)Lcom/airbnb/android/utils/DeepLinkDispatch;

    move-result-object v2

    .line 51
    .local v2, "deepLinkDispatch":Lcom/airbnb/android/utils/DeepLinkDispatch;
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    .line 53
    .restart local v7    # "searchParams":Lcom/airbnb/android/utils/Strap;
    invoke-virtual {v2}, Lcom/airbnb/android/utils/DeepLinkDispatch;->getParameters()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_65
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_91

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 54
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 55
    .local v5, "key":Ljava/lang/String;
    const-string/jumbo v10, "display_name"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_87

    .line 56
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "title":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8    # "title":Ljava/lang/String;
    goto :goto_65

    .line 58
    :cond_87
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v5, v10}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    goto :goto_65

    .line 64
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_91
    invoke-static {v12}, Lcom/airbnb/android/utils/CalendarHelper;->getNext(I)Ljava/util/Calendar;

    move-result-object v0

    .line 65
    .local v0, "checkIn":Ljava/util/Calendar;
    invoke-virtual {v6, v0}, Lcom/airbnb/android/models/SearchInfo;->setCheckinDate(Ljava/util/Calendar;)V

    .line 66
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 67
    .local v1, "checkOut":Ljava/util/Calendar;
    const/4 v10, 0x2

    invoke-virtual {v1, v12, v10}, Ljava/util/Calendar;->add(II)V

    .line 68
    invoke-virtual {v6, v1}, Lcom/airbnb/android/models/SearchInfo;->setCheckoutDate(Ljava/util/Calendar;)V

    .line 71
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3f

    .line 72
    const v10, 0x7f0e0809

    invoke-virtual {p0, v10}, Lcom/airbnb/android/activities/TravelLocationSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3f
.end method
