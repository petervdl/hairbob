.class public Lcom/airbnb/android/fragments/TripChargesFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "TripChargesFragment.java"


# static fields
.field private static final ARG_PAYMENT_CHOOSER:Ljava/lang/String; = "payment_chooser"

.field private static final DIALOG_ERROR:Ljava/lang/String; = "dialog_error"

.field private static final EXTRA_RESERVATION:Ljava/lang/String; = "reservation"


# instance fields
.field private mChangePaymentRequest:Lcom/airbnb/android/requests/ChangeTripInvoicePaymentInstrumentRequest;

.field mFXCopyTextView:Landroid/widget/TextView;

.field mPaidChargesTableFooterTextView:Landroid/widget/TextView;

.field mPaidChargesTotal:Landroid/widget/TextView;

.field mPaidTripInvoiceItemsList:Lcom/airbnb/android/views/LinearListView;

.field mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

.field mPendingChargesTotal:Landroid/widget/TextView;

.field mPendingTripInvoiceItemsList:Lcom/airbnb/android/views/LinearListView;

.field private mReservation:Lcom/airbnb/android/models/Reservation;

.field mTripChargesContent:Landroid/widget/LinearLayout;

.field private mTripInvoice:Lcom/airbnb/android/models/TripInvoice;

.field private mTripInvoiceRequest:Lcom/airbnb/android/requests/TripInvoiceRequest;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/TripChargesFragment;)Lcom/airbnb/android/models/TripInvoice;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/TripChargesFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mTripInvoice:Lcom/airbnb/android/models/TripInvoice;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/TripChargesFragment;Lcom/airbnb/android/models/TripInvoice;)Lcom/airbnb/android/models/TripInvoice;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/TripChargesFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/TripInvoice;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mTripInvoice:Lcom/airbnb/android/models/TripInvoice;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/TripChargesFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/TripChargesFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/airbnb/android/fragments/TripChargesFragment;->selectInvoicePaymentInstrument()V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/TripChargesFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/TripChargesFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/airbnb/android/fragments/TripChargesFragment;->setupTripInvoiceItemsListViews()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/TripChargesFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/TripChargesFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/airbnb/android/fragments/TripChargesFragment;->setFXCopy()V

    return-void
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/TripChargesFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/TripChargesFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/airbnb/android/fragments/TripChargesFragment;->updateTripChargesPaymentInstrument()V

    return-void
.end method

.method public static newInstance(Lcom/airbnb/android/models/Reservation;)Lcom/airbnb/android/fragments/TripChargesFragment;
    .registers 4
    .param p0, "reservation"    # Lcom/airbnb/android/models/Reservation;

    .prologue
    .line 59
    new-instance v1, Lcom/airbnb/android/fragments/TripChargesFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/TripChargesFragment;-><init>()V

    .line 60
    .local v1, "f":Lcom/airbnb/android/fragments/TripChargesFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "reservation"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 62
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/TripChargesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    return-object v1
.end method

.method private selectInvoicePaymentInstrument()V
    .registers 8

    .prologue
    .line 194
    iget-object v3, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-virtual {v3}, Lcom/airbnb/android/views/PaymentChooser;->getPaymentInstruments()Ljava/util/List;

    move-result-object v2

    .line 196
    .local v2, "paymentInstruments":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/PaymentInstrument;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/PaymentInstrument;

    .line 197
    .local v1, "paymentInstrument":Lcom/airbnb/android/models/PaymentInstrument;
    iget-object v3, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mTripInvoice:Lcom/airbnb/android/models/TripInvoice;

    if-eqz v3, :cond_a

    invoke-virtual {v1}, Lcom/airbnb/android/models/PaymentInstrument;->getId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mTripInvoice:Lcom/airbnb/android/models/TripInvoice;

    invoke-virtual {v5}, Lcom/airbnb/android/models/TripInvoice;->getPaymentInstrumentId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 198
    iget-object v3, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-virtual {v3, v1}, Lcom/airbnb/android/views/PaymentChooser;->setDefaultPaymentMethod(Lcom/airbnb/android/models/PaymentInstrument;)V

    goto :goto_a

    .line 201
    .end local v1    # "paymentInstrument":Lcom/airbnb/android/models/PaymentInstrument;
    :cond_2e
    return-void
.end method

.method private setFXCopy()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 247
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TripChargesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mTripInvoice:Lcom/airbnb/android/models/TripInvoice;

    invoke-virtual {v3}, Lcom/airbnb/android/models/TripInvoice;->getConsumerTotalNative()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4, v6}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "invoiceTotalPrice":Ljava/lang/String;
    const v2, 0x7f0e0795

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mTripInvoice:Lcom/airbnb/android/models/TripInvoice;

    invoke-virtual {v4}, Lcom/airbnb/android/models/TripInvoice;->getConsumerCurrency()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/airbnb/android/fragments/TripChargesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "fxCopy":Ljava/lang/String;
    iget-object v2, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mFXCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v2, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mFXCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    return-void
