.class public Lcom/airbnb/android/fragments/TripChargesFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "TripChargesFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/TripChargesFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/TripChargesFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f0802b2

    const-string/jumbo v2, "field \'mPendingTripInvoiceItemsList\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/LinearListView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/TripChargesFragment;->mPendingTripInvoiceItemsList:Lcom/airbnb/android/views/LinearListView;

    .line 12
    const v1, 0x7f0802b3

    const-string/jumbo v2, "field \'mPendingChargesTotal\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/TripChargesFragment;->mPendingChargesTotal:Landroid/widget/TextView;

    .line 14
    const v1, 0x7f0802b5

    const-string/jumbo v2, "field \'mPaidTripInvoiceItemsList\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/LinearListView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/TripChargesFragment;->mPaidTripInvoiceItemsList:Lcom/airbnb/android/views/LinearListView;

    .line 16
    const v1, 0x7f0802b6

    const-string/jumbo v2, "field \'mPaidChargesTotal\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/TripChargesFragment;->mPaidChargesTotal:Landroid/widget/TextView;

    .line 18
    const v1, 0x7f0802b7

    const-string/jumbo v2, "field \'mPaidChargesTableFooterTextView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/TripChargesFragment;->mPaidChargesTableFooterTextView:Landroid/widget/TextView;

    .line 20
    const v1, 0x7f0802b8

    const-string/jumbo v2, "field \'mPaymentChooser\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/PaymentChooser;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/TripChargesFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    .line 22
    const v1, 0x7f0802b1

    const-string/jumbo v2, "field \'mTripChargesContent\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/TripChargesFragment;->mTripChargesContent:Landroid/widget/LinearLayout;

    .line 24
    const v1, 0x7f0802b9

    const-string/jumbo v2, "field \'mFXCopyTextView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/TripChargesFragment;->mFXCopyTextView:Landroid/widget/TextView;

    .line 26
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/TripChargesFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/TripChargesFragment;

    .prologue
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mPendingTripInvoiceItemsList:Lcom/airbnb/android/views/LinearListView;

    .line 30
    iput-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mPendingChargesTotal:Landroid/widget/TextView;

    .line 31
    iput-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mPaidTripInvoiceItemsList:Lcom/airbnb/android/views/LinearListView;

    .line 32
    iput-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mPaidChargesTotal:Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mPaidChargesTableFooterTextView:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    .line 35
    iput-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mTripChargesContent:Landroid/widget/LinearLayout;

    .line 36
    iput-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mFXCopyTextView:Landroid/widget/TextView;

    .line 37
    return-void
.end method
