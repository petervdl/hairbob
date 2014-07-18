.class public Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "LastMinuteBookingFiltersFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f0801e3

    const-string/jumbo v2, "field \'mSortBySelector\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/SortBySelectorView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->mSortBySelector:Lcom/airbnb/android/views/SortBySelectorView;

    .line 12
    const v1, 0x7f0801e2

    const-string/jumbo v2, "field \'mNightsSelector\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/NightsSelector;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->mNightsSelector:Lcom/airbnb/android/views/NightsSelector;

    .line 14
    const v1, 0x7f0801e4

    const-string/jumbo v2, "field \'mCitySelector\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/CitySelectorView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->mCitySelector:Lcom/airbnb/android/views/CitySelectorView;

    .line 16
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;

    .prologue
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->mSortBySelector:Lcom/airbnb/android/views/SortBySelectorView;

    .line 20
    iput-object v0, p0, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->mNightsSelector:Lcom/airbnb/android/views/NightsSelector;

    .line 21
    iput-object v0, p0, Lcom/airbnb/android/fragments/LastMinuteBookingFiltersFragment;->mCitySelector:Lcom/airbnb/android/views/CitySelectorView;

    .line 22
    return-void
.end method
