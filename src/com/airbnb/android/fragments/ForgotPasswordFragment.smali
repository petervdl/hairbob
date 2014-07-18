.class public Lcom/airbnb/android/fragments/ForgotPasswordFragment;
.super Landroid/support/v4/app/Fragment;
.source "ForgotPasswordFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final ARGS_INITIAL_EMAIL:Ljava/lang/String; = "initial_email"


# instance fields
.field private mEmail:Landroid/widget/AutoCompleteTextView;

.field private mResetPasswordButton:Landroid/widget/TextView;

.field private mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/ForgotPasswordFragment;)Landroid/widget/AutoCompleteTextView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ForgotPasswordFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->mEmail:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/ForgotPasswordFragment;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ForgotPasswordFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->mResetPasswordButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/ForgotPasswordFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ForgotPasswordFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->resetPassword()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/ForgotPasswordFragment;)Lcom/airbnb/android/interfaces/SignInTransitions;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ForgotPasswordFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/ForgotPasswordFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ForgotPasswordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->toggleButtonState(Z)V

    return-void
.end method

.method private getForgotPasswordRequestListener(Ljava/lang/String;)Lcom/airbnb/android/requests/RequestListener;
    .registers 3
    .param p1, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/ForgotPasswordRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lcom/airbnb/android/fragments/ForgotPasswordFragment$4;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/android/fragments/ForgotPasswordFragment$4;-><init>(Lcom/airbnb/android/fragments/ForgotPasswordFragment;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/airbnb/android/fragments/ForgotPasswordFragment;
    .registers 4
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v1, Lcom/airbnb/android/fragments/ForgotPasswordFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/ForgotPasswordFragment;-><init>()V

    .line 40
    .local v1, "f":Lcom/airbnb/android/fragments/ForgotPasswordFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "initial_email"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v1
.end method

.method private resetPassword()V
    .registers 6

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 117
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2b

    .line 118
    iget-object v3, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/airbnb/android/interfaces/SignInTransitions;->showProgressSpinner(Z)V

    .line 119
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->toggleButtonState(Z)V

    .line 121
    iget-object v3, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->mEmail:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "email":Ljava/lang/String;
    iget-object v3, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->mResetPasswordButton:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 126
    new-instance v2, Lcom/airbnb/android/requests/ForgotPasswordRequest;

    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->getForgotPasswordRequestListener(Ljava/lang/String;)Lcom/airbnb/android/requests/RequestListener;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/airbnb/android/requests/ForgotPasswordRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 127
    .local v2, "request":Lcom/airbnb/android/requests/ForgotPasswordRequest;
    invoke-virtual {v2}, Lcom/airbnb/android/requests/ForgotPasswordRequest;->execute()V

    .line 129
    .end local v1    # "email":Ljava/lang/String;
    .end local v2    # "request":Lcom/airbnb/android/requests/ForgotPasswordRequest;
    :cond_2b
    return-void
.end method

.method private toggleButtonState(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 159
    iget-object v0, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->mResetPasswordButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 160
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 50
    instance-of v0, p1, Lcom/airbnb/android/interfaces/SignInTransitions;

    if-nez v0, :cond_2f

    .line 51
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

    .line 53
    :cond_2f
    check-cast p1, Lcom/airbnb/android/interfaces/SignInTransitions;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;

    .line 54
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11

    .prologue
    :try_start_0
    iget-object v3, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v4, "ForgotPasswordFragment#onCreateView"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_67

    .line 64
    :goto_9
    const v3, 0x7f030090

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 66
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "initial_email"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "initialEmail":Ljava/lang/String;
    const v3, 0x7f0801a1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AutoCompleteTextView;

    iput-object v3, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->mEmail:Landroid/widget/AutoCompleteTextView;

    .line 70
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->mEmail:Landroid/widget/AutoCompleteTextView;

    invoke-static {v3, v4}, Lcom/airbnb/android/activities/SignInActivity;->setAutoCompleteTextView(Landroid/content/Context;Landroid/widget/AutoCompleteTextView;)V

    .line 71
    const v3, 0x7f0801a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->mResetPasswordButton:Landroid/widget/TextView;

    .line 73
    iget-object v3, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->mEmail:Landroid/widget/AutoCompleteTextView;

    new-instance v4, Lcom/airbnb/android/fragments/ForgotPasswordFragment$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/ForgotPasswordFragment$1;-><init>(Lcom/airbnb/android/fragments/ForgotPasswordFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 89
    iget-object v3, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->mEmail:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v3, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->mResetPasswordButton:Landroid/widget/TextView;

    new-instance v4, Lcom/airbnb/android/fragments/ForgotPasswordFragment$2;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/ForgotPasswordFragment$2;-><init>(Lcom/airbnb/android/fragments/ForgotPasswordFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/airbnb/android/fragments/ForgotPasswordFragment$3;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/ForgotPasswordFragment$3;-><init>(Lcom/airbnb/android/fragments/ForgotPasswordFragment;)V

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v2

    .line 4294967295
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "initialEmail":Ljava/lang/String;
    .end local v2    # "view":Landroid/view/View;
    :catch_67
    move-exception v3

    const/4 v3, 0x0

    :try_start_69
    const-string/jumbo v4, "ForgotPasswordFragment#onCreateView"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_70} :catch_67

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

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;

    const v1, 0x7f0e01ea

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/SignInTransitions;->setActionBarTitle(I)V

    .line 60
    return-void
.end method
