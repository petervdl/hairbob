.class public Lcom/airbnb/android/fragments/ImageFragment;
.super Landroid/support/v4/app/Fragment;
.source "ImageFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final ARGS_DEFAULT_IMAGE_RES:Ljava/lang/String; = "bg_color"

.field private static final ARGS_FRAGMENT_TO_USE:Ljava/lang/String; = "custom_fragment_res"

.field private static final ARGS_IMAGE_CAPTION:Ljava/lang/String; = "image_caption"

.field private static final ARGS_IMAGE_FILL:Ljava/lang/String; = "fill"

.field private static final ARGS_IMAGE_URL:Ljava/lang/String; = "image_url"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;II)Lcom/airbnb/android/fragments/ImageFragment;
    .registers 7
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "imageCaption"    # Ljava/lang/String;
    .param p2, "fragmentLayoutRes"    # I
    .param p3, "defaultImageRes"    # I

    .prologue
    .line 30
    new-instance v1, Lcom/airbnb/android/fragments/ImageFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/ImageFragment;-><init>()V

    .line 31
    .local v1, "f":Lcom/airbnb/android/fragments/ImageFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "image_url"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string/jumbo v2, "image_caption"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string/jumbo v2, "custom_fragment_res"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    const-string/jumbo v2, "bg_color"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ImageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/airbnb/android/fragments/ImageFragment;
    .registers 6
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "imageCaption"    # Ljava/lang/String;
    .param p2, "fill"    # Z

    .prologue
    .line 42
    new-instance v1, Lcom/airbnb/android/fragments/ImageFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/ImageFragment;-><init>()V

    .line 43
    .local v1, "f":Lcom/airbnb/android/fragments/ImageFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "image_url"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string/jumbo v2, "image_caption"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string/jumbo v2, "fill"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ImageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 21

    .prologue
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/airbnb/android/fragments/ImageFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v15, "ImageFragment#onCreateView"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_c} :catch_9f

    .line 54
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v14

    const-string/jumbo v15, "custom_fragment_res"

    const v16, 0x7f0300a1

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 55
    .local v5, "customFragmentRes":I
    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 58
    .local v13, "view":Landroid/view/View;
    const v14, 0x7f080034

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 59
    .local v8, "imageSpacer":Landroid/view/View;
    if-eqz v8, :cond_47

    .line 61
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getScreenSize()Landroid/graphics/Point;

    move-result-object v12

    .line 62
    .local v12, "screenSize":Landroid/graphics/Point;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 63
    .local v10, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v14, v12, Landroid/graphics/Point;->x:I

    iget v15, v12, Landroid/graphics/Point;->y:I

    if-ge v14, v15, :cond_ab

    .line 64
    iget v14, v12, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    const v15, 0x3f2aaaab

    mul-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    :goto_44
    invoke-virtual {v8, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .end local v10    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v12    # "screenSize":Landroid/graphics/Point;
    :cond_47
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/ImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 72
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v14, "image_url"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 73
    .local v9, "imageUrl":Ljava/lang/String;
    const-string/jumbo v14, "fill"

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 74
    .local v6, "fill":Z
    const v14, 0x7f0801c8

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/airbnb/android/views/AirImageView;

    .line 75
    .local v7, "image":Lcom/airbnb/android/views/AirImageView;
    const-string/jumbo v14, "bg_color"

    const v15, 0x7f0a001e

    invoke-virtual {v2, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 76
    .local v3, "bgColor":I
    invoke-virtual {v7, v3}, Lcom/airbnb/android/views/AirImageView;->setDefaultImageResId(I)V

    .line 78
    if-nez v6, :cond_b6

    const/4 v14, 0x1

    :goto_73
    invoke-virtual {v7, v14}, Lcom/airbnb/android/views/AirImageView;->setAdjustViewBounds(Z)V

    .line 79
    if-eqz v6, :cond_b8

    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_7a
    invoke-virtual {v7, v14}, Lcom/airbnb/android/views/AirImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 81
    invoke-virtual {v7, v9}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 83
    const v14, 0x7f0801c9

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 84
    .local v11, "photoCaptionView":Landroid/widget/TextView;
    const-string/jumbo v14, "image_caption"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "caption":Ljava/lang/String;
    if-eqz v11, :cond_9b

    .line 86
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_bb

    .line 87
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_9b
    :goto_9b
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v13

    .line 4294967295
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v3    # "bgColor":I
    .end local v4    # "caption":Ljava/lang/String;
    .end local v5    # "customFragmentRes":I
    .end local v6    # "fill":Z
    .end local v7    # "image":Lcom/airbnb/android/views/AirImageView;
    .end local v8    # "imageSpacer":Landroid/view/View;
    .end local v9    # "imageUrl":Ljava/lang/String;
    .end local v11    # "photoCaptionView":Landroid/widget/TextView;
    .end local v13    # "view":Landroid/view/View;
    :catch_9f
    move-exception v14

    const/4 v14, 0x0

    :try_start_a1
    const-string/jumbo v15, "ImageFragment#onCreateView"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_a9} :catch_9f

    goto/16 :goto_c

    .line 66
    .restart local v5    # "customFragmentRes":I
    .restart local v8    # "imageSpacer":Landroid/view/View;
    .restart local v10    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v12    # "screenSize":Landroid/graphics/Point;
    .restart local v13    # "view":Landroid/view/View;
    :cond_ab
    iget v14, v12, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    const v15, 0x3f2aaaab

    div-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_44

    .line 78
    .end local v10    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v12    # "screenSize":Landroid/graphics/Point;
    .restart local v2    # "args":Landroid/os/Bundle;
    .restart local v3    # "bgColor":I
    .restart local v6    # "fill":Z
    .restart local v7    # "image":Lcom/airbnb/android/views/AirImageView;
    .restart local v9    # "imageUrl":Ljava/lang/String;
    :cond_b6
    const/4 v14, 0x0

    goto :goto_73

    .line 79
    :cond_b8
    sget-object v14, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_7a

    .line 89
    .restart local v4    # "caption":Ljava/lang/String;
    .restart local v11    # "photoCaptionView":Landroid/widget/TextView;
    :cond_bb
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9b
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
