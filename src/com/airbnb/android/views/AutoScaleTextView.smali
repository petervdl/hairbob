.class public Lcom/airbnb/android/views/AutoScaleTextView;
.super Lcom/airbnb/android/views/AirTextView;
.source "AutoScaleTextView.java"


# static fields
.field private static final DEFAULT_MIN_TEXT_SIZE:F = 8.0f


# instance fields
.field private mHeightLimit:I

.field private mLines:I

.field private mMinTextSize:F

.field private mNeedsResize:Z

.field private mPreferredTextSize:F

.field private mSuggestedNumLines:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mWidthLimit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/airbnb/android/views/AutoScaleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/AirTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput v0, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mHeightLimit:I

    .line 37
    iput v0, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mWidthLimit:I

    .line 47
    invoke-direct {p0, p2}, Lcom/airbnb/android/views/AutoScaleTextView;->init(Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, -0x1

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/views/AirTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput v0, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mHeightLimit:I

    .line 37
    iput v0, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mWidthLimit:I

    .line 54
    invoke-direct {p0, p2}, Lcom/airbnb/android/views/AutoScaleTextView;->init(Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method private getTextHeight(Landroid/text/TextPaint;Ljava/lang/String;)I
    .registers 6
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 212
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 213
    .local v0, "bounds":Landroid/graphics/Rect;
    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 214
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x40800000

    const/4 v3, 0x1

    .line 58
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mTextPaint:Landroid/text/TextPaint;

    .line 60
    invoke-virtual {p0}, Lcom/airbnb/android/views/AutoScaleTextView;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mPreferredTextSize:F

    .line 62
    iput-boolean v5, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mNeedsResize:Z

    .line 64
    invoke-virtual {p0}, Lcom/airbnb/android/views/AutoScaleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/R$styleable;->AutoScaleTextView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mSuggestedNumLines:I

    .line 67
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mMinTextSize:F

    .line 68
    iget v1, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mMinTextSize:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3e

    .line 69
    const/high16 v1, 0x41000000

    invoke-virtual {p0}, Lcom/airbnb/android/views/AutoScaleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mMinTextSize:F

    .line 73
    :cond_3e
    iget v1, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mSuggestedNumLines:I

    invoke-virtual {p0, v1}, Lcom/airbnb/android/views/AutoScaleTextView;->setLines(I)V

    .line 74
    iput-boolean v3, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mNeedsResize:Z

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-void
.end method

.method private resizeText(III)V
    .registers 15
    .param p1, "widthLimit"    # I
    .param p2, "heightLimit"    # I
    .param p3, "lastHeight"    # I

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x3f000000

    .line 123
    invoke-virtual {p0}, Lcom/airbnb/android/views/AutoScaleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v6, "text":Ljava/lang/String;
    if-lez p1, :cond_17

    if-lez p2, :cond_17

    if-eqz v6, :cond_17

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_18

    .line 202
    :cond_17
    :goto_17
    return-void

    .line 128
    :cond_18
    new-instance v7, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/airbnb/android/views/AutoScaleTextView;->getPaintFlags()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v7, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mTextPaint:Landroid/text/TextPaint;

    .line 129
    iget-object v7, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/airbnb/android/views/AutoScaleTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 130
    iget-object v7, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mTextPaint:Landroid/text/TextPaint;

    iget v8, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mPreferredTextSize:F

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 133
    iget-object v7, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 137
    .local v5, "size":F
    int-to-float v7, p1

    cmpl-float v7, v7, v5

    if-lez v7, :cond_5e

    .line 139
    iget v5, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mPreferredTextSize:F

    .line 140
    const/4 v0, 0x1

    .line 148
    .local v0, "done":Z
    :goto_41
    iget v7, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mMinTextSize:F

    cmpg-float v7, v5, v7

    if-gez v7, :cond_4a

    .line 149
    iget v5, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mMinTextSize:F

    .line 150
    const/4 v0, 0x1

    .line 154
    :cond_4a
    :goto_4a
    if-nez v0, :cond_67

    .line 155
    iget-object v7, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 156
    iget-object v7, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 158
    .local v4, "realWidth":F
    int-to-float v7, p1

    cmpl-float v7, v4, v7

    if-lez v7, :cond_66

    .line 159
    sub-float/2addr v5, v9

    goto :goto_4a

    .line 143
    .end local v0    # "done":Z
    .end local v4    # "realWidth":F
    :cond_5e
    iget v7, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mPreferredTextSize:F

    int-to-float v8, p1

    mul-float/2addr v7, v8

    div-float v5, v7, v5

    .line 144
    const/4 v0, 0x0

    .restart local v0    # "done":Z
    goto :goto_41

    .line 161
    .restart local v4    # "realWidth":F
    :cond_66
    const/4 v0, 0x1

    .line 167
    .end local v4    # "realWidth":F
    :cond_67
    iget-object v7, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v7, v6}, Lcom/airbnb/android/views/AutoScaleTextView;->getTextHeight(Landroid/text/TextPaint;Ljava/lang/String;)I

    move-result v1

    .line 169
    .local v1, "height":I
    iget v7, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mLines:I

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v7, v1

    if-ge v7, p2, :cond_8f

    .line 171
    iget v7, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mLines:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mLines:I

    .line 172
    iget v7, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mLines:I

    invoke-virtual {p0, v7}, Lcom/airbnb/android/views/AutoScaleTextView;->setLines(I)V

    .line 175
    int-to-float v7, p1

    iget v8, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mLines:I

    int-to-float v8, v8

    iget v9, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mLines:I

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-int v2, v7

    .line 178
    .local v2, "newWidth":I
    invoke-direct {p0, v2, p2, v1}, Lcom/airbnb/android/views/AutoScaleTextView;->resizeText(III)V

    goto :goto_17

    .line 180
    .end local v2    # "newWidth":I
    :cond_8f
    iget v7, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mLines:I

    mul-int/2addr v7, v1

    if-le v7, p2, :cond_b5

    iget v7, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mLines:I

    iget v8, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mSuggestedNumLines:I

    if-le v7, v8, :cond_b5

    .line 183
    const/4 v0, 0x0

    .line 186
    :goto_9b
    if-nez v0, :cond_b5

    .line 187
    iget-object v7, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 188
    iget-object v7, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v7, v6}, Lcom/airbnb/android/views/AutoScaleTextView;->getTextHeight(Landroid/text/TextPaint;Ljava/lang/String;)I

    move-result v7

    int-to-float v3, v7

    .line 190
    .local v3, "realHeight":F
    iget v7, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mLines:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    int-to-float v8, p2

    cmpl-float v7, v7, v8

    if-lez v7, :cond_b4

    .line 191
    sub-float/2addr v5, v9

    goto :goto_9b

    .line 193
    :cond_b4
    const/4 v0, 0x1

    .line 200
    .end local v3    # "realHeight":F
    :cond_b5
    invoke-virtual {p0, v10, v5}, Lcom/airbnb/android/views/AutoScaleTextView;->setTextSize(IF)V

    .line 201
    iput-boolean v10, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mNeedsResize:Z

    goto/16 :goto_17
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 107
    iget-boolean v2, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mNeedsResize:Z

    if-eqz v2, :cond_33

    .line 108
    sub-int v2, p4, p2

    invoke-virtual {p0}, Lcom/airbnb/android/views/AutoScaleTextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/airbnb/android/views/AutoScaleTextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 109
    .local v1, "widthLimit":I
    invoke-virtual {p0}, Lcom/airbnb/android/views/AutoScaleTextView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/airbnb/android/views/AutoScaleTextView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/airbnb/android/views/AutoScaleTextView;->getPaddingTop()I

    move-result v3

    sub-int v0, v2, v3

    .line 110
    .local v0, "heightLimit":I
    iget v2, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mSuggestedNumLines:I

    iput v2, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mLines:I

    .line 112
    iput v0, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mHeightLimit:I

    .line 113
    iput v1, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mWidthLimit:I

    .line 116
    iget v2, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mWidthLimit:I

    iget v3, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mLines:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mHeightLimit:I

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/airbnb/android/views/AutoScaleTextView;->resizeText(III)V

    .line 119
    .end local v0    # "heightLimit":I
    .end local v1    # "widthLimit":I
    :cond_33
    invoke-super/range {p0 .. p5}, Lcom/airbnb/android/views/AirTextView;->onLayout(ZIIII)V

    .line 120
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 95
    iget v0, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mSuggestedNumLines:I

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/AutoScaleTextView;->setLines(I)V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mNeedsResize:Z

    .line 99
    invoke-virtual {p0}, Lcom/airbnb/android/views/AutoScaleTextView;->requestLayout()V

    .line 100
    iget v0, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mPreferredTextSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_18

    .line 101
    const/4 v0, 0x0

    iget v1, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mPreferredTextSize:F

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/views/AutoScaleTextView;->setTextSize(IF)V

    .line 103
    :cond_18
    return-void
.end method

.method public setMinTextSize(F)V
    .registers 2
    .param p1, "minTextSize"    # F

    .prologue
    .line 86
    iput p1, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mMinTextSize:F

    .line 87
    return-void
.end method

.method public setSuggestedNumlines(I)V
    .registers 2
    .param p1, "lines"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/airbnb/android/views/AutoScaleTextView;->mSuggestedNumLines:I

    .line 91
    return-void
.end method
