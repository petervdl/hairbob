.class public Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;
.super Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;
.source "CompleteProfilePhotoFragment.java"

# interfaces
.implements Lcom/airbnb/android/analytics/VerifiedIdAnalytics$VerifiedIdStrapper;
.implements Lcom/airbnb/android/fragments/CropScaleFragment$PhotoCropListener;
.implements Lcom/airbnb/android/interfaces/PhotoVerificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$8;,
        Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;
    }
.end annotation


# static fields
.field private static final ARG_BITMAP:Ljava/lang/String; = "bitmap"

.field private static final ARG_FILE_PATH:Ljava/lang/String; = "file_path"

.field private static final ARG_GL_MAX_TEXTURE_SIZE:Ljava/lang/String; = "max_texture_size"

.field private static final ARG_ROTATION:Ljava/lang/String; = "rotation"

.field private static final ARG_STATE:Ljava/lang/String; = "state"

.field private static final CROP_SCALE_STATE:Ljava/lang/String; = "CROP_SCALE"

.field public static final GALLERY_REQUEST:I = 0x2

.field private static final MAX_PROFILE_PHOTO_SIZE:I = 0x500

.field public static final PHOTO_FILE_NAME:Ljava/lang/String; = "profilePicture.png"

.field public static final PHOTO_REQUEST:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapTask:Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;

.field private mCircleBadgeViewPhoto:Lcom/airbnb/android/views/CircleBadgeView;

.field private mCropContentFrame:Landroid/widget/FrameLayout;

.field private mFilePath:Ljava/lang/String;

.field private mGLMaxTextureSize:I

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mPhotoConfirmationButtons:Landroid/widget/LinearLayout;

.field private mPreviewPhoto:Landroid/graphics/Bitmap;

.field private mRotation:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mState:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const-class v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;-><init>()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->completePhotoSelection()V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->showCropFragment(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$302(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mGLMaxTextureSize:I

    return p1
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;Ljava/io/File;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->uploadPhoto(Ljava/io/File;)V

    return-void
.end method

.method private completePhotoSelection()V
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_54

    .line 338
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/AirbnbApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 343
    :goto_13
    :try_start_13
    const-string/jumbo v4, "profilepic"

    const-string/jumbo v5, "jpg"

    invoke-static {v4, v5, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 345
    .local v2, "outputFile":Ljava/io/File;
    new-instance v3, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$6;

    invoke-direct {v3, p0, v2}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$6;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;Ljava/io/File;)V

    .line 355
    .local v3, "task":Lcom/airbnb/android/tasks/MemoryBitmapScalingTask;
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mBitmap:Landroid/graphics/Bitmap;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0x500

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x500

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    instance-of v6, v3, Landroid/os/AsyncTask;

    if-nez v6, :cond_5d

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/tasks/MemoryBitmapScalingTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_4c} :catch_63

    .line 360
    .end local v2    # "outputFile":Ljava/io/File;
    .end local v3    # "task":Lcom/airbnb/android/tasks/MemoryBitmapScalingTask;
    :goto_4c
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->getCompleteProfileActivity()Lcom/airbnb/android/activities/CompleteProfileActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/activities/CompleteProfileActivity;->completeVerification()V

    .line 361
    return-void

    .line 340
    :cond_54
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_13

    .line 355
    .restart local v2    # "outputFile":Ljava/io/File;
    .restart local v3    # "task":Lcom/airbnb/android/tasks/MemoryBitmapScalingTask;
    :cond_5d
    :try_start_5d
    check-cast v3, Landroid/os/AsyncTask;

    .end local v3    # "task":Lcom/airbnb/android/tasks/MemoryBitmapScalingTask;
    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_62} :catch_63

    goto :goto_4c

    .line 356
    .end local v2    # "outputFile":Ljava/io/File;
    :catch_63
    move-exception v1

    .line 357
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Could not access photo"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method

.method private getRotation()I
    .registers 4

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 289
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    return v1
.end method

.method private initGLSurfaceView()V
    .registers 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$5;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$5;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 315
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 316
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 317
    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;
    .registers 1

    .prologue
    .line 56
    new-instance v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;-><init>()V

    return-object v0
.end method

