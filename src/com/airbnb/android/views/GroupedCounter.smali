.class public Lcom/airbnb/android/views/GroupedCounter;
.super Landroid/widget/LinearLayout;
.source "GroupedCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/views/GroupedCounter$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mMaxValue:I

.field protected mMinValue:I

.field mMinusButton:Landroid/view/View;

.field mPlusButton:Landroid/view/View;

.field protected mQuantityString:I

.field protected mSelectedValue:I

.field protected mShowPlusAlways:Z

.field protected mShowPlusOnMax:Z

.field mText:Landroid/widget/TextView;

.field mTopBorder:Landroid/view/View;

.field protected mValueChangeListener:Lcom/airbnb/android/views/GroupedCounter$OnValueChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/airbnb/android/views/GroupedCounter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/views/GroupedCounter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/airbnb/android/views/GroupedCounter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/airbnb/android/views/GroupedCounter;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput v1, p0, Lcom/airbnb/android/views/GroupedCounter;->mMinValue:I

    .line 36
    const/16 v0, 0x64

    iput v0, p0, Lcom/airbnb/android/views/GroupedCounter;->mMaxValue:I

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/airbnb/android/views/GroupedCounter;->mSelectedValue:I

    .line 38
    iput v1, p0, Lcom/airbnb/android/views/GroupedCounter;->mQuantityString:I

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/GroupedCounter;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput v1, p0, Lcom/airbnb/android/views/GroupedCounter;->mMinValue:I

    .line 36
    const/16 v0, 0x64

    iput v0, p0, Lcom/airbnb/android/views/GroupedCounter;->mMaxValue:I

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/airbnb/android/views/GroupedCounter;->mSelectedValue:I

    .line 38
    iput v1, p0, Lcom/airbnb/android/views/GroupedCounter;->mQuantityString:I

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/GroupedCounter;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030115

    invoke-virtual {v3, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 60
    .local v1, "content":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v6}, Lcom/airbnb/android/views/GroupedCounter;->setOrientation(I)V

    .line 61
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 63
    if-eqz p2, :cond_5c

    .line 64
    sget-object v3, Lcom/airbnb/android/R$styleable;->GroupedCounter:[I

    invoke-virtual {p1, p2, v3, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 66
    .local v2, "withTopBorder":Z
    iget v3, p0, Lcom/airbnb/android/views/GroupedCounter;->mQuantityString:I

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/views/GroupedCounter;->mQuantityString:I

    .line 67
    const/4 v3, 0x2

    iget v4, p0, Lcom/airbnb/android/views/GroupedCounter;->mMinValue:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/views/GroupedCounter;->mMinValue:I

    .line 68
    const/4 v3, 0x3

    iget v4, p0, Lcom/airbnb/android/views/GroupedCounter;->mMaxValue:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/views/GroupedCounter;->mMaxValue:I

    .line 69
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/airbnb/android/views/GroupedCounter;->mShowPlusOnMax:Z

    .line 70
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/airbnb/android/views/GroupedCounter;->mShowPlusAlways:Z

    .line 71
    const/4 v3, 0x6

    iget v4, p0, Lcom/airbnb/android/views/GroupedCounter;->mMinValue:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/views/GroupedCounter;->mSelectedValue:I

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    if-eqz v2, :cond_5c

    .line 75
    iget-object v3, p0, Lcom/airbnb/android/views/GroupedCounter;->mTopBorder:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "withTopBorder":Z
    :cond_5c
    iget-object v3, p0, Lcom/airbnb/android/views/GroupedCounter;->mMinusButton:Landroid/view/View;

    new-instance v4, Lcom/airbnb/android/views/GroupedCounter$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/views/GroupedCounter$1;-><init>(Lcom/airbnb/android/views/GroupedCounter;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v3, p0, Lcom/airbnb/android/views/GroupedCounter;->mPlusButton:Landroid/view/View;

    new-instance v4, Lcom/airbnb/android/views/GroupedCounter$2;

    invoke-direct {v4, p0}, Lcom/airbnb/android/views/GroupedCounter$2;-><init>(Lcom/airbnb/android/views/GroupedCounter;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p0}, Lcom/airbnb/android/views/GroupedCounter;->updateTextAndButtons()V

    .line 98
    return-void
.end method


# virtual methods
.method public disableUserInput()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCounter;->mPlusButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCounter;->mPlusButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 166
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCounter;->mPlusButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 167
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCounter;->mPlusButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 168
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCounter;->mMinusButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCounter;->mMinusButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 170
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCounter;->mMinusButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 171
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCounter;->mMinusButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 172
    return-void
.end method

.method public getSelectedValue()I
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Lcom/airbnb/android/views/GroupedCounter;->mSelectedValue:I

    return v0
.end method

.method public getSelectedValueString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/airbnb/android/views/GroupedCounter;->getSelectedValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setMaxValue(I)V
    .registers 2
    .param p1, "max"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/airbnb/android/views/GroupedCounter;->mMaxValue:I

    .line 151
    return-void
.end method

.method public setOnValueChangeListener(Lcom/airbnb/android/views/GroupedCounter$OnValueChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/views/GroupedCounter$OnValueChangeListener;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/airbnb/android/views/GroupedCounter;->mValueChangeListener:Lcom/airbnb/android/views/GroupedCounter$OnValueChangeListener;

    .line 176
    return-void
.end method

.method public setSelectedValue(I)V
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 122
    iget v0, p0, Lcom/airbnb/android/views/GroupedCounter;->mSelectedValue:I

    iget v1, p0, Lcom/airbnb/android/views/GroupedCounter;->mMinValue:I

    if-ge v0, v1, :cond_e

    .line 123
    iget v0, p0, Lcom/airbnb/android/views/GroupedCounter;->mMinValue:I

    iput v0, p0, Lcom/airbnb/android/views/GroupedCounter;->mSelectedValue:I

    .line 129
    :goto_a
    invoke-virtual {p0}, Lcom/airbnb/android/views/GroupedCounter;->updateTextAndButtons()V

    .line 131
    return-void

    .line 124
    :cond_e
    iget v0, p0, Lcom/airbnb/android/views/GroupedCounter;->mSelectedValue:I

    iget v1, p0, Lcom/airbnb/android/views/GroupedCounter;->mMaxValue:I

    if-le v0, v1, :cond_19

    .line 125
    iget v0, p0, Lcom/airbnb/android/views/GroupedCounter;->mMaxValue:I

    iput v0, p0, Lcom/airbnb/android/views/GroupedCounter;->mSelectedValue:I

    goto :goto_a

    .line 127
    :cond_19
    iput p1, p0, Lcom/airbnb/android/views/GroupedCounter;->mSelectedValue:I

    goto :goto_a
.end method

.method public setText(I)V
    .registers 3
    .param p1, "textRes"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCounter;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 147
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCounter;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method

.method public showPlusOnMax(Z)V
    .registers 2
    .param p1, "show"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/airbnb/android/views/GroupedCounter;->mShowPlusOnMax:Z

    .line 155
    return-void
.end method

.method protected updateTextAndButtons()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 103
    iget v1, p0, Lcom/airbnb/android/views/GroupedCounter;->mSelectedValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "valueToUse":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/airbnb/android/views/GroupedCounter;->mShowPlusAlways:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/airbnb/android/views/GroupedCounter;->mShowPlusOnMax:Z

    if-eqz v1, :cond_25

    iget v1, p0, Lcom/airbnb/android/views/GroupedCounter;->mSelectedValue:I

    iget v4, p0, Lcom/airbnb/android/views/GroupedCounter;->mMaxValue:I

    if-ne v1, v4, :cond_25

    .line 105
    :cond_16
    invoke-virtual {p0}, Lcom/airbnb/android/views/GroupedCounter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0e0577

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_25
    iget-object v4, p0, Lcom/airbnb/android/views/GroupedCounter;->mText:Landroid/widget/TextView;

    iget v1, p0, Lcom/airbnb/android/views/GroupedCounter;->mQuantityString:I

    if-lez v1, :cond_65

    invoke-virtual {p0}, Lcom/airbnb/android/views/GroupedCounter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v5, p0, Lcom/airbnb/android/views/GroupedCounter;->mQuantityString:I

    iget v6, p0, Lcom/airbnb/android/views/GroupedCounter;->mSelectedValue:I

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v0, v7, v3

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3f
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v4, p0, Lcom/airbnb/android/views/GroupedCounter;->mMinusButton:Landroid/view/View;

    iget v1, p0, Lcom/airbnb/android/views/GroupedCounter;->mSelectedValue:I

    iget v5, p0, Lcom/airbnb/android/views/GroupedCounter;->mMinValue:I

    if-le v1, v5, :cond_6a

    move v1, v2

    :goto_4b
    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 114
    iget-object v1, p0, Lcom/airbnb/android/views/GroupedCounter;->mPlusButton:Landroid/view/View;

    iget v4, p0, Lcom/airbnb/android/views/GroupedCounter;->mSelectedValue:I

    iget v5, p0, Lcom/airbnb/android/views/GroupedCounter;->mMaxValue:I

    if-ge v4, v5, :cond_6c

    :goto_56
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 116
    iget-object v1, p0, Lcom/airbnb/android/views/GroupedCounter;->mValueChangeListener:Lcom/airbnb/android/views/GroupedCounter$OnValueChangeListener;

    if-eqz v1, :cond_64

    .line 117
    iget-object v1, p0, Lcom/airbnb/android/views/GroupedCounter;->mValueChangeListener:Lcom/airbnb/android/views/GroupedCounter$OnValueChangeListener;

    iget v2, p0, Lcom/airbnb/android/views/GroupedCounter;->mSelectedValue:I

    invoke-interface {v1, p0, v2}, Lcom/airbnb/android/views/GroupedCounter$OnValueChangeListener;->onValueChange(Lcom/airbnb/android/views/GroupedCounter;I)V

    .line 119
    :cond_64
    return-void

    .line 109
    :cond_65
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3f

    :cond_6a
    move v1, v3

    .line 113
    goto :goto_4b

    :cond_6c
    move v2, v3

    .line 114
    goto :goto_56
.end method
