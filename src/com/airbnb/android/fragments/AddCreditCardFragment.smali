.class public Lcom/airbnb/android/fragments/AddCreditCardFragment;
.super Landroid/support/v4/app/Fragment;
.source "AddCreditCardFragment.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/OnBackListener;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final ARG_CITY_STATE:Ljava/lang/String; = "city_state"

.field private static final ARG_COUNTRY_CODE:Ljava/lang/String; = "country_code"

.field private static final ARG_COUNTRY_NAME:Ljava/lang/String; = "country_name"

.field private static final DIALOG_FRAGMENT:Ljava/lang/String; = "dialog"

.field public static final EXTRA_ADD_CC:Ljava/lang/String; = "add_cc"

.field private static final REQUEST_CODE_BACK_CONTINUE:I = 0xd

.field private static final REQUEST_CODE_BACK_QUIT:I = 0xc

.field private static final REQUEST_CODE_COUNTRY_PICKER:I = 0xa


# instance fields
.field private mCCInput:Landroid/widget/EditText;

.field private mCCTextView:Landroid/widget/TextView;

.field private mCCTextWatcher:Landroid/text/TextWatcher;

.field private mCCVInput:Landroid/widget/EditText;

.field private mCCVTextView:Landroid/widget/TextView;

.field private mCCVTextWatcher:Landroid/text/TextWatcher;

.field private mCardCCVLocationImageView:Landroid/widget/ImageView;

.field private mCardType:Lcom/airbnb/android/models/PaymentInstrument$CardType;

.field private mCardTypeImageView:Landroid/widget/ImageView;

.field private mChangedText:Z

.field private mCityStateText:Ljava/lang/String;

.field private mCityStateTextView:Landroid/widget/TextView;

.field private mCountryCode:Ljava/lang/String;

.field private mCountryName:Ljava/lang/String;

.field private mExpiryMonthInput:Landroid/widget/EditText;

.field private mExpiryMonthTextWatcher:Landroid/text/TextWatcher;

.field private mExpiryYearInput:Landroid/widget/EditText;

.field private mExpiryYearTextWatcher:Landroid/text/TextWatcher;

.field private mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

.field private mPostalCodeInput:Landroid/widget/EditText;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSelectedCountryText:Landroid/widget/TextView;

.field private mSubmitButton:Landroid/widget/Button;

.field private mSubmitEnabled:Z

.field private mZipCodeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 512
    new-instance v0, Lcom/airbnb/android/fragments/AddCreditCardFragment$19;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment$19;-><init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCTextWatcher:Landroid/text/TextWatcher;

    .line 557
    new-instance v0, Lcom/airbnb/android/fragments/AddCreditCardFragment$20;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment$20;-><init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryMonthTextWatcher:Landroid/text/TextWatcher;

    .line 598
    new-instance v0, Lcom/airbnb/android/fragments/AddCreditCardFragment$21;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment$21;-><init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryYearTextWatcher:Landroid/text/TextWatcher;

    .line 618
    new-instance v0, Lcom/airbnb/android/fragments/AddCreditCardFragment$22;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment$22;-><init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCVTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->showCountrySelector()V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mPostalCodeInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mSubmitButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->onSubmitButtonClick()V

    return-void
.end method

