.class Lcom/airbnb/android/fragments/CropScaleFragment$2$1;
.super Landroid/os/AsyncTask;
.source "CropScaleFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/CropScaleFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final synthetic this$1:Lcom/airbnb/android/fragments/CropScaleFragment$2;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/CropScaleFragment$2;II)V
    .registers 4

    .prologue
    .line 106
    iput-object p1, p0, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->this$1:Lcom/airbnb/android/fragments/CropScaleFragment$2;

    iput p2, p0, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->val$width:I

    iput p3, p0, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->val$height:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .registers 3

    :try_start_0
    iput-object p1, p0, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    :goto_2
    return-void

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "CropScaleFragment$2$1#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_14

    .line 106
    :goto_9
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_14
    move-exception v0

    const/4 v0, 0x0

    :try_start_16
    const-string/jumbo v1, "CropScaleFragment$2$1#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_1d} :catch_14

    goto :goto_9
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .registers 23
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 110
    const/16 v18, 0x0

    aget-object v12, p1, v18

    check-cast v12, Landroid/graphics/RectF;

    .line 112
    .local v12, "rect":Landroid/graphics/RectF;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->this$1:Lcom/airbnb/android/fragments/CropScaleFragment$2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/airbnb/android/fragments/CropScaleFragment$2;->this$0:Lcom/airbnb/android/fragments/CropScaleFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/airbnb/android/fragments/CropScaleFragment;->mFilePath:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/airbnb/android/fragments/CropScaleFragment;->access$300(Lcom/airbnb/android/fragments/CropScaleFragment;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/airbnb/android/utils/ImageUtils;->getExifOrientation(Ljava/lang/String;)I

    move-result v13

    .line 114
    .local v13, "rotationDegrees":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->this$1:Lcom/airbnb/android/fragments/CropScaleFragment$2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/airbnb/android/fragments/CropScaleFragment$2;->this$0:Lcom/airbnb/android/fragments/CropScaleFragment;

    move-object/from16 v18, v0

    # getter for: Lcom/airbnb/android/fragments/CropScaleFragment;->mFilePath:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/airbnb/android/fragments/CropScaleFragment;->access$300(Lcom/airbnb/android/fragments/CropScaleFragment;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v4

    .line 116
    .local v4, "decoder":Landroid/graphics/BitmapRegionDecoder;
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 118
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v15

    .line 119
    .local v15, "srcWidth":I
    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v14

    .line 121
    .local v14, "srcHeight":I
    const/16 v18, 0x640

    const/16 v19, 0x640

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v15, v14, v0, v1, v2}, Lcom/airbnb/android/utils/ImageUtils;->getInSampleSize(IIIIZ)I

    move-result v18

    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 126
    const/16 v18, 0x5a

    move/from16 v0, v18

    if-eq v13, v0, :cond_5d

    const/16 v18, 0x10e

    move/from16 v0, v18

    if-ne v13, v0, :cond_133

    .line 127
    :cond_5d
    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->val$width:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v17, v18, v19

    .line 128
    .local v17, "widthRatio":F
    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->val$height:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v8, v18, v19

    .line 134
    .local v8, "heightRatio":F
    :goto_89
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 135
    .local v10, "m":Landroid/graphics/Matrix;
    const/16 v18, 0x5a

    move/from16 v0, v18

    if-eq v13, v0, :cond_9a

    const/16 v18, 0x10e

    move/from16 v0, v18

    if-ne v13, v0, :cond_161

    .line 139
    :cond_9a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->val$width:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->val$height:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000

    div-float v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 140
    neg-int v0, v13

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 141
    move-object/from16 v0, p0

    iget v0, v0, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->val$height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->val$width:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000

    div-float v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 148
    :cond_fb
    :goto_fb
    move/from16 v0, v17

    invoke-virtual {v10, v8, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 149
    invoke-virtual {v10, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 151
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 152
    .local v9, "intRect":Landroid/graphics/Rect;
    invoke-virtual {v12, v9}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 155
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 156
    .local v16, "width":I
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 157
    .local v7, "height":I
    move/from16 v0, v16

    if-ge v0, v7, :cond_1ce

    .line 158
    sub-int v5, v7, v16

    .line 159
    .local v5, "diff":I
    const/16 v18, 0x0

    div-int/lit8 v19, v5, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 165
    .end local v5    # "diff":I
    :cond_124
    :goto_124
    invoke-virtual {v4, v9, v11}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 167
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 169
    invoke-static {v3, v13}, Lcom/airbnb/android/utils/ImageUtils;->compressBitmapForUpload(Landroid/graphics/Bitmap;I)Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, "filePath":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 174
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v7    # "height":I
    .end local v8    # "heightRatio":F
    .end local v9    # "intRect":Landroid/graphics/Rect;
    .end local v10    # "m":Landroid/graphics/Matrix;
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "rotationDegrees":I
    .end local v14    # "srcHeight":I
    .end local v15    # "srcWidth":I
    .end local v16    # "width":I
    .end local v17    # "widthRatio":F
    :goto_132
    return-object v6

    .line 130
    .restart local v4    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v13    # "rotationDegrees":I
    .restart local v14    # "srcHeight":I
    .restart local v15    # "srcWidth":I
    :cond_133
    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->val$width:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v17, v18, v19

    .line 131
    .restart local v17    # "widthRatio":F
    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->val$height:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v8, v18, v19

    .restart local v8    # "heightRatio":F
    goto/16 :goto_89

    .line 142
    .restart local v10    # "m":Landroid/graphics/Matrix;
    :cond_161
    const/16 v18, 0xb4

    move/from16 v0, v18

    if-ne v13, v0, :cond_fb

    .line 144
    move-object/from16 v0, p0

    iget v0, v0, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->val$width:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->val$height:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000

    div-float v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 145
    neg-int v0, v13

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 146
    move-object/from16 v0, p0

    iget v0, v0, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->val$width:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->val$height:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000

    div-float v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_fb

    .line 172
    .end local v4    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v8    # "heightRatio":F
    .end local v10    # "m":Landroid/graphics/Matrix;
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "rotationDegrees":I
    .end local v14    # "srcHeight":I
    .end local v15    # "srcWidth":I
    .end local v17    # "widthRatio":F
    :catch_1ca
    move-exception v18

    .line 174
    const/4 v6, 0x0

    goto/16 :goto_132

    .line 160
    .restart local v4    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v7    # "height":I
    .restart local v8    # "heightRatio":F
    .restart local v9    # "intRect":Landroid/graphics/Rect;
    .restart local v10    # "m":Landroid/graphics/Matrix;
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v13    # "rotationDegrees":I
    .restart local v14    # "srcHeight":I
    .restart local v15    # "srcWidth":I
    .restart local v16    # "width":I
    .restart local v17    # "widthRatio":F
    :cond_1ce
    move/from16 v0, v16

    if-ge v7, v0, :cond_124

    .line 161
    sub-int v5, v16, v7

    .line 162
    .restart local v5    # "diff":I
    div-int/lit8 v18, v5, 0x2

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->inset(II)V
    :try_end_1df
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1df} :catch_1ca

    goto/16 :goto_124
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "CropScaleFragment$2$1#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_12

    .line 106
    :goto_9
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->onPostExecute(Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_12
    move-exception v0

    const/4 v0, 0x0

    :try_start_14
    const-string/jumbo v1, "CropScaleFragment$2$1#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1b} :catch_12

    goto :goto_9
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->this$1:Lcom/airbnb/android/fragments/CropScaleFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/CropScaleFragment$2;->this$0:Lcom/airbnb/android/fragments/CropScaleFragment;

    # getter for: Lcom/airbnb/android/fragments/CropScaleFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;
    invoke-static {v0}, Lcom/airbnb/android/fragments/CropScaleFragment;->access$100(Lcom/airbnb/android/fragments/CropScaleFragment;)Lcom/airbnb/android/views/LoaderFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 180
    if-eqz p1, :cond_22

    iget-object v0, p0, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->this$1:Lcom/airbnb/android/fragments/CropScaleFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/CropScaleFragment$2;->this$0:Lcom/airbnb/android/fragments/CropScaleFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/CropScaleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 181
    iget-object v0, p0, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->this$1:Lcom/airbnb/android/fragments/CropScaleFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/CropScaleFragment$2;->this$0:Lcom/airbnb/android/fragments/CropScaleFragment;

    # getter for: Lcom/airbnb/android/fragments/CropScaleFragment;->mCropListener:Lcom/airbnb/android/fragments/CropScaleFragment$PhotoCropListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/CropScaleFragment;->access$000(Lcom/airbnb/android/fragments/CropScaleFragment;)Lcom/airbnb/android/fragments/CropScaleFragment$PhotoCropListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/airbnb/android/fragments/CropScaleFragment$PhotoCropListener;->onCropComplete(Ljava/lang/String;)V

    .line 183
    :cond_22
    return-void
.end method
