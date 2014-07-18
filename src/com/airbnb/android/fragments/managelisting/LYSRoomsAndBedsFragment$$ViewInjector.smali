.class public Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "LYSRoomsAndBedsFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f080414

    const-string/jumbo v2, "field \'mMaxGuestsCounter\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCounter;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mMaxGuestsCounter:Lcom/airbnb/android/views/GroupedCounter;

    .line 12
    const v1, 0x7f080225

    const-string/jumbo v2, "field \'mBedsCounter\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCounter;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mBedsCounter:Lcom/airbnb/android/views/GroupedCounter;

    .line 14
    const v1, 0x7f080226

    const-string/jumbo v2, "field \'mBedroomsCounter\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCounter;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mBedroomsCounter:Lcom/airbnb/android/views/GroupedCounter;

    .line 16
    const v1, 0x7f080227

    const-string/jumbo v2, "field \'mBathroomsCounter\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCounterFloats;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mBathroomsCounter:Lcom/airbnb/android/views/GroupedCounterFloats;

    .line 18
    const v1, 0x7f080413

    const-string/jumbo v2, "field \'mBedroomsLayout\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mBedroomsLayout:Landroid/view/View;

    .line 20
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;

    .prologue
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mMaxGuestsCounter:Lcom/airbnb/android/views/GroupedCounter;

    .line 24
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mBedsCounter:Lcom/airbnb/android/views/GroupedCounter;

    .line 25
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mBedroomsCounter:Lcom/airbnb/android/views/GroupedCounter;

    .line 26
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mBathroomsCounter:Lcom/airbnb/android/views/GroupedCounterFloats;

    .line 27
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mBedroomsLayout:Landroid/view/View;

    .line 28
    return-void
.end method
