.class public Lcom/airbnb/android/fragments/SendSpecialOfferFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "SendSpecialOfferFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/SendSpecialOfferFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/SendSpecialOfferFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f080296

    const-string/jumbo v2, "field \'mPriceEdit\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/PriceEditText;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mPriceEdit:Lcom/airbnb/android/views/PriceEditText;

    .line 12
    const v1, 0x7f080297

    const-string/jumbo v2, "field \'mTotalPriceSummary\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mTotalPriceSummary:Landroid/widget/TextView;

    .line 14
    const v1, 0x7f080298

    const-string/jumbo v2, "field \'mSendButton\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mSendButton:Landroid/widget/TextView;

    .line 16
    const v1, 0x7f080426

    const-string/jumbo v2, "field \'mListingInfoContainer\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/RelativeLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListingInfoContainer:Landroid/widget/RelativeLayout;

    .line 18
    const v1, 0x7f08014b

    const-string/jumbo v2, "field \'mDateAndGuestCountView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/DateAndGuestCountView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    .line 20
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    .prologue
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mPriceEdit:Lcom/airbnb/android/views/PriceEditText;

    .line 24
    iput-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mTotalPriceSummary:Landroid/widget/TextView;

    .line 25
    iput-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mSendButton:Landroid/widget/TextView;

    .line 26
    iput-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListingInfoContainer:Landroid/widget/RelativeLayout;

    .line 27
    iput-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    .line 28
    return-void
.end method
