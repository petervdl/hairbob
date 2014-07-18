.class public final Lcom/airbnb/android/views/GroupedCounterFloats;
.super Lcom/airbnb/android/views/GroupedCounter;
.source "GroupedCounterFloats.java"


# instance fields
.field private DENOMINATOR:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/GroupedCounter;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/android/views/GroupedCounterFloats;->init(Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/GroupedCounter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p2}, Lcom/airbnb/android/views/GroupedCounterFloats;->init(Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/views/GroupedCounter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0, p2}, Lcom/airbnb/android/views/GroupedCounterFloats;->init(Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/GroupedCounterFloats;I)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/GroupedCounterFloats;
    .param p1, "x1"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/GroupedCounterFloats;->superSetSelectedValue(I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    const/high16 v0, 0x3f000000

    .line 44
    .local v0, "increment":F
    const/high16 v1, 0x3f800000

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->DENOMINATOR:I

    .line 47
    iget v1, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mMaxValue:I

    iget v2, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->DENOMINATOR:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mMaxValue:I

    .line 48
    iget v1, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mMinValue:I

    iget v2, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->DENOMINATOR:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mMinValue:I

    .line 49
    iget v1, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mSelectedValue:I

    iget v2, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->DENOMINATOR:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mSelectedValue:I

    .line 52
    iget-object v1, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mMinusButton:Landroid/view/View;

    new-instance v2, Lcom/airbnb/android/views/GroupedCounterFloats$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/views/GroupedCounterFloats$1;-><init>(Lcom/airbnb/android/views/GroupedCounterFloats;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v1, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mPlusButton:Landroid/view/View;

    new-instance v2, Lcom/airbnb/android/views/GroupedCounterFloats$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/views/GroupedCounterFloats$2;-><init>(Lcom/airbnb/android/views/GroupedCounterFloats;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0}, Lcom/airbnb/android/views/GroupedCounterFloats;->updateTextAndButtons()V

    .line 69
    return-void
.end method

.method private superSetSelectedValue(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/airbnb/android/views/GroupedCounter;->setSelectedValue(I)V

    .line 110
    return-void
.end method


# virtual methods
.method public getSelectedValue()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "this not supported in grouped counter floats, use getSelectedValueFloats()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSelectedValueFloat()F
    .registers 3

    .prologue
    .line 119
    iget v0, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mSelectedValue:I

    int-to-float v0, v0

    iget v1, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->DENOMINATOR:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getSelectedValueString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/airbnb/android/views/GroupedCounterFloats;->getSelectedValueFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setSelectedValue(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "this not supported in grouped counter floats, use setSelectedValueFloats()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSelectedValueFloat(F)V
    .registers 3
    .param p1, "value"    # F

    .prologue
    .line 102
    iget v0, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->DENOMINATOR:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-super {p0, v0}, Lcom/airbnb/android/views/GroupedCounter;->setSelectedValue(I)V

    .line 103
    return-void
.end method

.method protected updateTextAndButtons()V
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 74
    iget v2, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mSelectedValue:I

    int-to-float v2, v2

    iget v5, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->DENOMINATOR:I

    int-to-float v5, v5

    div-float v0, v2, v5

    .line 77
    .local v0, "bathroomCount":F
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "valueToUse":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mShowPlusAlways:Z

    if-nez v2, :cond_1c

    iget-boolean v2, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mShowPlusOnMax:Z

    if-eqz v2, :cond_2b

    iget v2, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mSelectedValue:I

    iget v5, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mMaxValue:I

    if-ne v2, v5, :cond_2b

    .line 79
    :cond_1c
    invoke-virtual {p0}, Lcom/airbnb/android/views/GroupedCounterFloats;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f0e0577

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v4

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 83
    :cond_2b
    iget-object v5, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mText:Landroid/widget/TextView;

    iget v2, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mQuantityString:I

    if-lez v2, :cond_6d

    invoke-virtual {p0}, Lcom/airbnb/android/views/GroupedCounterFloats;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v6, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mQuantityString:I

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v7

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v1, v8, v4

    invoke-virtual {v2, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_47
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v5, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mMinusButton:Landroid/view/View;

    iget v2, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mSelectedValue:I

    iget v6, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mMinValue:I

    if-le v2, v6, :cond_72

    move v2, v3

    :goto_53
    invoke-virtual {v5, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 88
    iget-object v2, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mPlusButton:Landroid/view/View;

    iget v5, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mSelectedValue:I

    iget v6, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mMaxValue:I

    if-ge v5, v6, :cond_74

    :goto_5e
    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 90
    iget-object v2, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mValueChangeListener:Lcom/airbnb/android/views/GroupedCounter$OnValueChangeListener;

    if-eqz v2, :cond_6c

    .line 91
    iget-object v2, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mValueChangeListener:Lcom/airbnb/android/views/GroupedCounter$OnValueChangeListener;

    iget v3, p0, Lcom/airbnb/android/views/GroupedCounterFloats;->mSelectedValue:I

    invoke-interface {v2, p0, v3}, Lcom/airbnb/android/views/GroupedCounter$OnValueChangeListener;->onValueChange(Lcom/airbnb/android/views/GroupedCounter;I)V

    .line 93
    :cond_6c
    return-void

    .line 83
    :cond_6d
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_47

    :cond_72
    move v2, v4

    .line 87
    goto :goto_53

    :cond_74
    move v3, v4

    .line 88
    goto :goto_5e
.end method
