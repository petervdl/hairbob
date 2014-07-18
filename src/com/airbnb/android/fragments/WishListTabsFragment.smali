.class public Lcom/airbnb/android/fragments/WishListTabsFragment;
.super Lcom/airbnb/android/fragments/BaseDrawerFragment;
.source "WishListTabsFragment.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mTabs:Landroid/widget/TabHost;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mWishListsPagerAdapter:Lcom/airbnb/android/adapters/WishListsPagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/airbnb/android/fragments/WishListTabsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/WishListTabsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;-><init>()V

    return-void
.end method

.method private setupTabs()V
    .registers 7

    .prologue
    .line 66
    iget-object v2, p0, Lcom/airbnb/android/fragments/WishListTabsFragment;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->setup()V

    .line 68
    iget-object v2, p0, Lcom/airbnb/android/fragments/WishListTabsFragment;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v2, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v2, p0, Lcom/airbnb/android/fragments/WishListTabsFragment;->mWishListsPagerAdapter:Lcom/airbnb/android/adapters/WishListsPagerAdapter;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/WishListsPagerAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_49

    .line 71
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/WishListTabsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/airbnb/android/fragments/WishListTabsFragment;->mWishListsPagerAdapter:Lcom/airbnb/android/adapters/WishListsPagerAdapter;

    invoke-virtual {v4, v0}, Lcom/airbnb/android/adapters/WishListsPagerAdapter;->getPageTitleInt(I)I

    move-result v4

    sget-object v5, Lcom/airbnb/android/utils/TabHelper$TabStyle;->Dark:Lcom/airbnb/android/utils/TabHelper$TabStyle;

    invoke-static {v2, v3, v4, v5}, Lcom/airbnb/android/utils/TabHelper;->createTabView(Landroid/content/Context;IILcom/airbnb/android/utils/TabHelper$TabStyle;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 74
    .local v1, "messageLayout":Landroid/widget/RelativeLayout;
    iget-object v2, p0, Lcom/airbnb/android/fragments/WishListTabsFragment;->mTabs:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/airbnb/android/fragments/WishListTabsFragment;->mTabs:Landroid/widget/TabHost;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    new-instance v4, Lcom/airbnb/android/utils/SimpleTabFactory;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/WishListTabsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/airbnb/android/utils/SimpleTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 76
    .end local v1    # "messageLayout":Landroid/widget/RelativeLayout;
    :cond_49
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    const v2, 0x7f0300db

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 37
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f080264

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/airbnb/android/fragments/WishListTabsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 39
    new-instance v0, Lcom/airbnb/android/fragments/WishListTabsFragment$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/WishListTabsFragment$1;-><init>(Lcom/airbnb/android/fragments/WishListTabsFragment;)V

    .line 50
    .local v0, "pageChangeListener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    iget-object v2, p0, Lcom/airbnb/android/fragments/WishListTabsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 52
    new-instance v2, Lcom/airbnb/android/adapters/WishListsPagerAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/WishListTabsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/WishListTabsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/airbnb/android/adapters/WishListsPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/airbnb/android/fragments/WishListTabsFragment;->mWishListsPagerAdapter:Lcom/airbnb/android/adapters/WishListsPagerAdapter;

    .line 53
    iget-object v2, p0, Lcom/airbnb/android/fragments/WishListTabsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/airbnb/android/fragments/WishListTabsFragment;->mWishListsPagerAdapter:Lcom/airbnb/android/adapters/WishListsPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 55
    iget-object v2, p0, Lcom/airbnb/android/fragments/WishListTabsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/airbnb/android/fragments/WishListTabsFragment;->mWishListsPagerAdapter:Lcom/airbnb/android/adapters/WishListsPagerAdapter;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/WishListsPagerAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 57
    iget-object v2, p0, Lcom/airbnb/android/fragments/WishListTabsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 58
    const v2, 0x1020012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    iput-object v2, p0, Lcom/airbnb/android/fragments/WishListTabsFragment;->mTabs:Landroid/widget/TabHost;

    .line 60
    invoke-direct {p0}, Lcom/airbnb/android/fragments/WishListTabsFragment;->setupTabs()V

    .line 62
    return-object v1
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "arg0"    # I

    .prologue
    .line 98
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 102
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/airbnb/android/fragments/WishListTabsFragment;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 107
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .registers 4
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/airbnb/android/fragments/WishListTabsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 94
    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 89
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 5
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/airbnb/android/fragments/WishListTabsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 81
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 85
    return-void
.end method

.method protected setupActionBar(Landroid/app/ActionBar;)V
    .registers 3
    .param p1, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    .line 111
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 113
    const v0, 0x7f0e0760

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 114
    return-void
.end method
