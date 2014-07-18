.class public Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;
.super Landroid/support/v4/app/Fragment;
.source "OfficialIdPhotoConfirmationFragment.java"

# interfaces
.implements Lcom/airbnb/android/analytics/VerifiedIdAnalytics$VerifiedIdStrapper;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final ARG_IS_SCALING:Ljava/lang/String; = "key_scaling"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBmTask:Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;

.field private mGLMaxTextureSize:I

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mIdPhotoPreview:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->mIdPhotoPreview:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->mGLMaxTextureSize:I

    return p1
.end method

.method private getIsFrontId()Z
    .registers 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->isCapturingFrontId()Z

    move-result v0

    return v0
.end method

.method private initGLSurfaceView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 108
    const v0, 0x7f080027

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 109
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment$2;-><init>(Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 130
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 131
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 132
    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;
    .registers 1

    .prologue
    .line 41
    new-instance v0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;
    .registers 4

    .prologue
    .line 136
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "reservation_id"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getReservationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v2, "OfficialIdPhotoConfirmationFragment#onCreateView"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_30

    .line 46
    :goto_9
    const v1, 0x7f0300c8

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->initGLSurfaceView(Landroid/view/View;)V

    .line 50
    const v1, 0x7f08015b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->mIdPhotoPreview:Landroid/widget/ImageView;

    .line 52
    invoke-direct {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->getIsFrontId()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 53
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOfflinePhotoFrontConfirmView(Lcom/airbnb/android/utils/Strap;)V

    .line 58
    :goto_2c
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v0

    .line 4294967295
    .end local v0    # "view":Landroid/view/View;
    :catch_30
    move-exception v1

    const/4 v1, 0x0

    :try_start_32
    const-string/jumbo v2, "OfficialIdPhotoConfirmationFragment#onCreateView"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_39} :catch_30

    goto :goto_9

    .line 55
    .restart local v0    # "view":Landroid/view/View;
    :cond_3a
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOfflinePhotoBackConfirmView(Lcom/airbnb/android/utils/Strap;)V

    goto :goto_2c
.end method

.method public onPause()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 91
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/OfficialIdActivity;

    .line 92
    .local v0, "activity":Lcom/airbnb/android/activities/OfficialIdActivity;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/OfficialIdActivity;->showConfirmationButtons(Z)V

    .line 94
    iget-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->mBmTask:Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->mBmTask:Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;

    invoke-virtual {v1}, Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_22

    .line 95
    iget-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->mBmTask:Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;->cancel(Z)Z

    .line 96
    iput-object v3, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->mBmTask:Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;

    .line 99
    :cond_22
    iget-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->mIdPhotoPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 100
    return-void
.end method

.method public onResume()V
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 64
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 66
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/OfficialIdActivity;

    .line 67
    .local v0, "activity":Lcom/airbnb/android/activities/OfficialIdActivity;
    invoke-virtual {v0, v8}, Lcom/airbnb/android/activities/OfficialIdActivity;->showConfirmationButtons(Z)V

    .line 69
    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getIdFrontUriString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "idFrontUriString":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/airbnb/android/activities/OfficialIdActivity;->getIdBackUriString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "idBackUriString":Ljava/lang/String;
    new-instance v4, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment$1;-><init>(Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;)V

    iput-object v4, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->mBmTask:Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;

    .line 82
    if-eqz v1, :cond_39

    move-object v3, v1

    .line 84
    .local v3, "uriString":Ljava/lang/String;
    :goto_1f
    iget-object v4, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->mBmTask:Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    iget v7, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->mGLMaxTextureSize:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    instance-of v7, v4, Landroid/os/AsyncTask;

    if-nez v7, :cond_3b

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    :goto_38
    return-void

    .end local v3    # "uriString":Ljava/lang/String;
    :cond_39
    move-object v3, v2

    .line 82
    goto :goto_1f

    .line 84
    .restart local v3    # "uriString":Ljava/lang/String;
    :cond_3b
    check-cast v4, Landroid/os/AsyncTask;

    invoke-static {v4, v5, v6}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_38
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
