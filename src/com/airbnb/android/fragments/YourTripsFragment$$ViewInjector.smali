.class public Lcom/airbnb/android/fragments/YourTripsFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "YourTripsFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/YourTripsFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/YourTripsFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x1020012

    const-string/jumbo v2, "field \'mTabs\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TabHost;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/YourTripsFragment;->mTabs:Landroid/widget/TabHost;

    .line 12
    const v1, 0x7f0802d5

    const-string/jumbo v2, "field \'mViewPager\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/support/v4/view/ViewPager;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/YourTripsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 14
    const v1, 0x7f0801c7

    invoke-virtual {p0, p2, v1}, Lbutterknife/ButterKnife$Finder;->findOptionalView(Ljava/lang/Object;I)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/YourTripsFragment;->mContentFrame:Landroid/view/View;

    .line 16
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/YourTripsFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/YourTripsFragment;

    .prologue
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mTabs:Landroid/widget/TabHost;

    .line 20
    iput-object v0, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 21
    iput-object v0, p0, Lcom/airbnb/android/fragments/YourTripsFragment;->mContentFrame:Landroid/view/View;

    .line 22
    return-void
.end method
