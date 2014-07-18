.class public Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;
.super Lcom/airbnb/android/fragments/SlideUpTransparentFragment;
.source "LastMinuteBookingFiltersFragment.java"


# instance fields
.field mCitySelector:Lcom/airbnb/android/views/CitySelectorView;

.field mNightsSelector:Lcom/airbnb/android/views/NightsSelector;

.field mSortBySelector:Lcom/airbnb/android/views/SortBySelectorView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;
    .registers 1

    .prologue
    .line 35
    new-instance v0, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getTransparentHeaderHeight()F
    .registers 3

    .prologue
    .line 74
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getScreenSize()Landroid/graphics/Point;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 75
    .local v0, "screenHeight":I
    div-int/lit8 v1, v0, 0x6

    int-to-float v1, v1

    return v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "outerView":Landroid/view/View;
    const v3, 0x7f0300a7

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 47
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->mScrollViewContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 48
    invoke-static {p0, v2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 50
    iget-object v3, p0, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v3, v5}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    .line 51
    iget-object v3, p0, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const v4, 0x7f0e0086

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 52
    iget-object v3, p0, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    const v4, 0x7f0a000a

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/StickyButton;->setCustomBackgroundColorResource(I)V

    .line 53
    iget-object v3, p0, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v4, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment$1;-><init>(Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;)V

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {v2, v5, v5}, Landroid/view/View;->measure(II)V

    .line 64
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getScreenSize()Landroid/graphics/Point;

    move-result-object v3

    iget v1, v3, Landroid/graphics/Point;->y:I

    .line 65
    .local v1, "screenHeight":I
    int-to-float v3, v1

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->getTransparentHeaderHeight()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_56

    .line 66
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {p0, v0, v3}, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->setTransparentHeaderHeight(Landroid/view/View;F)V

    .line 69
    :cond_56
    return-object v0
.end method

