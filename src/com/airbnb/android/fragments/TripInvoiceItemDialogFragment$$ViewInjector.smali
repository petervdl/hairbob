.class public Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "TripInvoiceItemDialogFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f0800e4

    const-string/jumbo v2, "field \'mViewDisputeDivider\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mViewDisputeDivider:Landroid/view/View;

    .line 12
    const v1, 0x7f0800e5

    const-string/jumbo v2, "field \'mDisputeContainer\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mDisputeContainer:Landroid/widget/LinearLayout;

    .line 14
    const v1, 0x7f0800e7

    const-string/jumbo v2, "field \'mDisputeStatusContainer\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mDisputeStatusContainer:Landroid/widget/LinearLayout;

    .line 16
    const v1, 0x7f0800e8

    const-string/jumbo v2, "field \'mDisputeStatusTextView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mDisputeStatusTextView:Landroid/widget/TextView;

    .line 18
    const v1, 0x7f0800e9

    const-string/jumbo v2, "field \'mDisputeCheckEmailTextView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mDisputeCheckEmailTextView:Landroid/widget/TextView;

    .line 20
    const v1, 0x7f0800e2

    const-string/jumbo v2, "field \'mPriceLabelTextView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mPriceLabelTextView:Landroid/widget/TextView;

    .line 22
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;

    .prologue
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mViewDisputeDivider:Landroid/view/View;

    .line 26
    iput-object v0, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mDisputeContainer:Landroid/widget/LinearLayout;

    .line 27
    iput-object v0, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mDisputeStatusContainer:Landroid/widget/LinearLayout;

    .line 28
    iput-object v0, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mDisputeStatusTextView:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mDisputeCheckEmailTextView:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mPriceLabelTextView:Landroid/widget/TextView;

    .line 31
    return-void
.end method
