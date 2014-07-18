.class public Lcom/airbnb/android/views/DotsCounter;
.super Landroid/widget/LinearLayout;
.source "DotsCounter.java"


# static fields
.field private static final ALPHA_OPAQUE:I = 0xff

.field private static final ALPHA_UNSELECTED_DEFAULT:I = 0xc8


# instance fields
.field private mMarginPx:I

.field private mNumDots:I

.field private mPaint:Landroid/graphics/Paint;

.field private mSelected:I

.field private mSelectedAlpha:I

.field private mSelectedColor:I

.field private mUnselectedAlpha:I

.field private mUnselectedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-virtual {p0}, Lcom/airbnb/android/views/DotsCounter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/R$styleable;->DotsCounter:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, "aPhoto":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/airbnb/android/views/DotsCounter;->mMarginPx:I

    .line 46
    const/4 v1, 0x0

    const v2, 0x106000b

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/views/DotsCounter;->mSelectedColor:I

    .line 47
    const/4 v1, 0x1

    const v2, 0x7f0a001b

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/views/DotsCounter;->mUnselectedColor:I

    .line 48
    const/4 v1, 0x3

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/views/DotsCounter;->mSelectedAlpha:I

    .line 49
    const/4 v1, 0x4

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/views/DotsCounter;->mUnselectedAlpha:I

    .line 51
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/views/DotsCounter;->mPaint:Landroid/graphics/Paint;

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/DotsCounter;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/views/DotsCounter;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/views/DotsCounter;->setupDots()V

    return-void
.end method

.method private getDot(Z)Landroid/view/View;
    .registers 12
    .param p1, "selected"    # Z

    .prologue
    .line 77
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/airbnb/android/views/DotsCounter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 78
    .local v4, "image":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/airbnb/android/views/DotsCounter;->getHeight()I

    move-result v3

    .line 79
    .local v3, "height":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 81
    .local v1, "c":Landroid/graphics/Canvas;
    iget-object v6, p0, Lcom/airbnb/android/views/DotsCounter;->mPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    iget-object v7, p0, Lcom/airbnb/android/views/DotsCounter;->mPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_47

    iget v6, p0, Lcom/airbnb/android/views/DotsCounter;->mSelectedColor:I

    :goto_24
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v7, p0, Lcom/airbnb/android/views/DotsCounter;->mPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_4a

    iget v6, p0, Lcom/airbnb/android/views/DotsCounter;->mSelectedAlpha:I

    :goto_2d
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 84
    div-int/lit8 v5, v3, 0x2

    .line 85
    .local v5, "radius":I
    int-to-float v6, v5

    int-to-float v7, v5

    int-to-float v8, v5

    iget-object v9, p0, Lcom/airbnb/android/views/DotsCounter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 86
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/airbnb/android/views/DotsCounter;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v2, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 87
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v4, v2}, Lcom/airbnb/android/utils/MiscUtils;->apiSetBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 88
    return-object v4

    .line 82
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "radius":I
    :cond_47
    iget v6, p0, Lcom/airbnb/android/views/DotsCounter;->mUnselectedColor:I

    goto :goto_24

    .line 83
    :cond_4a
    iget v6, p0, Lcom/airbnb/android/views/DotsCounter;->mUnselectedAlpha:I

    goto :goto_2d
.end method

.method private setupDots()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 57
    iget v4, p0, Lcom/airbnb/android/views/DotsCounter;->mNumDots:I

    if-nez v4, :cond_6

    .line 74
    :cond_5
    return-void

    .line 61
    :cond_6
    invoke-virtual {p0}, Lcom/airbnb/android/views/DotsCounter;->removeAllViews()V

    .line 63
    invoke-virtual {p0}, Lcom/airbnb/android/views/DotsCounter;->getHeight()I

    move-result v0

    .line 65
    .local v0, "height":I
    if-lez v0, :cond_5

    .line 66
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    iget v4, p0, Lcom/airbnb/android/views/DotsCounter;->mNumDots:I

    if-ge v1, v4, :cond_5

    .line 67
    iget v4, p0, Lcom/airbnb/android/views/DotsCounter;->mSelected:I

    if-ne v4, v1, :cond_32

    const/4 v4, 0x1

    :goto_19
    invoke-direct {p0, v4}, Lcom/airbnb/android/views/DotsCounter;->getDot(Z)Landroid/view/View;

    move-result-object v2

    .line 68
    .local v2, "imageView":Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    .local v3, "layout":Landroid/widget/LinearLayout$LayoutParams;
    iget v4, p0, Lcom/airbnb/android/views/DotsCounter;->mMarginPx:I

    iget v6, p0, Lcom/airbnb/android/views/DotsCounter;->mMarginPx:I

    invoke-virtual {v3, v4, v5, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 70
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-virtual {p0, v2}, Lcom/airbnb/android/views/DotsCounter;->addView(Landroid/view/View;)V

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .end local v2    # "imageView":Landroid/view/View;
    .end local v3    # "layout":Landroid/widget/LinearLayout$LayoutParams;
    :cond_32
    move v4, v5

    .line 67
    goto :goto_19
.end method


# virtual methods
.method public setNumDots(I)V
    .registers 3
    .param p1, "dots"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/airbnb/android/views/DotsCounter;->mNumDots:I

    .line 93
    new-instance v0, Lcom/airbnb/android/views/DotsCounter$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/views/DotsCounter$1;-><init>(Lcom/airbnb/android/views/DotsCounter;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/DotsCounter;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method

.method public setSelectedDot(I)V
    .registers 3
    .param p1, "selected"    # I

    .prologue
    .line 102
    iget v0, p0, Lcom/airbnb/android/views/DotsCounter;->mSelected:I

    if-eq v0, p1, :cond_9

    .line 103
    iput p1, p0, Lcom/airbnb/android/views/DotsCounter;->mSelected:I

    .line 104
    invoke-direct {p0}, Lcom/airbnb/android/views/DotsCounter;->setupDots()V

    .line 106
    :cond_9
    return-void
.end method
