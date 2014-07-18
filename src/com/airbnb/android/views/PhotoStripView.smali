.class public Lcom/airbnb/android/views/PhotoStripView;
.super Landroid/widget/LinearLayout;
.source "PhotoStripView.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/Lightenable;


# instance fields
.field private mHeightPx:I

.field private mImgUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLightened:Z

.field private mMaxImages:I

.field private mMaxImagesManuallySet:Z

.field private mRightMarginPx:I

.field private mShrink:Z

.field private mWidthPx:I

.field private mWidthRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    iput-boolean v0, p0, Lcom/airbnb/android/views/PhotoStripView;->mLightened:Z

    .line 21
    iput-boolean v0, p0, Lcom/airbnb/android/views/PhotoStripView;->mMaxImagesManuallySet:Z

    .line 22
    iput v0, p0, Lcom/airbnb/android/views/PhotoStripView;->mHeightPx:I

    .line 23
    iput v0, p0, Lcom/airbnb/android/views/PhotoStripView;->mWidthPx:I

    .line 24
    iput v0, p0, Lcom/airbnb/android/views/PhotoStripView;->mRightMarginPx:I

    .line 25
    iput v0, p0, Lcom/airbnb/android/views/PhotoStripView;->mMaxImages:I

    .line 26
    iput-boolean v0, p0, Lcom/airbnb/android/views/PhotoStripView;->mShrink:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/views/PhotoStripView;->mImgUrls:Ljava/util/List;

    .line 28
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/airbnb/android/views/PhotoStripView;->mWidthRatio:F

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-boolean v2, p0, Lcom/airbnb/android/views/PhotoStripView;->mLightened:Z

    .line 21
    iput-boolean v2, p0, Lcom/airbnb/android/views/PhotoStripView;->mMaxImagesManuallySet:Z

    .line 22
    iput v2, p0, Lcom/airbnb/android/views/PhotoStripView;->mHeightPx:I

    .line 23
    iput v2, p0, Lcom/airbnb/android/views/PhotoStripView;->mWidthPx:I

    .line 24
    iput v2, p0, Lcom/airbnb/android/views/PhotoStripView;->mRightMarginPx:I

    .line 25
    iput v2, p0, Lcom/airbnb/android/views/PhotoStripView;->mMaxImages:I

    .line 26
    iput-boolean v2, p0, Lcom/airbnb/android/views/PhotoStripView;->mShrink:Z

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/views/PhotoStripView;->mImgUrls:Ljava/util/List;

    .line 28
    const/high16 v2, 0x3f800000

    iput v2, p0, Lcom/airbnb/android/views/PhotoStripView;->mWidthRatio:F

    .line 37
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoStripView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/airbnb/android/R$styleable;->PhotoStripView:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 38
    .local v1, "aPhoto":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoStripView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/airbnb/android/R$styleable;->Lightenable:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    .local v0, "aLighten":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1, v0}, Lcom/airbnb/android/views/PhotoStripView;->setupViews(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 41
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/PhotoStripView;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoStripView;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/views/PhotoStripView;->renderImages()V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/views/PhotoStripView;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PhotoStripView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoStripView;->mImgUrls:Ljava/util/List;

    return-object v0
.end method

.method private computeImageLayout()V
    .registers 9

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoStripView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 78
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_39

    .line 80
    iget v3, p0, Lcom/airbnb/android/views/PhotoStripView;->mHeightPx:I

    .line 81
    .local v3, "oldImgPx":I
    iget v4, p0, Lcom/airbnb/android/views/PhotoStripView;->mMaxImages:I

    .line 83
    .local v4, "oldMaxImages":I
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoStripView;->getWidth()I

    move-result v5

    .line 84
    .local v5, "widthPx":I
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoStripView;->getHeight()I

    move-result v2

    .line 85
    .local v2, "heightPx":I
    iput v2, p0, Lcom/airbnb/android/views/PhotoStripView;->mHeightPx:I

    .line 86
    int-to-float v6, v2

    iget v7, p0, Lcom/airbnb/android/views/PhotoStripView;->mWidthRatio:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/airbnb/android/views/PhotoStripView;->mWidthPx:I

    .line 87
    iget-boolean v6, p0, Lcom/airbnb/android/views/PhotoStripView;->mMaxImagesManuallySet:Z

    if-nez v6, :cond_29

    .line 88
    iget v6, p0, Lcom/airbnb/android/views/PhotoStripView;->mWidthPx:I

    iget v7, p0, Lcom/airbnb/android/views/PhotoStripView;->mRightMarginPx:I

    add-int v0, v6, v7

    .line 89
    .local v0, "avatarPx":I
    div-int v6, v5, v0

    iput v6, p0, Lcom/airbnb/android/views/PhotoStripView;->mMaxImages:I

    .line 92
    .end local v0    # "avatarPx":I
    :cond_29
    iget v6, p0, Lcom/airbnb/android/views/PhotoStripView;->mMaxImages:I

    if-ne v4, v6, :cond_31

    iget v6, p0, Lcom/airbnb/android/views/PhotoStripView;->mHeightPx:I

    if-eq v3, v6, :cond_39

    .line 93
    :cond_31
    new-instance v6, Lcom/airbnb/android/views/PhotoStripView$1;

    invoke-direct {v6, p0}, Lcom/airbnb/android/views/PhotoStripView$1;-><init>(Lcom/airbnb/android/views/PhotoStripView;)V

    invoke-virtual {p0, v6}, Lcom/airbnb/android/views/PhotoStripView;->post(Ljava/lang/Runnable;)Z

    .line 101
    .end local v2    # "heightPx":I
    .end local v3    # "oldImgPx":I
    .end local v4    # "oldMaxImages":I
    .end local v5    # "widthPx":I
    :cond_39
    return-void
.end method

.method private lightenImage(Lcom/airbnb/android/views/AirImageView;)V
    .registers 5
    .param p1, "imageView"    # Lcom/airbnb/android/views/AirImageView;

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoStripView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 144
    .local v0, "border":Landroid/graphics/drawable/Drawable;
    invoke-static {p1, v0}, Lcom/airbnb/android/utils/MiscUtils;->apiSetBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 145
    return-void
.end method

.method private renderImages()V
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoStripView;->removeAllViews()V

    .line 105
    iget-object v6, p0, Lcom/airbnb/android/views/PhotoStripView;->mImgUrls:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget v8, p0, Lcom/airbnb/android/views/PhotoStripView;->mMaxImages:I

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 106
    .local v3, "numImages":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v3, :cond_3c

    .line 107
    iget-object v6, p0, Lcom/airbnb/android/views/PhotoStripView;->mImgUrls:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/airbnb/android/views/PhotoStripView;->getImageView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 108
    .local v1, "imageView":Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/airbnb/android/views/PhotoStripView;->mWidthPx:I

    iget v8, p0, Lcom/airbnb/android/views/PhotoStripView;->mHeightPx:I

    invoke-direct {v2, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 109
    .local v2, "layout":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v6, v3, -0x1

    if-ne v0, v6, :cond_39

    move v5, v7

    .line 110
    .local v5, "rightMarginPx":I
    :goto_2d
    invoke-virtual {v2, v7, v7, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 111
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    invoke-virtual {p0, v1}, Lcom/airbnb/android/views/PhotoStripView;->addView(Landroid/view/View;)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 109
    .end local v5    # "rightMarginPx":I
    :cond_39
    iget v5, p0, Lcom/airbnb/android/views/PhotoStripView;->mRightMarginPx:I

    goto :goto_2d

    .line 115
    .end local v1    # "imageView":Landroid/view/View;
    .end local v2    # "layout":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3c
    iget-boolean v6, p0, Lcom/airbnb/android/views/PhotoStripView;->mShrink:Z

    if-eqz v6, :cond_55

    iget v6, p0, Lcom/airbnb/android/views/PhotoStripView;->mHeightPx:I

    if-lez v6, :cond_55

    if-lez v3, :cond_55

    .line 116
    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoStripView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 117
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v6, p0, Lcom/airbnb/android/views/PhotoStripView;->mWidthPx:I

    mul-int/2addr v6, v3

    iget v7, p0, Lcom/airbnb/android/views/PhotoStripView;->mRightMarginPx:I

    add-int/lit8 v8, v3, -0x1

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 119
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_55
    return-void
.end method

.method private setupViews(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V
    .registers 6
    .param p1, "aPhoto"    # Landroid/content/res/TypedArray;
    .param p2, "aLighten"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/airbnb/android/views/PhotoStripView;->mRightMarginPx:I

    .line 51
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/views/PhotoStripView;->mLightened:Z

    .line 55
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/views/PhotoStripView;->mShrink:Z

    .line 56
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 57
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/views/PhotoStripView;->mMaxImages:I

    .line 58
    iput-boolean v2, p0, Lcom/airbnb/android/views/PhotoStripView;->mMaxImagesManuallySet:Z

    .line 60
    :cond_25
    return-void
.end method


# virtual methods
.method protected getImageView(Ljava/lang/String;)Landroid/view/View;
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {p0}, Lcom/airbnb/android/views/PhotoStripView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/android/views/AirImageView;-><init>(Landroid/content/Context;)V

    .line 134
    .local v0, "imageView":Lcom/airbnb/android/views/AirImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 135
    iget-boolean v1, p0, Lcom/airbnb/android/views/PhotoStripView;->mLightened:Z

    if-eqz v1, :cond_15

    .line 136
    invoke-direct {p0, v0}, Lcom/airbnb/android/views/PhotoStripView;->lightenImage(Lcom/airbnb/android/views/AirImageView;)V

    .line 138
    :cond_15
    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 139
    return-object v0
.end method

.method public lighten()V
    .registers 2

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/views/PhotoStripView;->mLightened:Z

    .line 150
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 70
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 72
    invoke-direct {p0}, Lcom/airbnb/android/views/PhotoStripView;->computeImageLayout()V

    .line 73
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 65
    invoke-direct {p0}, Lcom/airbnb/android/views/PhotoStripView;->computeImageLayout()V

    .line 66
    return-void
.end method

.method public setAspectRatio(F)V
    .registers 2
    .param p1, "widthRatio"    # F

    .prologue
    .line 46
    iput p1, p0, Lcom/airbnb/android/views/PhotoStripView;->mWidthRatio:F

    .line 47
    return-void
.end method

.method public setImageUrls(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/airbnb/android/views/PhotoStripView$2;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/android/views/PhotoStripView$2;-><init>(Lcom/airbnb/android/views/PhotoStripView;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/PhotoStripView;->post(Ljava/lang/Runnable;)Z

    .line 130
    return-void
.end method
