.class public Lcom/airbnb/android/views/IcsLinearLayout;
.super Landroid/widget/LinearLayout;
.source "IcsLinearLayout.java"


# static fields
.field private static final IS_HONEYCOMB:Z

.field private static final LinearLayout_divider:I = 0x0

.field private static final LinearLayout_dividerPadding:I = 0x3

.field private static final LinearLayout_measureWithLargestChild:I = 0x1

.field private static final LinearLayout_showDividers:I = 0x2

.field private static final R_styleable_LinearLayout:[I

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I


# instance fields
.field private mClipDivider:Z

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field protected mDividerHeight:I

.field private mDividerPadding:I

.field protected mDividerWidth:I

.field private mShowDividers:I

.field private mUseLargestChild:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/airbnb/android/views/IcsLinearLayout;->R_styleable_LinearLayout:[I

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_f
    sput-boolean v0, Lcom/airbnb/android/views/IcsLinearLayout;->IS_HONEYCOMB:Z

    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_f

    .line 19
    :array_14
    .array-data 4
        0x1010129
        0x10102d4
        0x1010329
        0x101032a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    sget-object v1, Lcom/airbnb/android/views/IcsLinearLayout;->R_styleable_LinearLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/views/IcsLinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mShowDividers:I

    .line 65
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerPadding:I

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mUseLargestChild:Z

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method

.method private useLargestChildHorizontal()V
    .registers 11

    .prologue
    const/high16 v9, 0x40000000

    .line 345
    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getChildCount()I

    move-result v1

    .line 348
    .local v1, "childCount":I
    const/4 v4, 0x0

    .line 349
    .local v4, "largestChildWidth":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v1, :cond_19

    .line 350
    invoke-virtual {p0, v3}, Lcom/airbnb/android/views/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 351
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 349
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 354
    .end local v0    # "child":Landroid/view/View;
    :cond_19
    const/4 v6, 0x0

    .line 356
    .local v6, "totalWidth":I
    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v1, :cond_58

    .line 357
    invoke-virtual {p0, v3}, Lcom/airbnb/android/views/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 359
    .restart local v0    # "child":Landroid/view/View;
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2e

    .line 356
    :cond_2b
    :goto_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 363
    :cond_2e
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 366
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 367
    .local v2, "childExtra":F
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-lez v7, :cond_52

    .line 368
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/view/View;->measure(II)V

    .line 373
    add-int/2addr v6, v4

    .line 379
    :goto_4b
    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    goto :goto_2b

    .line 376
    :cond_52
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_4b

    .line 382
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childExtra":F
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_58
    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 383
    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/airbnb/android/views/IcsLinearLayout;->setMeasuredDimension(II)V

    .line 384
    return-void
.end method

.method private useLargestChildVertical()V
    .registers 11

    .prologue
    const/high16 v9, 0x40000000

    .line 387
    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getChildCount()I

    move-result v1

    .line 390
    .local v1, "childCount":I
    const/4 v4, 0x0

    .line 391
    .local v4, "largestChildHeight":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v1, :cond_19

    .line 392
    invoke-virtual {p0, v3}, Lcom/airbnb/android/views/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 393
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 391
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 396
    .end local v0    # "child":Landroid/view/View;
    :cond_19
    const/4 v6, 0x0

    .line 398
    .local v6, "totalHeight":I
    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v1, :cond_58

    .line 399
    invoke-virtual {p0, v3}, Lcom/airbnb/android/views/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 401
    .restart local v0    # "child":Landroid/view/View;
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2e

    .line 398
    :cond_2b
    :goto_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 405
    :cond_2e
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 408
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 409
    .local v2, "childExtra":F
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-lez v7, :cond_52

    .line 410
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/view/View;->measure(II)V

    .line 415
    add-int/2addr v6, v4

    .line 421
    :goto_4b
    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    goto :goto_2b

    .line 418
    :cond_52
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_4b

    .line 424
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childExtra":F
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_58
    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 425
    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0, v7, v6}, Lcom/airbnb/android/views/IcsLinearLayout;->setMeasuredDimension(II)V

    .line 426
    return-void
.end method


# virtual methods
.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getChildCount()I

    move-result v1

    .line 221
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_2f

    .line 222
    invoke-virtual {p0, v2}, Lcom/airbnb/android/views/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 224
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2c

    .line 225
    invoke-virtual {p0, v2}, Lcom/airbnb/android/views/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 226
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 227
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int v3, v6, v7

    .line 228
    .local v3, "left":I
    invoke-virtual {p0, p1, v3}, Lcom/airbnb/android/views/IcsLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 221
    .end local v3    # "left":I
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 233
    .end local v0    # "child":Landroid/view/View;
    :cond_2f
    invoke-virtual {p0, v1}, Lcom/airbnb/android/views/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 234
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/airbnb/android/views/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 235
    .restart local v0    # "child":Landroid/view/View;
    const/4 v5, 0x0

    .line 236
    .local v5, "right":I
    if-nez v0, :cond_4f

    .line 237
    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerWidth:I

    sub-int v5, v6, v7

    .line 242
    :goto_4b
    invoke-virtual {p0, p1, v5}, Lcom/airbnb/android/views/IcsLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 244
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "right":I
    :cond_4e
    return-void

    .line 240
    .restart local v0    # "child":Landroid/view/View;
    .restart local v5    # "right":I
    :cond_4f
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    goto :goto_4b
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getChildCount()I

    move-result v2

    .line 194
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-ge v3, v2, :cond_2f

    .line 195
    invoke-virtual {p0, v3}, Lcom/airbnb/android/views/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 197
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2c

    .line 198
    invoke-virtual {p0, v3}, Lcom/airbnb/android/views/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 199
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 200
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int v5, v6, v7

    .line 201
    .local v5, "top":I
    invoke-virtual {p0, p1, v5}, Lcom/airbnb/android/views/IcsLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 194
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "top":I
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 206
    .end local v1    # "child":Landroid/view/View;
    :cond_2f
    invoke-virtual {p0, v2}, Lcom/airbnb/android/views/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 207
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Lcom/airbnb/android/views/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 208
    .restart local v1    # "child":Landroid/view/View;
    const/4 v0, 0x0

    .line 209
    .local v0, "bottom":I
    if-nez v1, :cond_4f

    .line 210
    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerHeight:I

    sub-int v0, v6, v7

    .line 215
    :goto_4b
    invoke-virtual {p0, p1, v0}, Lcom/airbnb/android/views/IcsLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 217
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    :cond_4e
    return-void

    .line 213
    .restart local v0    # "bottom":I
    .restart local v1    # "child":Landroid/view/View;
    :cond_4f
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_4b
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mClipDivider:Z

    if-eqz v0, :cond_2d

    sget-boolean v0, Lcom/airbnb/android/views/IcsLinearLayout;->IS_HONEYCOMB:Z

    if-nez v0, :cond_2d

    .line 248
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 249
    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerPadding:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerPadding:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerHeight:I

    add-int/2addr v2, p2

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 251
    iget-object v0, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 252
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 258
    :goto_2c
    return-void

    .line 254
    :cond_2d
    iget-object v0, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 256
    iget-object v0, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2c
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mClipDivider:Z

    if-eqz v0, :cond_2d

    sget-boolean v0, Lcom/airbnb/android/views/IcsLinearLayout;->IS_HONEYCOMB:Z

    if-nez v0, :cond_2d

    .line 262
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 263
    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerPadding:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerWidth:I

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 265
    iget-object v0, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 266
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 272
    :goto_2c
    return-void

    .line 268
    :cond_2d
    iget-object v0, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 270
    iget-object v0, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2c
.end method

.method public getDividerPadding()I
    .registers 2

    .prologue
    .line 140
    iget v0, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerWidth:I

    return v0
.end method

.method public getShowDividers()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mShowDividers:I

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .registers 7
    .param p1, "childIndex"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 283
    if-nez p1, :cond_d

    .line 284
    iget v4, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mShowDividers:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b

    .line 297
    :cond_a
    :goto_a
    return v2

    :cond_b
    move v2, v3

    .line 284
    goto :goto_a

    .line 285
    :cond_d
    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getChildCount()I

    move-result v4

    if-ne p1, v4, :cond_1b

    .line 286
    iget v4, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mShowDividers:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_a

    move v2, v3

    goto :goto_a

    .line 287
    :cond_1b
    iget v2, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_38

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "hasVisibleViewBefore":Z
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_24
    if-ltz v1, :cond_33

    .line 290
    invoke-virtual {p0, v1}, Lcom/airbnb/android/views/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_35

    .line 291
    const/4 v0, 0x1

    :cond_33
    move v2, v0

    .line 295
    goto :goto_a

    .line 289
    :cond_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    .end local v0    # "hasVisibleViewBefore":Z
    .end local v1    # "i":I
    :cond_38
    move v2, v3

    .line 297
    goto :goto_a
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .registers 2

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mUseLargestChild:Z

    return v0
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    const/4 v5, 0x1

    .line 154
    invoke-virtual {p0, p1}, Lcom/airbnb/android/views/IcsLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 155
    .local v1, "index":I
    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getOrientation()I

    move-result v2

    .line 156
    .local v2, "orientation":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 157
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/airbnb/android/views/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 158
    if-ne v2, v5, :cond_33

    .line 160
    iget v4, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerHeight:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 167
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getChildCount()I

    move-result v0

    .line 168
    .local v0, "count":I
    add-int/lit8 v4, v0, -0x1

    if-ne v1, v4, :cond_2f

    .line 169
    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/IcsLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 170
    if-ne v2, v5, :cond_38

    .line 171
    iget v4, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerHeight:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 177
    :cond_2f
    :goto_2f
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 178
    return-void

    .line 163
    .end local v0    # "count":I
    :cond_33
    iget v4, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerWidth:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_1b

    .line 173
    .restart local v0    # "count":I
    :cond_38
    iget v4, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerWidth:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_2f
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 183
    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 184
    invoke-virtual {p0, p1}, Lcom/airbnb/android/views/IcsLinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    .line 189
    :cond_e
    :goto_e
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 190
    return-void

    .line 186
    :cond_12
    invoke-virtual {p0, p1}, Lcom/airbnb/android/views/IcsLinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_e
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 328
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 330
    iget-boolean v1, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mUseLargestChild:Z

    if-eqz v1, :cond_e

    .line 331
    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->getOrientation()I

    move-result v0

    .line 332
    .local v0, "orientation":I
    packed-switch v0, :pswitch_data_18

    .line 342
    .end local v0    # "orientation":I
    :cond_e
    :goto_e
    return-void

    .line 334
    .restart local v0    # "orientation":I
    :pswitch_f
    invoke-direct {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->useLargestChildHorizontal()V

    goto :goto_e

    .line 338
    :pswitch_13
    invoke-direct {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->useLargestChildVertical()V

    goto :goto_e

    .line 332
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 102
    iget-object v1, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_6

    .line 116
    :goto_5
    return-void

    .line 105
    :cond_6
    iput-object p1, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 106
    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    iput-boolean v1, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mClipDivider:Z

    .line 107
    if-eqz p1, :cond_24

    .line 108
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerWidth:I

    .line 109
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerHeight:I

    .line 114
    :goto_1a
    if-nez p1, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/IcsLinearLayout;->setWillNotDraw(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->requestLayout()V

    goto :goto_5

    .line 111
    :cond_24
    iput v0, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerWidth:I

    .line 112
    iput v0, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerHeight:I

    goto :goto_1a
.end method

.method public setDividerPadding(I)V
    .registers 2
    .param p1, "padding"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mDividerPadding:I

    .line 130
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 323
    iput-boolean p1, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mUseLargestChild:Z

    .line 324
    return-void
.end method

.method public setShowDividers(I)V
    .registers 3
    .param p1, "showDividers"    # I

    .prologue
    .line 79
    iget v0, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mShowDividers:I

    if-eq p1, v0, :cond_a

    .line 80
    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->requestLayout()V

    .line 81
    invoke-virtual {p0}, Lcom/airbnb/android/views/IcsLinearLayout;->invalidate()V

    .line 83
    :cond_a
    iput p1, p0, Lcom/airbnb/android/views/IcsLinearLayout;->mShowDividers:I

    .line 84
    return-void
.end method
