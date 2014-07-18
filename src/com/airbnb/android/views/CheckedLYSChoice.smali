.class public Lcom/airbnb/android/views/CheckedLYSChoice;
.super Landroid/widget/LinearLayout;
.source "CheckedLYSChoice.java"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDefaultDescriptionText:Ljava/lang/String;

.field private mDefaultTitleText:Ljava/lang/String;

.field mDetailsTextSize:F

.field private mDetailsTextView:Landroid/widget/TextView;

.field mTitleTextSize:F

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030188

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    invoke-virtual {p0}, Lcom/airbnb/android/views/CheckedLYSChoice;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/R$styleable;->CheckedTwoLineSettings:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Lcom/airbnb/android/views/CheckedLYSChoice;->setupViews(Landroid/content/res/TypedArray;)V

    .line 37
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    return-void
.end method

.method private setupViews(Landroid/content/res/TypedArray;)V
    .registers 6
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v3, 0x0

    .line 41
    const v1, 0x7f0800b7

    invoke-virtual {p0, v1}, Lcom/airbnb/android/views/CheckedLYSChoice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mTitleTextView:Landroid/widget/TextView;

    .line 42
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mDefaultTitleText:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mTitleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mDefaultTitleText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mDefaultDescriptionText:Ljava/lang/String;

    .line 47
    const v1, 0x7f080215

    invoke-virtual {p0, v1}, Lcom/airbnb/android/views/CheckedLYSChoice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mDetailsTextView:Landroid/widget/TextView;

    .line 48
    iget-object v1, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mDefaultDescriptionText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 49
    iget-object v1, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mDetailsTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mDefaultDescriptionText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v1, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    :cond_3f
    const v1, 0x7f08010d

    invoke-virtual {p0, v1}, Lcom/airbnb/android/views/CheckedLYSChoice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mCheckBox:Landroid/widget/CheckBox;

    .line 54
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 55
    .local v0, "checked":Z
    iget-object v1, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 56
    return-void
.end method


# virtual methods
.method public hideDescription()V
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mDetailsTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    return-void
.end method

.method public hideTitle()V
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mTitleTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    return-void
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "checked"    # Z

    .prologue
    .line 63
    iget-object v0, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 64
    return-void
.end method

.method public setDescription()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 116
    iget-object v0, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mDetailsTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mDefaultDescriptionText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget v0, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mDetailsTextSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_20

    .line 121
    iget-object v0, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mDetailsTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mDetailsTextSize:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 123
    :cond_20
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 4
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mDetailsTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    return-void
.end method

.method public setDescriptionSize(I)V
    .registers 6
    .param p1, "dimen"    # I

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/airbnb/android/views/CheckedLYSChoice;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 87
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mDetailsTextSize:F

    .line 89
    invoke-virtual {p0}, Lcom/airbnb/android/views/CheckedLYSChoice;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v1, v2, v3

    .line 90
    .local v1, "symbolSize":F
    iget-object v2, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 91
    return-void
.end method

.method public setTitle()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mDefaultTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget v0, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mTitleTextSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_20

    .line 111
    iget-object v0, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mTitleTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mTitleTextSize:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 113
    :cond_20
    return-void
.end method

.method public setTitle(Landroid/text/Spannable;)V
    .registers 4
    .param p1, "title"    # Landroid/text/Spannable;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    return-void
.end method

.method public setTitleSize(I)V
    .registers 6
    .param p1, "dimen"    # I

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/airbnb/android/views/CheckedLYSChoice;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 95
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mTitleTextSize:F

    .line 97
    invoke-virtual {p0}, Lcom/airbnb/android/views/CheckedLYSChoice;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v1, v2, v3

    .line 98
    .local v1, "symbolSize":F
    iget-object v2, p0, Lcom/airbnb/android/views/CheckedLYSChoice;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 99
    return-void
.end method
