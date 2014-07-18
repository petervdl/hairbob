.class public Lcom/airbnb/android/views/PaymentChooser;
.super Landroid/widget/LinearLayout;
.source "PaymentChooser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/views/PaymentChooser$PaymentChooserListener;
    }
.end annotation


# static fields
.field private static final ARG_ADD_PAYMENT_ENABLED:Ljava/lang/String; = "add_payment_enabled"

.field private static final ARG_MASKED_WALLET:Ljava/lang/String; = "masked_wallet"

.field private static final ARG_PAYMENT_INSTRUMENTS:Ljava/lang/String; = "payment_instruments"

.field private static final ARG_TOTAL_PRICE:Ljava/lang/String; = "total_price"

.field private static final DIALOG_ERROR:Ljava/lang/String; = "error_dialog"

.field private static final DIALOG_GOOGLE_WALLET_MAX_PRICE:Ljava/lang/String; = "max_price"

.field private static final DIALOG_PAYMENT_METHODS:Ljava/lang/String; = "payment_methods"

.field public static final MAX_WALLET_PAYMENT_AMOUNT:I = 0x708

.field private static final REQUEST_ADDPAYMENT_METHOD:I = 0x2710

.field private static final REQUEST_CODE_MASKED_WALLET:I = 0x2712

.field private static final REQUEST_CODE_PAYMENT_METHOD:I = 0x2713

.field private static final REQUEST_CODE_WALLET_PRE_AUTH:I = 0x2711

.field private static final WALLET_SUPPORTED_CURRENCY:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCCLayout:Landroid/view/View;

.field mCCList:Lcom/airbnb/android/views/LinearListView;

.field mEditPayment:Landroid/widget/TextView;

.field mEditPaymentSection:Landroid/view/View;

.field private mEnableAddPayment:Z

.field private mGoogleWalletEnabled:Z

.field private mGoogleWalletPreAuthed:Z

.field private mMaskedWallet:Lcom/google/android/gms/wallet/MaskedWallet;

.field private mPaymentChooserListener:Lcom/airbnb/android/views/PaymentChooser$PaymentChooserListener;

.field private mPaymentInstruments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/PaymentInstrument;",
            ">;"
        }
    .end annotation
.end field

.field private mPaymentsRequest:Lcom/airbnb/android/requests/GetPaymentInstrumentsRequest;

.field private mReservationId:J

.field private mStateSaved:Z

.field private mTotalPrice:Ljava/lang/Integer;

