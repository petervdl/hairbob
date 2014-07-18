.class public Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;
.super Lcom/airbnb/android/fragments/ZenDialog;
.source "TripInvoiceItemDialogFragment.java"


# static fields
.field private static final DISPUTE_CHARGE_REQUEST_CODE:I = 0x3e9

.field public static final DISPUTE_DIALOG_CANCEL_REQUEST_CODE:I = 0x3eb

.field public static final DISPUTE_DIALOG_REQUEST_CODE:I = 0x3ea

.field private static final TAG:Ljava/lang/String;

.field private static final TRIP_INVOICE_ITEM_EXTRA:Ljava/lang/String; = "invoice_item"


# instance fields
.field mDisputeCheckEmailTextView:Landroid/widget/TextView;

.field mDisputeContainer:Landroid/widget/LinearLayout;

.field mDisputeStatusContainer:Landroid/widget/LinearLayout;

.field mDisputeStatusTextView:Landroid/widget/TextView;

.field mPriceLabelTextView:Landroid/widget/TextView;

.field private mTripInvoiceItem:Lcom/airbnb/android/models/TripInvoiceItem;

.field mViewDisputeDivider:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ZenDialog;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getDisputeStatusText(Landroid/content/Context;Lcom/airbnb/android/models/TripInvoiceItem;I)Ljava/lang/String;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tripInvoiceItem"    # Lcom/airbnb/android/models/TripInvoiceItem;
    .param p3, "stringResource"    # I

    .prologue
    .line 120
    new-instance v2, Ljava/text/SimpleDateFormat;

    const v3, 0x7f0e0496

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 121
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {p2}, Lcom/airbnb/android/models/TripInvoiceItem;->getLatestDisputeAttachment()Lcom/airbnb/android/models/TripInvoiceItemAttachment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/TripInvoiceItemAttachment;->getCreatedAt()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "disputeStatusDate":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p1, p3, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "disputeStatusText":Ljava/lang/String;
    return-object v1
.end method

