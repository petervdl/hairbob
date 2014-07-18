.class public Lcom/airbnb/android/fragments/LastMinuteSearchFragment;
.super Lcom/airbnb/android/fragments/SearchFragment;
.source "LastMinuteSearchFragment.java"


# static fields
.field public static final REQUEST_CODE_LMB_FILTERS:I = 0xeb

.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/airbnb/android/fragments/LastMinuteSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/LastMinuteSearchFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SearchFragment;-><init>()V

    .line 28
    return-void
.end method

.method public static newInstanceForLastMinuteDeals()Lcom/airbnb/android/fragments/LastMinuteSearchFragment;
    .registers 4

    .prologue
    .line 31
    new-instance v1, Lcom/airbnb/android/fragments/LastMinuteSearchFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/LastMinuteSearchFragment;-><init>()V

    .line 32
    .local v1, "fragment":Lcom/airbnb/android/fragments/LastMinuteSearchFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "auto_start_search"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/LastMinuteSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    return-object v1
.end method


# virtual methods
.method protected enableListingsResult(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/LastMinuteSearchFragment;->isWideMode()Z

    move-result v1

    if-nez v1, :cond_d

    .line 65
    iget-object v1, p0, Lcom/airbnb/android/fragments/LastMinuteSearchFragment;->mBrowsableViewPager:Lcom/airbnb/android/views/BrowsableViewPager;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/BrowsableViewPager;->setVisibility(I)V

    .line 69
    :goto_c
    return-void

    .line 67
    :cond_d
    iget-object v1, p0, Lcom/airbnb/android/fragments/LastMinuteSearchFragment;->mContentFrame:Landroid/view/View;

    if-eqz p1, :cond_15

    :goto_11
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    :cond_15
    const/16 v0, 0x8

    goto :goto_11
.end method

.method protected getBrowsableType()Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;
    .registers 2

    .prologue
    .line 40
    sget-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->LMB:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    return-object v0
.end method

.method protected getCameFrom()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    const-string/jumbo v0, "lmb"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 102
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 103
    packed-switch p1, :pswitch_data_e

    .line 109
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/SearchFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 110
    :goto_9
    return-void

    .line 105
    :pswitch_a
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/LastMinuteSearchFragment;->launchNewListingLoadingTask()V

    goto :goto_9

    .line 103
    :pswitch_data_e
    .packed-switch 0xeb
        :pswitch_a
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/SearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/airbnb/android/fragments/LastMinuteSearchFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/LastMinuteSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/LoaderFrame;->setBackgroundColor(I)V

    .line 53
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 73
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_18

    .line 79
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/SearchFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_b
    return v1

    .line 75
    :pswitch_c
    new-instance v0, Lcom/airbnb/android/events/OptionItemSelectedEvent;

    invoke-direct {v0}, Lcom/airbnb/android/events/OptionItemSelectedEvent;-><init>()V

    .line 76
    .local v0, "event":Lcom/airbnb/android/events/OptionItemSelectedEvent;
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 77
    const/4 v1, 0x1

    goto :goto_b

    .line 73
    :pswitch_data_18
    .packed-switch 0x7f080532
        :pswitch_c
    .end packed-switch
.end method

.method protected setState(Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;)V
    .registers 6
    .param p1, "state"    # Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/SearchFragment;->setState(Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;)V

    .line 89
    sget-object v1, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->Results:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    if-ne p1, v1, :cond_2e

    .line 90
    iget-object v1, p0, Lcom/airbnb/android/fragments/LastMinuteSearchFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/LastMinuteSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/LoaderFrame;->setBackgroundColor(I)V

    .line 91
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/SearchInfo;->getLmbLocation()Lcom/airbnb/android/models/AirLocation;

    move-result-object v0

    .line 92
    .local v0, "lmbLocation":Lcom/airbnb/android/models/AirLocation;
    iget v2, p0, Lcom/airbnb/android/fragments/LastMinuteSearchFragment;->mTotalListingsCount:I

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lcom/airbnb/android/models/AirLocation;->getSearchTerm()Ljava/lang/String;

    move-result-object v1

    :goto_2b
    invoke-static {v2, v1}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackLmbResults(ILjava/lang/String;)V

    .line 96
    .end local v0    # "lmbLocation":Lcom/airbnb/android/models/AirLocation;
    :cond_2e
    iget-object v1, p0, Lcom/airbnb/android/fragments/LastMinuteSearchFragment;->mSearchFilterContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    return-void

    .line 92
    .restart local v0    # "lmbLocation":Lcom/airbnb/android/models/AirLocation;
    :cond_36
    const-string/jumbo v1, ""

    goto :goto_2b
.end method

.method protected shouldShowSearchBarMenu()Z
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method protected updateActionBar()V
    .registers 5

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/LastMinuteSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 115
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_29

    .line 116
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/SearchInfo;->getLmbLocation()Lcom/airbnb/android/models/AirLocation;

    move-result-object v2

    .line 118
    .local v2, "lmbLocation":Lcom/airbnb/android/models/AirLocation;
    if-eqz v2, :cond_29

    .line 119
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 120
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 121
    const v3, 0x7f0e036e

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 122
    invoke-virtual {v2}, Lcom/airbnb/android/models/AirLocation;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 125
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v2    # "lmbLocation":Lcom/airbnb/android/models/AirLocation;
    :cond_29
    return-void
.end method
