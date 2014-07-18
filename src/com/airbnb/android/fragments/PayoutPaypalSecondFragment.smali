.class public Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "PayoutPaypalSecondFragment.java"


# static fields
.field private static ARG_HAS_PAYPAL:Ljava/lang/String; = null

.field private static final DIALOG_REQ_SUBMIT_PAYPAL:I = 0xeb

.field private static PRESSED_GO_TO_PAYPAL:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mCurrencySpinner:Landroid/widget/Spinner;

.field private mGoBackToPaypalFirstFrag:Z

.field private mHasPaypal:Z

.field private mPaypalEmailField:Landroid/widget/EditText;

.field private mPaypalRequest:Lcom/airbnb/android/requests/PayoutPaypalRequest;

.field private mWentToPaypal:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->TAG:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "has_paypal"

    sput-object v0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->ARG_HAS_PAYPAL:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "went_to_paypal"

    sput-object v0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->PRESSED_GO_TO_PAYPAL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mHasPaypal:Z

    return v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mPaypalEmailField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;)Landroid/widget/Spinner;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mCurrencySpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->isCurrencySelected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getSelectedCurrency()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mWentToPaypal:Z

    return p1
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;)Lcom/airbnb/android/requests/PayoutPaypalRequest;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mPaypalRequest:Lcom/airbnb/android/requests/PayoutPaypalRequest;

    return-object v0
.end method

.method private getCurrenciesForSpinnerAdapter()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/activities/PayoutActivity;

    invoke-virtual {v4}, Lcom/airbnb/android/activities/PayoutActivity;->getSupportedCurrencies()Ljava/util/List;

    move-result-object v3

    .line 193
    .local v3, "supportedCurrencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e06d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "selectCurrencyString":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    .line 195
    .local v0, "array":[Ljava/lang/String;
    const/4 v4, 0x0

    aput-object v2, v0, v4

    .line 196
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_34

    .line 197
    add-int/lit8 v5, v1, 0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v5

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 199
    :cond_34
    return-object v0
.end method

.method private getSelectedCurrency()Ljava/lang/String;
    .registers 4

    .prologue
    .line 206
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mCurrencySpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_1c

    .line 207
    invoke-direct {p0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->isCurrencySelected()Z

    move-result v1

    if-nez v1, :cond_13

    .line 208
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "currency was not selected yet"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_13
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mCurrencySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 215
    :goto_1b
    return-object v1

    .line 213
    :cond_1c
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/activities/PayoutActivity;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/PayoutActivity;->getSupportedCurrencies()Ljava/util/List;

    move-result-object v0

    .line 214
    .local v0, "supportedCurrencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_35

    .line 215
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1b

    .line 217
    :cond_35
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "if there was more than 1 currency, it should come from the spinner"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isCurrencySelected()Z
    .registers 4

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/activities/PayoutActivity;

    invoke-virtual {v2}, Lcom/airbnb/android/activities/PayoutActivity;->getSupportedCurrencies()Ljava/util/List;

    move-result-object v1

    .line 225
    .local v1, "supportedCurrencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mCurrencySpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 226
    .local v0, "selectedSpinnerValue":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static newInstance(Z)Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;
    .registers 4
    .param p0, "hasPayPal"    # Z

    .prologue
    .line 52
    new-instance v1, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;-><init>()V

    .line 53
    .local v1, "f":Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "args":Landroid/os/Bundle;
    sget-object v2, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->ARG_HAS_PAYPAL:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    return-object v1
.end method

.method private submitPaypalInfo()V
    .registers 8

    .prologue
    .line 137
    const v0, 0x7f0e059d

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->newInstance(II)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v6

    .line 139
    .local v6, "progressDialog":Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    new-instance v0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$2;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$2;-><init>(Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;)V

    invoke-virtual {v6, v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->setProgressDialogListener(Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;)V

    .line 156
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v6, v1}, Lcom/airbnb/android/fragments/AirDialogFragments;->showDialog(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/DialogFragment;Landroid/support/v4/app/Fragment;)V

    .line 158
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mPaypalEmailField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "paypalEmail":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/PayoutActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/PayoutActivity;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "countryCode":Ljava/lang/String;
    invoke-direct {p0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getSelectedCurrency()Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "currencyCode":Ljava/lang/String;
    new-instance v0, Lcom/airbnb/android/requests/PayoutPaypalRequest;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/activities/PayoutActivity;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/PayoutActivity;->getTrustParameters()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    new-instance v5, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$3;

    invoke-direct {v5, p0, v6}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$3;-><init>(Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/requests/PayoutPaypalRequest;-><init>(Lcom/airbnb/android/utils/Strap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mPaypalRequest:Lcom/airbnb/android/requests/PayoutPaypalRequest;

    .line 185
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mPaypalRequest:Lcom/airbnb/android/requests/PayoutPaypalRequest;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/PayoutPaypalRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 186
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 231
    packed-switch p1, :pswitch_data_c

    .line 237
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/AirFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 239
    :goto_6
    return-void

    .line 233
    :pswitch_7
    invoke-direct {p0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->submitPaypalInfo()V

    goto :goto_6

    .line 231
    nop

    :pswitch_data_c
    .packed-switch 0xeb
        :pswitch_7
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 62
    iput-boolean v4, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mWentToPaypal:Z

    .line 63
    if-eqz p3, :cond_d

    .line 64
    sget-object v2, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->PRESSED_GO_TO_PAYPAL:Ljava/lang/String;

    invoke-virtual {p3, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mGoBackToPaypalFirstFrag:Z

    .line 67
    :cond_d
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->ARG_HAS_PAYPAL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mHasPaypal:Z

    .line 68
    iget-boolean v2, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mHasPaypal:Z

    if-eqz v2, :cond_80

    const v2, 0x7f0300d0

    :goto_20
    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 70
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f08024b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mPaypalEmailField:Landroid/widget/EditText;

    .line 72
    iget-boolean v2, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mHasPaypal:Z

    if-eqz v2, :cond_6a

    .line 73
    const v2, 0x7f08024c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mCurrencySpinner:Landroid/widget/Spinner;

    .line 75
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/activities/PayoutActivity;

    invoke-virtual {v2}, Lcom/airbnb/android/activities/PayoutActivity;->getSupportedCurrencies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_84

    .line 76
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {p0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getCurrenciesForSpinnerAdapter()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 78
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 79
    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mCurrencySpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 86
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_6a
    :goto_6a
    const v2, 0x7f080191

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mButton:Landroid/widget/Button;

    .line 87
    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mButton:Landroid/widget/Button;

    new-instance v3, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$1;-><init>(Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-object v1

    .line 68
    .end local v1    # "v":Landroid/view/View;
    :cond_80
    const v2, 0x7f0300cf

    goto :goto_20

    .line 81
    .restart local v1    # "v":Landroid/view/View;
    :cond_84
    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mCurrencySpinner:Landroid/widget/Spinner;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 82
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mCurrencySpinner:Landroid/widget/Spinner;

    goto :goto_6a
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 124
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onPause()V

    .line 125
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 126
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onResume()V

    .line 117
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mGoBackToPaypalFirstFrag:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mWentToPaypal:Z

    if-eqz v0, :cond_12

    .line 118
    :cond_b
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 120
    :cond_12
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 131
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mWentToPaypal:Z

    if-eqz v0, :cond_d

    .line 132
    sget-object v0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->PRESSED_GO_TO_PAYPAL:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    :cond_d
    return-void
.end method
