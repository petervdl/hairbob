.class public Lcom/airbnb/android/fragments/YourTripsFragment;
.super Lcom/airbnb/android/fragments/BaseDrawerFragment;
.source "YourTripsFragment.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/OnReservationItemSelectedListener;


# static fields
.field private static final ARG_SELECTED_ID:Ljava/lang/String; = "selected_id"


# instance fields
.field mContentFrame:Landroid/view/View;

.field private mIsWideMode:Z

.field private mPagerAdapter:Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter;

.field private mSelectedId:J

.field mTabs:Landroid/widget/TabHost;

.field mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;-><init>()V

    return-void
.end method

.method private loadROContainerFragment(Lcom/airbnb/android/models/Reservation;)V
    .registers 6
    .param p1, "reservation"    # Lcom/airbnb/android/models/Reservation;

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mSelectedId:J

    invoke-virtual {p1}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3e

    .line 152
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApplication;->getAnalyticsRegistry()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "ro_source"

    const-string/jumbo v2, "guest_reservations"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 153
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/YourTripsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0801c7

    const/4 v2, 0x0

    sget-object v3, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Default:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    invoke-virtual {v3}, Lcom/airbnb/android/activities/ROActivity$LaunchState;->ordinal()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/airbnb/android/fragments/ROContainerFragment;->newInstance(Lcom/airbnb/android/models/Reservation;ZI)Lcom/airbnb/android/fragments/ROContainerFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 155
    invoke-virtual {p1}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mSelectedId:J

    .line 157
    :cond_3e
    return-void
.end method

.method public static newInstance()Landroid/support/v4/app/Fragment;
    .registers 1

    .prologue
    .line 36
    new-instance v0, Lcom/airbnb/android/fragments/YourTripsFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/YourTripsFragment;-><init>()V

    return-object v0
.end method

.method private refresh()V
    .registers 4

    .prologue
    .line 88
    iget-object v1, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mPagerAdapter:Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter;

    iget-object v2, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 89
    .local v0, "item":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Lcom/airbnb/android/utils/FragmentRefreshListener;

    if-eqz v1, :cond_15

    .line 90
    check-cast v0, Lcom/airbnb/android/utils/FragmentRefreshListener;

    .end local v0    # "item":Landroid/support/v4/app/Fragment;
    invoke-interface {v0}, Lcom/airbnb/android/utils/FragmentRefreshListener;->refresh()V

    .line 92
    :cond_15
    return-void
.end method

.method private setupTabs()V
    .registers 7

    .prologue
    .line 134
    iget-object v2, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->setup()V

    .line 135
    iget-object v2, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mTabs:Landroid/widget/TabHost;

    new-instance v3, Lcom/airbnb/android/fragments/YourTripsFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/YourTripsFragment$2;-><init>(Lcom/airbnb/android/fragments/YourTripsFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget-object v2, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mPagerAdapter:Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_53

    .line 143
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/YourTripsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mPagerAdapter:Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter;

    invoke-virtual {v3, v0}, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter;->getPageIcon(I)I

    move-result v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mPagerAdapter:Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter;

    invoke-virtual {v4, v0}, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter;->getPageTitleInt(I)I

    move-result v4

    sget-object v5, Lcom/airbnb/android/utils/TabHelper$TabStyle;->Dark:Lcom/airbnb/android/utils/TabHelper$TabStyle;

    invoke-static {v2, v3, v4, v5}, Lcom/airbnb/android/utils/TabHelper;->createTabView(Landroid/content/Context;IILcom/airbnb/android/utils/TabHelper$TabStyle;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 146
    .local v1, "messageLayout":Landroid/widget/RelativeLayout;
    iget-object v2, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mTabs:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mTabs:Landroid/widget/TabHost;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    new-instance v4, Lcom/airbnb/android/utils/SimpleTabFactory;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/YourTripsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/airbnb/android/utils/SimpleTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 148
    .end local v1    # "messageLayout":Landroid/widget/RelativeLayout;
    :cond_53
    return-void
.end method

.method private setupViewPager()V
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/airbnb/android/fragments/YourTripsFragment$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/YourTripsFragment$1;-><init>(Lcom/airbnb/android/fragments/YourTripsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 129
    iget-object v0, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mPagerAdapter:Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 130
    iget-object v0, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mPagerAdapter:Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 131
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    new-instance v0, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/YourTripsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mPagerAdapter:Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter;

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/YourTripsFragment;->setHasOptionsMenu(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/YourTripsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mIsWideMode:Z

    .line 57
    if-eqz p1, :cond_2a

    .line 58
    const-string/jumbo v0, "selected_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mSelectedId:J

    .line 64
    :cond_2a
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 68
    const v0, 0x7f10001a

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 69
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 70
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    const v1, 0x7f030104

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, "v":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 99
    invoke-direct {p0}, Lcom/airbnb/android/fragments/YourTripsFragment;->setupViewPager()V

    .line 100
    invoke-direct {p0}, Lcom/airbnb/android/fragments/YourTripsFragment;->setupTabs()V

    .line 102
    return-object v0
.end method

.method public onInitialization(Lcom/airbnb/android/models/Reservation;Z)V
    .registers 7
    .param p1, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p2, "isUpcoming"    # Z

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mIsWideMode:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mContentFrame:Landroid/view/View;

    if-eqz v0, :cond_15

    iget-wide v0, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mSelectedId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    if-eqz p2, :cond_15

    .line 171
    :cond_12
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/YourTripsFragment;->loadROContainerFragment(Lcom/airbnb/android/models/Reservation;)V

    .line 173
    :cond_15
    return-void
.end method

.method public onItemSelected(Lcom/airbnb/android/models/Reservation;)V
    .registers 4
    .param p1, "reservation"    # Lcom/airbnb/android/models/Reservation;

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mIsWideMode:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mContentFrame:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 162
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/YourTripsFragment;->loadROContainerFragment(Lcom/airbnb/android/models/Reservation;)V

    .line 166
    :goto_b
    return-void

    .line 164
    :cond_c
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/YourTripsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "guest_reservations"

    invoke-static {v0, p1, v1}, Lcom/airbnb/android/activities/ROActivity;->intentForReservation(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/YourTripsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_b
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f080540

    if-ne v0, v1, :cond_e

    .line 81
    invoke-direct {p0}, Lcom/airbnb/android/fragments/YourTripsFragment;->refresh()V

    .line 82
    const/4 v0, 0x1

    .line 84
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_d
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 74
    const v0, 0x7f080540

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/android/fragments/YourTripsFragment;->prepareMenuItem(Landroid/view/Menu;I)V

    .line 75
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 76
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 109
    const-string/jumbo v0, "selected_id"

    iget-wide v1, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mSelectedId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 110
    return-void
.end method

.method protected setupActionBar(Landroid/app/ActionBar;)V
    .registers 3
    .param p1, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    .line 177
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 179
    const v0, 0x7f0e07a2

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 180
    return-void
.end method
