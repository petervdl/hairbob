.class public Lcom/airbnb/android/fragments/BookingDetailsFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "BookingDetailsFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/BookingDetailsFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f0804df

    const-string/jumbo v2, "field \'mPriceContainer\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPriceContainer:Landroid/widget/LinearLayout;

    .line 12
    const v1, 0x7f0804e1

    const-string/jumbo v2, "field \'mSubtotalCell\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mSubtotalCell:Lcom/airbnb/android/views/GroupedCell;

    .line 14
    const v1, 0x7f0804e2

    const-string/jumbo v2, "field \'mCleaningFeeCell\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCleaningFeeCell:Lcom/airbnb/android/views/GroupedCell;

    .line 16
    const v1, 0x7f0804e3

    const-string/jumbo v2, "field \'mServiceFeeCell\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mServiceFeeCell:Lcom/airbnb/android/views/GroupedCell;

    .line 18
    const v1, 0x7f0804e4

    const-string/jumbo v2, "field \'mTaxesCell\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mTaxesCell:Lcom/airbnb/android/views/GroupedCell;

    .line 20
    const v1, 0x7f0804e6

    const-string/jumbo v2, "field \'mCouponSection\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponSection:Landroid/view/View;

    .line 22
    const v1, 0x7f0804e5

    const-string/jumbo v2, "field \'mTotalPriceCell\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mTotalPriceCell:Lcom/airbnb/android/views/GroupedCell;

    .line 24
    const v1, 0x7f0804e7

    const-string/jumbo v2, "field \'mTxtCoupon\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mTxtCoupon:Landroid/widget/TextView;

    .line 26
    const v1, 0x7f0804e8

    const-string/jumbo v2, "field \'mDeleteCouponBtn\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mDeleteCouponBtn:Landroid/widget/ImageView;

    .line 28
    const v1, 0x7f0804eb

    const-string/jumbo v2, "field \'mCouponCodeInput\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 29
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/EditText;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponCodeInput:Landroid/widget/EditText;

    .line 30
    const v1, 0x7f0804ea

    const-string/jumbo v2, "field \'mCouponValueText\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponValueText:Landroid/widget/TextView;

    .line 32
    const v1, 0x7f0804e9

    const-string/jumbo v2, "field \'mProcessCouponSpinner\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 33
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/ProgressBar;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mProcessCouponSpinner:Landroid/widget/ProgressBar;

    .line 34
    const v1, 0x7f0804dd

    const-string/jumbo v2, "field \'mChargeInfo\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 35
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mChargeInfo:Landroid/widget/TextView;

    .line 36
    const v1, 0x7f08014f

    const-string/jumbo v2, "field \'mTermsConditionsTextView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 37
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mTermsConditionsTextView:Landroid/widget/TextView;

    .line 38
    const v1, 0x7f08014b

    const-string/jumbo v2, "field \'mDateAndGuestCountView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 39
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/DateAndGuestCountView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    .line 40
    const v1, 0x7f0802b8

    const-string/jumbo v2, "field \'mPaymentChooser\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 41
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/PaymentChooser;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    .line 42
    const v1, 0x7f0804de

    const-string/jumbo v2, "field \'mPaymentChooserHeader\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 43
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooserHeader:Landroid/view/View;

    .line 44
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/BookingDetailsFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/BookingDetailsFragment;

    .prologue
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPriceContainer:Landroid/widget/LinearLayout;

    .line 48
    iput-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mSubtotalCell:Lcom/airbnb/android/views/GroupedCell;

    .line 49
    iput-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCleaningFeeCell:Lcom/airbnb/android/views/GroupedCell;

    .line 50
    iput-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mServiceFeeCell:Lcom/airbnb/android/views/GroupedCell;

    .line 51
    iput-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mTaxesCell:Lcom/airbnb/android/views/GroupedCell;

    .line 52
    iput-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponSection:Landroid/view/View;

    .line 53
    iput-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mTotalPriceCell:Lcom/airbnb/android/views/GroupedCell;

    .line 54
    iput-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mTxtCoupon:Landroid/widget/TextView;

    .line 55
    iput-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mDeleteCouponBtn:Landroid/widget/ImageView;

    .line 56
    iput-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponCodeInput:Landroid/widget/EditText;

    .line 57
    iput-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mCouponValueText:Landroid/widget/TextView;

    .line 58
    iput-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mProcessCouponSpinner:Landroid/widget/ProgressBar;

    .line 59
    iput-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mChargeInfo:Landroid/widget/TextView;

    .line 60
    iput-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mTermsConditionsTextView:Landroid/widget/TextView;

    .line 61
    iput-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mDateAndGuestCountView:Lcom/airbnb/android/views/DateAndGuestCountView;

    .line 62
    iput-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    .line 63
    iput-object v0, p0, Lcom/airbnb/android/fragments/BookingDetailsFragment;->mPaymentChooserHeader:Landroid/view/View;

    .line 64
    return-void
.end method
