.class public Lcom/airbnb/android/views/GroupedCheck;
.super Landroid/widget/RelativeLayout;
.source "GroupedCheck.java"


# instance fields
.field mCheckbox:Landroid/widget/CheckBox;

.field mTitle:Landroid/widget/TextView;

.field mTooltip:Lcom/airbnb/android/views/GroupedTooltip;

.field mTopBorder:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/airbnb/android/views/GroupedCheck;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/airbnb/android/views/GroupedCheck;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/GroupedCheck;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/GroupedCheck;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030114

    invoke-virtual {v7, v8, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 52
    .local v1, "content":Landroid/view/View;
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 54
    if-eqz p2, :cond_4b

    .line 55
    sget-object v7, Lcom/airbnb/android/R$styleable;->GroupedCheck:[I

    invoke-virtual {p1, p2, v7, v9, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, "titleText":Ljava/lang/String;
    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 59
    .local v3, "hideTopBorder":Z
    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 61
    .local v2, "fullWidthBorder":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    iget-object v7, p0, Lcom/airbnb/android/views/GroupedCheck;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    if-eqz v3, :cond_36

    .line 65
    iget-object v7, p0, Lcom/airbnb/android/views/GroupedCheck;->mTopBorder:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :cond_36
    if-eqz v2, :cond_4b

    .line 68
    const v7, 0x7f0802ef

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 69
    .local v6, "topBorder":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 70
    .local v4, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v4, v9, v9, v9, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 71
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "fullWidthBorder":Z
    .end local v3    # "hideTopBorder":Z
    .end local v4    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5    # "titleText":Ljava/lang/String;
    .end local v6    # "topBorder":Landroid/view/View;
    :cond_4b
    invoke-virtual {p0}, Lcom/airbnb/android/views/GroupedCheck;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_57

    .line 77
    const v7, 0x7f020034

    invoke-virtual {p0, v7}, Lcom/airbnb/android/views/GroupedCheck;->setBackgroundResource(I)V

    .line 80
    :cond_57
    new-instance v7, Lcom/airbnb/android/views/GroupedCheck$1;

    invoke-direct {v7, p0}, Lcom/airbnb/android/views/GroupedCheck$1;-><init>(Lcom/airbnb/android/views/GroupedCheck;)V

    invoke-super {p0, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method


# virtual methods
.method public getTitle()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCheck;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTooltip()Lcom/airbnb/android/views/GroupedTooltip;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCheck;->mTooltip:Lcom/airbnb/android/views/GroupedTooltip;

    return-object v0
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCheck;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "checked"    # Z

    .prologue
    .line 112
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCheck;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 113
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCheck;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 121
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/View$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Don\'t set an on click listener, because the checkbox could be clicked instead, and it wouldn\'t call through to this click listener. Use setOnCheckedChangeListener() instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCheck;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method public showTopBorder(Z)V
    .registers 3
    .param p1, "show"    # Z

    .prologue
    .line 102
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCheck;->mTopBorder:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/airbnb/android/utils/MiscUtils;->setVisibleIf(Landroid/view/View;Z)V

    .line 103
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCheck;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 117
    return-void
.end method