.method private showCropFragment(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "previewPhoto"    # Landroid/graphics/Bitmap;

    .prologue
    .line 320
    iput-object p2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mPreviewPhoto:Landroid/graphics/Bitmap;

    .line 321
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->getCompleteProfileActivity()Lcom/airbnb/android/activities/CompleteProfileActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/activities/CompleteProfileActivity;->hideProgressBar()V

    .line 322
    invoke-static {p1}, Lcom/airbnb/android/fragments/CropScaleFragment;->newInstance(Ljava/lang/String;)Lcom/airbnb/android/fragments/CropScaleFragment;

    move-result-object v0

    .line 323
    .local v0, "f":Lcom/airbnb/android/fragments/CropScaleFragment;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mBitmapTask:Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;

    .line 324
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mScrollView:Landroid/widget/ScrollView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 325
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mCropContentFrame:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 326
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080187

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "CROP_SCALE"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 327
    return-void
.end method

.method private uploadPhoto(Ljava/io/File;)V
    .registers 5
    .param p1, "imageFile"    # Ljava/io/File;

    .prologue
    .line 364
    new-instance v0, Lcom/airbnb/android/requests/SetProfilePhoto;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/airbnb/android/requests/SetProfilePhoto;-><init>(Ljava/io/File;Lcom/airbnb/android/requests/RequestListener;)V

    .line 365
    .local v0, "photoRequest":Lcom/airbnb/android/requests/SetProfilePhoto;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/SetProfilePhoto;->execute()V

    .line 367
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/airbnb/android/models/User;->setHasProfilePic(Z)V

    .line 368
    return-void
.end method


# virtual methods
.method public getImageBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mPreviewPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;
    .registers 4

    .prologue
    .line 331
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "reservation_id"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/CompleteProfileActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getReservationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 203
    packed-switch p1, :pswitch_data_48

    .line 240
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 242
    :cond_7
    :goto_7
    return-void

    .line 205
    :pswitch_8
    if-ne p2, v2, :cond_7

    .line 207
    :try_start_a
    const-string/jumbo v2, "profilePicture.png"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airbnb/android/utils/CameraHelper;->getTempFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 208
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->onPhotoCapture(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_20} :catch_21

    goto :goto_7

    .line 209
    .end local v1    # "uri":Landroid/net/Uri;
    :catch_21
    move-exception v0

    .line 210
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 216
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :pswitch_2c
    if-ne p2, v2, :cond_7

    .line 217
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 218
    .restart local v1    # "uri":Landroid/net/Uri;
    new-instance v2, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$3;

    invoke-direct {v2, p0, v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$3;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    instance-of v4, v2, Landroid/os/AsyncTask;

    if-nez v4, :cond_42

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_7

    :cond_42
    check-cast v2, Landroid/os/AsyncTask;

    invoke-static {v2, v3}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_7

    .line 203
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_8
        :pswitch_2c
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 97
    const v5, 0x7f030082

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 99
    .local v4, "view":Landroid/view/View;
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->setHasOptionsMenu(Z)V

    .line 101
    const v5, 0x7f080027

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/opengl/GLSurfaceView;

    iput-object v5, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 102
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->initGLSurfaceView()V

    .line 104
    const v5, 0x7f080039

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/views/CircleBadgeView;

    iput-object v5, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mCircleBadgeViewPhoto:Lcom/airbnb/android/views/CircleBadgeView;

    .line 105
    iget-object v5, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mCircleBadgeViewPhoto:Lcom/airbnb/android/views/CircleBadgeView;

    invoke-virtual {v5}, Lcom/airbnb/android/views/CircleBadgeView;->initializeAsInactiveBadge()V

    .line 107
    const v5, 0x7f080182

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 108
    const v5, 0x7f080187

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mCropContentFrame:Landroid/widget/FrameLayout;

    .line 109
    const v5, 0x7f080184

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mPhotoConfirmationButtons:Landroid/widget/LinearLayout;

    .line 111
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->getCompleteProfileActivity()Lcom/airbnb/android/activities/CompleteProfileActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/activities/CompleteProfileActivity;->showProgressBar()V

    .line 113
    sget-object v5, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;->PHOTO_PICKER:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    iput-object v5, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mState:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    .line 114
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->getRotation()I

    move-result v5

    iput v5, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mRotation:I

    .line 116
    if-eqz p3, :cond_fe

    .line 117
    const-string/jumbo v5, "max_texture_size"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mGLMaxTextureSize:I

    .line 118
    const-string/jumbo v5, "state"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 119
    .local v3, "ordinal":I
    const-string/jumbo v5, "rotation"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mRotation:I

    .line 120
    const-string/jumbo v5, "bitmap"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mBitmap:Landroid/graphics/Bitmap;

    .line 121
    invoke-static {}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;->values()[Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    move-result-object v5

    aget-object v5, v5, v3

    iput-object v5, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mState:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    .line 123
    sget-object v5, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$8;->$SwitchMap$com$airbnb$android$fragments$completeprofile$CompleteProfilePhotoFragment$State:[I

    iget-object v6, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mState:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    invoke-virtual {v6}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_106

    .line 148
    .end local v3    # "ordinal":I
    :goto_97
    const v5, 0x7f080185

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 149
    .local v0, "changeProfilePhoto":Landroid/widget/Button;
    new-instance v5, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$1;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$1;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const v5, 0x7f080186

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 162
    .local v1, "completePhotoSelection":Landroid/widget/Button;
    new-instance v5, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$2;

    invoke-direct {v5, p0, v1, v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$2;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    return-object v4

    .line 125
    .end local v0    # "changeProfilePhoto":Landroid/widget/Button;
    .end local v1    # "completePhotoSelection":Landroid/widget/Button;
    .restart local v3    # "ordinal":I
    :pswitch_ba
    const-string/jumbo v5, "file_path"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mFilePath:Ljava/lang/String;

    .line 126
    iget-object v5, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mFilePath:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->onPhotoCapture(Ljava/lang/String;)V

    goto :goto_97

    .line 129
    :pswitch_c9
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f080183

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 130
    .local v2, "f":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_e1

    instance-of v5, v2, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoConfirmChildFragment;

    if-eqz v5, :cond_e1

    .line 131
    check-cast v2, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoConfirmChildFragment;

    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    iget-object v5, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoConfirmChildFragment;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 133
    :cond_e1
    iget-object v5, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mPhotoConfirmationButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    sget-object v5, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;->PHOTO_CONFIRM:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    iput-object v5, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mState:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    .line 135
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->getCompleteProfileActivity()Lcom/airbnb/android/activities/CompleteProfileActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/activities/CompleteProfileActivity;->showProgressBar()V

    .line 136
    iget-object v5, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mCropContentFrame:Landroid/widget/FrameLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 137
    iget-object v5, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_97

    .line 145
    .end local v3    # "ordinal":I
    :cond_fe
    invoke-static {}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;->newInstance()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoSelectChildFragment;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->showChildFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_97

    .line 123
    :pswitch_data_106
    .packed-switch 0x1
        :pswitch_ba
        :pswitch_c9
    .end packed-switch
.end method

.method public onCropCancel()V
    .registers 3

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->getCompleteProfileActivity()Lcom/airbnb/android/activities/CompleteProfileActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->showProgressBar()V

    .line 283
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mCropContentFrame:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 285
    return-void
.end method

.method public onCropComplete(Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 266
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mBitmap:Landroid/graphics/Bitmap;

    .line 267
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mPhotoConfirmationButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    sget-object v1, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;->PHOTO_CONFIRM:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    iput-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mState:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    .line 270
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->getCompleteProfileActivity()Lcom/airbnb/android/activities/CompleteProfileActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/activities/CompleteProfileActivity;->showProgressBar()V

    .line 271
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mCropContentFrame:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 272
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 274
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    .line 275
    invoke-static {}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoConfirmChildFragment;->newInstance()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoConfirmChildFragment;

    move-result-object v0

    .line 276
    .local v0, "f":Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoConfirmChildFragment;
    invoke-virtual {v0, p1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoConfirmChildFragment;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 277
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080183

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 278
    return-void
.end method

.method public onCropComplete(Ljava/lang/String;)V
    .registers 7
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 372
    new-instance v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$7;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$7;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mBitmapTask:Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;

    .line 379
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mBitmapTask:Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mGLMaxTextureSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    instance-of v3, v0, Landroid/os/AsyncTask;

    if-nez v3, :cond_22

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 380
    :goto_21
    return-void

    .line 379
    :cond_22
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_21
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 193
    invoke-super {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->onPause()V

    .line 195
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mBitmapTask:Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;

    if-eqz v0, :cond_10

    .line 196
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mBitmapTask:Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;->cancel(Z)Z

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mBitmapTask:Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;

    .line 199
    :cond_10
    return-void
.end method

.method public onPhotoCapture(Ljava/lang/String;)V
    .registers 7
    .param p1, "uriString"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 247
    sget-object v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;->PHOTO_CROP:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    iput-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mState:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    .line 248
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mFilePath:Ljava/lang/String;

    .line 251
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->getRotation()I

    move-result v0

    iget v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mRotation:I

    if-eq v0, v1, :cond_f

    .line 263
    :goto_e
    return-void

    .line 255
    :cond_f
    new-instance v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$4;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$4;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mBitmapTask:Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;

    .line 262
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mBitmapTask:Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mGLMaxTextureSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    instance-of v3, v0, Landroid/os/AsyncTask;

    if-nez v3, :cond_31

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_e

    :cond_31
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_e
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 184
    const-string/jumbo v0, "state"

    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mState:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    const-string/jumbo v0, "file_path"

    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string/jumbo v0, "max_texture_size"

    iget v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mGLMaxTextureSize:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    const-string/jumbo v0, "rotation"

    iget v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mRotation:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    const-string/jumbo v0, "bitmap"

    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 189
    return-void
.end method
