.class public Lcom/airbnb/android/fragments/EmailSignUpFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "EmailSignUpFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/EmailSignUpFragment$TOS_SECTION;
    }
.end annotation


# static fields
.field private static final EMAIL_VALIDATION_PATTERN:Ljava/util/regex/Pattern;

.field private static final EMAIL_VALIDATION_REGEX:Ljava/lang/String; = ".+@([^\\.]+\\.)+[^\\.]+"

.field private static final MINIMUM_PASSWORD_LENGTH:I = 0x5


# instance fields
.field mAgreementText:Landroid/widget/TextView;

.field private mCreateUserRequest:Lcom/airbnb/android/requests/CreateUserRequest;

.field mEmail:Landroid/widget/AutoCompleteTextView;

.field mFirstName:Landroid/widget/EditText;

.field mLastName:Landroid/widget/EditText;

.field mPassword:Landroid/widget/EditText;

.field mSignInButton:Landroid/widget/TextView;

.field private mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;

.field mSignUpButton:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-string/jumbo v0, ".+@([^\\.]+\\.)+[^\\.]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->EMAIL_VALIDATION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/EmailSignUpFragment;Landroid/widget/TextView;)Z
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/EmailSignUpFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->fieldNotEmpty(Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/EmailSignUpFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/EmailSignUpFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->signUp()V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/EmailSignUpFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/EmailSignUpFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->backToSignIn()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/EmailSignUpFragment;)Lcom/airbnb/android/interfaces/SignInTransitions;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/EmailSignUpFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/EmailSignUpFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/EmailSignUpFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->toggleButtonState(Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/airbnb/android/fragments/EmailSignUpFragment;Lcom/airbnb/android/requests/CreateUserRequest;)Lcom/airbnb/android/requests/CreateUserRequest;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/EmailSignUpFragment;
    .param p1, "x1"    # Lcom/airbnb/android/requests/CreateUserRequest;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mCreateUserRequest:Lcom/airbnb/android/requests/CreateUserRequest;

    return-object p1
.end method

.method private backToSignIn()V
    .registers 2

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 264
    return-void
.end method

.method private fieldNotEmpty(Landroid/widget/TextView;)Z
    .registers 3
    .param p1, "field"    # Landroid/widget/TextView;

    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/EmailSignUpFragment;
    .registers 1

    .prologue
    .line 71
    new-instance v0, Lcom/airbnb/android/fragments/EmailSignUpFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/EmailSignUpFragment;-><init>()V

    return-object v0
.end method