.end method

.method private setTableFooterText()V
    .registers 9

    .prologue
    .line 218
    iget-object v5, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getSmartLocation()Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "location":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TripChargesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0e013d

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 221
    .local v2, "format":Ljava/text/SimpleDateFormat;
    iget-object v5, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Reservation;->getStartDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "checkInDate":Ljava/lang/String;
    iget-object v5, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Reservation;->getEndDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "checkOutDate":Ljava/lang/String;
    const v5, 0x7f0e0796

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v7, 0x2

    aput-object v1, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/airbnb/android/fragments/TripChargesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "infoText":Ljava/lang/String;
    iget-object v5, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mPaidChargesTableFooterTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    return-void
.end method

.method private setupInvoice()V
    .registers 5

    .prologue
    .line 108
    new-instance v0, Lcom/airbnb/android/requests/TripInvoiceRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Reservation;->getTripInvoice()Lcom/airbnb/android/models/TripInvoice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/TripInvoice;->getId()J

    move-result-wide v1

    new-instance v3, Lcom/airbnb/android/fragments/TripChargesFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/TripChargesFragment$1;-><init>(Lcom/airbnb/android/fragments/TripChargesFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/requests/TripInvoiceRequest;-><init>(JLcom/airbnb/android/requests/RequestListener;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mTripInvoiceRequest:Lcom/airbnb/android/requests/TripInvoiceRequest;

    .line 126
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mTripInvoiceRequest:Lcom/airbnb/android/requests/TripInvoiceRequest;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/TripInvoiceRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 127
    return-void
.end method

.method private setupListView(Lcom/airbnb/android/views/LinearListView;Ljava/util/List;)Lcom/airbnb/android/adapters/TripInvoiceItemsAdapter;
    .registers 6
    .param p1, "linearListView"    # Lcom/airbnb/android/views/LinearListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/views/LinearListView;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/TripInvoiceItem;",
            ">;)",
            "Lcom/airbnb/android/adapters/TripInvoiceItemsAdapter;"
        }
    .end annotation

    .prologue
    .line 228
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/TripInvoiceItem;>;"
    new-instance v0, Lcom/airbnb/android/adapters/TripInvoiceItemsAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TripChargesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030168

    invoke-direct {v0, v1, v2, p2}, Lcom/airbnb/android/adapters/TripInvoiceItemsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 229
    .local v0, "adapter":Lcom/airbnb/android/adapters/TripInvoiceItemsAdapter;
    invoke-virtual {p1, v0}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 230
    new-instance v1, Lcom/airbnb/android/fragments/TripChargesFragment$4;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/TripChargesFragment$4;-><init>(Lcom/airbnb/android/fragments/TripChargesFragment;)V

    invoke-virtual {p1, v1}, Lcom/airbnb/android/views/LinearListView;->setOnItemClickListener(Lcom/airbnb/android/views/LinearListView$OnItemClickListener;)V

    .line 242
    return-object v0
.end method

.method private setupPaymentChooser(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/PaymentChooser;->setTotalPrice(Ljava/lang/Integer;)V

    .line 131
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/PaymentChooser;->setAddPaymentEnabled(Z)V

    .line 132
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    new-instance v1, Lcom/airbnb/android/fragments/TripChargesFragment$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/TripChargesFragment$2;-><init>(Lcom/airbnb/android/fragments/TripChargesFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/PaymentChooser;->setPaymentChooserListener(Lcom/airbnb/android/views/PaymentChooser$PaymentChooserListener;)V

    .line 163
    if-eqz p1, :cond_20

    .line 165
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/PaymentChooser;->restorePaymentChooserState(Landroid/os/Bundle;)V

    .line 167
    :cond_20
    return-void
.end method

.method private setupTripInvoiceItemsListViews()V
    .registers 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mPendingTripInvoiceItemsList:Lcom/airbnb/android/views/LinearListView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mTripInvoice:Lcom/airbnb/android/models/TripInvoice;

    invoke-virtual {v1}, Lcom/airbnb/android/models/TripInvoice;->getPendingTripInvoiceItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/fragments/TripChargesFragment;->setupListView(Lcom/airbnb/android/views/LinearListView;Ljava/util/List;)Lcom/airbnb/android/adapters/TripInvoiceItemsAdapter;

    .line 213
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mPaidTripInvoiceItemsList:Lcom/airbnb/android/views/LinearListView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mTripInvoice:Lcom/airbnb/android/models/TripInvoice;

    invoke-virtual {v1}, Lcom/airbnb/android/models/TripInvoice;->getPaidTripInvoiceItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/fragments/TripChargesFragment;->setupListView(Lcom/airbnb/android/views/LinearListView;Ljava/util/List;)Lcom/airbnb/android/adapters/TripInvoiceItemsAdapter;

    .line 214
    invoke-direct {p0}, Lcom/airbnb/android/fragments/TripChargesFragment;->updateTotals()V

    .line 215
    return-void
.end method

.method private updateTotals()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 204
    iget-object v2, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mTripInvoice:Lcom/airbnb/android/models/TripInvoice;

    invoke-virtual {v2}, Lcom/airbnb/android/models/TripInvoice;->getConsumerBalanceNative()F

    move-result v1

    .line 205
    .local v1, "pendingChargesTotal":F
    iget-object v2, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mTripInvoice:Lcom/airbnb/android/models/TripInvoice;

    invoke-virtual {v2}, Lcom/airbnb/android/models/TripInvoice;->getConsumerTotalNative()F

    move-result v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mTripInvoice:Lcom/airbnb/android/models/TripInvoice;

    invoke-virtual {v3}, Lcom/airbnb/android/models/TripInvoice;->getConsumerBalanceNative()F

    move-result v3

    sub-float v0, v2, v3

    .line 207
    .local v0, "paidChargesTotal":F
    iget-object v2, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mPendingChargesTotal:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TripChargesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v3

    float-to-double v4, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v2, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mPaidChargesTotal:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TripChargesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v3

    float-to-double v4, v0

    invoke-virtual {v3, v4, v5, v6}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    return-void
.end method

.method private updateTripChargesPaymentInstrument()V
    .registers 7

    .prologue
    .line 170
    invoke-static {}, Lcom/airbnb/android/analytics/TripChargesAnalytics;->trackTripChargesInvoiceChangePaymentInstrument()V

    .line 172
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mChangePaymentRequest:Lcom/airbnb/android/requests/ChangeTripInvoicePaymentInstrumentRequest;

    if-eqz v0, :cond_c

    .line 173
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mChangePaymentRequest:Lcom/airbnb/android/requests/ChangeTripInvoicePaymentInstrumentRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/ChangeTripInvoicePaymentInstrumentRequest;->cancelIfRunning()V

    .line 176
    :cond_c
    new-instance v0, Lcom/airbnb/android/requests/ChangeTripInvoicePaymentInstrumentRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mTripInvoice:Lcom/airbnb/android/models/TripInvoice;

    invoke-virtual {v1}, Lcom/airbnb/android/models/TripInvoice;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-virtual {v3}, Lcom/airbnb/android/views/PaymentChooser;->getSelectedPaymentInstrument()Lcom/airbnb/android/models/PaymentInstrument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/PaymentInstrument;->getId()J

    move-result-wide v3

    new-instance v5, Lcom/airbnb/android/fragments/TripChargesFragment$3;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/TripChargesFragment$3;-><init>(Lcom/airbnb/android/fragments/TripChargesFragment;)V

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/requests/ChangeTripInvoicePaymentInstrumentRequest;-><init>(JJLcom/airbnb/android/requests/RequestListener;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mChangePaymentRequest:Lcom/airbnb/android/requests/ChangeTripInvoicePaymentInstrumentRequest;

    .line 190
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mChangePaymentRequest:Lcom/airbnb/android/requests/ChangeTripInvoicePaymentInstrumentRequest;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/ChangeTripInvoicePaymentInstrumentRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 191
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/android/views/PaymentChooser;->onActivityResult(IILandroid/content/Intent;)V

    .line 94
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_32

    .line 95
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1a

    .line 96
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TripChargesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/TripChargesActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/TripChargesActivity;->showLoader(Z)V

    .line 97
    invoke-direct {p0}, Lcom/airbnb/android/fragments/TripChargesFragment;->setupInvoice()V

    .line 104
    :goto_19
    return-void

    .line 99
    :cond_1a
    const v0, 0x7f0e01ac

    const v1, 0x7f0e01b3

    const v2, 0x7f0e0563

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->createSingleButtonDialog(III)Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TripChargesFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog_error"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_19

    .line 102
    :cond_32
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/AirFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_19
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    const v1, 0x7f0300f3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 72
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TripChargesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "reservation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Reservation;

    iput-object v1, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 73
    if-eqz p3, :cond_37

    const-string/jumbo v1, "payment_chooser"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    :goto_23
    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/TripChargesFragment;->setupPaymentChooser(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TripChargesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/activities/TripChargesActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/airbnb/android/activities/TripChargesActivity;->showLoader(Z)V

    .line 76
    invoke-direct {p0}, Lcom/airbnb/android/fragments/TripChargesFragment;->setupInvoice()V

    .line 78
    invoke-direct {p0}, Lcom/airbnb/android/fragments/TripChargesFragment;->setTableFooterText()V

    .line 80
    return-object v0

    .line 73
    :cond_37
    const/4 v1, 0x0

    goto :goto_23
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 87
    const-string/jumbo v0, "payment_chooser"

    iget-object v1, p0, Lcom/airbnb/android/fragments/TripChargesFragment;->mPaymentChooser:Lcom/airbnb/android/views/PaymentChooser;

    invoke-virtual {v1}, Lcom/airbnb/android/views/PaymentChooser;->createPaymentChooserStateBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 88
    return-void
.end method
