.class public Lcom/airbnb/android/fragments/ListingCalendarFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "ListingCalendarFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/ListingCalendarFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/ListingCalendarFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f080054

    const-string/jumbo v2, "field \'mLoaderFrame\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/LoaderFrame;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    .line 12
    const v1, 0x7f0801d2

    const-string/jumbo v2, "field \'mSpaceView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/LinearListView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mSpaceView:Lcom/airbnb/android/views/LinearListView;

    .line 14
    const v1, 0x7f0801d1

    const-string/jumbo v2, "field \'mEditListingButton\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/StickyButton;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mEditListingButton:Lcom/airbnb/android/views/StickyButton;

    .line 16
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/ListingCalendarFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/ListingCalendarFragment;

    .prologue
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    .line 20
    iput-object v0, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mSpaceView:Lcom/airbnb/android/views/LinearListView;

    .line 21
    iput-object v0, p0, Lcom/airbnb/android/fragments/ListingCalendarFragment;->mEditListingButton:Lcom/airbnb/android/views/StickyButton;

    .line 22
    return-void
.end method