.method public static newInstance(Lcom/airbnb/android/models/TripInvoiceItem;)Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;
    .registers 4
    .param p0, "tripInvoiceItem"    # Lcom/airbnb/android/models/TripInvoiceItem;

    .prologue
    .line 47
    new-instance v1, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    new-instance v2, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;

    invoke-direct {v2}, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;-><init>()V

    invoke-direct {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;-><init>(Lcom/airbnb/android/fragments/ZenDialog;)V

    invoke-virtual {p0}, Lcom/airbnb/android/models/TripInvoiceItem;->getTripProduct()Lcom/airbnb/android/models/TripProduct;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/TripProduct;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withCustomLayout()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSwipeToDismiss()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;

    .line 49
    .local v0, "dialogFragment":Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;
    invoke-virtual {v0}, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "invoice_item"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 50
    return-object v0
.end method

.method private setDisputeStatusText(Landroid/view/View;)V
    .registers 7
    .param p1, "content"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 128
    iget-object v2, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mTripInvoiceItem:Lcom/airbnb/android/models/TripInvoiceItem;

    invoke-virtual {v2}, Lcom/airbnb/android/models/TripInvoiceItem;->getCurrentDisputeStatus()Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    move-result-object v0

    .line 129
    .local v0, "disputeStatus":Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;
    iget-object v2, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mTripInvoiceItem:Lcom/airbnb/android/models/TripInvoiceItem;

    invoke-virtual {v2}, Lcom/airbnb/android/models/TripInvoiceItem;->isCredit()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 130
    iget-object v2, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mViewDisputeDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v2, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mDisputeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    iget-object v2, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mDisputeStatusContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    :cond_20
    :goto_20
    return-void

    .line 133
    :cond_21
    sget-object v2, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;->NONE:Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    if-ne v0, v2, :cond_30

    .line 134
    iget-object v2, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mDisputeStatusContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    iget-object v2, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mDisputeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_20

    .line 136
    :cond_30
    sget-object v2, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;->DISPUTED:Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    if-ne v0, v2, :cond_61

    .line 137
    iget-object v2, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mDisputeStatusContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    iget-object v2, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mDisputeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mTripInvoiceItem:Lcom/airbnb/android/models/TripInvoiceItem;

    const v4, 0x7f0e00ca

    invoke-direct {p0, v2, v3, v4}, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->getDisputeStatusText(Landroid/content/Context;Lcom/airbnb/android/models/TripInvoiceItem;I)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "disputeStatusText":Ljava/lang/String;
    iget-object v2, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mDisputeStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v2, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mDisputeCheckEmailTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e005b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20

    .line 143
    .end local v1    # "disputeStatusText":Ljava/lang/String;
    :cond_61
    sget-object v2, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;->REJECTED:Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    if-ne v0, v2, :cond_20

    .line 144
    iget-object v2, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mDisputeStatusContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    iget-object v2, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mDisputeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mTripInvoiceItem:Lcom/airbnb/android/models/TripInvoiceItem;

    const v4, 0x7f0e0173

    invoke-direct {p0, v2, v3, v4}, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->getDisputeStatusText(Landroid/content/Context;Lcom/airbnb/android/models/TripInvoiceItem;I)Ljava/lang/String;

    move-result-object v1

    .line 148
    .restart local v1    # "disputeStatusText":Ljava/lang/String;
    iget-object v2, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mDisputeStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v2, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mDisputeCheckEmailTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e05be

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 96
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1c

    .line 97
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/airbnb/android/analytics/TripChargesAnalytics;->trackTripChargesInvoiceItemDisputePrompt(Z)V

    .line 99
    new-instance v0, Lcom/airbnb/android/requests/DisputeTripInvoiceItemRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mTripInvoiceItem:Lcom/airbnb/android/models/TripInvoiceItem;

    invoke-virtual {v1}, Lcom/airbnb/android/models/TripInvoiceItem;->getId()J

    move-result-wide v1

    new-instance v3, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment$2;-><init>(Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/requests/DisputeTripInvoiceItemRequest;-><init>(JLcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/DisputeTripInvoiceItemRequest;->execute()V

    .line 116
    :goto_1b
    return-void

    .line 111
    :cond_1c
    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_25

    .line 112
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/airbnb/android/analytics/TripChargesAnalytics;->trackTripChargesInvoiceItemDisputePrompt(Z)V

    goto :goto_1b

    .line 114
    :cond_25
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/ZenDialog;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1b
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 15
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/ZenDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    .line 57
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "invoice_item"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/models/TripInvoiceItem;

    iput-object v5, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mTripInvoiceItem:Lcom/airbnb/android/models/TripInvoiceItem;

    .line 58
    const v5, 0x7f030050

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 60
    .local v1, "content":Landroid/view/View;
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 62
    const v5, 0x7f0800e6

    invoke-static {v1, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment$1;

    invoke-direct {v6, p0}, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    new-instance v0, Lcom/airbnb/android/adapters/TripInvoiceItemAttachmentAdapter;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f030169

    iget-object v7, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mTripInvoiceItem:Lcom/airbnb/android/models/TripInvoiceItem;

    iget-object v8, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mTripInvoiceItem:Lcom/airbnb/android/models/TripInvoiceItem;

    invoke-virtual {v8}, Lcom/airbnb/android/models/TripInvoiceItem;->getTripInvoiceItemAttachments()Ljava/util/List;

    move-result-object v8

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/airbnb/android/adapters/TripInvoiceItemAttachmentAdapter;-><init>(Landroid/content/Context;ILcom/airbnb/android/models/TripInvoiceItem;Ljava/util/List;)V

    .line 74
    .local v0, "adapter":Lcom/airbnb/android/adapters/TripInvoiceItemAttachmentAdapter;
    const v5, 0x7f0800e1

    invoke-static {v1, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/views/LinearListView;

    invoke-virtual {v5, v0}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mTripInvoiceItem:Lcom/airbnb/android/models/TripInvoiceItem;

    invoke-virtual {v6}, Lcom/airbnb/android/models/TripInvoiceItem;->getConsumerFeeNative()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7, v9}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "serviceFee":Ljava/lang/String;
    iget-object v5, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mTripInvoiceItem:Lcom/airbnb/android/models/TripInvoiceItem;

    invoke-virtual {v5}, Lcom/airbnb/android/models/TripInvoiceItem;->isCredit()Z

    move-result v5

    if-nez v5, :cond_a0

    .line 78
    iget-object v5, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mPriceLabelTextView:Landroid/widget/TextView;

    const v6, 0x7f0e0799

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v3, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :goto_7a
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mTripInvoiceItem:Lcom/airbnb/android/models/TripInvoiceItem;

    invoke-virtual {v6}, Lcom/airbnb/android/models/TripInvoiceItem;->getConsumerTotalAmountNative()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7, v9}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "price":Ljava/lang/String;
    const v5, 0x7f0800e3

    invoke-static {v1, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->setDisputeStatusText(Landroid/view/View;)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->setCustomView(Landroid/view/View;)V

    .line 91
    return-object v4

    .line 80
    .end local v2    # "price":Ljava/lang/String;
    :cond_a0
    iget-object v5, p0, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->mPriceLabelTextView:Landroid/widget/TextView;

    const v6, 0x7f0e0798

    invoke-virtual {p0, v6}, Lcom/airbnb/android/fragments/TripInvoiceItemDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7a
.end method
