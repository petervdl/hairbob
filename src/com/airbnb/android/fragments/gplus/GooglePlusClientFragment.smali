.class public final Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;
.super Landroid/support/v4/app/Fragment;
.source "GooglePlusClientFragment.java"

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ProgressDialogFragment;,
        Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ErrorDialogFragment;,
        Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;,
        Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$PlusClientFragmentHandler;
    }
.end annotation


# static fields
.field private static final ARG_SCOPES:Ljava/lang/String; = "scopes"

.field private static final ARG_VISIBLE_ACTIVITIES:Ljava/lang/String; = "visible_activities"

.field private static final CONNECTION_RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

.field private static final INVALID_REQUEST_CODE:I = -0x1

.field private static final STATE_REQUEST_CODE:Ljava/lang/String; = "request_code"

.field private static final TAG_ERROR_DIALOG:Ljava/lang/String; = "plusClientFragmentErrorDialog"

.field private static final TAG_PLUS_CLIENT:Ljava/lang/String; = "plusClientFragment"

.field private static final TAG_PROGRESS_DIALOG:Ljava/lang/String; = "plusClientFragmentProgressDialog"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsConnecting:Z

.field private mLastConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

.field private mPlusClient:Lcom/google/android/gms/plus/PlusClient;

.field private mRequestCode:I

