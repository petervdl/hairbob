.class public Lcom/airbnb/android/activities/CropPhotoActivity;
.super Lcom/airbnb/android/activities/AirActivity;
.source "CropPhotoActivity.java"

# interfaces
.implements Lcom/airbnb/android/fragments/CropScaleFragment$PhotoCropListener;


# static fields
.field public static final EXTRA_PHOTO_URL:Ljava/lang/String; = "photo_url"

.field public static final EXTRA_URI:Ljava/lang/String; = "uri"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapTask:Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mGLMaxTextureSize:I

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mPhotoRequest:Lcom/airbnb/android/requests/SetProfilePhoto;

.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/airbnb/android/activities/CropPhotoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/activities/CropPhotoActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/airbnb/android/activities/AirActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/activities/CropPhotoActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/activities/CropPhotoActivity;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/airbnb/android/activities/CropPhotoActivity;->hideProgressSpinner()V

    return-void
.end method

.method static synthetic access$102(Lcom/airbnb/android/activities/CropPhotoActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/CropPhotoActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/airbnb/android/activities/CropPhotoActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/airbnb/android/activities/CropPhotoActivity;Landroid/graphics/Bitmap;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/CropPhotoActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/airbnb/android/activities/CropPhotoActivity;->showCropFragment(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$302(Lcom/airbnb/android/activities/CropPhotoActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/CropPhotoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/airbnb/android/activities/CropPhotoActivity;->mGLMaxTextureSize:I

    return p1
.end method

.method static synthetic access$400(Lcom/airbnb/android/activities/CropPhotoActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/activities/CropPhotoActivity;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/airbnb/android/activities/CropPhotoActivity;->scalePhoto()V

    return-void
.end method

.method private hideProgressSpinner()V
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/airbnb/android/activities/CropPhotoActivity;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    .line 141
    iget-object v0, p0, Lcom/airbnb/android/activities/CropPhotoActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 143
    :cond_9
    return-void
.end method

.method private initGLSurfaceView()V
    .registers 3

    .prologue
    .line 107
    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/CropPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    iput-object v0, p0, Lcom/airbnb/android/activities/CropPhotoActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 108
    iget-object v0, p0, Lcom/airbnb/android/activities/CropPhotoActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/airbnb/android/activities/CropPhotoActivity$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/CropPhotoActivity$2;-><init>(Lcom/airbnb/android/activities/CropPhotoActivity;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 131
    iget-object v0, p0, Lcom/airbnb/android/activities/CropPhotoActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 132
    iget-object v0, p0, Lcom/airbnb/android/activities/CropPhotoActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 133
    return-void
.end method

.method public static intentForUri(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/CropPhotoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    return-object v0
.end method

.method private scalePhoto()V
    .registers 6

    .prologue
    .line 85
    new-instance v0, Lcom/airbnb/android/activities/CropPhotoActivity$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/activities/CropPhotoActivity$1;-><init>(Lcom/airbnb/android/activities/CropPhotoActivity;)V

    iput-object v0, p0, Lcom/airbnb/android/activities/CropPhotoActivity;->mBitmapTask:Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;

    .line 95
    iget-object v0, p0, Lcom/airbnb/android/activities/CropPhotoActivity;->mBitmapTask:Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/airbnb/android/activities/CropPhotoActivity;->mUri:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/airbnb/android/activities/CropPhotoActivity;->mGLMaxTextureSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    instance-of v3, v0, Landroid/os/AsyncTask;

    if-nez v3, :cond_24

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    :goto_23
    return-void

    .line 95
    :cond_24
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_23
.end method

.method private showCropFragment(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 100
    iget-object v1, p0, Lcom/airbnb/android/activities/CropPhotoActivity;->mUri:Ljava/lang/String;

    invoke-static {v1}, Lcom/airbnb/android/fragments/CropScaleFragment;->newInstance(Ljava/lang/String;)Lcom/airbnb/android/fragments/CropScaleFragment;

    move-result-object v0

    .line 101
    .local v0, "f":Lcom/airbnb/android/fragments/CropScaleFragment;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/airbnb/android/activities/CropPhotoActivity;->mBitmapTask:Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;

    .line 102
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CropPhotoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080025

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 103
    return-void
.end method

.method private uploadPhoto(Ljava/io/File;)V
    .registers 4
    .param p1, "outputFile"    # Ljava/io/File;

    .prologue
    .line 151
    new-instance v0, Lcom/airbnb/android/requests/SetProfilePhoto;

    new-instance v1, Lcom/airbnb/android/activities/CropPhotoActivity$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/CropPhotoActivity$3;-><init>(Lcom/airbnb/android/activities/CropPhotoActivity;)V

    invoke-direct {v0, p1, v1}, Lcom/airbnb/android/requests/SetProfilePhoto;-><init>(Ljava/io/File;Lcom/airbnb/android/requests/RequestListener;)V

    iput-object v0, p0, Lcom/airbnb/android/activities/CropPhotoActivity;->mPhotoRequest:Lcom/airbnb/android/requests/SetProfilePhoto;

    .line 169
    iget-object v0, p0, Lcom/airbnb/android/activities/CropPhotoActivity;->mPhotoRequest:Lcom/airbnb/android/requests/SetProfilePhoto;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/SetProfilePhoto;->execute()V

    .line 170
    return-void
.end method


# virtual methods
.method public getImageBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/airbnb/android/activities/CropPhotoActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/CropPhotoActivity;->setContentView(I)V

    .line 57
    const v0, 0x7f0e074f

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/CropPhotoActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 59
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CropPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/activities/CropPhotoActivity;->mUri:Ljava/lang/String;

    .line 61
    const v0, 0x7f0e03ff

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/CropPhotoActivity;->showProgressSpinner(I)V

    .line 63
    invoke-direct {p0}, Lcom/airbnb/android/activities/CropPhotoActivity;->initGLSurfaceView()V

    .line 64
    return-void
.end method

.method public onCropCancel()V
    .registers 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CropPhotoActivity;->finish()V

    .line 148
    return-void
.end method

.method public onCropComplete(Ljava/lang/String;)V
    .registers 3
    .param p1, "outputFile"    # Ljava/lang/String;

    .prologue
    .line 174
    const v0, 0x7f0e07aa

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/CropPhotoActivity;->showProgressSpinner(I)V

    .line 175
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/CropPhotoActivity;->uploadPhoto(Ljava/io/File;)V

    .line 176
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onDestroy()V

    .line 70
    iget-object v0, p0, Lcom/airbnb/android/activities/CropPhotoActivity;->mBitmapTask:Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;

    if-eqz v0, :cond_d

    .line 71
    iget-object v0, p0, Lcom/airbnb/android/activities/CropPhotoActivity;->mBitmapTask:Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;->cancel(Z)Z

    .line 74
    :cond_d
    iget-object v0, p0, Lcom/airbnb/android/activities/CropPhotoActivity;->mPhotoRequest:Lcom/airbnb/android/requests/SetProfilePhoto;

    if-eqz v0, :cond_19

    .line 75
    iget-object v0, p0, Lcom/airbnb/android/activities/CropPhotoActivity;->mPhotoRequest:Lcom/airbnb/android/requests/SetProfilePhoto;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/SetProfilePhoto;->cancel()V

    .line 76
    invoke-direct {p0}, Lcom/airbnb/android/activities/CropPhotoActivity;->hideProgressSpinner()V

    .line 79
    :cond_19
    iget-object v0, p0, Lcom/airbnb/android/activities/CropPhotoActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_22

    .line 80
    iget-object v0, p0, Lcom/airbnb/android/activities/CropPhotoActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 82
    :cond_22
    return-void
.end method

.method public showProgressSpinner(I)V
    .registers 5
    .param p1, "StringId"    # I

    .prologue
    .line 136
    const v0, 0x7f0e03fe

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/CropPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/CropPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/activities/CropPhotoActivity;->mDialog:Landroid/app/ProgressDialog;

    .line 137
    return-void
.end method
