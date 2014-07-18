.class public abstract Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;
.super Lcom/airbnb/android/activities/AirActivity;
.source "ViewPagerFtueBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$FtueAdapter;
    }
.end annotation


# static fields
.field protected static final BTN_FADE_ANIM_DURATION:I = 0x190

.field private static final IMAGE_FADE_ANIM_DURATION:I = 0x258

.field private static final PARALLAX_SCALE_FACTOR:F = 1.4f


# instance fields
.field private mBitmapDrawables:[Landroid/graphics/drawable/BitmapDrawable;

.field protected mCurrPage:I

.field private mCurrentColor:I

.field protected mImageBg:Landroid/widget/ImageView;

.field private mMaxPositionOffset:I

.field private mProcessImagesTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/graphics/drawable/TransitionDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondStickyButton:Lcom/airbnb/android/views/FtueStickyButton;

.field protected mStickyButton:Lcom/airbnb/android/views/FtueStickyButton;

.field private mStickyButtonBackground:Landroid/view/View;

.field private mStickyButtonDivider:Landroid/view/View;

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/airbnb/android/activities/AirActivity;-><init>()V

    .line 39
    iput v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mCurrPage:I

    .line 40
    iput v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mMaxPositionOffset:I

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mCurrentColor:I

    .line 298
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;ILcom/airbnb/android/views/DotsCounter;)V
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/airbnb/android/views/DotsCounter;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->goToNextFtuePage(ILcom/airbnb/android/views/DotsCounter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;I)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->fadeStickyToColor(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;II)V
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->parallaxScrollBackgroundImage(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;)[Landroid/graphics/drawable/BitmapDrawable;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mBitmapDrawables:[Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;Landroid/graphics/drawable/TransitionDrawable;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;
    .param p1, "x1"    # Landroid/graphics/drawable/TransitionDrawable;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->startBackgroundImagesTransition(Landroid/graphics/drawable/TransitionDrawable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    .prologue
    .line 33
    iget v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mCurrentColor:I

    return v0
.end method

.method static synthetic access$502(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mCurrentColor:I

    return p1
.end method

.method static synthetic access$600(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mStickyButtonBackground:Landroid/view/View;

    return-object v0
.end method

.method private checkFtueImplValid()V
    .registers 3

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->isParallaxMode()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->getBackgroundImageResIds()[I

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_16

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parallax mode should have at least 1 bg image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_16
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->isParallaxMode()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->getNumPages()I

    move-result v0

    invoke-virtual {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->getBackgroundImageResIds()[I

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_30

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Fade mode should have equal number of bg images as number of pages"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_30
    return-void
.end method

.method private fadeStickyToColor(I)V
    .registers 7
    .param p1, "colorResId"    # I

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 337
    .local v0, "resolvedColor":I
    iget v1, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mCurrentColor:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    .line 339
    iget-object v1, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mStickyButtonBackground:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 340
    iput v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mCurrentColor:I

    .line 346
    :goto_14
    return-void

    .line 342
    :cond_15
    iget-object v1, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 343
    iget-object v1, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mCurrentColor:I

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 344
    iget-object v1, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_14
.end method

.method private fadeToNextBackgroundImage(II)V
    .registers 3
    .param p1, "currIndex"    # I
    .param p2, "nextIndex"    # I

    .prologue
    .line 284
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->scaleBackgroundImagesIfNeeded(II)V

    .line 285
    return-void
.end method

.method private goToNextFtuePage(ILcom/airbnb/android/views/DotsCounter;)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "mDots"    # Lcom/airbnb/android/views/DotsCounter;

    .prologue
    .line 288
    invoke-virtual {p2, p1}, Lcom/airbnb/android/views/DotsCounter;->setSelectedDot(I)V

    .line 290
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->isParallaxMode()Z

    move-result v0

    if-nez v0, :cond_12

    .line 291
    iget v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mCurrPage:I

    if-eq v0, p1, :cond_12

    .line 292
    iget v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mCurrPage:I

    invoke-direct {p0, v0, p1}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->fadeToNextBackgroundImage(II)V

    .line 295
    :cond_12
    iput p1, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mCurrPage:I

    .line 296
    return-void
.end method

.method private initStickyAnimation()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 323
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 324
    iget-object v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$4;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$4;-><init>(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 333
    return-void
.end method

.method private parallaxScrollBackgroundImage(II)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "positionOffsetPixels"    # I

    .prologue
    .line 217
    int-to-float v2, p2

    const v3, 0x3d4ccccd

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 220
    .local v0, "currScrollX":I
    iget v2, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mMaxPositionOffset:I

    if-le v0, v2, :cond_c

    .line 221
    iput v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mMaxPositionOffset:I

    .line 223
    :cond_c
    iget v2, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mMaxPositionOffset:I

    mul-int/2addr v2, p1

    add-int v1, v2, v0

    .line 224
    .local v1, "overallScrollX":I
    iget-object v2, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mImageBg:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mImageBg:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getScrollY()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/ImageView;->scrollTo(II)V

    .line 225
    return-void
.end method

.method private scaleBackgroundImagesIfNeeded(II)V
    .registers 9
    .param p1, "currIndex"    # I
    .param p2, "nextIndex"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 229
    iget-object v3, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mBitmapDrawables:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v0, v3, p1

    .line 230
    .local v0, "currBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mBitmapDrawables:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v3, p2

    .line 231
    .local v1, "nextBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_1e

    if-eqz v1, :cond_1e

    .line 232
    new-instance v2, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-direct {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 233
    .local v2, "transitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    invoke-direct {p0, v2}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->startBackgroundImagesTransition(Landroid/graphics/drawable/TransitionDrawable;)V

    .line 273
    .end local v2    # "transitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    :goto_1d
    return-void

    .line 237
    :cond_1e
    iget-object v3, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mProcessImagesTask:Landroid/os/AsyncTask;

    if-eqz v3, :cond_27

    .line 238
    iget-object v3, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mProcessImagesTask:Landroid/os/AsyncTask;

    invoke-virtual {v3, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 241
    :cond_27
    new-instance v3, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$3;-><init>(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;II)V

    iput-object v3, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mProcessImagesTask:Landroid/os/AsyncTask;

    .line 272
    iget-object v3, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mProcessImagesTask:Landroid/os/AsyncTask;

    new-array v4, v4, [Ljava/lang/Void;

    instance-of v5, v3, Landroid/os/AsyncTask;

    if-nez v5, :cond_3a

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1d

    :cond_3a
    check-cast v3, Landroid/os/AsyncTask;

    invoke-static {v3, v4}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1d
.end method

.method private setupBackgroundImage()V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v5, 0x0

    const v4, 0x3fb33333

    .line 193
    const v2, 0x7f08004b

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mImageBg:Landroid/widget/ImageView;

    .line 196
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 197
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 198
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->getBackgroundImageResIds()[I

    move-result-object v3

    aget v3, v3, v5

    invoke-static {v2, v3, v1}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 199
    .local v0, "imageBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mImageBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 201
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->isParallaxMode()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 202
    iget-object v2, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mImageBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 203
    iget-object v2, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mImageBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 209
    :goto_3b
    return-void

    .line 206
    :cond_3c
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->getNumPages()I

    move-result v2

    new-array v2, v2, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v2, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mBitmapDrawables:[Landroid/graphics/drawable/BitmapDrawable;

    .line 207
    iget-object v2, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mBitmapDrawables:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v2, v5

    goto :goto_3b
.end method

.method private startBackgroundImagesTransition(Landroid/graphics/drawable/TransitionDrawable;)V
    .registers 3
    .param p1, "transitionDrawable"    # Landroid/graphics/drawable/TransitionDrawable;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mImageBg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    const/16 v0, 0x258

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 278
    return-void
.end method


# virtual methods
.method protected darkenFtuePics(Z)V
    .registers 3
    .param p1, "darken"    # Z

    .prologue
    .line 349
    const v0, 0x7f08004c

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/android/utils/MiscUtils;->setVisibleIf(Landroid/view/View;Z)V

    .line 350
    return-void
.end method

.method public abstract forStep(I)Lcom/airbnb/android/fragments/ViewPagerFtueFragment;
.end method

.method public abstract getBackgroundImageResIds()[I
.end method

.method protected getLastPageIndex()I
    .registers 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->getNumPages()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public abstract getNumPages()I
.end method

.method public abstract isParallaxMode()Z
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-direct {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->checkFtueImplValid()V

    .line 84
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->setupTransparentActionBar()V

    .line 86
    const v6, 0x7f030016

    invoke-virtual {p0, v6}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->setContentView(I)V

    .line 88
    invoke-direct {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->setupBackgroundImage()V

    .line 90
    const v6, 0x7f08004e

    invoke-virtual {p0, v6}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/views/FtueStickyButton;

    iput-object v6, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mStickyButton:Lcom/airbnb/android/views/FtueStickyButton;

    .line 91
    const v6, 0x7f080050

    invoke-virtual {p0, v6}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/views/FtueStickyButton;

    iput-object v6, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mSecondStickyButton:Lcom/airbnb/android/views/FtueStickyButton;

    .line 92
    const v6, 0x7f08004f

    invoke-virtual {p0, v6}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mStickyButtonDivider:Landroid/view/View;

    .line 93
    const v6, 0x7f08004d

    invoke-virtual {p0, v6}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mStickyButtonBackground:Landroid/view/View;

    .line 94
    invoke-direct {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->initStickyAnimation()V

    .line 96
    const v6, 0x7f080051

    invoke-virtual {p0, v6}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/views/ClickableViewPager;

    .line 97
    .local v5, "viewPager":Lcom/airbnb/android/views/ClickableViewPager;
    new-instance v0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$FtueAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-direct {v0, p0, v6}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$FtueAdapter;-><init>(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;Landroid/support/v4/app/FragmentManager;)V

    .line 98
    .local v0, "adapter":Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$FtueAdapter;
    invoke-virtual {v5, v0}, Lcom/airbnb/android/views/ClickableViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 101
    invoke-virtual {v5}, Lcom/airbnb/android/views/ClickableViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$FtueAdapter;

    invoke-virtual {v6, v7}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$FtueAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;

    .line 102
    .local v3, "frag":Lcom/airbnb/android/fragments/ViewPagerFtueFragment;
    invoke-virtual {v3}, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->getStickyButtonColor()I

    move-result v1

    .line 103
    .local v1, "colorRes":I
    if-lez v1, :cond_68

    .line 104
    invoke-direct {p0, v1}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->fadeStickyToColor(I)V

    .line 107
    :cond_68
    new-instance v6, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$1;

    invoke-direct {v6, p0, v5}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$1;-><init>(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;Lcom/airbnb/android/views/ClickableViewPager;)V

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/ClickableViewPager;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v6, 0x7f08003f

    invoke-virtual {p0, v6}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/DotsCounter;

    .line 119
    .local v2, "dots":Lcom/airbnb/android/views/DotsCounter;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->getNumPages()I

    move-result v4

    .line 120
    .local v4, "numDots":I
    const/4 v6, 0x1

    if-le v4, v6, :cond_8f

    .line 121
    invoke-virtual {v2, v7}, Lcom/airbnb/android/views/DotsCounter;->setVisibility(I)V

    .line 122
    invoke-virtual {v2, v4}, Lcom/airbnb/android/views/DotsCounter;->setNumDots(I)V

    .line 124
    new-instance v6, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$2;

    invoke-direct {v6, p0, v2, v5}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity$2;-><init>(Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;Lcom/airbnb/android/views/DotsCounter;Lcom/airbnb/android/views/ClickableViewPager;)V

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/ClickableViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 153
    :goto_8e
    return-void

    .line 150
    :cond_8f
    invoke-virtual {v2, v7}, Lcom/airbnb/android/views/DotsCounter;->setNumDots(I)V

    .line 151
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lcom/airbnb/android/views/DotsCounter;->setVisibility(I)V

    goto :goto_8e
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 157
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onPause()V

    .line 158
    iget-object v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mProcessImagesTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_10

    .line 159
    iget-object v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mProcessImagesTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mProcessImagesTask:Landroid/os/AsyncTask;

    .line 162
    :cond_10
    return-void
.end method

.method protected setupTransparentActionBar()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 179
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->requestWindowFeature(I)Z

    .line 180
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->requestWindowFeature(I)Z

    .line 182
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 183
    .local v1, "actionBarBg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 184
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 186
    const v2, 0x7f0200ec

    const v3, 0x7f0a00a4

    invoke-static {v2, v3}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 187
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 188
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 189
    return-void
.end method

.method protected showSecondStickyButton(ILandroid/view/View$OnClickListener;)V
    .registers 5
    .param p1, "stringRes"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v1, 0x0

    .line 316
    iget-object v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mStickyButtonDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mSecondStickyButton:Lcom/airbnb/android/views/FtueStickyButton;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/FtueStickyButton;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mSecondStickyButton:Lcom/airbnb/android/views/FtueStickyButton;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/FtueStickyButton;->setTitle(I)V

    .line 319
    iget-object v0, p0, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->mSecondStickyButton:Lcom/airbnb/android/views/FtueStickyButton;

    invoke-virtual {v0, p2}, Lcom/airbnb/android/views/FtueStickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    return-void
.end method