.field private mWalletClient:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/airbnb/android/views/PaymentChooser;->WALLET_SUPPORTED_CURRENCY:Ljava/util/Set;

    .line 111
    sget-object v0, Lcom/airbnb/android/views/PaymentChooser;->WALLET_SUPPORTED_CURRENCY:Ljava/util/Set;

    const-string/jumbo v1, "USD"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03019c

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 118
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 120
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/views/PaymentChooser;->mTotalPrice:Ljava/lang/Integer;

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/airbnb/android/views/PaymentChooser;->mEnableAddPayment:Z

    .line 123
    invoke-direct {p0}, Lcom/airbnb/android/views/PaymentChooser;->createWalletClient()V

    .line 125
    iget-object v1, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;

    if-nez v1, :cond_2c

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;

    .line 127
    invoke-direct {p0}, Lcom/airbnb/android/views/PaymentChooser;->getPaymentMethods()V

    .line 129
    :cond_2c
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/PaymentChooser;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PaymentChooser;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/views/PaymentChooser;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PaymentChooser;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/views/PaymentChooser;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PaymentChooser;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mTotalPrice:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/views/PaymentChooser;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/views/PaymentChooser;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/airbnb/android/views/PaymentChooser;->showAllPaymentMethods()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/views/PaymentChooser;)Lcom/airbnb/android/views/PaymentChooser$PaymentChooserListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PaymentChooser;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentChooserListener:Lcom/airbnb/android/views/PaymentChooser$PaymentChooserListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/airbnb/android/views/PaymentChooser;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PaymentChooser;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/airbnb/android/views/PaymentChooser;->mGoogleWalletEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/airbnb/android/views/PaymentChooser;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PaymentChooser;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mWalletClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method private createWalletClient()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 472
    invoke-virtual {p0}, Lcom/airbnb/android/views/PaymentChooser;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v0

    .line 473
    .local v0, "cp":Lcom/airbnb/android/utils/CurrencyHelper;
    const-string/jumbo v3, "payments"

    const-string/jumbo v4, "google_wallet_enabled"

    invoke-static {v3, v4, v2}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/airbnb/android/views/PaymentChooser;->mGoogleWalletEnabled:Z

    .line 474
    iget-boolean v3, p0, Lcom/airbnb/android/views/PaymentChooser;->mGoogleWalletEnabled:Z

    sget-object v4, Lcom/airbnb/android/views/PaymentChooser;->WALLET_SUPPORTED_CURRENCY:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/airbnb/android/utils/CurrencyHelper;->getLocalCurrencyString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    and-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/airbnb/android/views/PaymentChooser;->mGoogleWalletEnabled:Z

    .line 476
    iget-boolean v3, p0, Lcom/airbnb/android/views/PaymentChooser;->mGoogleWalletEnabled:Z

    if-eqz v3, :cond_5e

    .line 477
    new-instance v3, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/views/PaymentChooser;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/android/gms/wallet/Wallet;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v5, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    invoke-direct {v5}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;-><init>()V

    invoke-virtual {v5, v1}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->setTheme(I)Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    move-result-object v5

    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->isProduction()Z

    move-result v6

    if-eqz v6, :cond_5f

    :goto_43
    invoke-virtual {v5, v1}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->setEnvironment(I)Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->build()Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/views/PaymentChooser$5;

    invoke-direct {v2, p0}, Lcom/airbnb/android/views/PaymentChooser$5;-><init>(Lcom/airbnb/android/views/PaymentChooser;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/views/PaymentChooser;->mWalletClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 492
    :cond_5e
    return-void

    :cond_5f
    move v1, v2

    .line 477
    goto :goto_43
.end method

.method private getPaymentMethods()V
    .registers 3

    .prologue
    .line 405
    new-instance v0, Lcom/airbnb/android/requests/GetPaymentInstrumentsRequest;

    new-instance v1, Lcom/airbnb/android/views/PaymentChooser$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/views/PaymentChooser$2;-><init>(Lcom/airbnb/android/views/PaymentChooser;)V

    invoke-direct {v0, v1}, Lcom/airbnb/android/requests/GetPaymentInstrumentsRequest;-><init>(Lcom/airbnb/android/requests/RequestListener;)V

    iput-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentsRequest:Lcom/airbnb/android/requests/GetPaymentInstrumentsRequest;

    .line 422
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentsRequest:Lcom/airbnb/android/requests/GetPaymentInstrumentsRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/GetPaymentInstrumentsRequest;->execute()V

    .line 423
    return-void
.end method

.method private loadMaskedGoogleWallet()V
    .registers 7

    .prologue
    .line 495
    iget-object v3, p0, Lcom/airbnb/android/views/PaymentChooser;->mMaskedWallet:Lcom/google/android/gms/wallet/MaskedWallet;

    if-nez v3, :cond_5b

    .line 496
    iget-object v3, p0, Lcom/airbnb/android/views/PaymentChooser;->mTotalPrice:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x708

    if-ge v3, v4, :cond_5c

    .line 498
    invoke-virtual {p0}, Lcom/airbnb/android/views/PaymentChooser;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v0

    .line 499
    .local v0, "currencyHelper":Lcom/airbnb/android/utils/CurrencyHelper;
    iget-object v3, p0, Lcom/airbnb/android/views/PaymentChooser;->mTotalPrice:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v3, v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ","

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, "sanitizedPrice":Ljava/lang/String;
    invoke-static {}, Lcom/google/android/gms/wallet/MaskedWalletRequest;->newBuilder()Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/airbnb/android/views/PaymentChooser;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e049f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->setMerchantName(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/airbnb/android/utils/CurrencyHelper;->getLocalCurrencyString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->setEstimatedTotalPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->setUseMinimalBillingAddress(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->build()Lcom/google/android/gms/wallet/MaskedWalletRequest;

    move-result-object v1

    .line 509
    .local v1, "mwRequest":Lcom/google/android/gms/wallet/MaskedWalletRequest;
    iget-object v3, p0, Lcom/airbnb/android/views/PaymentChooser;->mWalletClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/16 v4, 0x2712

    invoke-static {v3, v1, v4}, Lcom/google/android/gms/wallet/Wallet;->loadMaskedWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V

    .line 514
    .end local v0    # "currencyHelper":Lcom/airbnb/android/utils/CurrencyHelper;
    .end local v1    # "mwRequest":Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .end local v2    # "sanitizedPrice":Ljava/lang/String;
    :cond_5b
    :goto_5b
    return-void

    .line 511
    :cond_5c
    invoke-virtual {p0}, Lcom/airbnb/android/views/PaymentChooser;->showMaxPriceWalletError()V

    goto :goto_5b
.end method

.method private setGoogleWalletAsDefaultPaymentMethod()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 462
    new-instance v0, Lcom/airbnb/android/models/PaymentInstrument;

    invoke-direct {v0}, Lcom/airbnb/android/models/PaymentInstrument;-><init>()V

    .line 463
    .local v0, "wallet":Lcom/airbnb/android/models/PaymentInstrument;
    const-string/jumbo v1, "google"

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/PaymentInstrument;->setCardType(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0}, Lcom/airbnb/android/views/PaymentChooser;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0583

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/PaymentInstrument;->setPaymentType(Ljava/lang/String;)V

    .line 465
    iget-object v1, p0, Lcom/airbnb/android/views/PaymentChooser;->mMaskedWallet:Lcom/google/android/gms/wallet/MaskedWallet;

    invoke-virtual {v1}, Lcom/google/android/gms/wallet/MaskedWallet;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/PaymentInstrument;->setName(Ljava/lang/String;)V

    .line 466
    const-string/jumbo v1, "US"

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/PaymentInstrument;->setCountry(Ljava/lang/String;)V

    .line 467
    iget-object v1, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 468
    iget-object v1, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/PaymentInstrument;

    invoke-virtual {p0, v1}, Lcom/airbnb/android/views/PaymentChooser;->setDefaultPaymentMethod(Lcom/airbnb/android/models/PaymentInstrument;)V

    .line 469
    return-void
.end method

.method private showAllPaymentMethods()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 426
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mCCLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mCCList:Lcom/airbnb/android/views/LinearListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LinearListView;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mCCList:Lcom/airbnb/android/views/LinearListView;

    new-instance v1, Lcom/airbnb/android/adapters/PaymentCardsAdapter;

    iget-object v2, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/airbnb/android/adapters/PaymentCardsAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 431
    iget-boolean v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mEnableAddPayment:Z

    if-eqz v0, :cond_3a

    .line 432
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mEditPayment:Landroid/widget/TextView;

    const v1, 0x7f0e0040

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 437
    :goto_25
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mEditPaymentSection:Landroid/view/View;

    new-instance v1, Lcom/airbnb/android/views/PaymentChooser$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/views/PaymentChooser$3;-><init>(Lcom/airbnb/android/views/PaymentChooser;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mCCList:Lcom/airbnb/android/views/LinearListView;

    new-instance v1, Lcom/airbnb/android/views/PaymentChooser$4;

    invoke-direct {v1, p0}, Lcom/airbnb/android/views/PaymentChooser$4;-><init>(Lcom/airbnb/android/views/PaymentChooser;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LinearListView;->setOnItemClickListener(Lcom/airbnb/android/views/LinearListView$OnItemClickListener;)V

    .line 459
    return-void

    .line 434
    :cond_3a
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mEditPaymentSection:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_25
.end method


# virtual methods
.method public addPaymentMethod(Lcom/airbnb/android/models/PaymentInstrument;)V
    .registers 4
    .param p1, "newPaymentInstrument"    # Lcom/airbnb/android/models/PaymentInstrument;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 166
    invoke-virtual {p0, p1}, Lcom/airbnb/android/views/PaymentChooser;->setDefaultPaymentMethod(Lcom/airbnb/android/models/PaymentInstrument;)V

    .line 167
    return-void
.end method

.method public addPaymentMethod(Z)V
    .registers 9
    .param p1, "displayGoogleWalletOption"    # Z

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/airbnb/android/views/PaymentChooser;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentActivity;

    .line 143
    .local v2, "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    iget-boolean v4, p0, Lcom/airbnb/android/views/PaymentChooser;->mGoogleWalletEnabled:Z

    if-eqz v4, :cond_52

    if-eqz p1, :cond_52

    .line 145
    invoke-virtual {p0}, Lcom/airbnb/android/views/PaymentChooser;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-static {v4}, Lcom/airbnb/android/models/ActionItem;->make(Landroid/content/Context;)Lcom/airbnb/android/models/ActionItem;

    move-result-object v0

    .line 146
    .local v0, "actionItems":Lcom/airbnb/android/models/ActionItem;
    const v4, 0x7f020138

    const/4 v5, 0x0

    const v6, 0x7f0e0583

    invoke-virtual {v0, v4, v5, v6}, Lcom/airbnb/android/models/ActionItem;->add(III)Lcom/airbnb/android/models/ActionItem;

    .line 147
    const v4, 0x7f02012a

    const v5, 0x7f0a0014

    const v6, 0x7f0e0582

    invoke-virtual {v0, v4, v5, v6}, Lcom/airbnb/android/models/ActionItem;->add(III)Lcom/airbnb/android/models/ActionItem;

    .line 148
    const v4, 0x7f0e06d9

    invoke-virtual {v0}, Lcom/airbnb/android/models/ActionItem;->toList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->newInstance(ILjava/util/ArrayList;)Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;

    move-result-object v1

    .line 150
    .local v1, "fragment":Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f080025

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 151
    .local v3, "parentFragment":Landroid/support/v4/app/Fragment;
    const/16 v4, 0x2713

    invoke-virtual {v1, v3, v4}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 152
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, "payment_methods"

    invoke-virtual {v1, v4, v5}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 156
    .end local v0    # "actionItems":Lcom/airbnb/android/models/ActionItem;
    .end local v1    # "fragment":Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;
    .end local v3    # "parentFragment":Landroid/support/v4/app/Fragment;
    :goto_51
    return-void

    .line 154
    :cond_52
    invoke-virtual {p0}, Lcom/airbnb/android/views/PaymentChooser;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/activities/AddPaymentActivity;->intentForCreditCard(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    const/16 v5, 0x2710

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_51
.end method

.method public connectGoogleWalletClient(Z)V
    .registers 3
    .param p1, "start"    # Z

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mGoogleWalletEnabled:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mWalletClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_f

    .line 273
    if-eqz p1, :cond_10

    .line 274
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mWalletClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 279
    :cond_f
    :goto_f
    return-void

    .line 276
    :cond_10
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mWalletClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_f
.end method

.method public createPaymentChooserStateBundle()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 288
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/airbnb/android/views/PaymentChooser;->mStateSaved:Z

    .line 289
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 290
    .local v0, "state":Landroid/os/Bundle;
    const-string/jumbo v1, "total_price"

    iget-object v2, p0, Lcom/airbnb/android/views/PaymentChooser;->mTotalPrice:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    const-string/jumbo v1, "masked_wallet"

    iget-object v2, p0, Lcom/airbnb/android/views/PaymentChooser;->mMaskedWallet:Lcom/google/android/gms/wallet/MaskedWallet;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 292
    const-string/jumbo v1, "payment_instruments"

    iget-object v2, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 293
    const-string/jumbo v1, "add_payment_enabled"

    iget-boolean v2, p0, Lcom/airbnb/android/views/PaymentChooser;->mEnableAddPayment:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 294
    return-object v0
.end method

.method public getCountryForSelectedPaymentInstrument()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0}, Lcom/airbnb/android/views/PaymentChooser;->getSelectedPaymentInstrument()Lcom/airbnb/android/models/PaymentInstrument;

    move-result-object v1

    if-nez v1, :cond_8

    .line 348
    :cond_7
    :goto_7
    return-object v0

    .line 345
    :cond_8
    invoke-virtual {p0}, Lcom/airbnb/android/views/PaymentChooser;->getSelectedPaymentInstrument()Lcom/airbnb/android/models/PaymentInstrument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/PaymentInstrument;->isFullPaymentInstrument()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 346
    invoke-virtual {p0}, Lcom/airbnb/android/views/PaymentChooser;->getSelectedPaymentInstrument()Lcom/airbnb/android/models/PaymentInstrument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/PaymentInstrument;->getCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public getGoogleMaskedWallet()Lcom/google/android/gms/wallet/MaskedWallet;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mMaskedWallet:Lcom/google/android/gms/wallet/MaskedWallet;

    return-object v0
.end method

.method public getGoogleWalletClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mWalletClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public getPaymentInstruments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/PaymentInstrument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedPaymentInstrument()Lcom/airbnb/android/models/PaymentInstrument;
    .registers 3

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/airbnb/android/views/PaymentChooser;->hasPaymentInstruments()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/PaymentInstrument;

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public hasPaymentInstruments()Z
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 353
    invoke-virtual {p0}, Lcom/airbnb/android/views/PaymentChooser;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    .line 355
    .local v1, "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    packed-switch p1, :pswitch_data_be

    .line 402
    :cond_a
    :goto_a
    return-void

    .line 357
    :pswitch_b
    if-ne p2, v5, :cond_a

    .line 358
    const-string/jumbo v4, "add_cc"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/PaymentInstrument;

    .line 359
    .local v2, "newInstrument":Lcom/airbnb/android/models/PaymentInstrument;
    invoke-virtual {p0, v2}, Lcom/airbnb/android/views/PaymentChooser;->addPaymentMethod(Lcom/airbnb/android/models/PaymentInstrument;)V

    .line 360
    iget-object v4, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentChooserListener:Lcom/airbnb/android/views/PaymentChooser$PaymentChooserListener;

    invoke-interface {v4}, Lcom/airbnb/android/views/PaymentChooser$PaymentChooserListener;->onAddedPaymentMethod()V

    goto :goto_a

    .line 364
    .end local v2    # "newInstrument":Lcom/airbnb/android/models/PaymentInstrument;
    :pswitch_1f
    if-ne p2, v5, :cond_a

    .line 365
    const-string/jumbo v4, "com.google.android.gm.wallet.EXTRA_IS_USER_PREAUTHORIZED"

    const/4 v5, 0x0

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/airbnb/android/views/PaymentChooser;->mGoogleWalletPreAuthed:Z

    .line 366
    iget-boolean v4, p0, Lcom/airbnb/android/views/PaymentChooser;->mGoogleWalletPreAuthed:Z

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lcom/airbnb/android/views/PaymentChooser;->mGoogleWalletEnabled:Z

    if-eqz v4, :cond_a

    .line 367
    invoke-direct {p0}, Lcom/airbnb/android/views/PaymentChooser;->loadMaskedGoogleWallet()V

    goto :goto_a

    .line 372
    :pswitch_37
    if-ne p2, v5, :cond_4d

    .line 373
    const-string/jumbo v4, "com.google.android.gms.wallet.EXTRA_MASKED_WALLET"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object v4, p0, Lcom/airbnb/android/views/PaymentChooser;->mMaskedWallet:Lcom/google/android/gms/wallet/MaskedWallet;

    .line 374
    invoke-direct {p0}, Lcom/airbnb/android/views/PaymentChooser;->setGoogleWalletAsDefaultPaymentMethod()V

    .line 375
    iget-object v4, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentChooserListener:Lcom/airbnb/android/views/PaymentChooser$PaymentChooserListener;

    invoke-interface {v4}, Lcom/airbnb/android/views/PaymentChooser$PaymentChooserListener;->onAddedPaymentMethod()V

    goto :goto_a

    .line 376
    :cond_4d
    if-eqz p2, :cond_a

    iget-boolean v4, p0, Lcom/airbnb/android/views/PaymentChooser;->mStateSaved:Z

    if-nez v4, :cond_a

    .line 377
    const v4, 0x7f0e01ac

    const v5, 0x7f0e01b8

    const v6, 0x7f0e0563

    invoke-static {v4, v5, v6}, Lcom/airbnb/android/fragments/ZenDialog;->createSingleButtonDialog(III)Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string/jumbo v6, "error_dialog"

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_a

    .line 381
    :pswitch_6b
    if-ne p2, v5, :cond_a

    .line 382
    const-string/jumbo v4, "action_item_id"

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 383
    .local v0, "actionItemId":I
    if-ltz v0, :cond_a

    .line 384
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    .line 385
    .local v3, "trackingParams":Lcom/airbnb/android/utils/Strap;
    iget-wide v4, p0, Lcom/airbnb/android/views/PaymentChooser;->mReservationId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_8a

    .line 386
    const-string/jumbo v4, "RESERVATION_ID"

    iget-wide v5, p0, Lcom/airbnb/android/views/PaymentChooser;->mReservationId:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    .line 388
    :cond_8a
    packed-switch v0, :pswitch_data_ca

    goto/16 :goto_a

    .line 390
    :pswitch_8f
    const-string/jumbo v4, "PAYMENT_TYPE"

    const-string/jumbo v5, "CREDIT_CARD"

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackBookItPaymentPopupClick(Lcom/airbnb/android/utils/Strap;)V

    .line 391
    invoke-virtual {p0}, Lcom/airbnb/android/views/PaymentChooser;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/activities/AddPaymentActivity;->intentForCreditCard(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    const/16 v5, 0x2710

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_a

    .line 394
    :pswitch_ab
    const-string/jumbo v4, "PAYMENT_TYPE"

    const-string/jumbo v5, "GOOGLE_WALLET"

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackBookItPaymentPopupClick(Lcom/airbnb/android/utils/Strap;)V

    .line 395
    invoke-direct {p0}, Lcom/airbnb/android/views/PaymentChooser;->loadMaskedGoogleWallet()V

    goto/16 :goto_a

    .line 355
    nop

    :pswitch_data_be
    .packed-switch 0x2710
        :pswitch_b
        :pswitch_1f
        :pswitch_37
        :pswitch_6b
    .end packed-switch

    .line 388
    :pswitch_data_ca
    .packed-switch 0x7f0e0582
        :pswitch_8f
        :pswitch_ab
    .end packed-switch
.end method

.method public restorePaymentChooserState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 305
    iput-boolean v1, p0, Lcom/airbnb/android/views/PaymentChooser;->mStateSaved:Z

    .line 306
    const-string/jumbo v0, "total_price"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mTotalPrice:Ljava/lang/Integer;

    .line 307
    const-string/jumbo v0, "masked_wallet"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mMaskedWallet:Lcom/google/android/gms/wallet/MaskedWallet;

    .line 308
    const-string/jumbo v0, "add_payment_enabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mEnableAddPayment:Z

    .line 311
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentsRequest:Lcom/airbnb/android/requests/GetPaymentInstrumentsRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/GetPaymentInstrumentsRequest;->cancelIfRunning()V

    .line 312
    const-string/jumbo v0, "payment_instruments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;

    .line 313
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    .line 314
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/PaymentInstrument;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/PaymentChooser;->setDefaultPaymentMethod(Lcom/airbnb/android/models/PaymentInstrument;)V

    .line 316
    :cond_47
    return-void
.end method

.method public setAddPaymentEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 334
    iput-boolean p1, p0, Lcom/airbnb/android/views/PaymentChooser;->mEnableAddPayment:Z

    .line 335
    return-void
.end method

.method public setDefaultPaymentMethod(Lcom/airbnb/android/models/PaymentInstrument;)V
    .registers 10
    .param p1, "paymentInstrument"    # Lcom/airbnb/android/models/PaymentInstrument;

    .prologue
    const/16 v4, 0x8

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 204
    iget-object v3, p0, Lcom/airbnb/android/views/PaymentChooser;->mCCList:Lcom/airbnb/android/views/LinearListView;

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/LinearListView;->setVisibility(I)V

    .line 205
    iget-object v3, p0, Lcom/airbnb/android/views/PaymentChooser;->mCCLayout:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 206
    invoke-virtual {p0, v5}, Lcom/airbnb/android/views/PaymentChooser;->setVisibility(I)V

    .line 207
    const v3, 0x7f08037f

    invoke-static {p0, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 208
    .local v2, "type":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/airbnb/android/models/PaymentInstrument;->getCardType()Lcom/airbnb/android/models/PaymentInstrument$CardType;

    move-result-object v3

    iget v3, v3, Lcom/airbnb/android/models/PaymentInstrument$CardType;->mName:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 209
    const v3, 0x7f080381

    invoke-static {p0, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 210
    .local v0, "card":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/airbnb/android/models/PaymentInstrument;->getCardType()Lcom/airbnb/android/models/PaymentInstrument$CardType;

    move-result-object v3

    sget-object v6, Lcom/airbnb/android/models/PaymentInstrument$CardType;->GoogleWallet:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    if-eq v3, v6, :cond_82

    invoke-virtual {p1}, Lcom/airbnb/android/models/PaymentInstrument;->getLastFourDigits()Ljava/lang/String;

    move-result-object v3

    :goto_38
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    const v3, 0x7f080380

    invoke-static {p0, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 212
    .local v1, "cardImg":Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/airbnb/android/models/PaymentInstrument;->getCardType()Lcom/airbnb/android/models/PaymentInstrument$CardType;

    move-result-object v3

    iget v3, v3, Lcom/airbnb/android/models/PaymentInstrument$CardType;->mIcon:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    iget-object v6, p0, Lcom/airbnb/android/views/PaymentChooser;->mEditPayment:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v7, :cond_86

    const v3, 0x7f0e0040

    :goto_5a
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    .line 216
    iget-object v6, p0, Lcom/airbnb/android/views/PaymentChooser;->mEditPaymentSection:Landroid/view/View;

    iget-object v3, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v7, :cond_6b

    iget-boolean v3, p0, Lcom/airbnb/android/views/PaymentChooser;->mEnableAddPayment:Z

    if-nez v3, :cond_73

    :cond_6b
    iget-object v3, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentInstruments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v7, :cond_8a

    :cond_73
    move v3, v5

    :goto_74
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v3, p0, Lcom/airbnb/android/views/PaymentChooser;->mEditPaymentSection:Landroid/view/View;

    new-instance v4, Lcom/airbnb/android/views/PaymentChooser$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/views/PaymentChooser$1;-><init>(Lcom/airbnb/android/views/PaymentChooser;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    return-void

    .line 210
    .end local v1    # "cardImg":Landroid/widget/ImageView;
    :cond_82
    const-string/jumbo v3, ""

    goto :goto_38

    .line 215
    .restart local v1    # "cardImg":Landroid/widget/ImageView;
    :cond_86
    const v3, 0x7f0e0178

    goto :goto_5a

    :cond_8a
    move v3, v4

    .line 216
    goto :goto_74
.end method

.method public setPaymentChooserListener(Lcom/airbnb/android/views/PaymentChooser$PaymentChooserListener;)V
    .registers 2
    .param p1, "paymentChooserListener"    # Lcom/airbnb/android/views/PaymentChooser$PaymentChooserListener;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/airbnb/android/views/PaymentChooser;->mPaymentChooserListener:Lcom/airbnb/android/views/PaymentChooser$PaymentChooserListener;

    .line 247
    return-void
.end method

.method public setReservationId(J)V
    .registers 3
    .param p1, "reservationId"    # J

    .prologue
    .line 261
    iput-wide p1, p0, Lcom/airbnb/android/views/PaymentChooser;->mReservationId:J

    .line 262
    return-void
.end method

.method public setTotalPrice(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "totalPrice"    # Ljava/lang/Integer;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/airbnb/android/views/PaymentChooser;->mTotalPrice:Ljava/lang/Integer;

    .line 255
    return-void
.end method

.method public showMaxPriceWalletError()V
    .registers 5

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/airbnb/android/views/PaymentChooser;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .line 324
    .local v0, "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    const v1, 0x7f0e01ac

    const v2, 0x7f0e0808

    const v3, 0x7f0e0563

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/fragments/ZenDialog;->createSingleButtonDialog(III)Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "max_price"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 326
    return-void
.end method
