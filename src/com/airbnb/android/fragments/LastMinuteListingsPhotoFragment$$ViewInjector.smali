.class public Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "LastMinuteListingsPhotoFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 9
    invoke-static {p0, p1, p2}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;Ljava/lang/Object;)V

    .line 12
    const v1, 0x7f0801e8

    const-string/jumbo v2, "field \'mTonightBtn\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .local v0, "view":Landroid/view/View;
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mTonightBtn:Landroid/widget/Button;

    .line 14
    const v1, 0x7f0801e9

    const-string/jumbo v2, "field \'mTomorrowBtn\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mTomorrowBtn:Landroid/widget/Button;

    .line 16
    const v1, 0x7f0801e7

    const-string/jumbo v2, "field \'mLastMinuteDealsButtonsLayout\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mLastMinuteDealsButtonsLayout:Landroid/widget/LinearLayout;

    .line 18
    const v1, 0x7f0801ef

    const-string/jumbo v2, "field \'mLastMinuteEducation\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mLastMinuteEducation:Landroid/view/View;

    .line 20
    const v1, 0x7f0801ee

    const-string/jumbo v2, "field \'mSoldOut\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mSoldOut:Landroid/widget/TextView;

    .line 22
    const v1, 0x7f0801eb

    const-string/jumbo v2, "field \'mEmptyResultsFilterLastMinute\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mEmptyResultsFilterLastMinute:Landroid/view/View;

    .line 24
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-static {p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment$$ViewInjector;->reset(Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;)V

    .line 29
    iput-object v0, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mTonightBtn:Landroid/widget/Button;

    .line 30
    iput-object v0, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mTomorrowBtn:Landroid/widget/Button;

    .line 31
    iput-object v0, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mLastMinuteDealsButtonsLayout:Landroid/widget/LinearLayout;

    .line 32
    iput-object v0, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mLastMinuteEducation:Landroid/view/View;

    .line 33
    iput-object v0, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mSoldOut:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mEmptyResultsFilterLastMinute:Landroid/view/View;

    .line 35
    return-void
.end method
