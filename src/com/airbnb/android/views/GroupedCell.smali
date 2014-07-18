.class public Lcom/airbnb/android/views/GroupedCell;
.super Landroid/widget/RelativeLayout;
.source "GroupedCell.java"


# instance fields
.field mContent:Landroid/widget/TextView;

.field mNextArrow:Landroid/view/View;

.field mTitle:Landroid/widget/TextView;

.field mTooltip:Lcom/airbnb/android/views/GroupedTooltip;

.field mTopBorder:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/airbnb/android/views/GroupedCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/airbnb/android/views/GroupedCell;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/GroupedCell;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/GroupedCell;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    const/4 v5, 0x0

    .line 62
    .local v5, "a":Landroid/content/res/TypedArray;
    const v12, 0x7f030112

    .line 64
    .local v12, "layoutToUse":I
    if-eqz p2, :cond_2b

    .line 65
    sget-object v17, Lcom/airbnb/android/R$styleable;->GroupedCell:[I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 66
    const/16 v17, 0x7

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    if-eqz v17, :cond_2b

    .line 67
    const v12, 0x7f030113

    .line 71
    :cond_2b
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v0, v12, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 72
    .local v6, "content":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 74
    if-eqz v5, :cond_11f

    .line 75
    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 76
    .local v15, "titleText":Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 77
    .local v8, "contentText":Ljava/lang/String;
    const/16 v17, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/views/GroupedCell;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a0022

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 78
    .local v7, "contentColor":I
    const/16 v17, 0x3

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 79
    .local v10, "hideTopBorder":Z
    const/16 v17, 0x2

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 80
    .local v9, "fullWidthBorder":Z
    const/16 v17, 0x8

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 81
    .local v16, "withRightCaret":Z
    const/16 v17, 0x5

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v13

    .line 82
    .local v13, "maxLines":I
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 83
    .local v11, "hintText":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/GroupedCell;->mTitle:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    if-eqz v16, :cond_130

    .line 87
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->showRightCaret(Z)V

    .line 92
    :goto_b8
    if-eqz v10, :cond_c5

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/GroupedCell;->mTopBorder:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 95
    :cond_c5
    if-eqz v9, :cond_f1

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/GroupedCell;->mTopBorder:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 97
    .local v14, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/GroupedCell;->mTopBorder:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    .end local v14    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_f1
    if-lez v13, :cond_fe

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/GroupedCell;->mContent:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 103
    :cond_fe
    if-eqz v11, :cond_11f

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/GroupedCell;->mContent:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/GroupedCell;->mContent:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/views/GroupedCell;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a0016

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 110
    .end local v7    # "contentColor":I
    .end local v8    # "contentText":Ljava/lang/String;
    .end local v9    # "fullWidthBorder":Z
    .end local v10    # "hideTopBorder":Z
    .end local v11    # "hintText":Ljava/lang/String;
    .end local v13    # "maxLines":I
    .end local v15    # "titleText":Ljava/lang/String;
    .end local v16    # "withRightCaret":Z
    :cond_11f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/views/GroupedCell;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    if-nez v17, :cond_12f

    .line 112
    const v17, 0x7f020034

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setBackgroundResource(I)V

    .line 114
    :cond_12f
    return-void

    .line 89
    .restart local v7    # "contentColor":I
    .restart local v8    # "contentText":Ljava/lang/String;
    .restart local v9    # "fullWidthBorder":Z
    .restart local v10    # "hideTopBorder":Z
    .restart local v11    # "hintText":Ljava/lang/String;
    .restart local v13    # "maxLines":I
    .restart local v15    # "titleText":Ljava/lang/String;
    .restart local v16    # "withRightCaret":Z
    :cond_130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/GroupedCell;->mContent:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/views/GroupedCell;->mContent:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_b8
.end method


# virtual methods
.method public getTooltip()Lcom/airbnb/android/views/GroupedTooltip;
    .registers 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCell;->mTooltip:Lcom/airbnb/android/views/GroupedTooltip;

    if-nez v0, :cond_d

    .line 158
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "no tooltip in this layout. is this a vertical grouped layout?"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_d
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCell;->mTooltip:Lcom/airbnb/android/views/GroupedTooltip;

    return-object v0
.end method

.method public setContent(I)V
    .registers 3
    .param p1, "contentRes"    # I

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/airbnb/android/views/GroupedCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "content"    # Ljava/lang/CharSequence;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCell;->mContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_13

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cannot set content text. this view has a right caret instead of content text"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_13
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCell;->mContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method public setContentColor(I)V
    .registers 4
    .param p1, "colorRes"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCell;->mContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/views/GroupedCell;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    return-void
.end method

.method public setIcon(II)V
    .registers 5
    .param p1, "iconId"    # I
    .param p2, "colorStateListId"    # I

    .prologue
    .line 169
    invoke-static {p1, p2}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdStateList(II)Lcom/airbnb/android/utils/ColorizedDrawable;

    move-result-object v0

    .line 170
    .local v0, "drawable":Lcom/airbnb/android/utils/ColorizedDrawable;
    iget-object v1, p0, Lcom/airbnb/android/views/GroupedCell;->mNextArrow:Landroid/view/View;

    check-cast v1, Lcom/airbnb/android/views/ColorizedIconView;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/ColorizedIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    return-void
.end method

.method public setTextAllCaps(Z)V
    .registers 3
    .param p1, "textAllCaps"    # Z

    .prologue
    .line 174
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCell;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 175
    return-void
.end method

.method public setTitle(I)V
    .registers 3
    .param p1, "titleRes"    # I

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/airbnb/android/views/GroupedCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/GroupedCell;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCell;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    return-void
.end method

.method public setTitleBold(Z)V
    .registers 5
    .param p1, "bold"    # Z

    .prologue
    .line 165
    iget-object v1, p0, Lcom/airbnb/android/views/GroupedCell;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCell;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 166
    return-void

    .line 165
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public showRightCaret(Z)V
    .registers 4
    .param p1, "show"    # Z

    .prologue
    .line 144
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCell;->mNextArrow:Landroid/view/View;

    if-nez v0, :cond_d

    .line 145
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "no right caret in this layout. is this a vertical grouped layout?"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_d
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCell;->mContent:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(Landroid/view/View;Z)V

    .line 149
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCell;->mNextArrow:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/airbnb/android/utils/MiscUtils;->setVisibleIf(Landroid/view/View;Z)V

    .line 150
    return-void
.end method

.method public showTopBorder(Z)V
    .registers 3
    .param p1, "show"    # Z

    .prologue
    .line 140
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCell;->mTopBorder:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/airbnb/android/utils/MiscUtils;->setVisibleIf(Landroid/view/View;Z)V

    .line 141
    return-void
.end method
