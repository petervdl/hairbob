.class public Lcom/airbnb/android/views/StepProgressBar;
.super Landroid/widget/LinearLayout;
.source "StepProgressBar.java"


# instance fields
.field private mCaptionTextView:Lcom/airbnb/android/views/AutoScaleTextView;

.field private mCurrentStep:Ljava/lang/Integer;

.field private mNumberSteps:Ljava/lang/Integer;

.field private mProgressBar:Landroid/widget/LinearLayout;


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

    const v2, 0x7f0301d6

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f080506

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/AutoScaleTextView;

    iput-object v1, p0, Lcom/airbnb/android/views/StepProgressBar;->mCaptionTextView:Lcom/airbnb/android/views/AutoScaleTextView;

    .line 35
    const v1, 0x7f080507

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/airbnb/android/views/StepProgressBar;->mProgressBar:Landroid/widget/LinearLayout;

    .line 36
    return-void
.end method

.method private createSection(I)Landroid/widget/ImageView;
    .registers 9
    .param p1, "sectionDrawable"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 132
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/airbnb/android/views/StepProgressBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 134
    .local v2, "section":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/airbnb/android/views/StepProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 135
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/high16 v5, 0x3f800000

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 137
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 138
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->isAtLeastJellyBean()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 141
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 146
    :goto_2b
    return-object v2

    .line 143
    :cond_2c
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2b
.end method

