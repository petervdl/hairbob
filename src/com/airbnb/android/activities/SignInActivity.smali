.class public Lcom/airbnb/android/activities/SignInActivity;
.super Lcom/airbnb/android/activities/AirActivity;
.source "SignInActivity.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/SignInTransitions;
.implements Lcom/airbnb/android/utils/SignInUtil$SignInListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/activities/SignInActivity$FragmentType;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0x6590

.field private static ANIM_X_OFFSET_END:I = 0x0

.field private static final ANIM_X_OFFSET_START:I = 0x0

.field private static final ARGS_GOOGLE_SIGN_IN:Ljava/lang/String; = "google_sign_in"

.field private static final ARG_SHOW_SPINNER:Ljava/lang/String; = "show_spinner"

.field private static final EXTRA_SHOULD_RESTART_TASK:Ljava/lang/String; = "should_restart_task"

.field private static final GOOGLE_OAUTH_SCOPE:Ljava/lang/String; = "oauth2:https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/payments.make_payments"

.field public static final INTENT_ACTION_USER_SIGNED_IN:Ljava/lang/String; = "com.airbnb.android.intent.action.USER_SIGNED_IN"

.field public static final INTENT_ACTION_USER_SIGNED_OUT:Ljava/lang/String; = "com.airbnb.android.intent.action.USER_SIGNED_OUT"

.field private static final INTENT_KEY_BOOK_AFTER_SIGN_IN:Ljava/lang/String; = "book_after_sign_in"

.field private static final INTENT_KEY_TOAST_MSG:Ljava/lang/String; = "toast_msg"

.field private static final OVERLAY_ALPHA:F = 0.3f

.field private static final OVERLAY_FADE_DURATION:I = 0x320

.field private static final REQUEST_CODE_GOOGLE_OAUTH_PERMISSIONS:I = 0x3e9

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private USE_GOOGLE_PLUS:Z

.field private facebookPermissionsSeen:Z

.field private mBackgroundImage:Landroid/widget/ImageView;

.field private mDarkBgOverlay:Landroid/view/View;

.field private mGoingToBookItAfterSignIn:Z

.field private mGoogleAccountName:Ljava/lang/String;

.field private mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

.field private mGooglePermissionsSeen:Z

.field private mGoogleSignInTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsResumed:Z

.field private mLoadingOverlay:Lcom/airbnb/android/views/LoaderFrame;

.field private mShouldRestartTask:Z

.field private mShowProgressSpinner:Z

.field private mSignInListener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;

.field private mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

.field private mUseGoogleSignIn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    const-class v0, Lcom/airbnb/android/activities/SignInActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/activities/SignInActivity;->TAG:Ljava/lang/String;

    .line 92
    const/16 v0, -0x64

    sput v0, Lcom/airbnb/android/activities/SignInActivity;->ANIM_X_OFFSET_END:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Lcom/airbnb/android/activities/AirActivity;-><init>()V

    .line 98
    iput-boolean v0, p0, Lcom/airbnb/android/activities/SignInActivity;->facebookPermissionsSeen:Z

    .line 106
    iput-boolean v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mUseGoogleSignIn:Z

    .line 125
    iput-boolean v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mGooglePermissionsSeen:Z

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/activities/SignInActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/SignInActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoogleAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/activities/SignInActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/SignInActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoogleAccountName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/activities/SignInActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/activities/SignInActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/airbnb/android/activities/SignInActivity;->signInToGoogleAsync()V

    return-void
.end method

.method static synthetic access$1000(Lcom/airbnb/android/activities/SignInActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/SignInActivity;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoingToBookItAfterSignIn:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/airbnb/android/activities/SignInActivity;Lcom/airbnb/android/requests/GetActiveAccountRequest;Z)Z
    .registers 4
    .param p0, "x0"    # Lcom/airbnb/android/activities/SignInActivity;
    .param p1, "x1"    # Lcom/airbnb/android/requests/GetActiveAccountRequest;
    .param p2, "x2"    # Z

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/activities/SignInActivity;->shouldShowAddProfilePhoto(Lcom/airbnb/android/requests/GetActiveAccountRequest;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/airbnb/android/activities/SignInActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/SignInActivity;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/airbnb/android/activities/SignInActivity;->facebookPermissionsSeen:Z

    return v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/activities/SignInActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/SignInActivity;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mUseGoogleSignIn:Z

    return v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/activities/SignInActivity;)Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/SignInActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/activities/SignInActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/SignInActivity;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/airbnb/android/activities/SignInActivity;->USE_GOOGLE_PLUS:Z

    return v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/activities/SignInActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/SignInActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/airbnb/android/activities/SignInActivity;->fetchGooglePlusAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/airbnb/android/activities/SignInActivity;)Lcom/airbnb/android/utils/SignInUtil$SignInListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/SignInActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mSignInListener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/airbnb/android/activities/SignInActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/SignInActivity;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mGooglePermissionsSeen:Z

    return v0
.end method

