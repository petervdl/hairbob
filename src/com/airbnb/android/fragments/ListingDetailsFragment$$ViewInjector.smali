.class public Lcom/airbnb/android/fragments/ListingDetailsFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "ListingDetailsFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/ListingDetailsFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f0803eb

    const-string/jumbo v2, "field \'mWishListButton\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mWishListButton:Landroid/widget/ImageView;

    .line 12
    const v1, 0x7f0801d3

    const-string/jumbo v2, "field \'mFragmentRoot\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mFragmentRoot:Landroid/view/ViewGroup;

    .line 14
    const v1, 0x7f0803f9

    const-string/jumbo v2, "field \'mListingsLayout\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListingsLayout:Landroid/widget/LinearLayout;

    .line 16
    const v1, 0x7f0803fc

    const-string/jumbo v2, "field \'mListingsList\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/LinearListView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListingsList:Lcom/airbnb/android/views/LinearListView;

    .line 18
    const v1, 0x7f0803fb

    const-string/jumbo v2, "field \'mListingsHeader\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListingsHeader:Landroid/widget/TextView;

    .line 20
    const v1, 0x7f0803fd

    const-string/jumbo v2, "field \'mListingsViewAllLink\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListingsViewAllLink:Landroid/widget/TextView;

    .line 22
    const v1, 0x7f0801df

    const-string/jumbo v2, "field \'mBookItSticky\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/StickyButton;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mBookItSticky:Lcom/airbnb/android/views/StickyButton;

    .line 24
    const v1, 0x7f0803fa

    const-string/jumbo v2, "field \'mListingsTopDivider\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListingsTopDivider:Landroid/view/View;

    .line 26
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/ListingDetailsFragment;

    .prologue
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mWishListButton:Landroid/widget/ImageView;

    .line 30
    iput-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mFragmentRoot:Landroid/view/ViewGroup;

    .line 31
    iput-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListingsLayout:Landroid/widget/LinearLayout;

    .line 32
    iput-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListingsList:Lcom/airbnb/android/views/LinearListView;

    .line 33
    iput-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListingsHeader:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListingsViewAllLink:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mBookItSticky:Lcom/airbnb/android/views/StickyButton;

    .line 36
    iput-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment;->mListingsTopDivider:Landroid/view/View;

    .line 37
    return-void
.end method
