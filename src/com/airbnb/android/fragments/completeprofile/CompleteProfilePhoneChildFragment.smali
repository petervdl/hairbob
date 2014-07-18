.class public Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;
.super Landroid/support/v4/app/Fragment;
.source "CompleteProfilePhoneChildFragment.java"

# interfaces
.implements Lcom/airbnb/android/analytics/VerifiedIdAnalytics$VerifiedIdStrapper;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mPhoneNumber:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

.field private mPhoneNumberEditText:Landroid/widget/EditText;

.field private mPhoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

.field private mSendButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;)Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->getParent()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneNumber:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    return-object v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;
    .param p1, "x1"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneNumber:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    return-object p1
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mSendButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->sendPhoneNumber(Ljava/lang/String;)V

    return-void
.end method

.method private fetchPhoneNumber()V
    .registers 7

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 151
    .local v2, "telephone":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_2d

    .line 152
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "phoneNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 156
    :try_start_19
    iget-object v3, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneNumber:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_2d
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_19 .. :try_end_2d} :catch_2e

    .line 162
    .end local v1    # "phoneNumber":Ljava/lang/String;
    :cond_2d
    :goto_2d
    return-void

    .line 157
    .restart local v1    # "phoneNumber":Ljava/lang/String;
    :catch_2e
    move-exception v0

    .line 158
    .local v0, "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    sget-object v3, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Error parsing phone number"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method private getParent()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;
    .registers 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;

    return-object v0
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;
    .registers 1

    .prologue
    .line 48
    new-instance v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;-><init>()V

    return-object v0
.end method

.method private sendPhoneNumber(Ljava/lang/String;)V
    .registers 6
    .param p1, "formattedPhoneNumber"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->getParent()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->isVerifiedIdFlow()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 166
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "phone_number"

    invoke-virtual {v1, v2, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackPhoneStartSend(Lcom/airbnb/android/utils/Strap;)V

    .line 172
    :cond_18
    :goto_18
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/LoaderFrame$LoaderFrameDisplay;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/airbnb/android/views/LoaderFrame$LoaderFrameDisplay;->displayLoaderFrame(Z)V

    .line 173
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mSendButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 174
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 175
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080157

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 177
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->getParent()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneNumber:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->setPhoneNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 179
    new-instance v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$5;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$5;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;)V

    .line 194
    .local v0, "listener":Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment$PhoneAccountListener;
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->getParent()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->updateAccountPhoneNumber(Ljava/lang/String;Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment$PhoneAccountListener;)V

    .line 195
    return-void

    .line 168
    .end local v0    # "listener":Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment$PhoneAccountListener;
    :cond_57
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->getParent()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->isEditProfileFlow()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 169
    const-string/jumbo v1, "add"

    const-string/jumbo v2, "phone_number"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/EditProfileAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    goto :goto_18
.end method

.method private setupPhoneNumberEditText()V
    .registers 5

    .prologue
    .line 77
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneNumber:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    if-eqz v1, :cond_13

    .line 78
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    iget-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneNumber:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1, v2, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "formattedNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .end local v0    # "formattedNumber":Ljava/lang/String;
    :cond_13
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneNumberEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$1;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 106
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneNumberEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$2;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 122
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneNumberEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$3;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$3;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void
.end method

.method private setupSendButton()V
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneNumber:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    if-nez v0, :cond_a

    .line 135
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mSendButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 138
    :cond_a
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mSendButton:Landroid/widget/Button;

    new-instance v1, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$4;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment$4;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-void
.end method


# virtual methods
.method public getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;
    .registers 4

    .prologue
    .line 203
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "reservation_id"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/CompleteProfileActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getReservationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v2, "CompleteProfilePhoneChildFragment#onCreateView"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_54

    .line 53
    :goto_9
    const v1, 0x7f030072

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f080158

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneNumberEditText:Landroid/widget/EditText;

    .line 56
    const v1, 0x7f080159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mSendButton:Landroid/widget/Button;

    .line 58
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 60
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->fetchPhoneNumber()V

    .line 62
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->setupPhoneNumberEditText()V

    .line 63
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->setupSendButton()V

    .line 65
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneNumber:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    if-nez v1, :cond_3f

    .line 66
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->mPhoneNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 69
    :cond_3f
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->getParent()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneFragment;->isVerifiedIdFlow()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 70
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneChildFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackPhoneStartView(Lcom/airbnb/android/utils/Strap;)V

    .line 73
    :cond_50
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v0

    .line 4294967295
    .end local v0    # "view":Landroid/view/View;
    :catch_54
    move-exception v1

    const/4 v1, 0x0

    :try_start_56
    const-string/jumbo v2, "CompleteProfilePhoneChildFragment#onCreateView"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_5d} :catch_54

    goto :goto_9
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