.method private signUp()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const v11, 0x7f0e070d

    const/4 v10, 0x0

    .line 182
    const-string/jumbo v0, "signup_click"

    invoke-static {v0}, Lcom/airbnb/android/analytics/SignUpLoginAnalytics;->trackSignupAction(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;

    invoke-interface {v0, v12}, Lcom/airbnb/android/interfaces/SignInTransitions;->showProgressSpinner(Z)V

    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->toggleButtonState(Z)V

    .line 186
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v9

    .line 188
    .local v9, "sp":Landroid/content/SharedPreferences;
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mEmail:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "email":Ljava/lang/String;
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "password":Ljava/lang/String;
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "firstName":Ljava/lang/String;
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "lastName":Ljava/lang/String;
    const-string/jumbo v0, "referrals_code"

    invoke-interface {v9, v0, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "referralCode":Ljava/lang/String;
    const/4 v7, 0x0

    .line 195
    .local v7, "localError":Z
    sget-object v0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->EMAIL_VALIDATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 197
    .local v8, "matcher":Ljava/util/regex/Matcher;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 198
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;

    const v6, 0x7f0e070b

    invoke-interface {v0, v11, v6, v10}, Lcom/airbnb/android/interfaces/SignInTransitions;->handleError(IILjava/lang/String;)V

    .line 199
    const/4 v7, 0x1

    .line 214
    :cond_61
    :goto_61
    if-eqz v7, :cond_ae

    .line 215
    invoke-direct {p0, v12}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->toggleButtonState(Z)V

    .line 256
    :goto_66
    return-void

    .line 200
    :cond_67
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_77

    .line 201
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;

    const v6, 0x7f0e070c

    invoke-interface {v0, v11, v6, v10}, Lcom/airbnb/android/interfaces/SignInTransitions;->handleError(IILjava/lang/String;)V

    .line 202
    const/4 v7, 0x1

    goto :goto_61

    .line 203
    :cond_77
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v6, 0x5

    if-ge v0, v6, :cond_8e

    .line 204
    :cond_84
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;

    const v6, 0x7f0e0714

    invoke-interface {v0, v11, v6, v10}, Lcom/airbnb/android/interfaces/SignInTransitions;->handleError(IILjava/lang/String;)V

    .line 205
    const/4 v7, 0x1

    goto :goto_61

    .line 206
    :cond_8e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 207
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;

    const v6, 0x7f0e070f

    invoke-interface {v0, v11, v6, v10}, Lcom/airbnb/android/interfaces/SignInTransitions;->handleError(IILjava/lang/String;)V

    .line 208
    const/4 v7, 0x1

    goto :goto_61

    .line 209
    :cond_9e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 210
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;

    const v6, 0x7f0e0712

    invoke-interface {v0, v11, v6, v10}, Lcom/airbnb/android/interfaces/SignInTransitions;->handleError(IILjava/lang/String;)V

    .line 211
    const/4 v7, 0x1

    goto :goto_61

    .line 220
    :cond_ae
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v6, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mSignUpButton:Landroid/widget/TextView;

    invoke-static {v0, v6}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 222
    new-instance v0, Lcom/airbnb/android/requests/CreateUserRequest;

    new-instance v6, Lcom/airbnb/android/fragments/EmailSignUpFragment$6;

    invoke-direct {v6, p0, v5}, Lcom/airbnb/android/fragments/EmailSignUpFragment$6;-><init>(Lcom/airbnb/android/fragments/EmailSignUpFragment;Ljava/lang/String;)V

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/android/requests/CreateUserRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mCreateUserRequest:Lcom/airbnb/android/requests/CreateUserRequest;

    .line 255
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mCreateUserRequest:Lcom/airbnb/android/requests/CreateUserRequest;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/CreateUserRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    goto :goto_66
.end method

.method private toggleButtonState(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 259
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mSignUpButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 260
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onAttach(Landroid/app/Activity;)V

    .line 78
    instance-of v0, p1, Lcom/airbnb/android/interfaces/SignInTransitions;

    if-nez v0, :cond_2f

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/airbnb/android/interfaces/SignInTransitions;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_2f
    check-cast p1, Lcom/airbnb/android/interfaces/SignInTransitions;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;

    .line 82
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 16
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f0e0709

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 92
    const v7, 0x7f03008f

    invoke-virtual {p1, v7, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 93
    .local v6, "view":Landroid/view/View;
    invoke-static {p0, v6}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 95
    new-instance v4, Lcom/airbnb/android/fragments/EmailSignUpFragment$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/EmailSignUpFragment$1;-><init>(Lcom/airbnb/android/fragments/EmailSignUpFragment;)V

    .line 116
    .local v4, "textWatcher":Landroid/text/TextWatcher;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-object v8, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mEmail:Landroid/widget/AutoCompleteTextView;

    invoke-static {v7, v8}, Lcom/airbnb/android/activities/SignInActivity;->setAutoCompleteTextView(Landroid/content/Context;Landroid/widget/AutoCompleteTextView;)V

    .line 118
    iget-object v7, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mEmail:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v7, v4}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 119
    iget-object v7, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 120
    iget-object v7, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    iget-object v7, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    iget-object v7, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mSignUpButton:Landroid/widget/TextView;

    new-instance v8, Lcom/airbnb/android/fragments/EmailSignUpFragment$2;

    invoke-direct {v8, p0}, Lcom/airbnb/android/fragments/EmailSignUpFragment$2;-><init>(Lcom/airbnb/android/fragments/EmailSignUpFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v7, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mSignInButton:Landroid/widget/TextView;

    new-instance v8, Lcom/airbnb/android/fragments/EmailSignUpFragment$3;

    invoke-direct {v8, p0}, Lcom/airbnb/android/fragments/EmailSignUpFragment$3;-><init>(Lcom/airbnb/android/fragments/EmailSignUpFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    new-array v7, v10, [Ljava/lang/Object;

    const v8, 0x7f0e0740

    invoke-virtual {p0, v8}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v11, v7}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "tosLink":Ljava/lang/String;
    new-array v7, v10, [Ljava/lang/Object;

    const v8, 0x7f0e05d8

    invoke-virtual {p0, v8}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v11, v7}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "privacyLink":Ljava/lang/String;
    new-array v7, v10, [Ljava/lang/Object;

    const v8, 0x7f0e0710

    invoke-virtual {p0, v8}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v11, v7}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "guestRefundPolicyLink":Ljava/lang/String;
    new-array v7, v10, [Ljava/lang/Object;

    const v8, 0x7f0e0711

    invoke-virtual {p0, v8}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v11, v7}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "hostGauranteeTerms":Ljava/lang/String;
    const v7, 0x7f0e070a

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v9

    aput-object v3, v8, v10

    const/4 v9, 0x2

    aput-object v1, v8, v9

    const/4 v9, 0x3

    aput-object v2, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "agreement":Ljava/lang/String;
    iget-object v7, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mAgreementText:Landroid/widget/TextView;

    new-instance v8, Lcom/airbnb/android/fragments/EmailSignUpFragment$4;

    invoke-direct {v8, p0}, Lcom/airbnb/android/fragments/EmailSignUpFragment$4;-><init>(Lcom/airbnb/android/fragments/EmailSignUpFragment;)V

    invoke-static {v7, v0, v8}, Lcom/airbnb/android/utils/ClickableLinkUtils;->setupClickableTextView(Landroid/widget/TextView;Ljava/lang/String;Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;)V

    .line 165
    const-string/jumbo v7, "impressions"

    invoke-static {v7}, Lcom/airbnb/android/analytics/SignUpLoginAnalytics;->trackSignupAction(Ljava/lang/String;)V

    .line 168
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/airbnb/android/fragments/EmailSignUpFragment$5;

    invoke-direct {v8, p0}, Lcom/airbnb/android/fragments/EmailSignUpFragment$5;-><init>(Lcom/airbnb/android/fragments/EmailSignUpFragment;)V

    const-wide/16 v9, 0x12c

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    return-object v6
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 87
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;

    const v1, 0x7f0e0708

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/SignInTransitions;->setActionBarTitle(I)V

    .line 88
    return-void
.end method