.method private setupViews()V
    .registers 11

    .prologue
    .line 96
    iget-object v8, p0, Lcom/airbnb/android/views/StepProgressBar;->mNumberSteps:Ljava/lang/Integer;

    if-eqz v8, :cond_82

    .line 97
    iget-object v8, p0, Lcom/airbnb/android/views/StepProgressBar;->mProgressBar:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 99
    iget-object v8, p0, Lcom/airbnb/android/views/StepProgressBar;->mCurrentStep:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_3d

    .line 100
    const v8, 0x7f02021c

    invoke-direct {p0, v8}, Lcom/airbnb/android/views/StepProgressBar;->createSection(I)Landroid/widget/ImageView;

    move-result-object v1

    .line 101
    .local v1, "completeSectionLeft":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/airbnb/android/views/StepProgressBar;->mProgressBar:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    .end local v1    # "completeSectionLeft":Landroid/widget/ImageView;
    :goto_1d
    iget-object v8, p0, Lcom/airbnb/android/views/StepProgressBar;->mCurrentStep:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/airbnb/android/views/StepProgressBar;->mNumberSteps:Ljava/lang/Integer;

    if-ne v8, v9, :cond_4a

    iget-object v8, p0, Lcom/airbnb/android/views/StepProgressBar;->mCurrentStep:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v7, v8, -0x1

    .line 109
    .local v7, "incrementToStep":I
    :goto_2b
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2c
    if-ge v3, v7, :cond_51

    .line 110
    const v8, 0x7f02021d

    invoke-direct {p0, v8}, Lcom/airbnb/android/views/StepProgressBar;->createSection(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 111
    .local v0, "completeSection":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/airbnb/android/views/StepProgressBar;->mProgressBar:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 103
    .end local v0    # "completeSection":Landroid/widget/ImageView;
    .end local v3    # "i":I
    .end local v7    # "incrementToStep":I
    :cond_3d
    const v8, 0x7f02021f

    invoke-direct {p0, v8}, Lcom/airbnb/android/views/StepProgressBar;->createSection(I)Landroid/widget/ImageView;

    move-result-object v5

    .line 104
    .local v5, "incompleteSectionLeft":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/airbnb/android/views/StepProgressBar;->mProgressBar:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1d

    .line 107
    .end local v5    # "incompleteSectionLeft":Landroid/widget/ImageView;
    :cond_4a
    iget-object v8, p0, Lcom/airbnb/android/views/StepProgressBar;->mCurrentStep:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2b

    .line 114
    .restart local v3    # "i":I
    .restart local v7    # "incrementToStep":I
    :cond_51
    iget-object v8, p0, Lcom/airbnb/android/views/StepProgressBar;->mCurrentStep:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v3, v8, 0x1

    :goto_59
    iget-object v8, p0, Lcom/airbnb/android/views/StepProgressBar;->mNumberSteps:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v3, v8, :cond_70

    .line 115
    const v8, 0x7f020220

    invoke-direct {p0, v8}, Lcom/airbnb/android/views/StepProgressBar;->createSection(I)Landroid/widget/ImageView;

    move-result-object v4

    .line 116
    .local v4, "incompleteSection":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/airbnb/android/views/StepProgressBar;->mProgressBar:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    .line 119
    .end local v4    # "incompleteSection":Landroid/widget/ImageView;
    :cond_70
    iget-object v8, p0, Lcom/airbnb/android/views/StepProgressBar;->mCurrentStep:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/airbnb/android/views/StepProgressBar;->mNumberSteps:Ljava/lang/Integer;

    if-ne v8, v9, :cond_83

    .line 120
    const v8, 0x7f02021e

    invoke-direct {p0, v8}, Lcom/airbnb/android/views/StepProgressBar;->createSection(I)Landroid/widget/ImageView;

    move-result-object v2

    .line 121
    .local v2, "completeSectionRight":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/airbnb/android/views/StepProgressBar;->mProgressBar:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    .end local v2    # "completeSectionRight":Landroid/widget/ImageView;
    .end local v3    # "i":I
    .end local v7    # "incrementToStep":I
    :cond_82
    :goto_82
    return-void

    .line 123
    .restart local v3    # "i":I
    .restart local v7    # "incrementToStep":I
    :cond_83
    const v8, 0x7f020221

    invoke-direct {p0, v8}, Lcom/airbnb/android/views/StepProgressBar;->createSection(I)Landroid/widget/ImageView;

    move-result-object v6

    .line 124
    .local v6, "incompleteSectionRight":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/airbnb/android/views/StepProgressBar;->mProgressBar:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_82
.end method


# virtual methods
.method public incrementStep()V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/airbnb/android/views/StepProgressBar;->mCurrentStep:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/airbnb/android/views/StepProgressBar;->mNumberSteps:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 58
    iget-object v0, p0, Lcom/airbnb/android/views/StepProgressBar;->mCurrentStep:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/airbnb/android/views/StepProgressBar;->mCurrentStep:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/StepProgressBar;->mCurrentStep:Ljava/lang/Integer;

    .line 59
    invoke-direct {p0}, Lcom/airbnb/android/views/StepProgressBar;->setupViews()V

    .line 61
    :cond_21
    return-void
.end method

.method public incrementToStep(I)V
    .registers 3
    .param p1, "step"    # I

    .prologue
    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/StepProgressBar;->mCurrentStep:Ljava/lang/Integer;

    .line 71
    invoke-direct {p0}, Lcom/airbnb/android/views/StepProgressBar;->setupViews()V

    .line 72
    return-void
.end method

.method public initializeView(II)V
    .registers 4
    .param p1, "numberSteps"    # I
    .param p2, "currentStep"    # I

    .prologue
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/StepProgressBar;->mNumberSteps:Ljava/lang/Integer;

    .line 48
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/StepProgressBar;->mCurrentStep:Ljava/lang/Integer;

    .line 50
    invoke-direct {p0}, Lcom/airbnb/android/views/StepProgressBar;->setupViews()V

    .line 51
    return-void
.end method

.method public setCaption(I)V
    .registers 4
    .param p1, "textResourceId"    # I

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/airbnb/android/views/StepProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "caption":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/views/StepProgressBar;->mCaptionTextView:Lcom/airbnb/android/views/AutoScaleTextView;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/AutoScaleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method public setCaption(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/airbnb/android/views/StepProgressBar;->mCaptionTextView:Lcom/airbnb/android/views/AutoScaleTextView;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/AutoScaleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method
