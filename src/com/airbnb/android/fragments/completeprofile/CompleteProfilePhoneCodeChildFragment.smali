.class public Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;
.super Landroid/support/v4/app/Fragment;
.source "CompleteProfilePhoneCodeChildFragment.java"

# interfaces
.implements Lcom/airbnb/android/analytics/VerifiedIdAnalytics$VerifiedIdStrapper;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final ARG_PHONE_NUMBER_TO_VERIFY:Ljava/lang/String; = "phone_number_to_verify"

.field private static final DIALOG_ERROR_TAG:Ljava/lang/String; = "error_dialog_tag"

.field private static final REQUEST_CODE_CANCEL:I = 0x38c

.field private static final REQUEST_CODE_TRY_AGAIN:I = 0x38d

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackButton:Landroid/widget/Button;

.field private mCodeEditText:Landroid/widget/EditText;

.field private mEnterButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-class v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;)Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->getParent()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->mCodeEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->sendPhoneVerificationCode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->mEnterButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->updateUserPhone(Ljava/lang/String;)V

    return-void
.end method

.method private getParent()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;
    .registers 2

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;
    .registers 4
    .param p0, "phoneNumberToVerify"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v1, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;-><init>()V

    .line 61
    .local v1, "fragment":Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "phone_number_to_verify"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->setArguments(Landroid/os/Bundle;)V

    .line 64
    return-object v1
.end method

.method private requestPhoneCodeIfNeeded()V
    .registers 9

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "phone_number_to_verify"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "phoneNumberToVerify":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 116
    :try_start_12
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v4

    .line 117
    .local v4, "phoneUtil":Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 118
    .local v2, "phoneNum":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->getParent()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->setPhoneNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 119
    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v4, v2, v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "formattedPhoneNum":Ljava/lang/String;
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->getParent()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;

    move-result-object v5

    new-instance v6, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$3;

    invoke-direct {v6, p0, v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$3;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;Ljava/lang/String;)V

    invoke-virtual {v5, v1, v6}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->updateAccountPhoneNumber(Ljava/lang/String;Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment$PhoneAccountListener;)V
    :try_end_3b
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_12 .. :try_end_3b} :catch_3c

    .line 143
    .end local v1    # "formattedPhoneNum":Ljava/lang/String;
    .end local v2    # "phoneNum":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v4    # "phoneUtil":Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    :cond_3b
    :goto_3b
    return-void

    .line 139
    :catch_3c
    move-exception v0

    .line 140
    .local v0, "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    sget-object v5, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Cannot parse phone number to verify: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method

.method private sendPhoneVerificationCode(Ljava/lang/String;)V
    .registers 5
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/LoaderFrame$LoaderFrameDisplay;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/airbnb/android/views/LoaderFrame$LoaderFrameDisplay;->displayLoaderFrame(Z)V

    .line 203
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->mEnterButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 204
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 206
    new-instance v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$7;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$7;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;)V

    .line 239
    .local v0, "listener":Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment$PhoneAccountListener;
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->getParent()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->updateAccountPhoneCode(Ljava/lang/String;Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment$PhoneAccountListener;)V

    .line 240
    return-void
.end method

.method private setupCodeEditText()V
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->mCodeEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$4;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$4;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 172
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->mCodeEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$5;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$5;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 187
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->mCodeEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$6;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$6;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 199
    return-void
.end method

.method private updateUserPhone(Ljava/lang/String;)V
    .registers 5
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 253
    .local v0, "currentUser":Lcom/airbnb/android/models/User;
    invoke-virtual {v0, p1}, Lcom/airbnb/android/models/User;->setPhone(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getVerifications()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method


# virtual methods
.method public getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;
    .registers 4

    .prologue
    .line 248
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "reservation_id"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/CompleteProfileActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getReservationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 259
    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    .line 260
    packed-switch p1, :pswitch_data_16

    .line 268
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 272
    :cond_9
    :goto_9
    return-void

    .line 262
    :pswitch_a
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_9

    .line 265
    :pswitch_12
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->requestPhoneCodeIfNeeded()V

    goto :goto_9

    .line 260
    :pswitch_data_16
    .packed-switch 0x38c
        :pswitch_a
        :pswitch_12
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v4, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v2, "CompleteProfilePhoneCodeChildFragment#onCreateView"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_a} :catch_66

    .line 69
    :goto_a
    const v1, 0x7f030073

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->requestPhoneCodeIfNeeded()V

    .line 74
    const v1, 0x7f080123

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->mCodeEditText:Landroid/widget/EditText;

    .line 75
    const v1, 0x7f080124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->mBackButton:Landroid/widget/Button;

    .line 76
    const v1, 0x7f080125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->mEnterButton:Landroid/widget/Button;

    .line 78
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->setupCodeEditText()V

    .line 80
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->mBackButton:Landroid/widget/Button;

    new-instance v2, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$1;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->mEnterButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 89
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->mEnterButton:Landroid/widget/Button;

    new-instance v2, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$2;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->getParent()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->isVerifiedIdFlow()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 105
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackPhonePendingView(Lcom/airbnb/android/utils/Strap;)V

    .line 108
    :cond_62
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v0

    .line 4294967295
    .end local v0    # "view":Landroid/view/View;
    :catch_66
    move-exception v1

    const/4 v1, 0x0

    :try_start_68
    const-string/jumbo v2, "CompleteProfilePhoneCodeChildFragment#onCreateView"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_6f} :catch_66

    goto :goto_a
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
