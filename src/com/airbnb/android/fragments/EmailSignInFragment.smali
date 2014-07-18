.class public Lcom/airbnb/android/fragments/EmailSignInFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "EmailSignInFragment.java"


# instance fields
.field private mEmail:Landroid/widget/AutoCompleteTextView;

.field private mForgotPassword:Landroid/widget/TextView;

.field private mPassword:Landroid/widget/EditText;

.field private mSignInButton:Landroid/widget/Button;

.field private mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;

.field private mSignUpButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/EmailSignInFragment;)Landroid/widget/AutoCompleteTextView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/EmailSignInFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignInFragment;->mEmail:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/EmailSignInFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/EmailSignInFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignInFragment;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/EmailSignInFragment;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/EmailSignInFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignInFragment;->mSignInButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/EmailSignInFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/EmailSignInFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/airbnb/android/fragments/EmailSignInFragment;->signIn()V

    return-void
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/EmailSignInFragment;)Lcom/airbnb/android/interfaces/SignInTransitions;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/EmailSignInFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignInFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/EmailSignInFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/EmailSignInFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/EmailSignInFragment;->toggleButtonState(Z)V

    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/EmailSignInFragment;
    .registers 1

    .prologue
    .line 42
    new-instance v0, Lcom/airbnb/android/fragments/EmailSignInFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/EmailSignInFragment;-><init>()V

    return-object v0
.end method

.method private signIn()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 144
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EmailSignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 145
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_8

    .line 184
    :goto_7
    return-void

    .line 148
    :cond_8
    iget-object v3, p0, Lcom/airbnb/android/fragments/EmailSignInFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;

    invoke-interface {v3, v5}, Lcom/airbnb/android/interfaces/SignInTransitions;->showProgressSpinner(Z)V

    .line 149
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/airbnb/android/fragments/EmailSignInFragment;->toggleButtonState(Z)V

    .line 151
    iget-object v3, p0, Lcom/airbnb/android/fragments/EmailSignInFragment;->mEmail:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "email":Ljava/lang/String;
    iget-object v3, p0, Lcom/airbnb/android/fragments/EmailSignInFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "password":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EmailSignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/EmailSignInFragment;->mSignInButton:Landroid/widget/Button;

    invoke-static {v3, v4}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 157
    new-instance v3, Lcom/airbnb/android/fragments/EmailSignInFragment$6;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/EmailSignInFragment$6;-><init>(Lcom/airbnb/android/fragments/EmailSignInFragment;)V

    invoke-static {v5, v1, v2, v3}, Lcom/airbnb/android/requests/AuthorizeServiceRequest;->forEmail(ZLjava/lang/String;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/AuthorizeServiceRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/requests/AuthorizeServiceRequest;->execute()V

    goto :goto_7
.end method

.method private toggleButtonState(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 187
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignInFragment;->mSignInButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignInFragment;->mSignUpButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 189
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onAttach(Landroid/app/Activity;)V

    .line 49
    instance-of v0, p1, Lcom/airbnb/android/interfaces/SignInTransitions;

    if-nez v0, :cond_2f

    .line 50
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

    .line 52
    :cond_2f
    check-cast p1, Lcom/airbnb/android/interfaces/SignInTransitions;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/airbnb/android/fragments/EmailSignInFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;

    .line 53
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    const v2, 0x7f03008e

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0801a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AutoCompleteTextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/EmailSignInFragment;->mEmail:Landroid/widget/AutoCompleteTextView;

    .line 67
    const v2, 0x7f0801a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/airbnb/android/fragments/EmailSignInFragment;->mPassword:Landroid/widget/EditText;

    .line 68
    const v2, 0x7f0801a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/airbnb/android/fragments/EmailSignInFragment;->mSignInButton:Landroid/widget/Button;

    .line 69
    const v2, 0x7f08019d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/EmailSignInFragment;->mForgotPassword:Landroid/widget/TextView;

    .line 70
    const v2, 0x7f08019f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/EmailSignInFragment;->mSignUpButton:Landroid/widget/TextView;

    .line 72
    new-instance v0, Lcom/airbnb/android/fragments/EmailSignInFragment$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/EmailSignInFragment$1;-><init>(Lcom/airbnb/android/fragments/EmailSignInFragment;)V

    .line 92
    .local v0, "textWatcher":Landroid/text/TextWatcher;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EmailSignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/EmailSignInFragment;->mEmail:Landroid/widget/AutoCompleteTextView;

    invoke-static {v2, v3}, Lcom/airbnb/android/activities/SignInActivity;->setAutoCompleteTextView(Landroid/content/Context;Landroid/widget/AutoCompleteTextView;)V

    .line 93
    iget-object v2, p0, Lcom/airbnb/android/fragments/EmailSignInFragment;->mEmail:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 94
    iget-object v2, p0, Lcom/airbnb/android/fragments/EmailSignInFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 96
    iget-object v2, p0, Lcom/airbnb/android/fragments/EmailSignInFragment;->mSignInButton:Landroid/widget/Button;

    new-instance v3, Lcom/airbnb/android/fragments/EmailSignInFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/EmailSignInFragment$2;-><init>(Lcom/airbnb/android/fragments/EmailSignInFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v2, p0, Lcom/airbnb/android/fragments/EmailSignInFragment;->mSignUpButton:Landroid/widget/TextView;

    new-instance v3, Lcom/airbnb/android/fragments/EmailSignInFragment$3;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/EmailSignInFragment$3;-><init>(Lcom/airbnb/android/fragments/EmailSignInFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v2, p0, Lcom/airbnb/android/fragments/EmailSignInFragment;->mForgotPassword:Landroid/widget/TextView;

    new-instance v3, Lcom/airbnb/android/fragments/EmailSignInFragment$4;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/EmailSignInFragment$4;-><init>(Lcom/airbnb/android/fragments/EmailSignInFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const-string/jumbo v2, "impressions"

    invoke-static {v2}, Lcom/airbnb/android/analytics/SignUpLoginAnalytics;->trackLoginAction(Ljava/lang/String;)V

    .line 130
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/airbnb/android/fragments/EmailSignInFragment$5;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/EmailSignInFragment$5;-><init>(Lcom/airbnb/android/fragments/EmailSignInFragment;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    return-object v1
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 58
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignInFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;

    const v1, 0x7f0e0706

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/SignInTransitions;->setActionBarTitle(I)V

    .line 59
    return-void
.end method