.method static synthetic access$702(Lcom/airbnb/android/activities/SignInActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/SignInActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/airbnb/android/activities/SignInActivity;->mGooglePermissionsSeen:Z

    return p1
.end method

.method static synthetic access$802(Lcom/airbnb/android/activities/SignInActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/SignInActivity;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoogleSignInTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$900(Lcom/airbnb/android/activities/SignInActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/SignInActivity;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mIsResumed:Z

    return v0
.end method

.method private animateDarkOverlayIfNeeded()V
    .registers 4

    .prologue
    .line 842
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mDarkBgOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_26

    .line 843
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mDarkBgOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 844
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mDarkBgOverlay:Landroid/view/View;

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_28

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 846
    :cond_26
    return-void

    .line 844
    nop

    :array_28
    .array-data 4
        0x0
        0x3e99999a
    .end array-data
.end method

.method private cancelGoogleSignIn()V
    .registers 3

    .prologue
    .line 535
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoogleSignInTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_d

    .line 536
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoogleSignInTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoogleSignInTask:Landroid/os/AsyncTask;

    .line 539
    :cond_d
    return-void
.end method

.method private checkForWebIntent()Z
    .registers 4

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SignInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 223
    .local v0, "intentData":Landroid/net/Uri;
    if-eqz v0, :cond_22

    .line 224
    const-string/jumbo v1, "signup_email"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 228
    invoke-static {v0}, Lcom/airbnb/android/utils/MiscUtils;->detectAffiliateParams(Landroid/net/Uri;)V

    .line 229
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SignInActivity;->moveToEmailSignIn()V

    .line 230
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SignInActivity;->moveToEmailSignUp()V

    .line 231
    const/4 v1, 0x1

    .line 234
    :goto_21
    return v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method

.method private displayToastIfNeeded()V
    .registers 4

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SignInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 709
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1b

    .line 710
    const-string/jumbo v2, "toast_msg"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 711
    .local v1, "toastMessage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 712
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 715
    .end local v1    # "toastMessage":Ljava/lang/String;
    :cond_1b
    return-void
.end method

.method private fetchGooglePlusAccessToken()Ljava/lang/String;
    .registers 6

    .prologue
    .line 829
    iget-object v2, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->getClient()Lcom/google/android/gms/plus/PlusClient;

    move-result-object v1

    .line 830
    .local v1, "plusClient":Lcom/google/android/gms/plus/PlusClient;
    invoke-virtual {v1}, Lcom/google/android/gms/plus/PlusClient;->getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v0

    .line 831
    .local v0, "currentPerson":Lcom/google/android/gms/plus/model/people/Person;
    if-eqz v0, :cond_1c

    .line 832
    invoke-virtual {v1}, Lcom/google/android/gms/plus/PlusClient;->getAccountName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoogleAccountName:Ljava/lang/String;

    .line 838
    iget-object v2, p0, Lcom/airbnb/android/activities/SignInActivity;->mSignInListener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    iget-object v3, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoogleAccountName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/utils/SignInUtil;->signIntoGooglePlus(Lcom/airbnb/android/utils/SignInUtil$SignInListener;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :goto_1b
    return-object v2

    .line 834
    :cond_1c
    iget-object v2, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->signOut()V

    .line 835
    const v2, 0x7f0e0218

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 836
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method private googleOAuthSignIn()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 416
    invoke-direct {p0}, Lcom/airbnb/android/activities/SignInActivity;->cancelGoogleSignIn()V

    .line 417
    iput-boolean v6, p0, Lcom/airbnb/android/activities/SignInActivity;->mGooglePermissionsSeen:Z

    .line 418
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 419
    .local v2, "am":Landroid/accounts/AccountManager;
    const-string/jumbo v4, "com.google"

    invoke-virtual {v2, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 420
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v4, v1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1f

    .line 421
    aget-object v4, v1, v6

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v4, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoogleAccountName:Ljava/lang/String;

    .line 422
    invoke-direct {p0}, Lcom/airbnb/android/activities/SignInActivity;->signInToGoogleAsync()V

    .line 446
    :goto_1e
    return-void

    .line 424
    :cond_1f
    array-length v4, v1

    if-nez v4, :cond_2d

    .line 425
    const v4, 0x7f0e0548

    invoke-virtual {p0, v4}, Lcom/airbnb/android/activities/SignInActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/airbnb/android/activities/SignInActivity;->handleSignInError(Ljava/lang/String;)V

    goto :goto_1e

    .line 428
    :cond_2d
    array-length v4, v1

    new-array v0, v4, [Ljava/lang/String;

    .line 429
    .local v0, "accountEmails":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_31
    array-length v4, v0

    if-ge v3, v4, :cond_3d

    .line 430
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v0, v3

    .line 429
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 433
    :cond_3d
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0e06d3

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/airbnb/android/activities/SignInActivity$1;

    invoke-direct {v5, p0, v0}, Lcom/airbnb/android/activities/SignInActivity$1;-><init>(Lcom/airbnb/android/activities/SignInActivity;[Ljava/lang/String;)V

    invoke-virtual {v4, v0, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_1e
.end method

.method private initGoogleClientFragment()V
    .registers 4

    .prologue
    .line 452
    sget-object v0, Lcom/airbnb/android/utils/SignInUtil;->GPLUS_SCOPES:[Ljava/lang/String;

    sget-object v1, Lcom/airbnb/android/utils/SignInUtil;->GPLUS_VISIBLE_ACTIVITY:[Ljava/lang/String;

    new-instance v2, Lcom/airbnb/android/activities/SignInActivity$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/activities/SignInActivity$2;-><init>(Lcom/airbnb/android/activities/SignInActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->getPlusClientFragment(Landroid/support/v4/app/FragmentActivity;[Ljava/lang/String;[Ljava/lang/String;Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;)Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    .line 467
    return-void
.end method

.method public static intentForDefault(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/SignInActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static intentForToastDisplay(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toastMsg"    # Ljava/lang/String;
    .param p2, "restartTask"    # Z

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/SignInActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "toast_msg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string/jumbo v1, "should_restart_task"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    return-object v0
.end method

.method public static intentForToastDisplayPendingBookIt(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toastMsg"    # Ljava/lang/String;
    .param p2, "restartTask"    # Z

    .prologue
    .line 136
    invoke-static {p0, p1, p2}, Lcom/airbnb/android/activities/SignInActivity;->intentForToastDisplay(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 137
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "book_after_sign_in"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    return-object v0
.end method

.method private parallaxScrollBackground(Z)V
    .registers 2
    .param p1, "forward"    # Z

    .prologue
    .line 823
    return-void
.end method

.method private requestGooglePermissions(Landroid/content/Intent;I)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCodeGooglePermissions"    # I

    .prologue
    .line 737
    new-instance v0, Lcom/airbnb/android/activities/SignInActivity$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/airbnb/android/activities/SignInActivity$5;-><init>(Lcom/airbnb/android/activities/SignInActivity;Landroid/content/Intent;I)V

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/SignInActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 745
    return-void
.end method

.method public static setAutoCompleteTextView(Landroid/content/Context;Landroid/widget/AutoCompleteTextView;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "autoCompleteTextView"    # Landroid/widget/AutoCompleteTextView;

    .prologue
    .line 849
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 850
    .local v1, "accounts":[Landroid/accounts/Account;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 851
    .local v3, "emailSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v2, v1

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_10
    if-ge v5, v6, :cond_2a

    aget-object v0, v2, v5

    .line 852
    .local v0, "account":Landroid/accounts/Account;
    sget-object v7, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_27

    .line 853
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 851
    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 856
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_2a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 857
    .local v4, "emails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x109000a

    invoke-direct {v7, p0, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v7}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 858
    return-void
.end method

.method private shouldShowAddProfilePhoto(Lcom/airbnb/android/requests/GetActiveAccountRequest;Z)Z
    .registers 6
    .param p1, "response"    # Lcom/airbnb/android/requests/GetActiveAccountRequest;
    .param p2, "fromEmailSignup"    # Z

    .prologue
    const/4 v0, 0x1

    .line 684
    invoke-virtual {p1}, Lcom/airbnb/android/requests/GetActiveAccountRequest;->isInPhotoExperiment()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 686
    iget-object v1, p1, Lcom/airbnb/android/requests/GetActiveAccountRequest;->user:Lcom/airbnb/android/models/User;

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->hasProfilePic()Z

    move-result v1

    if-nez v1, :cond_10

    .line 699
    :cond_f
    :goto_f
    return v0

    .line 692
    :cond_10
    if-nez p2, :cond_2b

    iget-object v1, p1, Lcom/airbnb/android/requests/GetActiveAccountRequest;->user:Lcom/airbnb/android/models/User;

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 693
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v2, p1, Lcom/airbnb/android/requests/GetActiveAccountRequest;->user:Lcom/airbnb/android/models/User;

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getCreatedAt()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/DateHelper;->compareDay(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    if-eqz v1, :cond_f

    .line 699
    :cond_2b
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private signInToGoogleAsync()V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 471
    iget-boolean v1, p0, Lcom/airbnb/android/activities/SignInActivity;->USE_GOOGLE_PLUS:Z

    if-eqz v1, :cond_15

    .line 472
    iget-object v1, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->getClient()Lcom/google/android/gms/plus/PlusClient;

    move-result-object v0

    .line 473
    .local v0, "plusClient":Lcom/google/android/gms/plus/PlusClient;
    if-nez v0, :cond_15

    .line 474
    sget-object v1, Lcom/airbnb/android/activities/SignInActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No GooglePlusClient found, aborting G+ sign in"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    .end local v0    # "plusClient":Lcom/google/android/gms/plus/PlusClient;
    :goto_14
    return-void

    .line 479
    :cond_15
    new-instance v1, Lcom/airbnb/android/activities/SignInActivity$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/SignInActivity$3;-><init>(Lcom/airbnb/android/activities/SignInActivity;)V

    iput-object v1, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoogleSignInTask:Landroid/os/AsyncTask;

    .line 531
    iget-object v1, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoogleSignInTask:Landroid/os/AsyncTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    instance-of v4, v1, Landroid/os/AsyncTask;

    if-nez v4, :cond_2b

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_14

    :cond_2b
    check-cast v1, Landroid/os/AsyncTask;

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_14
.end method


# virtual methods
.method public getActiveAccountAfterSignIn(ZZZLjava/lang/String;)V
    .registers 13
    .param p1, "fromReferral"    # Z
    .param p2, "fromEmailSignup"    # Z
    .param p3, "fromFacebookSignup"    # Z
    .param p4, "signinMethod"    # Ljava/lang/String;

    .prologue
    .line 618
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/SignInActivity;->showProgressSpinner(Z)V

    .line 620
    new-instance v6, Lcom/airbnb/android/requests/GetActiveAccountRequest;

    iget-boolean v7, p0, Lcom/airbnb/android/activities/SignInActivity;->mShouldRestartTask:Z

    new-instance v0, Lcom/airbnb/android/activities/SignInActivity$4;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/activities/SignInActivity$4;-><init>(Lcom/airbnb/android/activities/SignInActivity;ZZZLjava/lang/String;)V

    invoke-direct {v6, p0, v7, v0}, Lcom/airbnb/android/requests/GetActiveAccountRequest;-><init>(Landroid/content/Context;ZLcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v6}, Lcom/airbnb/android/requests/GetActiveAccountRequest;->execute()V

    .line 681
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 719
    return-object p0
.end method

.method protected getCurrentFragmentType()Lcom/airbnb/android/activities/SignInActivity$FragmentType;
    .registers 5

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SignInActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f080045

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 367
    .local v0, "currFragment":Landroid/support/v4/app/Fragment;
    const/4 v1, 0x0

    .line 368
    .local v1, "type":Lcom/airbnb/android/activities/SignInActivity$FragmentType;
    instance-of v2, v0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;

    if-eqz v2, :cond_13

    .line 369
    sget-object v2, Lcom/airbnb/android/activities/SignInActivity$FragmentType;->LANDING:Lcom/airbnb/android/activities/SignInActivity$FragmentType;

    .line 375
    :goto_12
    return-object v2

    .line 370
    :cond_13
    instance-of v2, v0, Lcom/airbnb/android/fragments/EmailSignInFragment;

    if-eqz v2, :cond_1b

    .line 371
    sget-object v1, Lcom/airbnb/android/activities/SignInActivity$FragmentType;->LOGIN:Lcom/airbnb/android/activities/SignInActivity$FragmentType;

    :cond_19
    :goto_19
    move-object v2, v1

    .line 375
    goto :goto_12

    .line 372
    :cond_1b
    instance-of v2, v0, Lcom/airbnb/android/fragments/EmailSignUpFragment;

    if-eqz v2, :cond_19

    .line 373
    sget-object v1, Lcom/airbnb/android/activities/SignInActivity$FragmentType;->SIGN_UP:Lcom/airbnb/android/activities/SignInActivity$FragmentType;

    goto :goto_19
.end method

.method public getHostingActivity()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 807
    return-object p0
.end method

.method public handleError(IILjava/lang/String;)V
    .registers 8
    .param p1, "errorTitleRes"    # I
    .param p2, "errorMessageRes"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 598
    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/SignInActivity;->showProgressSpinner(Z)V

    .line 600
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    if-eqz p2, :cond_13

    invoke-virtual {p0, p2}, Lcom/airbnb/android/activities/SignInActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    .end local p3    # "errorMessage":Ljava/lang/String;
    :cond_13
    invoke-virtual {v0, p3}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e0563

    invoke-virtual {v0, v1, v2, v3}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSingleButton(IILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/activities/SignInActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method public handleSignInError(Ljava/lang/String;)V
    .registers 4
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 586
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 587
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SignInActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 589
    :cond_11
    const v0, 0x7f0e0704

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/airbnb/android/activities/SignInActivity;->handleError(IILjava/lang/String;)V

    .line 590
    return-void
.end method

.method public moveToEmailSignIn()V
    .registers 8

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/airbnb/android/activities/SignInActivity;->animateDarkOverlayIfNeeded()V

    .line 557
    invoke-direct {p0}, Lcom/airbnb/android/activities/SignInActivity;->cancelGoogleSignIn()V

    .line 559
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SignInActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 560
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 561
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-static {}, Lcom/airbnb/android/fragments/EmailSignInFragment;->newInstance()Lcom/airbnb/android/fragments/EmailSignInFragment;

    move-result-object v0

    .line 563
    .local v0, "f":Landroid/support/v4/app/Fragment;
    const v3, 0x7f040006

    const v4, 0x7f040008

    const v5, 0x7f040007

    const v6, 0x7f040009

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 564
    const v3, 0x7f080045

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 565
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 566
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 567
    return-void
.end method

.method public moveToEmailSignUp()V
    .registers 8

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/airbnb/android/activities/SignInActivity;->animateDarkOverlayIfNeeded()V

    .line 572
    invoke-direct {p0}, Lcom/airbnb/android/activities/SignInActivity;->cancelGoogleSignIn()V

    .line 574
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SignInActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 575
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 576
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-static {}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->newInstance()Lcom/airbnb/android/fragments/EmailSignUpFragment;

    move-result-object v0

    .line 578
    .local v0, "f":Landroid/support/v4/app/Fragment;
    const v3, 0x7f040006

    const v4, 0x7f040008

    const v5, 0x7f040007

    const v6, 0x7f040009

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 579
    const v3, 0x7f080045

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 580
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 581
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 582
    return-void
.end method

.method public moveToFacebookSignIn()V
    .registers 2

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/airbnb/android/activities/SignInActivity;->cancelGoogleSignIn()V

    .line 398
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/SignInActivity;->showProgressSpinner(Z)V

    .line 399
    invoke-static {p0}, Lcom/airbnb/android/utils/SignInUtil;->signInToFacebook(Lcom/airbnb/android/utils/SignInUtil$SignInListener;)V

    .line 400
    return-void
.end method

.method public moveToForgotPassword(Ljava/lang/String;)V
    .registers 6
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/airbnb/android/activities/SignInActivity;->animateDarkOverlayIfNeeded()V

    .line 544
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SignInActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 545
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 546
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-static {p1}, Lcom/airbnb/android/fragments/ForgotPasswordFragment;->newInstance(Ljava/lang/String;)Lcom/airbnb/android/fragments/ForgotPasswordFragment;

    move-result-object v0

    .line 548
    .local v0, "f":Landroid/support/v4/app/Fragment;
    const v3, 0x7f080045

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 549
    const/16 v3, 0x1003

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 550
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 551
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 552
    return-void
.end method

.method public moveToGoogleSignIn()V
    .registers 3

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/airbnb/android/activities/SignInActivity;->USE_GOOGLE_PLUS:Z

    if-eqz v0, :cond_f

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mUseGoogleSignIn:Z

    .line 406
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    const/16 v1, 0x2bd

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->signIn(I)V

    .line 410
    :goto_e
    return-void

    .line 408
    :cond_f
    invoke-direct {p0}, Lcom/airbnb/android/activities/SignInActivity;->googleOAuthSignIn()V

    goto :goto_e
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0x3e9

    const/4 v2, -0x1

    .line 290
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/activities/AirActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 292
    if-nez p2, :cond_c

    .line 293
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/SignInActivity;->showProgressSpinner(Z)V

    .line 295
    :cond_c
    if-ne p1, v3, :cond_14

    .line 296
    if-ne p2, v2, :cond_13

    .line 297
    invoke-direct {p0}, Lcom/airbnb/android/activities/SignInActivity;->signInToGoogleAsync()V

    .line 317
    :cond_13
    :goto_13
    return-void

    .line 299
    :cond_14
    if-ne p1, v3, :cond_20

    .line 300
    if-ne p2, v2, :cond_13

    .line 301
    iget-object v1, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    const/16 v2, 0x2bd

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->signIn(I)V

    goto :goto_13

    .line 305
    :cond_20
    if-nez p2, :cond_2b

    .line 307
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 308
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_2b

    .line 309
    invoke-virtual {v0}, Lcom/facebook/Session;->close()V

    .line 312
    .end local v0    # "session":Lcom/facebook/Session;
    :cond_2b
    iget-object v1, p0, Lcom/airbnb/android/activities/SignInActivity;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 313
    iget-object v1, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    if-eqz v1, :cond_13

    .line 314
    iget-object v1, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    invoke-virtual {v1, p1, p2, p3}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->handleOnActivityResult(IILandroid/content/Intent;)Z

    goto :goto_13
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SignInActivity;->getCurrentFragmentType()Lcom/airbnb/android/activities/SignInActivity$FragmentType;

    move-result-object v0

    const-string/jumbo v1, "close_click"

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/SignInActivity;->trackFragmentAction(Lcom/airbnb/android/activities/SignInActivity$FragmentType;Ljava/lang/String;)V

    .line 359
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onBackPressed()V

    .line 360
    return-void
.end method

.method public onCallbackResponse(ZLjava/lang/String;)V
    .registers 8
    .param p1, "success"    # Z
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 749
    if-eqz p1, :cond_40

    .line 750
    iget-boolean v2, p0, Lcom/airbnb/android/activities/SignInActivity;->USE_GOOGLE_PLUS:Z

    if-nez v2, :cond_9

    .line 764
    :goto_8
    return-void

    .line 755
    :cond_9
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "Sign_In"

    aput-object v3, v2, v1

    const-string/jumbo v3, "click_connect_google"

    aput-object v3, v2, v0

    const/4 v3, 0x2

    const-string/jumbo v4, "google_signed_in"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 756
    const-string/jumbo v2, "google_login_successful"

    invoke-static {v2}, Lcom/airbnb/android/analytics/SignUpLoginAnalytics;->trackLandingAction(Ljava/lang/String;)V

    .line 757
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "referrals_code"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 758
    .local v0, "fromReferrals":Z
    :goto_37
    const-string/jumbo v2, "google"

    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/airbnb/android/activities/SignInActivity;->getActiveAccountAfterSignIn(ZZZLjava/lang/String;)V

    goto :goto_8

    .end local v0    # "fromReferrals":Z
    :cond_3e
    move v0, v1

    .line 757
    goto :goto_37

    .line 760
    :cond_40
    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/SignInActivity;->showProgressSpinner(Z)V

    .line 761
    iget-object v1, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->signOut()V

    .line 762
    invoke-virtual {p0, p2}, Lcom/airbnb/android/activities/SignInActivity;->handleSignInError(Ljava/lang/String;)V

    goto :goto_8
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SignInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v10, "should_restart_task"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/airbnb/android/activities/SignInActivity;->mShouldRestartTask:Z

    .line 151
    const-string/jumbo v9, "google"

    const-string/jumbo v10, "plus_login_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/airbnb/android/activities/SignInActivity;->USE_GOOGLE_PLUS:Z

    .line 153
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "Sign_In"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "impression"

    aput-object v11, v9, v10

    invoke-static {v9}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 154
    const-string/jumbo v9, "impressions"

    invoke-static {v9}, Lcom/airbnb/android/analytics/SignUpLoginAnalytics;->trackLandingAction(Ljava/lang/String;)V

    .line 156
    const v9, 0x7f03000f

    invoke-virtual {p0, v9}, Lcom/airbnb/android/activities/SignInActivity;->setContentView(I)V

    .line 158
    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0, v9, v10}, Lcom/airbnb/android/activities/SignInActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 159
    const v9, 0x7f080043

    invoke-virtual {p0, v9}, Lcom/airbnb/android/activities/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/airbnb/android/activities/SignInActivity;->mBackgroundImage:Landroid/widget/ImageView;

    .line 161
    const v9, 0x7f080044

    invoke-virtual {p0, v9}, Lcom/airbnb/android/activities/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/airbnb/android/activities/SignInActivity;->mDarkBgOverlay:Landroid/view/View;

    .line 163
    const/4 v9, 0x1

    new-array v8, v9, [I

    const/4 v9, 0x0

    const v10, 0x7f02020d

    aput v10, v8, v9

    .line 164
    .local v8, "signinBackgrounds":[I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    array-length v11, v8

    int-to-double v11, v11

    mul-double/2addr v9, v11

    double-to-int v9, v9

    aget v1, v8, v9

    .line 167
    .local v1, "bgToUse":I
    :try_start_6a
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 168
    .local v7, "opts":Landroid/graphics/BitmapFactory$Options;
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v9, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 169
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SignInActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v1, v7}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    .local v0, "bgImageRes":Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/airbnb/android/activities/SignInActivity;->mBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_80
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6a .. :try_end_80} :catch_ea

    .line 186
    .end local v0    # "bgImageRes":Landroid/graphics/Bitmap;
    .end local v7    # "opts":Landroid/graphics/BitmapFactory$Options;
    :goto_80
    const v9, 0x7f080026

    invoke-virtual {p0, v9}, Lcom/airbnb/android/activities/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/airbnb/android/views/LoaderFrame;

    iput-object v9, p0, Lcom/airbnb/android/activities/SignInActivity;->mLoadingOverlay:Lcom/airbnb/android/views/LoaderFrame;

    .line 188
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SignInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 189
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v6, :cond_9b

    .line 190
    const-string/jumbo v9, "book_after_sign_in"

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoingToBookItAfterSignIn:Z

    .line 193
    :cond_9b
    iget-boolean v9, p0, Lcom/airbnb/android/activities/SignInActivity;->USE_GOOGLE_PLUS:Z

    if-eqz v9, :cond_a2

    .line 194
    invoke-direct {p0}, Lcom/airbnb/android/activities/SignInActivity;->initGoogleClientFragment()V

    .line 197
    :cond_a2
    if-eqz p1, :cond_bb

    .line 198
    const-string/jumbo v9, "google_sign_in"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoogleAccountName:Ljava/lang/String;

    .line 199
    const-string/jumbo v9, "show_spinner"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/airbnb/android/activities/SignInActivity;->mShowProgressSpinner:Z

    .line 200
    iget-boolean v9, p0, Lcom/airbnb/android/activities/SignInActivity;->mShowProgressSpinner:Z

    invoke-virtual {p0, v9}, Lcom/airbnb/android/activities/SignInActivity;->showProgressSpinner(Z)V

    .line 203
    :cond_bb
    iput-object p0, p0, Lcom/airbnb/android/activities/SignInActivity;->mSignInListener:Lcom/airbnb/android/utils/SignInUtil$SignInListener;

    .line 204
    new-instance v9, Lcom/facebook/UiLifecycleHelper;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v9, p0, Lcom/airbnb/android/activities/SignInActivity;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    .line 206
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SignInActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    .line 207
    .local v4, "fm":Landroid/support/v4/app/FragmentManager;
    const v9, 0x7f080045

    invoke-virtual {v4, v9}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 209
    .local v3, "f":Landroid/support/v4/app/Fragment;
    if-nez v3, :cond_e3

    .line 210
    invoke-static {}, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->newInstance()Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;

    move-result-object v3

    .line 211
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    .line 212
    .local v5, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v9, 0x7f080045

    invoke-virtual {v5, v9, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 213
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 216
    .end local v5    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_e3
    invoke-direct {p0}, Lcom/airbnb/android/activities/SignInActivity;->checkForWebIntent()Z

    .line 218
    invoke-direct {p0}, Lcom/airbnb/android/activities/SignInActivity;->displayToastIfNeeded()V

    .line 219
    return-void

    .line 178
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    .end local v4    # "fm":Landroid/support/v4/app/FragmentManager;
    .end local v6    # "intent":Landroid/content/Intent;
    :catch_ea
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v9, "android_eng"

    const/4 v10, 0x1

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v11

    const-string/jumbo v12, "oom_crash_caught"

    const-string/jumbo v13, "true"

    invoke-virtual {v11, v12, v13}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v11

    const-string/jumbo v12, "action"

    const-string/jumbo v13, "signin_background"

    invoke-virtual {v11, v12, v13}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 180
    iget-object v9, p0, Lcom/airbnb/android/activities/SignInActivity;->mBackgroundImage:Landroid/widget/ImageView;

    const v10, 0x7f0a0006

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_80
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SignInActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10001c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 322
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 283
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onDestroy()V

    .line 284
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/SignInActivity;->showProgressSpinner(Z)V

    .line 286
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 327
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SignInActivity;->getCurrentFragmentType()Lcom/airbnb/android/activities/SignInActivity$FragmentType;

    move-result-object v0

    .line 329
    .local v0, "type":Lcom/airbnb/android/activities/SignInActivity$FragmentType;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_5e

    .line 352
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_11
    return v1

    .line 331
    :sswitch_12
    invoke-virtual {p0, v3}, Lcom/airbnb/android/activities/SignInActivity;->setResult(I)V

    .line 332
    const-string/jumbo v2, "up_click"

    invoke-virtual {p0, v0, v2}, Lcom/airbnb/android/activities/SignInActivity;->trackFragmentAction(Lcom/airbnb/android/activities/SignInActivity$FragmentType;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SignInActivity;->finish()V

    goto :goto_11

    .line 336
    :sswitch_1f
    invoke-static {p0, v3}, Lcom/airbnb/android/activities/AppIntroFtueActivity;->intentForFirstTime(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/SignInActivity;->startActivity(Landroid/content/Intent;)V

    .line 337
    const-string/jumbo v2, "menu_how_it_works_click"

    invoke-virtual {p0, v0, v2}, Lcom/airbnb/android/activities/SignInActivity;->trackFragmentAction(Lcom/airbnb/android/activities/SignInActivity$FragmentType;Ljava/lang/String;)V

    goto :goto_11

    .line 340
    :sswitch_2d
    const v2, 0x7f0e0793

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/SignInActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/airbnb/android/AirbnbApplication;->startMobileWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 341
    const-string/jumbo v2, "menu_tos_click"

    invoke-virtual {p0, v0, v2}, Lcom/airbnb/android/activities/SignInActivity;->trackFragmentAction(Lcom/airbnb/android/activities/SignInActivity$FragmentType;Ljava/lang/String;)V

    goto :goto_11

    .line 344
    :sswitch_3e
    const v2, 0x7f0e0792

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/SignInActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/airbnb/android/AirbnbApplication;->startMobileWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 345
    const-string/jumbo v2, "menu_privacy_policy_click"

    invoke-virtual {p0, v0, v2}, Lcom/airbnb/android/activities/SignInActivity;->trackFragmentAction(Lcom/airbnb/android/activities/SignInActivity$FragmentType;Ljava/lang/String;)V

    goto :goto_11

    .line 348
    :sswitch_4f
    invoke-static {p0}, Lcom/airbnb/android/activities/CustomerServiceActivity;->intentForCustomerService(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/SignInActivity;->startActivity(Landroid/content/Intent;)V

    .line 349
    const-string/jumbo v2, "menu_help_click"

    invoke-virtual {p0, v0, v2}, Lcom/airbnb/android/activities/SignInActivity;->trackFragmentAction(Lcom/airbnb/android/activities/SignInActivity$FragmentType;Ljava/lang/String;)V

    goto :goto_11

    .line 329
    nop

    :sswitch_data_5e
    .sparse-switch
        0x102002c -> :sswitch_12
        0x7f0801c1 -> :sswitch_1f
        0x7f0801c3 -> :sswitch_2d
        0x7f0801c4 -> :sswitch_3e
        0x7f080552 -> :sswitch_4f
    .end sparse-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 275
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onPause()V

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mIsResumed:Z

    .line 278
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onPause()V

    .line 279
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 267
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onResume()V

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mIsResumed:Z

    .line 270
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    .line 271
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 239
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 240
    const-string/jumbo v0, "google_sign_in"

    iget-object v1, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoogleAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 243
    iget-boolean v0, p0, Lcom/airbnb/android/activities/SignInActivity;->USE_GOOGLE_PLUS:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    if-eqz v0, :cond_1d

    .line 244
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mGoogleClientFragment:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 247
    :cond_1d
    const-string/jumbo v0, "show_spinner"

    iget-boolean v1, p0, Lcom/airbnb/android/activities/SignInActivity;->mShowProgressSpinner:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 248
    return-void
.end method

.method public onSignInError()V
    .registers 2

    .prologue
    .line 797
    new-instance v0, Lcom/airbnb/android/activities/SignInActivity$7;

    invoke-direct {v0, p0}, Lcom/airbnb/android/activities/SignInActivity$7;-><init>(Lcom/airbnb/android/activities/SignInActivity;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/SignInActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 803
    return-void
.end method

.method public onSignInSuccess(Lcom/airbnb/android/utils/SignInUtil$Service;)V
    .registers 5
    .param p1, "service"    # Lcom/airbnb/android/utils/SignInUtil$Service;

    .prologue
    .line 768
    sget-object v0, Lcom/airbnb/android/utils/SignInUtil$Service;->FACEBOOK:Lcom/airbnb/android/utils/SignInUtil$Service;

    if-ne v0, p1, :cond_19

    .line 770
    const/4 v0, 0x1

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/activities/SignInActivity$6;

    invoke-direct {v2, p0}, Lcom/airbnb/android/activities/SignInActivity$6;-><init>(Lcom/airbnb/android/activities/SignInActivity;)V

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/requests/AuthorizeServiceRequest;->forFacebook(ZLjava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/AuthorizeServiceRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/requests/AuthorizeServiceRequest;->execute()V

    .line 793
    :cond_19
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 252
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onStart()V

    .line 253
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/SignInActivity;->parallaxScrollBackground(Z)V

    .line 254
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 258
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onStop()V

    .line 260
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 261
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 263
    :cond_14
    return-void
.end method

.method public setActionBarTitle(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SignInActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 393
    return-void
.end method

.method public showCouponCongratulations()V
    .registers 3

    .prologue
    .line 704
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/CouponSuccessActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/SignInActivity;->startActivity(Landroid/content/Intent;)V

    .line 705
    return-void
.end method

.method public showProgressSpinner(Z)V
    .registers 4
    .param p1, "show"    # Z

    .prologue
    .line 607
    iput-boolean p1, p0, Lcom/airbnb/android/activities/SignInActivity;->mShowProgressSpinner:Z

    .line 608
    iget-object v1, p0, Lcom/airbnb/android/activities/SignInActivity;->mLoadingOverlay:Lcom/airbnb/android/views/LoaderFrame;

    if-eqz p1, :cond_12

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/LoaderFrame;->setVisibility(I)V

    .line 609
    if-eqz p1, :cond_15

    .line 610
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mLoadingOverlay:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->startAnimation()V

    .line 614
    :goto_11
    return-void

    .line 608
    :cond_12
    const/16 v0, 0x8

    goto :goto_7

    .line 612
    :cond_15
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity;->mLoadingOverlay:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    goto :goto_11
.end method

.method public showRequestedPermissions(Lcom/airbnb/android/utils/SignInUtil$Service;Landroid/content/Intent;)V
    .registers 5
    .param p1, "service"    # Lcom/airbnb/android/utils/SignInUtil$Service;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v1, 0x3e9

    .line 724
    sget-object v0, Lcom/airbnb/android/utils/SignInUtil$Service;->FACEBOOK:Lcom/airbnb/android/utils/SignInUtil$Service;

    if-ne v0, p1, :cond_a

    .line 725
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/activities/SignInActivity;->facebookPermissionsSeen:Z

    .line 731
    :cond_9
    :goto_9
    return-void

    .line 727
    :cond_a
    sget-object v0, Lcom/airbnb/android/utils/SignInUtil$Service;->GOOGLE:Lcom/airbnb/android/utils/SignInUtil$Service;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/utils/SignInUtil$Service;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 729
    iget-boolean v0, p0, Lcom/airbnb/android/activities/SignInActivity;->USE_GOOGLE_PLUS:Z

    if-eqz v0, :cond_16

    :cond_16
    invoke-direct {p0, p2, v1}, Lcom/airbnb/android/activities/SignInActivity;->requestGooglePermissions(Landroid/content/Intent;I)V

    goto :goto_9
.end method

.method protected trackFragmentAction(Lcom/airbnb/android/activities/SignInActivity$FragmentType;Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # Lcom/airbnb/android/activities/SignInActivity$FragmentType;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 379
    if-eqz p1, :cond_9

    .line 380
    sget-object v0, Lcom/airbnb/android/activities/SignInActivity$FragmentType;->LANDING:Lcom/airbnb/android/activities/SignInActivity$FragmentType;

    if-ne p1, v0, :cond_a

    .line 381
    invoke-static {p2}, Lcom/airbnb/android/analytics/SignUpLoginAnalytics;->trackLandingAction(Ljava/lang/String;)V

    .line 388
    :cond_9
    :goto_9
    return-void

    .line 382
    :cond_a
    sget-object v0, Lcom/airbnb/android/activities/SignInActivity$FragmentType;->LOGIN:Lcom/airbnb/android/activities/SignInActivity$FragmentType;

    if-ne p1, v0, :cond_12

    .line 383
    invoke-static {p2}, Lcom/airbnb/android/analytics/SignUpLoginAnalytics;->trackLoginAction(Ljava/lang/String;)V

    goto :goto_9

    .line 384
    :cond_12
    sget-object v0, Lcom/airbnb/android/activities/SignInActivity$FragmentType;->SIGN_UP:Lcom/airbnb/android/activities/SignInActivity$FragmentType;

    if-ne p1, v0, :cond_9

    .line 385
    invoke-static {p2}, Lcom/airbnb/android/analytics/SignUpLoginAnalytics;->trackSignupAction(Ljava/lang/String;)V

    goto :goto_9
.end method
