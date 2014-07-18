.class public Lcom/airbnb/android/fragments/SearchFilterFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "SearchFilterFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/SearchFilterFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/SearchFilterFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f08014b

    const-string/jumbo v2, "field \'mDateAndGuestCountView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/DateAndGuestCountView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/SearchFilterFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    .line 12
    const v1, 0x7f0803f6

    const-string/jumbo v2, "field \'mPrivateRoomCheck\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/CheckableLinearLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/SearchFilterFragment;->mPrivateRoomCheck:Lcom/airbnb/android/views/CheckableLinearLayout;

    .line 14
    const v1, 0x7f0803f7

    const-string/jumbo v2, "field \'mSharedRoomCheck\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/CheckableLinearLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/SearchFilterFragment;->mSharedRoomCheck:Lcom/airbnb/android/views/CheckableLinearLayout;

    .line 16
    const v1, 0x7f0803f8

    const-string/jumbo v2, "field \'mEntirePlaceCheck\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/CheckableLinearLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/SearchFilterFragment;->mEntirePlaceCheck:Lcom/airbnb/android/views/CheckableLinearLayout;

    .line 18
    const v1, 0x7f080293

    const-string/jumbo v2, "field \'mInstantBookCheck\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCheck;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/SearchFilterFragment;->mInstantBookCheck:Lcom/airbnb/android/views/GroupedCheck;

    .line 20
    const v1, 0x7f080117

    const-string/jumbo v2, "field \'mRangeSeekBarContainer\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/FrameLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/SearchFilterFragment;->mRangeSeekBarContainer:Landroid/widget/FrameLayout;

    .line 22
    const v1, 0x7f080116

    const-string/jumbo v2, "field \'mPriceText\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/SearchFilterFragment;->mPriceText:Landroid/widget/TextView;

    .line 24
    const v1, 0x7f080225

    const-string/jumbo v2, "field \'mBedCounter\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCounter;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/SearchFilterFragment;->mBedCounter:Lcom/airbnb/android/views/GroupedCounter;

    .line 26
    const v1, 0x7f080226

    const-string/jumbo v2, "field \'mBedroomCounter\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCounter;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/SearchFilterFragment;->mBedroomCounter:Lcom/airbnb/android/views/GroupedCounter;

    .line 28
    const v1, 0x7f080227

    const-string/jumbo v2, "field \'mBathroomCounter\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 29
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCounter;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/SearchFilterFragment;->mBathroomCounter:Lcom/airbnb/android/views/GroupedCounter;

    .line 30
    const v1, 0x7f080294

    const-string/jumbo v2, "field \'mAmenityLayout\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/SearchFilterFragment;->mAmenityLayout:Landroid/widget/LinearLayout;

    .line 32
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/SearchFilterFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/SearchFilterFragment;

    .prologue
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    .line 36
    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mPrivateRoomCheck:Lcom/airbnb/android/views/CheckableLinearLayout;

    .line 37
    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mSharedRoomCheck:Lcom/airbnb/android/views/CheckableLinearLayout;

    .line 38
    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mEntirePlaceCheck:Lcom/airbnb/android/views/CheckableLinearLayout;

    .line 39
    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mInstantBookCheck:Lcom/airbnb/android/views/GroupedCheck;

    .line 40
    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mRangeSeekBarContainer:Landroid/widget/FrameLayout;

    .line 41
    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mPriceText:Landroid/widget/TextView;

    .line 42
    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mBedCounter:Lcom/airbnb/android/views/GroupedCounter;

    .line 43
    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mBedroomCounter:Lcom/airbnb/android/views/GroupedCounter;

    .line 44
    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mBathroomCounter:Lcom/airbnb/android/views/GroupedCounter;

    .line 45
    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment;->mAmenityLayout:Landroid/widget/LinearLayout;

    .line 46
    return-void
.end method
