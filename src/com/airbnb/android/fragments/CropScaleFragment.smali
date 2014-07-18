.class public Lcom/airbnb/android/fragments/CropScaleFragment;
.super Landroid/support/v4/app/Fragment;
.source "CropScaleFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/CropScaleFragment$PhotoCropListener;
    }
.end annotation


# static fields
.field private static final ARG_FILE_PATH:Ljava/lang/String; = "file_path"

.field private static final MAX_IMAGE_SIZE:I = 0x640

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCropImageView:Lcom/airbnb/android/views/CropImageView;

.field private mCropListener:Lcom/airbnb/android/fragments/CropScaleFragment$PhotoCropListener;

.field private mFilePath:Ljava/lang/String;

.field private mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-class v0, Lcom/airbnb/android/fragments/CropScaleFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/CropScaleFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/CropScaleFragment;)Lcom/airbnb/android/fragments/CropScaleFragment$PhotoCropListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CropScaleFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/airbnb/android/fragments/CropScaleFragment;->mCropListener:Lcom/airbnb/android/fragments/CropScaleFragment$PhotoCropListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/CropScaleFragment;)Lcom/airbnb/android/views/LoaderFrame;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CropScaleFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/airbnb/android/fragments/CropScaleFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/CropScaleFragment;)Lcom/airbnb/android/views/CropImageView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CropScaleFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/airbnb/android/fragments/CropScaleFragment;->mCropImageView:Lcom/airbnb/android/views/CropImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/CropScaleFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CropScaleFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/airbnb/android/fragments/CropScaleFragment;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/airbnb/android/fragments/CropScaleFragment;
    .registers 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v1, Lcom/airbnb/android/fragments/CropScaleFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/CropScaleFragment;-><init>()V

    .line 35
    .local v1, "f":Lcom/airbnb/android/fragments/CropScaleFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "file_path"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/CropScaleFragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 196
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CropScaleFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 197
    .local v0, "parentFragment":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Lcom/airbnb/android/fragments/CropScaleFragment$PhotoCropListener;

    if-eqz v1, :cond_10

    .line 198
    check-cast v0, Lcom/airbnb/android/fragments/CropScaleFragment$PhotoCropListener;

    .end local v0    # "parentFragment":Landroid/support/v4/app/Fragment;
    iput-object v0, p0, Lcom/airbnb/android/fragments/CropScaleFragment;->mCropListener:Lcom/airbnb/android/fragments/CropScaleFragment$PhotoCropListener;

    .line 204
    .end local p1    # "activity":Landroid/app/Activity;
    :goto_f
    return-void

    .line 199
    .restart local v0    # "parentFragment":Landroid/support/v4/app/Fragment;
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_10
    instance-of v1, p1, Lcom/airbnb/android/fragments/CropScaleFragment$PhotoCropListener;

    if-eqz v1, :cond_19

    .line 200
    check-cast p1, Lcom/airbnb/android/fragments/CropScaleFragment$PhotoCropListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/airbnb/android/fragments/CropScaleFragment;->mCropListener:Lcom/airbnb/android/fragments/CropScaleFragment$PhotoCropListener;

    goto :goto_f

    .line 202
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The activity or parent fragment must implement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/airbnb/android/fragments/CropScaleFragment$PhotoCropListener;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    const-string/jumbo v0, "CropScaleFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Lcom/airbnb/android/fragments/CropScaleFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "CropScaleFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_f} :catch_27

    .line 58
    :goto_f
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/CropScaleFragment;->setHasOptionsMenu(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CropScaleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "file_path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/CropScaleFragment;->mFilePath:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_27
    move-exception v0

    const/4 v0, 0x0

    :try_start_29
    const-string/jumbo v1, "CropScaleFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_30} :catch_27

    goto :goto_f
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v7, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/airbnb/android/fragments/CropScaleFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v5, "CropScaleFragment#onCreateView"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_a} :catch_82

    .line 67
    :goto_a
    const v4, 0x7f03008a

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, "v":Landroid/view/View;
    const v4, 0x7f080054

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/LoaderFrame;

    iput-object v4, p0, Lcom/airbnb/android/fragments/CropScaleFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    .line 71
    const v4, 0x7f080194

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/CropImageView;

    iput-object v4, p0, Lcom/airbnb/android/fragments/CropScaleFragment;->mCropImageView:Lcom/airbnb/android/views/CropImageView;

    .line 72
    iget-object v4, p0, Lcom/airbnb/android/fragments/CropScaleFragment;->mCropImageView:Lcom/airbnb/android/views/CropImageView;

    iget-object v5, p0, Lcom/airbnb/android/fragments/CropScaleFragment;->mCropListener:Lcom/airbnb/android/fragments/CropScaleFragment$PhotoCropListener;

    invoke-interface {v5}, Lcom/airbnb/android/fragments/CropScaleFragment$PhotoCropListener;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/CropImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 73
    invoke-virtual {v2, v7, v7}, Landroid/view/View;->measure(II)V

    .line 75
    const v4, 0x7f080195

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 77
    .local v3, "window":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_8d

    .line 79
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 80
    iget-object v4, p0, Lcom/airbnb/android/fragments/CropScaleFragment;->mCropImageView:Lcom/airbnb/android/views/CropImageView;

    invoke-virtual {v4}, Lcom/airbnb/android/views/CropImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 87
    :goto_5c
    const v4, 0x7f080197

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/ColorizedIconView;

    .line 88
    .local v1, "cancel":Lcom/airbnb/android/views/ColorizedIconView;
    new-instance v4, Lcom/airbnb/android/fragments/CropScaleFragment$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/CropScaleFragment$1;-><init>(Lcom/airbnb/android/fragments/CropScaleFragment;)V

    invoke-virtual {v1, v4}, Lcom/airbnb/android/views/ColorizedIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v4, 0x7f080198

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/ColorizedIconView;

    .line 97
    .local v0, "accept":Lcom/airbnb/android/views/ColorizedIconView;
    new-instance v4, Lcom/airbnb/android/fragments/CropScaleFragment$2;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/CropScaleFragment$2;-><init>(Lcom/airbnb/android/fragments/CropScaleFragment;)V

    invoke-virtual {v0, v4}, Lcom/airbnb/android/views/ColorizedIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v2

    .line 4294967295
    .end local v0    # "accept":Lcom/airbnb/android/views/ColorizedIconView;
    .end local v1    # "cancel":Lcom/airbnb/android/views/ColorizedIconView;
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "window":Landroid/view/View;
    :catch_82
    move-exception v4

    const/4 v4, 0x0

    :try_start_84
    const-string/jumbo v5, "CropScaleFragment#onCreateView"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_8b} :catch_82

    goto/16 :goto_a

    .line 83
    .restart local v2    # "v":Landroid/view/View;
    .restart local v3    # "window":Landroid/view/View;
    :cond_8d
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 84
    iget-object v4, p0, Lcom/airbnb/android/fragments/CropScaleFragment;->mCropImageView:Lcom/airbnb/android/views/CropImageView;

    invoke-virtual {v4}, Lcom/airbnb/android/views/CropImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_5c
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