.method static synthetic access$1200(Lcom/airbnb/android/fragments/AddCreditCardFragment;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->isCCVCorrectLength(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCVTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCityStateText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/airbnb/android/fragments/AddCreditCardFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCityStateText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCityStateTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/airbnb/android/fragments/AddCreditCardFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/airbnb/android/fragments/AddCreditCardFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCountryName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->setCountry()V

    return-void
.end method

.method static synthetic access$1900(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Lcom/airbnb/android/utils/LocationHelper;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/airbnb/android/fragments/AddCreditCardFragment;Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->getCountryFromLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mChangedText:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/airbnb/android/fragments/AddCreditCardFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mChangedText:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Lcom/airbnb/android/models/PaymentInstrument$CardType;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardType:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/airbnb/android/fragments/AddCreditCardFragment;Lcom/airbnb/android/models/PaymentInstrument$CardType;)Lcom/airbnb/android/models/PaymentInstrument$CardType;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/PaymentInstrument$CardType;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardType:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardTypeImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardCCVLocationImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/airbnb/android/fragments/AddCreditCardFragment;Landroid/text/Editable;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;
    .param p1, "x1"    # Landroid/text/Editable;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->formatCreditCard(Landroid/text/Editable;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->checkForInformationComplete()V

    return-void
.end method

.method static synthetic access$2700(Lcom/airbnb/android/fragments/AddCreditCardFragment;Landroid/text/Editable;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;
    .param p1, "x1"    # Landroid/text/Editable;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->handleExpiryMonthInput(Landroid/text/Editable;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/airbnb/android/fragments/AddCreditCardFragment;Landroid/text/Editable;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;
    .param p1, "x1"    # Landroid/text/Editable;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->handleCCVInput(Landroid/text/Editable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryMonthInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCVInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/AddCreditCardFragment;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->geocodePostal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mZipCodeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/AddCreditCardFragment;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->checkCCHash(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddCreditCardFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryYearInput:Landroid/widget/EditText;

    return-object v0
.end method

.method private checkCCHash(Ljava/lang/String;)Z
    .registers 3
    .param p1, "ccNumber"    # Ljava/lang/String;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardType:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    invoke-static {p1, v0}, Lcom/airbnb/android/models/PaymentInstrument$CardType;->isValidCCNumber(Ljava/lang/String;Lcom/airbnb/android/models/PaymentInstrument$CardType;)Z

    move-result v0

    return v0
.end method

.method private checkForInformationComplete()V
    .registers 4

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 438
    iput-boolean v2, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mSubmitEnabled:Z

    .line 439
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_87

    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_87

    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->checkCCHash(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCVInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_87

    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCVInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->isCCVCorrectLength(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryMonthInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_87

    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryMonthInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ne v0, v1, :cond_87

    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryYearInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_87

    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryYearInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ne v0, v1, :cond_87

    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mSubmitEnabled:Z

    .line 446
    :cond_87
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mSubmitButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mSubmitEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 447
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mSubmitEnabled:Z

    if-eqz v0, :cond_9d

    .line 448
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBottom()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 450
    :cond_9d
    return-void
.end method

.method private connectLocationClient()V
    .registers 4

    .prologue
    .line 466
    new-instance v0, Lcom/airbnb/android/utils/LocationHelper;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/AddCreditCardFragment$18;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment$18;-><init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/utils/LocationHelper;-><init>(Landroid/content/Context;Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

    .line 482
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

    invoke-virtual {v0}, Lcom/airbnb/android/utils/LocationHelper;->connectLocationClient()V

    .line 483
    return-void
.end method

.method private formatCreditCard(Landroid/text/Editable;)V
    .registers 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 551
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardType:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    if-eqz v0, :cond_19

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mChangedText:Z

    .line 553
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardType:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/models/PaymentInstrument$CardType;->formatCC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 555
    :cond_19
    return-void
.end method

.method private geocodePostal(Ljava/lang/String;)V
    .registers 3
    .param p1, "postal"    # Ljava/lang/String;

    .prologue
    .line 381
    new-instance v0, Lcom/airbnb/android/fragments/AddCreditCardFragment$16;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/android/fragments/AddCreditCardFragment$16;-><init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/airbnb/android/utils/GeocoderHelper;->getFromLocationName(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ExternalStringRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/requests/ExternalStringRequest;->execute()V

    .line 402
    return-void
.end method

.method private getCountryFromLatLng(Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 3
    .param p1, "latlng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 405
    new-instance v0, Lcom/airbnb/android/fragments/AddCreditCardFragment$17;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment$17;-><init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    invoke-static {p1, v0}, Lcom/airbnb/android/utils/GeocoderHelper;->getFromLocation(Lcom/google/android/gms/maps/model/LatLng;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ExternalStringRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/requests/ExternalStringRequest;->execute()V

    .line 427
    return-void
.end method

.method private handleCCVInput(Landroid/text/Editable;)V
    .registers 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 641
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardType:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardType:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    sget-object v1, Lcom/airbnb/android/models/PaymentInstrument$CardType;->Unknown:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    if-ne v0, v1, :cond_b

    .line 648
    :cond_a
    :goto_a
    return-void

    .line 645
    :cond_b
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardType:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    iget v0, v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->mCCVLength:I

    if-lez v0, :cond_a

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardType:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    iget v1, v1, Lcom/airbnb/android/models/PaymentInstrument$CardType;->mCCVLength:I

    if-le v0, v1, :cond_a

    .line 646
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const-string/jumbo v2, ""

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_a
.end method

.method private handleExpiryMonthInput(Landroid/text/Editable;)V
    .registers 8
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 580
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-ne v2, v3, :cond_30

    .line 581
    invoke-interface {p1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 582
    .local v0, "firstChar":C
    const/16 v2, 0x31

    if-le v0, v2, :cond_2f

    .line 583
    iget-object v2, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryMonthInput:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 584
    iget-object v2, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryYearInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 596
    .end local v0    # "firstChar":C
    :cond_2f
    :goto_2f
    return-void

    .line 586
    :cond_30
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-ne v2, v5, :cond_2f

    .line 587
    invoke-interface {p1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 588
    .restart local v0    # "firstChar":C
    invoke-interface {p1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    .line 589
    .local v1, "secondChar":C
    const/16 v2, 0x30

    if-eq v0, v2, :cond_4d

    const/16 v2, 0x32

    if-le v1, v2, :cond_4d

    .line 590
    const-string/jumbo v2, ""

    invoke-interface {p1, v3, v5, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_2f

    .line 592
    :cond_4d
    iget-object v2, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryYearInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_2f
.end method

.method private isCCVCorrectLength(Ljava/lang/String;)Z
    .registers 5
    .param p1, "ccv"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 453
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardType:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardType:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    sget-object v2, Lcom/airbnb/android/models/PaymentInstrument$CardType;->Unknown:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    if-ne v1, v2, :cond_c

    .line 456
    :cond_b
    :goto_b
    return v0

    :cond_c
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardType:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    iget v1, v1, Lcom/airbnb/android/models/PaymentInstrument$CardType;->mCCVLength:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_b

    const/4 v0, 0x0

    goto :goto_b
.end method

.method private markIncompleteItems()V
    .registers 4

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 294
    .local v0, "red":I
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryYearInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 295
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryYearInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 298
    :cond_20
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryMonthInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 299
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryMonthInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 302
    :cond_35
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mPostalCodeInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 303
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mZipCodeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 306
    :cond_4a
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 307
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    :cond_5f
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCVInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 311
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCVTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 314
    :cond_74
    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/AddCreditCardFragment;
    .registers 1

    .prologue
    .line 82
    new-instance v0, Lcom/airbnb/android/fragments/AddCreditCardFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;-><init>()V

    .line 83
    .local v0, "f":Lcom/airbnb/android/fragments/AddCreditCardFragment;
    return-object v0
.end method

.method private onSubmitButtonClick()V
    .registers 12

    .prologue
    .line 317
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "COUNTRY"

    iget-object v2, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "POSTAL_CODE"

    iget-object v2, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mPostalCodeInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "CARD_TYPE"

    iget-object v2, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardType:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    invoke-virtual {v2}, Lcom/airbnb/android/models/PaymentInstrument$CardType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v8

    .line 320
    .local v8, "params":Lcom/airbnb/android/utils/Strap;
    invoke-static {v8}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackAddPaymentDoneButtonClick(Lcom/airbnb/android/utils/Strap;)V

    .line 322
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 323
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v9, "add_cc"

    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardType:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCountryCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mPostalCodeInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryMonthInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryYearInput:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCInput:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, " "

    const-string/jumbo v10, ""

    invoke-virtual {v5, v6, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCVInput:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/models/PaymentInstrument;->forCC(Lcom/airbnb/android/models/PaymentInstrument$CardType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/models/PaymentInstrument;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v7}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 326
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 327
    return-void
.end method

.method private setCountry()V
    .registers 4

    .prologue
    .line 356
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 357
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mSelectedCountryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCountryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mSelectedCountryText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 359
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mPostalCodeInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 360
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mPostalCodeInput:Landroid/widget/EditText;

    const-string/jumbo v0, "US"

    iget-object v2, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    const/4 v0, 0x2

    :goto_32
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 361
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mZipCodeTextView:Landroid/widget/TextView;

    const-string/jumbo v0, "US"

    iget-object v2, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const v0, 0x7f0e0866

    :goto_45
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 363
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->checkForInformationComplete()V

    .line 365
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/airbnb/android/fragments/AddCreditCardFragment$15;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment$15;-><init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 378
    :goto_58
    return-void

    .line 360
    :cond_59
    const/4 v0, 0x1

    goto :goto_32

    .line 361
    :cond_5b
    const v0, 0x7f0e05c0

    goto :goto_45

    .line 375
    :cond_5f
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mSelectedCountryText:Landroid/widget/TextView;

    const v1, 0x7f0e06d4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 376
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mSelectedCountryText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_58
.end method

.method private showCountrySelector()V
    .registers 4

    .prologue
    .line 430
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackAddPaymentSelectCountryClick(Lcom/airbnb/android/utils/Strap;)V

    .line 432
    const v1, 0x7f0e050e

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCountryCode:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    move-result-object v0

    .line 433
    .local v0, "f":Lcom/airbnb/android/fragments/CountryPickerDialogFragment;
    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 434
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 435
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 487
    packed-switch p1, :pswitch_data_3e

    .line 509
    :cond_3
    :goto_3
    :pswitch_3
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 510
    return-void

    .line 489
    :pswitch_7
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 490
    const-string/jumbo v1, "country"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/NameCodeItem;

    .line 491
    .local v0, "nameCodeItem":Lcom/airbnb/android/models/NameCodeItem;
    invoke-virtual {v0}, Lcom/airbnb/android/models/NameCodeItem;->getCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCountryCode:Ljava/lang/String;

    .line 492
    invoke-virtual {v0}, Lcom/airbnb/android/models/NameCodeItem;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCountryName:Ljava/lang/String;

    .line 494
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 495
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->setCountry()V

    goto :goto_3

    .line 500
    .end local v0    # "nameCodeItem":Lcom/airbnb/android/models/NameCodeItem;
    :pswitch_29
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->markIncompleteItems()V

    goto :goto_3

    .line 503
    :pswitch_2d
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 504
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_3

    .line 487
    :pswitch_data_3e
    .packed-switch 0xa
        :pswitch_7
        :pswitch_3
        :pswitch_2d
        :pswitch_29
    .end packed-switch
.end method

.method public onBackPressed()Z
    .registers 7

    .prologue
    .line 652
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->checkCCHash(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 653
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e003f

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e00b0

    const/16 v2, 0xd

    const v3, 0x7f0e05f5

    const/16 v4, 0xc

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withDualButton(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 657
    const/4 v0, 0x1

    .line 659
    :goto_39
    return v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    const-string/jumbo v0, "AddCreditCardFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "AddCreditCardFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_f} :catch_33

    .line 88
    :goto_f
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    if-eqz p1, :cond_2f

    .line 91
    const-string/jumbo v0, "country_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCountryCode:Ljava/lang/String;

    .line 92
    const-string/jumbo v0, "country_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCountryName:Ljava/lang/String;

    .line 93
    const-string/jumbo v0, "city_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCityStateText:Ljava/lang/String;

    .line 95
    :cond_2f
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_33
    move-exception v0

    const/4 v0, 0x0

    :try_start_35
    const-string/jumbo v1, "AddCreditCardFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_3c} :catch_33

    goto :goto_f
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13

    .prologue
    :try_start_0
    iget-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v7, "AddCreditCardFragment#onCreateView"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_185

    .line 99
    :goto_9
    const v6, 0x7f030067

    const/4 v7, 0x0

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 101
    .local v5, "v":Landroid/view/View;
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->connectLocationClient()V

    .line 103
    const v6, 0x7f0804cc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 104
    .local v2, "countrySelection":Landroid/view/View;
    new-instance v6, Lcom/airbnb/android/fragments/AddCreditCardFragment$1;

    invoke-direct {v6, p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment$1;-><init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v6, 0x7f0804ce

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 113
    .local v4, "postalSelection":Landroid/view/View;
    new-instance v6, Lcom/airbnb/android/fragments/AddCreditCardFragment$2;

    invoke-direct {v6, p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment$2;-><init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v6, 0x7f0804d3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, "ccSelection":Landroid/view/View;
    new-instance v6, Lcom/airbnb/android/fragments/AddCreditCardFragment$3;

    invoke-direct {v6, p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment$3;-><init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v6, 0x7f0804d6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 131
    .local v3, "expirySelection":Landroid/view/View;
    new-instance v6, Lcom/airbnb/android/fragments/AddCreditCardFragment$4;

    invoke-direct {v6, p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment$4;-><init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v6, 0x7f0804da

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 140
    .local v1, "ccvSelection":Landroid/view/View;
    new-instance v6, Lcom/airbnb/android/fragments/AddCreditCardFragment$5;

    invoke-direct {v6, p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment$5;-><init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v6, 0x7f0804cd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mSelectedCountryText:Landroid/widget/TextView;

    .line 149
    const v6, 0x7f0804d2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCityStateTextView:Landroid/widget/TextView;

    .line 150
    const v6, 0x7f080380

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardTypeImageView:Landroid/widget/ImageView;

    .line 151
    const v6, 0x7f0804dc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCardCCVLocationImageView:Landroid/widget/ImageView;

    .line 152
    const v6, 0x7f0804d0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mPostalCodeInput:Landroid/widget/EditText;

    .line 153
    const v6, 0x7f0804d1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCInput:Landroid/widget/EditText;

    .line 154
    const v6, 0x7f0804d5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryMonthInput:Landroid/widget/EditText;

    .line 155
    const v6, 0x7f0804d8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryYearInput:Landroid/widget/EditText;

    .line 156
    const v6, 0x7f0804d9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCVInput:Landroid/widget/EditText;

    .line 157
    const v6, 0x7f08012d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mSubmitButton:Landroid/widget/Button;

    .line 158
    const v6, 0x7f0804cf

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mZipCodeTextView:Landroid/widget/TextView;

    .line 159
    const v6, 0x7f0804d4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCTextView:Landroid/widget/TextView;

    .line 160
    const v6, 0x7f0804db

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCVTextView:Landroid/widget/TextView;

    .line 161
    const v6, 0x7f08012b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 163
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->setCountry()V

    .line 165
    iget-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCityStateText:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10b

    .line 166
    iget-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCityStateTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCityStateText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_10b
    iget-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mPostalCodeInput:Landroid/widget/EditText;

    new-instance v7, Lcom/airbnb/android/fragments/AddCreditCardFragment$6;

    invoke-direct {v7, p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment$6;-><init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 184
    iget-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mPostalCodeInput:Landroid/widget/EditText;

    new-instance v7, Lcom/airbnb/android/fragments/AddCreditCardFragment$7;

    invoke-direct {v7, p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment$7;-><init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 194
    iget-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCInput:Landroid/widget/EditText;

    new-instance v7, Lcom/airbnb/android/fragments/AddCreditCardFragment$8;

    invoke-direct {v7, p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment$8;-><init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 210
    iget-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryMonthInput:Landroid/widget/EditText;

    new-instance v7, Lcom/airbnb/android/fragments/AddCreditCardFragment$9;

    invoke-direct {v7, p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment$9;-><init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 222
    iget-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryMonthInput:Landroid/widget/EditText;

    new-instance v7, Lcom/airbnb/android/fragments/AddCreditCardFragment$10;

    invoke-direct {v7, p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment$10;-><init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 236
    iget-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryYearInput:Landroid/widget/EditText;

    new-instance v7, Lcom/airbnb/android/fragments/AddCreditCardFragment$11;

    invoke-direct {v7, p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment$11;-><init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 250
    iget-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCVInput:Landroid/widget/EditText;

    new-instance v7, Lcom/airbnb/android/fragments/AddCreditCardFragment$12;

    invoke-direct {v7, p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment$12;-><init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 260
    iget-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCVInput:Landroid/widget/EditText;

    new-instance v7, Lcom/airbnb/android/fragments/AddCreditCardFragment$13;

    invoke-direct {v7, p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment$13;-><init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 276
    iget-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mSubmitButton:Landroid/widget/Button;

    new-instance v7, Lcom/airbnb/android/fragments/AddCreditCardFragment$14;

    invoke-direct {v7, p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment$14;-><init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCInput:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 285
    iget-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryMonthInput:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryMonthTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 286
    iget-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCVInput:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCVTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 287
    iget-object v6, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryYearInput:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryYearTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 289
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v5

    .line 4294967295
    .end local v0    # "ccSelection":Landroid/view/View;
    .end local v1    # "ccvSelection":Landroid/view/View;
    .end local v2    # "countrySelection":Landroid/view/View;
    .end local v3    # "expirySelection":Landroid/view/View;
    .end local v4    # "postalSelection":Landroid/view/View;
    .end local v5    # "v":Landroid/view/View;
    :catch_185
    move-exception v6

    const/4 v6, 0x0

    :try_start_187
    const-string/jumbo v7, "AddCreditCardFragment#onCreateView"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_18e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_187 .. :try_end_18e} :catch_185

    goto/16 :goto_9
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 347
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 349
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 350
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryMonthInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryMonthTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 351
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryYearInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mExpiryYearTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 352
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCVInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCCVTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 353
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 340
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 342
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 343
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 331
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 333
    const-string/jumbo v0, "country_name"

    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCountryName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string/jumbo v0, "country_code"

    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string/jumbo v0, "city_state"

    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCityStateText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method