.method public onStart()V
    .registers 11

    .prologue
    .line 80
    invoke-super {p0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->onStart()V

    .line 82
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/airbnb/android/utils/LocationHelper;->getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v3

    .line 83
    .local v3, "lastKnownLocation":Landroid/location/Location;
    const/4 v5, 0x0

    .line 84
    .local v5, "locationThatAllowsDistanceSort":Lcom/airbnb/android/models/AirLocation;
    if-eqz v3, :cond_3e

    .line 85
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 87
    .local v2, "lastKnownLatLng":Lcom/google/android/gms/maps/model/LatLng;
    invoke-static {}, Lcom/airbnb/android/persist/LmbAirLocationStore;->getInstance()Lcom/airbnb/android/persist/LmbAirLocationStore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/persist/LmbAirLocationStore;->getData()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/AirLocation;

    .line 88
    .local v4, "location":Lcom/airbnb/android/models/AirLocation;
    invoke-virtual {v4}, Lcom/airbnb/android/models/AirLocation;->getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/android/gms/maps/model/LatLngBounds;->contains(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 89
    move-object v5, v4

    .line 95
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "lastKnownLatLng":Lcom/google/android/gms/maps/model/LatLng;
    .end local v4    # "location":Lcom/airbnb/android/models/AirLocation;
    :cond_3e
    move-object v0, v5

    .line 97
    .local v0, "fLocationThatAllowsDistanceSort":Lcom/airbnb/android/models/AirLocation;
    iget-object v7, p0, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->mSortBySelector:Lcom/airbnb/android/views/SortBySelectorView;

    if-eqz v0, :cond_64

    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/models/SearchInfo;->getLmbLocation()Lcom/airbnb/android/models/AirLocation;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/airbnb/android/models/AirLocation;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64

    const/4 v6, 0x1

    :goto_56
    invoke-virtual {v7, v6}, Lcom/airbnb/android/views/SortBySelectorView;->setDistanceSortEnabled(Z)V

    .line 98
    iget-object v6, p0, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->mCitySelector:Lcom/airbnb/android/views/CitySelectorView;

    new-instance v7, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment$2;

    invoke-direct {v7, p0, v0}, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment$2;-><init>(Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;Lcom/airbnb/android/models/AirLocation;)V

    invoke-virtual {v6, v7}, Lcom/airbnb/android/views/CitySelectorView;->setOnCitySelectedListener(Lcom/airbnb/android/views/CitySelectorView$OnCitySelectedListener;)V

    .line 104
    return-void

    .line 97
    :cond_64
    const/4 v6, 0x0

    goto :goto_56
.end method

.method public saveFilters()V
    .registers 12

    .prologue
    .line 107
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v8

    .line 109
    .local v8, "searchInfo":Lcom/airbnb/android/models/SearchInfo;
    if-eqz v8, :cond_6f

    .line 110
    invoke-virtual {v8}, Lcom/airbnb/android/models/SearchInfo;->getSortType()Lcom/airbnb/android/models/SearchInfo$SortType;

    move-result-object v7

    .line 111
    .local v7, "oldSortType":Lcom/airbnb/android/models/SearchInfo$SortType;
    iget-object v9, p0, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->mSortBySelector:Lcom/airbnb/android/views/SortBySelectorView;

    invoke-virtual {v9}, Lcom/airbnb/android/views/SortBySelectorView;->getSortType()Lcom/airbnb/android/models/SearchInfo$SortType;

    move-result-object v4

    .line 112
    .local v4, "newSortType":Lcom/airbnb/android/models/SearchInfo$SortType;
    if-eqz v7, :cond_2e

    iget v9, v7, Lcom/airbnb/android/models/SearchInfo$SortType;->key:I

    iget v10, v4, Lcom/airbnb/android/models/SearchInfo$SortType;->key:I

    if-eq v9, v10, :cond_2e

    .line 113
    invoke-static {v4}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackLmbFiltersChangeSortMode(Lcom/airbnb/android/models/SearchInfo$SortType;)V

    .line 115
    sget-object v9, Lcom/airbnb/android/models/SearchInfo$SortType;->Distance:Lcom/airbnb/android/models/SearchInfo$SortType;

    if-ne v4, v9, :cond_70

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/airbnb/android/utils/LocationHelper;->getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    .line 116
    .local v0, "location":Landroid/location/Location;
    :goto_2b
    invoke-virtual {v8, v0}, Lcom/airbnb/android/models/SearchInfo;->setLocation(Landroid/location/Location;)V

    .line 119
    .end local v0    # "location":Landroid/location/Location;
    :cond_2e
    invoke-virtual {v8, v4}, Lcom/airbnb/android/models/SearchInfo;->setSortType(Lcom/airbnb/android/models/SearchInfo$SortType;)V

    .line 121
    invoke-virtual {v8}, Lcom/airbnb/android/models/SearchInfo;->getCheckinDate()Ljava/util/Calendar;

    move-result-object v9

    if-eqz v9, :cond_57

    .line 122
    invoke-virtual {v8}, Lcom/airbnb/android/models/SearchInfo;->getNights()I

    move-result v6

    .line 123
    .local v6, "oldNights":I
    iget-object v9, p0, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->mNightsSelector:Lcom/airbnb/android/views/NightsSelector;

    invoke-virtual {v9}, Lcom/airbnb/android/views/NightsSelector;->getNights()I

    move-result v3

    .line 124
    .local v3, "newNights":I
    if-eq v6, v3, :cond_46

    .line 125
    invoke-static {v3}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackLMNightsChange(I)V

    .line 128
    :cond_46
    invoke-virtual {v8}, Lcom/airbnb/android/models/SearchInfo;->getCheckinDate()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 129
    .local v1, "newCheckOut":Ljava/util/Calendar;
    const/4 v9, 0x6

    invoke-virtual {v1, v9, v3}, Ljava/util/Calendar;->add(II)V

    .line 130
    invoke-virtual {v8, v1}, Lcom/airbnb/android/models/SearchInfo;->setCheckoutDate(Ljava/util/Calendar;)V

    .line 133
    .end local v1    # "newCheckOut":Ljava/util/Calendar;
    .end local v3    # "newNights":I
    .end local v6    # "oldNights":I
    :cond_57
    invoke-virtual {v8}, Lcom/airbnb/android/models/SearchInfo;->getLmbLocation()Lcom/airbnb/android/models/AirLocation;

    move-result-object v5

    .line 134
    .local v5, "oldLmbCity":Lcom/airbnb/android/models/AirLocation;
    iget-object v9, p0, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->mCitySelector:Lcom/airbnb/android/views/CitySelectorView;

    invoke-virtual {v9}, Lcom/airbnb/android/views/CitySelectorView;->getAirLocation()Lcom/airbnb/android/models/AirLocation;

    move-result-object v2

    .line 135
    .local v2, "newLmbCity":Lcom/airbnb/android/models/AirLocation;
    if-eqz v5, :cond_6c

    invoke-virtual {v5, v2}, Lcom/airbnb/android/models/AirLocation;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6c

    .line 136
    invoke-static {v2}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackLmbFiltersChangeCity(Lcom/airbnb/android/models/AirLocation;)V

    .line 139
    :cond_6c
    invoke-virtual {v8, v2}, Lcom/airbnb/android/models/SearchInfo;->setLmbLocation(Lcom/airbnb/android/models/AirLocation;)V

    .line 141
    .end local v2    # "newLmbCity":Lcom/airbnb/android/models/AirLocation;
    .end local v4    # "newSortType":Lcom/airbnb/android/models/SearchInfo$SortType;
    .end local v5    # "oldLmbCity":Lcom/airbnb/android/models/AirLocation;
    .end local v7    # "oldSortType":Lcom/airbnb/android/models/SearchInfo$SortType;
    :cond_6f
    return-void

    .line 115
    .restart local v4    # "newSortType":Lcom/airbnb/android/models/SearchInfo$SortType;
    .restart local v7    # "oldSortType":Lcom/airbnb/android/models/SearchInfo$SortType;
    :cond_70
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public useListView()Z
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method
