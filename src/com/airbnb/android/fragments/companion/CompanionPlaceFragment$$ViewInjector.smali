.class public Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "CompanionPlaceFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f080175

    const-string/jumbo v2, "field \'mContent\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mContent:Landroid/widget/LinearLayout;

    .line 12
    const v1, 0x7f080178

    const-string/jumbo v2, "field \'mCompanionAddress\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionAddress:Lcom/airbnb/android/views/AirTextView;

    .line 14
    const v1, 0x7f080177

    const-string/jumbo v2, "field \'mCompanionPlaceDirections\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlaceDirections:Landroid/widget/LinearLayout;

    .line 16
    const v1, 0x7f080176

    const-string/jumbo v2, "field \'mMap\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/StaticMapView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mMap:Lcom/airbnb/android/views/StaticMapView;

    .line 18
    const v1, 0x7f080179

    const-string/jumbo v2, "field \'mCompanionPlaceTimes\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCellExtra;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlaceTimes:Lcom/airbnb/android/views/GroupedCellExtra;

    .line 20
    const v1, 0x7f08017a

    const-string/jumbo v2, "field \'mHoursContainer\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mHoursContainer:Landroid/widget/LinearLayout;

    .line 22
    const v1, 0x7f08017b

    const-string/jumbo v2, "field \'mCompanionPlacePhone\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlacePhone:Lcom/airbnb/android/views/GroupedCell;

    .line 24
    const v1, 0x7f08017c

    const-string/jumbo v2, "field \'mCompanionPlaceWebsite\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlaceWebsite:Lcom/airbnb/android/views/GroupedCell;

    .line 26
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    .prologue
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mContent:Landroid/widget/LinearLayout;

    .line 30
    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionAddress:Lcom/airbnb/android/views/AirTextView;

    .line 31
    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlaceDirections:Landroid/widget/LinearLayout;

    .line 32
    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mMap:Lcom/airbnb/android/views/StaticMapView;

    .line 33
    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlaceTimes:Lcom/airbnb/android/views/GroupedCellExtra;

    .line 34
    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mHoursContainer:Landroid/widget/LinearLayout;

    .line 35
    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlacePhone:Lcom/airbnb/android/views/GroupedCell;

    .line 36
    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlaceWebsite:Lcom/airbnb/android/views/GroupedCell;

    .line 37
    return-void
.end method
