.class public Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;
.super Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;
.source "OnlineIdFragment.java"

# interfaces
.implements Lcom/airbnb/android/analytics/VerifiedIdAnalytics$VerifiedIdStrapper;
.implements Lcom/airbnb/android/utils/SignInUtil$SignInListener;


# static fields
.field private static final REQUEST_CODE_LINKEDIN:I = 0x3ea

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCircleBadgeView:Lcom/airbnb/android/views/CircleBadgeView;

.field private mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

.field private mSignInListener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;

.field private mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

.field private mUseGoogleSignIn:Z

.field private mVerificationSuccessDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mUseGoogleSignIn:Z

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mUseGoogleSignIn:Z

    return v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->signInToGoogleAsync()V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;)Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;)Lcom/airbnb/android/utils/SignInUtil$SignInListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mSignInListener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->setOnlineIdRetries()V

    return-void
.end method

.method private connectToGoogle()V
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    const/16 v1, 0x2bd

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->signIn(I)V

    .line 154
    return-void
.end method

.method private initGoogleClientFragment()V
    .registers 5

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/airbnb/android/utils/SignInUtil;->GPLUS_SCOPES:[Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/SignInUtil;->GPLUS_VISIBLE_ACTIVITY:[Ljava/lang/String;

    new-instance v3, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$1;-><init>(Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;)V

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->getPlusClientFragment(Landroid/support/v4/app/FragmentActivity;[Ljava/lang/String;[Ljava/lang/String;Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;)Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    .line 174
    return-void
.end method

.method public static intentForOauthActivity(Landroid/content/Context;Lcom/airbnb/android/activities/OauthActivity$Service;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Lcom/airbnb/android/activities/OauthActivity$Service;

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/OauthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "OAUTH_SERVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 60
    return-object v0
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;
    .registers 1

    .prologue
    .line 54
    new-instance v0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;-><init>()V

    return-object v0
.end method

.method private setOnlineIdRetries()V
    .registers 2

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/VerifiedIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->waitForOnlineId()V

    .line 329
    return-void
.end method

.method private signInToGoogleAsync()V
    .registers 6

    .prologue
    .line 177
    iget-object v2, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->getClient()Lcom/google/android/gms/plus/PlusClient;

    move-result-object v1

    .line 178
    .local v1, "plusClient":Lcom/google/android/gms/plus/PlusClient;
    if-nez v1, :cond_11

    .line 179
    sget-object v2, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "No GooglePlusClient found, aborting G+ sign in"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_10
    return-void

    .line 183
    :cond_11
    new-instance v0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$2;

    invoke-direct {v0, p0, v1}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$2;-><init>(Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;Lcom/google/android/gms/plus/PlusClient;)V

    .line 208
    .local v0, "googleSignInTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    instance-of v4, v0, Landroid/os/AsyncTask;

    if-nez v4, :cond_23

    invoke-virtual {v0, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_10

    :cond_23
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "googleSignInTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_10
.end method


# virtual methods
.method public clickFacebookButton()V
    .registers 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOnlineStartFacebook(Lcom/airbnb/android/utils/Strap;)V

    .line 134
    invoke-static {p0}, Lcom/airbnb/android/utils/SignInUtil;->signInToFacebook(Lcom/airbnb/android/utils/SignInUtil$SignInListener;)V

    .line 135
    const v0, 0x7f0e07bd

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mVerificationSuccessDescription:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public clickGoogleButton()V
    .registers 2

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mUseGoogleSignIn:Z

    .line 147
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOnlineStartGoogle(Lcom/airbnb/android/utils/Strap;)V

    .line 148
    invoke-direct {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->connectToGoogle()V

    .line 149
    const v0, 0x7f0e07be

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mVerificationSuccessDescription:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public clickLinkedInButton()V
    .registers 4

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOnlineStartLinkedIn(Lcom/airbnb/android/utils/Strap;)V

    .line 140
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/activities/OauthActivity$Service;->LINKEDIN:Lcom/airbnb/android/activities/OauthActivity$Service;

    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->intentForOauthActivity(Landroid/content/Context;Lcom/airbnb/android/activities/OauthActivity$Service;)Landroid/content/Intent;

    move-result-object v0

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x7f0e07c2

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mVerificationSuccessDescription:Ljava/lang/String;

    .line 142
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 143
    return-void
.end method

.method public getCircleBadgeView()Lcom/airbnb/android/views/CircleBadgeView;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mCircleBadgeView:Lcom/airbnb/android/views/CircleBadgeView;

    return-object v0
.end method

.method public getContentFragmentId()I
    .registers 2

    .prologue
    .line 296
    const v0, 0x7f0802cc

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public getHostingActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public getVerificationSuccessDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mVerificationSuccessDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;
    .registers 4

    .prologue
    .line 324
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "reservation_id"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/VerifiedIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/VerifiedIdActivity;->getReservationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public notifyServerFailureToConnect()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 332
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/LoaderFrame$LoaderFrameDisplay;

    invoke-interface {v0, v2}, Lcom/airbnb/android/views/LoaderFrame$LoaderFrameDisplay;->displayLoaderFrame(Z)V

    .line 333
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e07e1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 334
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->setActiveState()V

    .line 335
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 90
    const/16 v0, 0x2bd

    if-ne p1, v0, :cond_d

    .line 91
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->handleOnActivityResult(IILandroid/content/Intent;)Z

    .line 105
    :cond_9
    :goto_9
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 106
    return-void

    .line 93
    :cond_d
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1d

    .line 94
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_9

    .line 95
    invoke-direct {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->connectToGoogle()V

    goto :goto_9

    .line 97
    :cond_1d
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_9

    .line 100
    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    .line 101
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->setPendingState()V

    goto :goto_9
.end method

.method public onCallbackResponse(ZLjava/lang/String;)V
    .registers 4
    .param p1, "success"    # Z
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 228
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOnlineStartConfirmed(Lcom/airbnb/android/utils/Strap;)V

    .line 230
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->setPendingState()V

    .line 232
    if-eqz p1, :cond_16

    .line 233
    invoke-direct {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->setOnlineIdRetries()V

    .line 238
    :cond_15
    :goto_15
    return-void

    .line 235
    :cond_16
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->onSignInError()V

    goto :goto_15
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    const v3, 0x7f0300f9

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 67
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0802cb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/views/CircleBadgeView;

    iput-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mCircleBadgeView:Lcom/airbnb/android/views/CircleBadgeView;

    .line 68
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mCircleBadgeView:Lcom/airbnb/android/views/CircleBadgeView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/CircleBadgeView;->initializeAsInactiveBadge()V

    .line 70
    if-nez p3, :cond_2f

    .line 71
    invoke-static {}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;->newInstance()Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;

    move-result-object v0

    .line 72
    .local v0, "contentFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 73
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f0802cc

    invoke-virtual {v1, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 74
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 77
    .end local v0    # "contentFragment":Landroid/support/v4/app/Fragment;
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_2f
    iput-object p0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mSignInListener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    .line 78
    new-instance v3, Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    .line 79
    iget-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v3, p3}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-direct {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->initGoogleClientFragment()V

    .line 83
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOnlineStartView(Lcom/airbnb/android/utils/Strap;)V

    .line 85
    return-object v2
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 122
    invoke-super {p0}, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;->onDestroy()V

    .line 123
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 124
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;->onPause()V

    .line 111
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onPause()V

    .line 112
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;->onResume()V

    .line 117
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    .line 118
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 129
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 130
    return-void
.end method

.method public onSignInError()V
    .registers 3

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$4;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$4;-><init>(Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 252
    return-void
.end method

.method public onSignInSuccess(Lcom/airbnb/android/utils/SignInUtil$Service;)V
    .registers 5
    .param p1, "service"    # Lcom/airbnb/android/utils/SignInUtil$Service;

    .prologue
    .line 261
    sget-object v0, Lcom/airbnb/android/utils/SignInUtil$Service;->FACEBOOK:Lcom/airbnb/android/utils/SignInUtil$Service;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/utils/SignInUtil$Service;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 262
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->setPendingState()V

    .line 264
    const/4 v0, 0x0

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$5;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$5;-><init>(Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;)V

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/requests/AuthorizeServiceRequest;->forFacebook(ZLjava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/AuthorizeServiceRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/requests/AuthorizeServiceRequest;->execute()V

    .line 282
    :cond_20
    return-void
.end method

.method public setActiveState()V
    .registers 4

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/LoaderFrame$LoaderFrameDisplay;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/airbnb/android/views/LoaderFrame$LoaderFrameDisplay;->displayLoaderFrame(Z)V

    .line 318
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0802cc

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;

    .line 319
    .local v0, "childFragment":Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;->enableButtons(Z)V

    .line 320
    return-void
.end method

.method public setPendingState()V
    .registers 4

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/LoaderFrame$LoaderFrameDisplay;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/airbnb/android/views/LoaderFrame$LoaderFrameDisplay;->displayLoaderFrame(Z)V

    .line 309
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0802cc

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;

    .line 310
    .local v0, "childFragment":Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;->enableButtons(Z)V

    .line 311
    return-void
.end method

.method public showRequestedPermissions(Lcom/airbnb/android/utils/SignInUtil$Service;Landroid/content/Intent;)V
    .registers 5
    .param p1, "service"    # Lcom/airbnb/android/utils/SignInUtil$Service;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 214
    sget-object v0, Lcom/airbnb/android/utils/SignInUtil$Service;->GOOGLE:Lcom/airbnb/android/utils/SignInUtil$Service;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/utils/SignInUtil$Service;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 215
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$3;

    invoke-direct {v1, p0, p2}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$3;-><init>(Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 223
    :cond_14
    return-void
.end method