.field private mSignInListener:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 77
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    sput-object v0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->CONNECTION_RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 407
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;)Lcom/google/android/gms/plus/PlusClient;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;)Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mSignInListener:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->onDialogCanceled(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->onDialogDismissed(Ljava/lang/String;)V

    return-void
.end method

.method public static getPlusClientFragment(Landroid/support/v4/app/FragmentActivity;[Ljava/lang/String;[Ljava/lang/String;Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;)Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;
    .registers 11
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "scopes"    # [Ljava/lang/String;
    .param p2, "visibleActivities"    # [Ljava/lang/String;
    .param p3, "listener"    # Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;

    .prologue
    .line 157
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 158
    .local v2, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    const-string/jumbo v5, "plusClientFragment"

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 159
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v5, v1, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    if-eqz v5, :cond_28

    .line 161
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "visible_activities"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    move-object v5, v1

    .line 163
    check-cast v5, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    iput-object p3, v5, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mSignInListener:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;

    .line 164
    check-cast v1, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    .line 183
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_27
    return-object v1

    .line 168
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_28
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 170
    .local v3, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    if-eqz v1, :cond_31

    .line 171
    invoke-virtual {v3, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 175
    :cond_31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 176
    .local v0, "arguments":Landroid/os/Bundle;
    const-string/jumbo v5, "visible_activities"

    invoke-virtual {v0, v5, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 177
    const-string/jumbo v5, "scopes"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 178
    new-instance v4, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;

    invoke-direct {v4}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;-><init>()V

    .line 179
    .local v4, "signInFragment":Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;
    invoke-virtual {v4, v0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->setArguments(Landroid/os/Bundle;)V

    .line 180
    const-string/jumbo v5, "plusClientFragment"

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 181
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 182
    iput-object p3, v4, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mSignInListener:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;

    move-object v1, v4

    .line 183
    goto :goto_27
.end method

.method private hideErrorDialog()V
    .registers 4

    .prologue
    .line 484
    const/4 v1, -0x1

    iput v1, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mRequestCode:I

    .line 485
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "plusClientFragmentErrorDialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 487
    .local v0, "errorDialog":Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_15

    .line 488
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 490
    :cond_15
    return-void
.end method

.method private onDialogCanceled(Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 387
    const/4 v0, -0x1

    iput v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mRequestCode:I

    .line 388
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->hideProgressDialog()V

    .line 389
    return-void
.end method

.method private onDialogDismissed(Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 392
    const-string/jumbo v0, "plusClientFragmentProgressDialog"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 393
    const/4 v0, -0x1

    iput v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mRequestCode:I

    .line 394
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->hideProgressDialog()V

    .line 396
    :cond_f
    return-void
.end method

.method private resolveLastResult()V
    .registers 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mLastConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 337
    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mLastConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    iget v1, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mRequestCode:I

    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ErrorDialogFragment;->create(II)Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ErrorDialogFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->showErrorDialog(Landroid/support/v4/app/DialogFragment;)V

    .line 345
    :cond_1b
    :goto_1b
    return-void

    .line 342
    :cond_1c
    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mLastConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 343
    invoke-direct {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->startResolution()V

    goto :goto_1b
.end method

.method private showErrorDialog(Landroid/support/v4/app/DialogFragment;)V
    .registers 5
    .param p1, "errorDialog"    # Landroid/support/v4/app/DialogFragment;

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "plusClientFragmentErrorDialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 475
    .local v0, "oldErrorDialog":Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_12

    .line 476
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 479
    :cond_12
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->hideProgressDialog()V

    .line 480
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "plusClientFragmentErrorDialog"

    invoke-virtual {p1, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method private showProgressDialog()V
    .registers 4

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "plusClientFragmentProgressDialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 401
    .local v0, "progressDialog":Landroid/support/v4/app/DialogFragment;
    if-nez v0, :cond_1d

    .line 402
    invoke-static {}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ProgressDialogFragment;->create()Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$ProgressDialogFragment;

    move-result-object v0

    .line 403
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "plusClientFragmentProgressDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 405
    :cond_1d
    return-void
.end method

.method private startResolution()V
    .registers 5

    .prologue
    .line 494
    :try_start_0
    iget-object v1, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mLastConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget v3, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mRequestCode:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_b
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_b} :catch_c

    .line 503
    :goto_b
    return-void

    .line 495
    :catch_c
    move-exception v0

    .line 498
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mLastConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 499
    invoke-direct {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->showProgressDialog()V

    .line 500
    iget-object v1, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v1}, Lcom/google/android/gms/plus/PlusClient;->connect()V

    .line 501
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mIsConnecting:Z

    goto :goto_b
.end method


# virtual methods
.method public getClient()Lcom/google/android/gms/plus/PlusClient;
    .registers 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    return-object v0
.end method

.method public handleOnActivityResult(IILandroid/content/Intent;)Z
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 506
    iget v1, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mRequestCode:I

    if-eq p1, v1, :cond_7

    .line 507
    const/4 v0, 0x0

    .line 521
    :goto_6
    return v0

    .line 510
    :cond_7
    packed-switch p2, :pswitch_data_1a

    goto :goto_6

    .line 512
    :pswitch_b
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mLastConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 513
    iget-object v1, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v1}, Lcom/google/android/gms/plus/PlusClient;->connect()V

    .line 514
    iput-boolean v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mIsConnecting:Z

    goto :goto_6

    .line 518
    :pswitch_16
    const/4 v1, -0x1

    iput v1, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mRequestCode:I

    goto :goto_6

    .line 510
    :pswitch_data_1a
    .packed-switch -0x1
        :pswitch_b
        :pswitch_16
    .end packed-switch
.end method

.method protected hideProgressDialog()V
    .registers 4

    .prologue
    .line 464
    const/4 v1, -0x1

    iput v1, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mRequestCode:I

    .line 465
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "plusClientFragmentProgressDialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 467
    .local v0, "progressDialog":Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_15

    .line 468
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 470
    :cond_15
    return-void
.end method

.method public isAuthenticated()Z
    .registers 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isConnecting()Z
    .registers 2

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mIsConnecting:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 290
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 292
    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 293
    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 295
    :cond_11
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 263
    sget-object v0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->CONNECTION_RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mLastConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 264
    const/4 v0, -0x1

    iput v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mRequestCode:I

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mIsConnecting:Z

    .line 266
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->hideProgressDialog()V

    .line 268
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mSignInListener:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;

    if-eqz v0, :cond_1e

    .line 269
    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mSignInListener:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;

    iget-object v1, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-interface {v0, v1}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;->onGooglePlusSignedInSuccess(Lcom/google/android/gms/plus/PlusClient;)V

    .line 271
    :cond_1e
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mLastConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mIsConnecting:Z

    .line 279
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mRequestCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 280
    invoke-direct {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->resolveLastResult()V

    .line 286
    :cond_13
    :goto_13
    return-void

    .line 282
    :cond_14
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mSignInListener:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;

    if-eqz v0, :cond_13

    .line 283
    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mSignInListener:Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;

    invoke-interface {v0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$GooglePlusSignInListener;->onGooglePlusSignInFailed()V

    goto :goto_13
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const-string/jumbo v3, "GooglePlusClientFragment"

    invoke-static {v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_8
    iget-object v3, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v4, "GooglePlusClientFragment#onCreate"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_11} :catch_61

    .line 191
    :goto_11
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0, v7}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->setRetainInstance(Z)V

    .line 195
    new-instance v3, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$PlusClientFragmentHandler;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment$PlusClientFragmentHandler;-><init>(Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;)V

    iput-object v3, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mHandler:Landroid/os/Handler;

    .line 198
    new-instance v0, Lcom/google/android/gms/plus/PlusClient$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, p0, p0}, Lcom/google/android/gms/plus/PlusClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    .line 200
    .local v0, "plusClientBuilder":Lcom/google/android/gms/plus/PlusClient$Builder;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "visible_activities"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "visibleActivities":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "scopes"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "scopes":[Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/PlusClient$Builder;->setScopes([Ljava/lang/String;)Lcom/google/android/gms/plus/PlusClient$Builder;

    .line 205
    if-eqz v2, :cond_4c

    array-length v3, v2

    if-lez v3, :cond_4c

    .line 206
    invoke-virtual {v0, v2}, Lcom/google/android/gms/plus/PlusClient$Builder;->setActions([Ljava/lang/String;)Lcom/google/android/gms/plus/PlusClient$Builder;

    .line 208
    :cond_4c
    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient$Builder;->build()Lcom/google/android/gms/plus/PlusClient;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    .line 210
    if-nez p1, :cond_6b

    .line 211
    iput v6, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mRequestCode:I

    .line 217
    :goto_56
    iget-object v3, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v3}, Lcom/google/android/gms/plus/PlusClient;->connect()V

    .line 218
    iput-boolean v7, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mIsConnecting:Z

    .line 219
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    .end local v0    # "plusClientBuilder":Lcom/google/android/gms/plus/PlusClient$Builder;
    .end local v1    # "scopes":[Ljava/lang/String;
    .end local v2    # "visibleActivities":[Ljava/lang/String;
    :catch_61
    move-exception v3

    const/4 v3, 0x0

    :try_start_63
    const-string/jumbo v4, "GooglePlusClientFragment#onCreate"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_6a} :catch_61

    goto :goto_11

    .line 213
    .restart local v0    # "plusClientBuilder":Lcom/google/android/gms/plus/PlusClient$Builder;
    .restart local v1    # "scopes":[Ljava/lang/String;
    .restart local v2    # "visibleActivities":[Ljava/lang/String;
    :cond_6b
    const-string/jumbo v3, "request_code"

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mRequestCode:I

    goto :goto_56
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 226
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 227
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mIsConnecting:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 228
    :cond_f
    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->disconnect()V

    .line 230
    :cond_14
    return-void
.end method

.method public onDisconnected()V
    .registers 2

    .prologue
    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mIsConnecting:Z

    .line 300
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 240
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 241
    iget v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mRequestCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 243
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->hideProgressDialog()V

    .line 244
    invoke-direct {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->hideErrorDialog()V

    .line 248
    :cond_e
    :goto_e
    return-void

    .line 245
    :cond_f
    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mLastConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mLastConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_e

    .line 246
    invoke-direct {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->showProgressDialog()V

    goto :goto_e
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 234
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 235
    const-string/jumbo v0, "request_code"

    iget v1, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mRequestCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    .line 252
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 253
    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_26

    iget v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mRequestCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    iget-boolean v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mIsConnecting:Z

    if-nez v0, :cond_26

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mLastConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 255
    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->connect()V

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mIsConnecting:Z

    .line 258
    :cond_26
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

.method public signIn(I)V
    .registers 4
    .param p1, "requestCode"    # I

    .prologue
    .line 306
    if-gez p1, :cond_b

    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A non-negative request code is required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_b
    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 312
    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 329
    :cond_19
    :goto_19
    return-void

    .line 316
    :cond_1a
    iget v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mRequestCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    .line 321
    iput p1, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mRequestCode:I

    .line 322
    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mLastConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_29

    .line 324
    invoke-direct {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->showProgressDialog()V

    goto :goto_19

    .line 328
    :cond_29
    invoke-direct {p0}, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->resolveLastResult()V

    goto :goto_19
.end method

.method public signOut()V
    .registers 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 529
    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->clearDefaultAccount()V

    .line 532
    :cond_d
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mIsConnecting:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 533
    :cond_19
    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->disconnect()V

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mLastConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 537
    const/4 v0, -0x1

    iput v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mRequestCode:I

    .line 540
    iget-object v0, p0, Lcom/airbnb/android/fragments/gplus/GooglePlusClientFragment;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->connect()V

    .line 542
    :cond_29
    return-void
.end method
