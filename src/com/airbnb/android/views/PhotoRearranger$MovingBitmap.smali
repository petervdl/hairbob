.class Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;
.super Ljava/lang/Object;
.source "PhotoRearranger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/views/PhotoRearranger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MovingBitmap"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCurrentScreenSpace:Landroid/graphics/Rect;

.field private mIsSelected:Z

.field private mMaxHeightInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

.field private mMaxWidthInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

.field private mMoveBackXInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

.field private mMoveBackYInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mPhoto:Lcom/airbnb/android/models/Photo;

.field private mScratchRect:Landroid/graphics/Rect;

.field private mSelectionInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

.field private mTextureSpace:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/airbnb/android/views/PhotoRearranger;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/views/PhotoRearranger;Landroid/graphics/Rect;Lcom/airbnb/android/models/Photo;)V
    .registers 22
    .param p2, "screenSpace"    # Landroid/graphics/Rect;
    .param p3, "photo"    # Lcom/airbnb/android/models/Photo;

    .prologue
    .line 126
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 127
    sget-object v2, Lcom/airbnb/android/AirbnbApplication;->sImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    invoke-virtual/range {p3 .. p3}, Lcom/airbnb/android/models/Photo;->getPictureUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap$1;-><init>(Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;Lcom/airbnb/android/views/PhotoRearranger;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 141
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mCurrentScreenSpace:Landroid/graphics/Rect;

    .line 142
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mScratchRect:Landroid/graphics/Rect;

    .line 144
    new-instance v2, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/high16 v8, 0x3f800000

    const/high16 v9, 0x3f800000

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;-><init>(Lcom/airbnb/android/views/PhotoRearranger;JJFFLandroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mSelectionInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    .line 145
    new-instance v2, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;-><init>(Lcom/airbnb/android/views/PhotoRearranger;JJFFLandroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mMoveBackXInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    .line 146
    new-instance v2, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;-><init>(Lcom/airbnb/android/views/PhotoRearranger;JJFFLandroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mMoveBackYInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    .line 148
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v8, v2

    .line 149
    .local v8, "maxWidth":F
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v15, v2

    .line 150
    .local v15, "maxHeight":F
    new-instance v2, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    move v9, v8

    invoke-direct/range {v2 .. v10}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;-><init>(Lcom/airbnb/android/views/PhotoRearranger;JJFFLandroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mMaxWidthInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    .line 151
    new-instance v9, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/16 v17, 0x0

    move-object/from16 v10, p1

    move/from16 v16, v15

    invoke-direct/range {v9 .. v17}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;-><init>(Lcom/airbnb/android/views/PhotoRearranger;JJFFLandroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mMaxHeightInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    .line 153
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mOffsetX:I

    .line 154
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mOffsetY:I

    .line 156
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mPhoto:Lcom/airbnb/android/models/Photo;

    .line 157
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mIsSelected:Z

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;Landroid/graphics/Bitmap;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mCurrentScreenSpace:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    .prologue
    .line 107
    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mOffsetX:I

    return v0
.end method

.method static synthetic access$2700(Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    .prologue
    .line 107
    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mOffsetY:I

    return v0
.end method

.method private clone(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "src"    # Landroid/graphics/Rect;
    .param p2, "dst"    # Landroid/graphics/Rect;

    .prologue
    .line 332
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 333
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 334
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 335
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 336
    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 161
    iput-object p1, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 162
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1a

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mTextureSpace:Landroid/graphics/Rect;

    .line 165
    :cond_1a
    return-void
.end method


# virtual methods
.method public addDragDelta(II)V
    .registers 4
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    .line 239
    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mOffsetX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mOffsetX:I

    .line 240
    iget v0, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mOffsetY:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mOffsetY:I

    .line 241
    return-void
.end method

.method public clearSelection()V
    .registers 2

    .prologue
    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mIsSelected:Z

    .line 317
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Z)Z
    .registers 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Z

    .prologue
    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    if-nez v21, :cond_a

    .line 245
    const/4 v10, 0x0

    .line 308
    :cond_9
    :goto_9
    return v10

    .line 248
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 249
    .local v15, "now":J
    const/4 v10, 0x0

    .line 251
    .local v10, "isAnimating":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mCurrentScreenSpace:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mCurrentScreenSpace:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v12, v21, v22

    .line 252
    .local v12, "maxWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mCurrentScreenSpace:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mCurrentScreenSpace:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v11, v21, v22

    .line 254
    .local v11, "maxHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mCurrentScreenSpace:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mScratchRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->clone(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mMaxWidthInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->getValue(J)F

    move-result v7

    .line 258
    .local v7, "currentWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mMaxHeightInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->getValue(J)F

    move-result v5

    .line 259
    .local v5, "currentHeight":F
    int-to-float v0, v12

    move/from16 v21, v0

    div-float v21, v21, v7

    int-to-float v0, v11

    move/from16 v22, v0

    div-float v22, v22, v5

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 261
    .local v6, "currentScale":F
    const/high16 v21, 0x3f800000

    sub-float v21, v21, v6

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    const/16 v22, 0x1

    cmpl-float v21, v21, v22

    if-lez v21, :cond_b6

    .line 262
    const/high16 v21, 0x3f000000

    const/high16 v22, 0x3f800000

    sub-float v22, v22, v6

    mul-float v17, v21, v22

    .line 263
    .local v17, "s":F
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v7

    move/from16 v0, v21

    float-to-int v8, v0

    .line 264
    .local v8, "insetX":I
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v9, v0

    .line 265
    .local v9, "insetY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mScratchRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Rect;->inset(II)V

    .line 266
    const/4 v10, 0x1

    .line 269
    .end local v8    # "insetX":I
    .end local v9    # "insetY":I
    .end local v17    # "s":F
    :cond_b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mSelectionInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->getValue(J)F

    move-result v18

    .line 270
    .local v18, "scale":F
    const/high16 v21, 0x3f800000

    sub-float v21, v21, v18

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    const/16 v22, 0x1

    cmpl-float v21, v21, v22

    if-lez v21, :cond_107

    .line 271
    const/high16 v21, 0x3f000000

    const/high16 v22, 0x3f800000

    sub-float v22, v18, v22

    mul-float v17, v21, v22

    .line 272
    .restart local v17    # "s":F
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v12

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    .line 273
    .local v19, "scaleInsetX":I
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v11

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    .line 274
    .local v20, "scaleInsetY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mScratchRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 275
    const/4 v10, 0x1

    .line 278
    .end local v17    # "s":F
    .end local v19    # "scaleInsetX":I
    .end local v20    # "scaleInsetY":I
    :cond_107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mScratchRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mOffsetX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mOffsetY:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Rect;->offset(II)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mMoveBackXInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->getValue(J)F

    move-result v21

    move/from16 v0, v21

    float-to-int v13, v0

    .line 281
    .local v13, "moveBackX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mMoveBackYInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->getValue(J)F

    move-result v21

    move/from16 v0, v21

    float-to-int v14, v0

    .line 282
    .local v14, "moveBackY":I
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v21

    if-gtz v21, :cond_148

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v21

    if-lez v21, :cond_154

    .line 283
    :cond_148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mScratchRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 284
    const/4 v10, 0x1

    .line 287
    :cond_154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mTextureSpace:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mScratchRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    move-object/from16 v24, v0

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mPaint:Landroid/graphics/Paint;
    invoke-static/range {v24 .. v24}, Lcom/airbnb/android/views/PhotoRearranger;->access$300(Lcom/airbnb/android/views/PhotoRearranger;)Landroid/graphics/Paint;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    move-object/from16 v21, v0

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mInMultiSelectMode:Z
    invoke-static/range {v21 .. v21}, Lcom/airbnb/android/views/PhotoRearranger;->access$400(Lcom/airbnb/android/views/PhotoRearranger;)Z

    move-result v21

    if-eqz v21, :cond_1a2

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    move-object/from16 v21, v0

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mCheckBoxUnselected:Landroid/graphics/Bitmap;
    invoke-static/range {v21 .. v21}, Lcom/airbnb/android/views/PhotoRearranger;->access$500(Lcom/airbnb/android/views/PhotoRearranger;)Landroid/graphics/Bitmap;

    move-result-object v21

    if-eqz v21, :cond_1a1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    move-object/from16 v21, v0

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mCheckBoxSelected:Landroid/graphics/Bitmap;
    invoke-static/range {v21 .. v21}, Lcom/airbnb/android/views/PhotoRearranger;->access$600(Lcom/airbnb/android/views/PhotoRearranger;)Landroid/graphics/Bitmap;

    move-result-object v21

    if-nez v21, :cond_1bf

    .line 292
    :cond_1a1
    const/4 v10, 0x1

    .line 304
    :cond_1a2
    :goto_1a2
    if-eqz p2, :cond_9

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mScratchRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    move-object/from16 v22, v0

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mHighlightPaint:Landroid/graphics/Paint;
    invoke-static/range {v22 .. v22}, Lcom/airbnb/android/views/PhotoRearranger;->access$800(Lcom/airbnb/android/views/PhotoRearranger;)Landroid/graphics/Paint;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_9

    .line 294
    :cond_1bf
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mIsSelected:Z

    move/from16 v21, v0

    if-eqz v21, :cond_234

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    move-object/from16 v21, v0

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mCheckBoxSelected:Landroid/graphics/Bitmap;
    invoke-static/range {v21 .. v21}, Lcom/airbnb/android/views/PhotoRearranger;->access$600(Lcom/airbnb/android/views/PhotoRearranger;)Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mScratchRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    move-object/from16 v23, v0

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mCheckBoxSelected:Landroid/graphics/Bitmap;
    invoke-static/range {v23 .. v23}, Lcom/airbnb/android/views/PhotoRearranger;->access$600(Lcom/airbnb/android/views/PhotoRearranger;)Landroid/graphics/Bitmap;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    move-object/from16 v23, v0

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mCheckboxPadding:I
    invoke-static/range {v23 .. v23}, Lcom/airbnb/android/views/PhotoRearranger;->access$700(Lcom/airbnb/android/views/PhotoRearranger;)I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mScratchRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    move-object/from16 v24, v0

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mCheckboxPadding:I
    invoke-static/range {v24 .. v24}, Lcom/airbnb/android/views/PhotoRearranger;->access$700(Lcom/airbnb/android/views/PhotoRearranger;)I

    move-result v24

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    move-object/from16 v24, v0

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mPaint:Landroid/graphics/Paint;
    invoke-static/range {v24 .. v24}, Lcom/airbnb/android/views/PhotoRearranger;->access$300(Lcom/airbnb/android/views/PhotoRearranger;)Landroid/graphics/Paint;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1a2

    .line 298
    :cond_234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    move-object/from16 v21, v0

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mCheckBoxUnselected:Landroid/graphics/Bitmap;
    invoke-static/range {v21 .. v21}, Lcom/airbnb/android/views/PhotoRearranger;->access$500(Lcom/airbnb/android/views/PhotoRearranger;)Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mScratchRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    move-object/from16 v23, v0

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mCheckBoxUnselected:Landroid/graphics/Bitmap;
    invoke-static/range {v23 .. v23}, Lcom/airbnb/android/views/PhotoRearranger;->access$500(Lcom/airbnb/android/views/PhotoRearranger;)Landroid/graphics/Bitmap;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    move-object/from16 v23, v0

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mCheckboxPadding:I
    invoke-static/range {v23 .. v23}, Lcom/airbnb/android/views/PhotoRearranger;->access$700(Lcom/airbnb/android/views/PhotoRearranger;)I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mScratchRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    move-object/from16 v24, v0

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mCheckboxPadding:I
    invoke-static/range {v24 .. v24}, Lcom/airbnb/android/views/PhotoRearranger;->access$700(Lcom/airbnb/android/views/PhotoRearranger;)I

    move-result v24

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    move-object/from16 v24, v0

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mPaint:Landroid/graphics/Paint;
    invoke-static/range {v24 .. v24}, Lcom/airbnb/android/views/PhotoRearranger;->access$300(Lcom/airbnb/android/views/PhotoRearranger;)Landroid/graphics/Paint;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1a2
.end method

.method public endSelection(Landroid/graphics/Rect;)V
    .registers 31
    .param p1, "targetScreenSpace"    # Landroid/graphics/Rect;

    .prologue
    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 187
    .local v4, "now":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mSelectionInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    invoke-virtual {v2, v4, v5}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->getValue(J)F

    move-result v8

    .line 189
    .local v8, "current":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mSelectionInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    invoke-virtual {v2, v4, v5}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->getValue(J)F

    move-result v27

    .line 190
    .local v27, "selection":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mMaxWidthInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    invoke-virtual {v2, v4, v5}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->getValue(J)F

    move-result v28

    .line 191
    .local v28, "width":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mMaxHeightInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    invoke-virtual {v2, v4, v5}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->getValue(J)F

    move-result v19

    .line 193
    .local v19, "height":F
    const/high16 v2, 0x3f800000

    sub-float v2, v2, v27

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v3, 0x1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4e

    .line 194
    const/high16 v2, 0x3f000000

    const/high16 v3, 0x3f800000

    sub-float v3, v27, v3

    mul-float v24, v2, v3

    .line 195
    .local v24, "s":F
    mul-float v2, v24, v28

    float-to-int v0, v2

    move/from16 v25, v0

    .line 196
    .local v25, "scaleInsetX":I
    mul-float v2, v24, v19

    float-to-int v0, v2

    move/from16 v26, v0

    .line 197
    .local v26, "scaleInsetY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mScratchRect:Landroid/graphics/Rect;

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 200
    .end local v24    # "s":F
    .end local v25    # "scaleInsetX":I
    .end local v26    # "scaleInsetY":I
    :cond_4e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mCurrentScreenSpace:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mCurrentScreenSpace:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v23, v2, v3

    .line 201
    .local v23, "maxWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mCurrentScreenSpace:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mCurrentScreenSpace:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v22, v2, v3

    .line 202
    .local v22, "maxHeight":I
    move/from16 v0, v23

    int-to-float v2, v0

    div-float v2, v2, v28

    move/from16 v0, v22

    int-to-float v3, v0

    div-float v3, v3, v19

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v18

    .line 204
    .local v18, "currentScale":F
    const/high16 v2, 0x3f800000

    sub-float v2, v2, v18

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v3, 0x1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a2

    .line 205
    const/high16 v2, 0x3f000000

    const/high16 v3, 0x3f800000

    sub-float v3, v3, v18

    mul-float v24, v2, v3

    .line 206
    .restart local v24    # "s":F
    mul-float v2, v24, v28

    float-to-int v0, v2

    move/from16 v20, v0

    .line 207
    .local v20, "insetX":I
    mul-float v2, v24, v19

    float-to-int v0, v2

    move/from16 v21, v0

    .line 208
    .local v21, "insetY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mScratchRect:Landroid/graphics/Rect;

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 211
    .end local v20    # "insetX":I
    .end local v21    # "insetY":I
    .end local v24    # "s":F
    :cond_a2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mScratchRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mOffsetX:I

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mScratchRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mOffsetY:I

    .line 214
    new-instance v2, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mAnimMS:I
    invoke-static {v6}, Lcom/airbnb/android/views/PhotoRearranger;->access$100(Lcom/airbnb/android/views/PhotoRearranger;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v4

    const/high16 v9, 0x3f800000

    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct/range {v2 .. v10}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;-><init>(Lcom/airbnb/android/views/PhotoRearranger;JJFFLandroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mSelectionInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    .line 215
    new-instance v9, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mAnimMS:I
    invoke-static {v2}, Lcom/airbnb/android/views/PhotoRearranger;->access$100(Lcom/airbnb/android/views/PhotoRearranger;)I

    move-result v2

    int-to-long v2, v2

    add-long v13, v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mOffsetX:I

    int-to-float v15, v2

    const/16 v16, 0x0

    new-instance v17, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v17 .. v17}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-wide v11, v4

    invoke-direct/range {v9 .. v17}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;-><init>(Lcom/airbnb/android/views/PhotoRearranger;JJFFLandroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mMoveBackXInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    .line 216
    new-instance v9, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mAnimMS:I
    invoke-static {v2}, Lcom/airbnb/android/views/PhotoRearranger;->access$100(Lcom/airbnb/android/views/PhotoRearranger;)I

    move-result v2

    int-to-long v2, v2

    add-long v13, v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mOffsetY:I

    int-to-float v15, v2

    const/16 v16, 0x0

    new-instance v17, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v17 .. v17}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-wide v11, v4

    invoke-direct/range {v9 .. v17}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;-><init>(Lcom/airbnb/android/views/PhotoRearranger;JJFFLandroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mMoveBackYInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    .line 218
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mOffsetX:I

    .line 219
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mOffsetY:I

    .line 220
    return-void
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mPhoto:Lcom/airbnb/android/models/Photo;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Photo;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoto()Lcom/airbnb/android/models/Photo;
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mPhoto:Lcom/airbnb/android/models/Photo;

    return-object v0
.end method

.method public isSelected()Z
    .registers 2

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mIsSelected:Z

    return v0
.end method

.method public moveTo(Landroid/graphics/Rect;)V
    .registers 20
    .param p1, "screenSpace"    # Landroid/graphics/Rect;

    .prologue
    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 224
    .local v4, "now":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mCurrentScreenSpace:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v8, v2

    .line 225
    .local v8, "deltaX":F
    new-instance v2, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mAnimMS:I
    invoke-static {v6}, Lcom/airbnb/android/views/PhotoRearranger;->access$100(Lcom/airbnb/android/views/PhotoRearranger;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v4

    const/4 v9, 0x0

    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct/range {v2 .. v10}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;-><init>(Lcom/airbnb/android/views/PhotoRearranger;JJFFLandroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mMoveBackXInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mCurrentScreenSpace:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v15, v2

    .line 227
    .local v15, "deltaY":F
    new-instance v9, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mAnimMS:I
    invoke-static {v2}, Lcom/airbnb/android/views/PhotoRearranger;->access$100(Lcom/airbnb/android/views/PhotoRearranger;)I

    move-result v2

    int-to-long v2, v2

    add-long v13, v4, v2

    const/16 v16, 0x0

    new-instance v17, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v17 .. v17}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-wide v11, v4

    invoke-direct/range {v9 .. v17}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;-><init>(Lcom/airbnb/android/views/PhotoRearranger;JJFFLandroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mMoveBackYInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    .line 228
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mCurrentScreenSpace:Landroid/graphics/Rect;

    .line 229
    return-void
.end method

.method public setScreenSpace(Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "screenSpace"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 233
    .local v2, "now":J
    iput-object p1, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mCurrentScreenSpace:Landroid/graphics/Rect;

    .line 234
    new-instance v0, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    iget-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mAnimMS:I
    invoke-static {v4}, Lcom/airbnb/android/views/PhotoRearranger;->access$100(Lcom/airbnb/android/views/PhotoRearranger;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    iget v6, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mOffsetX:I

    int-to-float v6, v6

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;-><init>(Lcom/airbnb/android/views/PhotoRearranger;JJFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mMoveBackXInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    .line 235
    new-instance v0, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    iget-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mAnimMS:I
    invoke-static {v4}, Lcom/airbnb/android/views/PhotoRearranger;->access$100(Lcom/airbnb/android/views/PhotoRearranger;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    iget v6, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mOffsetY:I

    int-to-float v6, v6

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;-><init>(Lcom/airbnb/android/views/PhotoRearranger;JJFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mMoveBackYInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    .line 236
    return-void
.end method

.method public startScale(Landroid/graphics/Rect;)V
    .registers 20
    .param p1, "targetScreenSpace"    # Landroid/graphics/Rect;

    .prologue
    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 170
    .local v3, "now":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mMaxWidthInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    invoke-virtual {v1, v3, v4}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->getValue(J)F

    move-result v7

    .line 171
    .local v7, "width":F
    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v8, v1

    .line 172
    .local v8, "maxWidth":F
    new-instance v1, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mAnimMS:I
    invoke-static {v5}, Lcom/airbnb/android/views/PhotoRearranger;->access$100(Lcom/airbnb/android/views/PhotoRearranger;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, v3

    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct/range {v1 .. v9}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;-><init>(Lcom/airbnb/android/views/PhotoRearranger;JJFFLandroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mMaxWidthInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mMaxHeightInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    invoke-virtual {v1, v3, v4}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->getValue(J)F

    move-result v15

    .line 175
    .local v15, "height":F
    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v0, v1

    move/from16 v16, v0

    .line 176
    .local v16, "maxHeight":F
    new-instance v9, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mAnimMS:I
    invoke-static {v1}, Lcom/airbnb/android/views/PhotoRearranger;->access$100(Lcom/airbnb/android/views/PhotoRearranger;)I

    move-result v1

    int-to-long v1, v1

    add-long v13, v3, v1

    new-instance v17, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v17 .. v17}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-wide v11, v3

    invoke-direct/range {v9 .. v17}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;-><init>(Lcom/airbnb/android/views/PhotoRearranger;JJFFLandroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mMaxHeightInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    .line 177
    return-void
.end method

.method public startSelection()V
    .registers 10

    .prologue
    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 181
    .local v2, "now":J
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mSelectionInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->getValue(J)F

    move-result v6

    .line 182
    .local v6, "current":F
    new-instance v0, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    iget-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mAnimMS:I
    invoke-static {v4}, Lcom/airbnb/android/views/PhotoRearranger;->access$100(Lcom/airbnb/android/views/PhotoRearranger;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    iget-object v7, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mSelectionScaleFactor:F
    invoke-static {v7}, Lcom/airbnb/android/views/PhotoRearranger;->access$200(Lcom/airbnb/android/views/PhotoRearranger;)F

    move-result v7

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;-><init>(Lcom/airbnb/android/views/PhotoRearranger;JJFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mSelectionInterpolator:Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;

    .line 183
    return-void
.end method

.method public toggleSelection()V
    .registers 2

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mIsSelected:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->mIsSelected:Z

    .line 313
    return-void

    .line 312
    :cond_8
    const/4 v0, 0x0

    goto :goto_5
.end method
