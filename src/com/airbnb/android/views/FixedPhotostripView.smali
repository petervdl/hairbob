.class public Lcom/airbnb/android/views/FixedPhotostripView;
.super Landroid/widget/LinearLayout;
.source "FixedPhotostripView.java"


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

.field private mMaxImages:I

.field private mPendingBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/views/PendingBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingCount:I

.field private mRightMarginPx:I

.field private mWidthPx:I

.field private mWidthRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    iput v0, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mPendingCount:I

    .line 17
    iput v0, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mHeightPx:I

    .line 18
    iput v0, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mWidthPx:I

    .line 19
    iput v0, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mRightMarginPx:I

    .line 20
    iput v0, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mMaxImages:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mImgUrls:Ljava/util/List;

    .line 22
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mWidthRatio:F

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput v1, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mPendingCount:I

    .line 17
    iput v1, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mHeightPx:I

    .line 18
    iput v1, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mWidthPx:I

    .line 19
    iput v1, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mRightMarginPx:I

    .line 20
    iput v1, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mMaxImages:I

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mImgUrls:Ljava/util/List;

    .line 22
    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mWidthRatio:F

    .line 32
    invoke-virtual {p0}, Lcom/airbnb/android/views/FixedPhotostripView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/R$styleable;->FixedPhotoStripView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 33
    .local v0, "aPhoto":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Lcom/airbnb/android/views/FixedPhotostripView;->setupViews(Landroid/content/res/TypedArray;)V

    .line 34
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/FixedPhotostripView;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/FixedPhotostripView;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mImgUrls:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/views/FixedPhotostripView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/FixedPhotostripView;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mPendingCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/airbnb/android/views/FixedPhotostripView;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/views/FixedPhotostripView;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/airbnb/android/views/FixedPhotostripView;->renderImages()V

    return-void
.end method

.method private renderImages()V
    .registers 13

    .prologue
    const/4 v10, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/airbnb/android/views/FixedPhotostripView;->removeAllViews()V

    .line 62
    iget-object v9, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mImgUrls:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    iget v11, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mMaxImages:I

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 63
    .local v5, "numImages":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v5, :cond_5b

    .line 64
    new-instance v2, Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {p0}, Lcom/airbnb/android/views/FixedPhotostripView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Lcom/airbnb/android/views/AirImageView;-><init>(Landroid/content/Context;)V

    .line 65
    .local v2, "imageView":Lcom/airbnb/android/views/AirImageView;
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v9}, Lcom/airbnb/android/views/AirImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 66
    iget-object v9, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mImgUrls:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/airbnb/android/views/FixedPhotostripView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0a001e

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 68
    .local v0, "color":I
    invoke-virtual {v2, v0}, Lcom/airbnb/android/views/AirImageView;->setBackgroundColor(I)V

    .line 69
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v9, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mWidthPx:I

    iget v11, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mHeightPx:I

    invoke-direct {v3, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 70
    .local v3, "layout":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v9, v5, -0x1

    if-ne v1, v9, :cond_58

    move v8, v10

    .line 71
    .local v8, "rightMarginPx":I
    :goto_4c
    invoke-virtual {v3, v10, v10, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 72
    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/AirImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-virtual {p0, v2}, Lcom/airbnb/android/views/FixedPhotostripView;->addView(Landroid/view/View;)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 70
    .end local v8    # "rightMarginPx":I
    :cond_58
    iget v8, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mRightMarginPx:I

    goto :goto_4c

    .line 75
    .end local v0    # "color":I
    .end local v2    # "imageView":Lcom/airbnb/android/views/AirImageView;
    .end local v3    # "layout":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5b
    iget v9, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mMaxImages:I

    iget-object v11, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mImgUrls:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v9, v11

    iget v11, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mPendingCount:I

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 76
    .local v6, "numPending":I
    const/4 v1, 0x0

    :goto_6b
    if-ge v1, v6, :cond_90

    .line 77
    iget-object v9, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mPendingBitmaps:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/android/views/PendingBitmap;

    .line 78
    .local v7, "pb":Lcom/airbnb/android/views/PendingBitmap;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v9, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mWidthPx:I

    iget v11, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mHeightPx:I

    invoke-direct {v3, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 79
    .restart local v3    # "layout":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v5, :cond_8d

    const/4 v4, 0x2

    .line 80
    .local v4, "leftMarginPx":I
    :goto_81
    invoke-virtual {v3, v4, v10, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 81
    invoke-virtual {v7, v3}, Lcom/airbnb/android/views/PendingBitmap;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-virtual {p0, v7}, Lcom/airbnb/android/views/FixedPhotostripView;->addView(Landroid/view/View;)V

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    .line 79
    .end local v4    # "leftMarginPx":I
    :cond_8d
    iget v4, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mRightMarginPx:I

    goto :goto_81

    .line 84
    .end local v3    # "layout":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "pb":Lcom/airbnb/android/views/PendingBitmap;
    :cond_90
    return-void
.end method

.method private setupViews(Landroid/content/res/TypedArray;)V
    .registers 6
    .param p1, "aPhoto"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v3, 0x0

    .line 38
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mRightMarginPx:I

    .line 39
    invoke-virtual {p1, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mMaxImages:I

    .line 40
    const/4 v1, 0x2

    const/high16 v2, 0x3f800000

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mWidthRatio:F

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mPendingBitmaps:Ljava/util/List;

    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    iget v1, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mMaxImages:I

    if-ge v0, v1, :cond_36

    .line 43
    iget-object v1, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mPendingBitmaps:Ljava/util/List;

    new-instance v2, Lcom/airbnb/android/views/PendingBitmap;

    invoke-virtual {p0}, Lcom/airbnb/android/views/FixedPhotostripView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/android/views/PendingBitmap;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 45
    :cond_36
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .registers 11
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 50
    iget v2, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mMaxImages:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mRightMarginPx:I

    mul-int/2addr v2, v3

    sub-int v0, p1, v2

    .line 51
    .local v0, "availableWidth":I
    iget v2, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mMaxImages:I

    div-int v2, v0, v2

    iput v2, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mWidthPx:I

    .line 52
    iget v2, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mWidthPx:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mWidthRatio:F

    float-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mHeightPx:I

    .line 53
    invoke-virtual {p0}, Lcom/airbnb/android/views/FixedPhotostripView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 54
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mHeightPx:I

    if-eq v2, p2, :cond_2e

    .line 55
    iget v2, p0, Lcom/airbnb/android/views/FixedPhotostripView;->mHeightPx:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 56
    invoke-virtual {p0, v1}, Lcom/airbnb/android/views/FixedPhotostripView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    :cond_2e
    return-void
.end method

.method public setImageUrls(Ljava/util/List;I)V
    .registers 4
    .param p2, "pendingCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/airbnb/android/views/FixedPhotostripView$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/airbnb/android/views/FixedPhotostripView$1;-><init>(Lcom/airbnb/android/views/FixedPhotostripView;ILjava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/FixedPhotostripView;->post(Ljava/lang/Runnable;)Z

    .line 96
    return-void
.end method
