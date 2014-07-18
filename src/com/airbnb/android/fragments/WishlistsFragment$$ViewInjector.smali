.class public Lcom/airbnb/android/fragments/WishlistsFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "WishlistsFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/WishlistsFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/WishlistsFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f0800d6

    const-string/jumbo v2, "field \'mBaseLoaderListView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/BaseLoaderListView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/WishlistsFragment;->mBaseLoaderListView:Lcom/airbnb/android/views/BaseLoaderListView;

    .line 12
    const v1, 0x7f080107

    const-string/jumbo v2, "field \'mEmptyResultsView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/WishlistsFragment;->mEmptyResultsView:Landroid/view/View;

    .line 14
    const v1, 0x7f08010a

    const-string/jumbo v2, "field \'mEmptyResultsButton\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/WishlistsFragment;->mEmptyResultsButton:Landroid/widget/Button;

    .line 16
    const v1, 0x7f080108

    const-string/jumbo v2, "field \'mEmptyResultsTitle\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/WishlistsFragment;->mEmptyResultsTitle:Landroid/widget/TextView;

    .line 18
    const v1, 0x7f080109

    const-string/jumbo v2, "field \'mEmptyResultsSubtitle\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/WishlistsFragment;->mEmptyResultsSubtitle:Landroid/widget/TextView;

    .line 20
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/WishlistsFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/WishlistsFragment;

    .prologue
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/airbnb/android/fragments/WishlistsFragment;->mBaseLoaderListView:Lcom/airbnb/android/views/BaseLoaderListView;

    .line 24
    iput-object v0, p0, Lcom/airbnb/android/fragments/WishlistsFragment;->mEmptyResultsView:Landroid/view/View;

    .line 25
    iput-object v0, p0, Lcom/airbnb/android/fragments/WishlistsFragment;->mEmptyResultsButton:Landroid/widget/Button;

    .line 26
    iput-object v0, p0, Lcom/airbnb/android/fragments/WishlistsFragment;->mEmptyResultsTitle:Landroid/widget/TextView;

    .line 27
    iput-object v0, p0, Lcom/airbnb/android/fragments/WishlistsFragment;->mEmptyResultsSubtitle:Landroid/widget/TextView;

    .line 28
    return-void
.end method
