.class public Lcom/airbnb/android/views/StickyStepProgressBar;
.super Landroid/widget/LinearLayout;
.source "StickyStepProgressBar.java"


# instance fields
.field private mCurrentStep:Ljava/lang/Integer;

.field private mNumberSteps:Ljava/lang/Integer;

.field private mProgressBar:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301d9

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f080507

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mProgressBar:Landroid/widget/LinearLayout;

    .line 34
    return-void
.end method

.method private createSection(Landroid/widget/LinearLayout;I)V
    .registers 10
    .param p1, "progressBar"    # Landroid/widget/LinearLayout;
    .param p2, "sectionDrawable"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 103
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/airbnb/android/views/StickyStepProgressBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 105
    .local v2, "section":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/airbnb/android/views/StickyStepProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 108
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 109
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->isAtLeastJellyBean()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 112
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :goto_2a
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    return-void

    .line 114
    :cond_2e
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2a
.end method

.method private setupViews()V
    .registers 7

    .prologue
    const v5, 0x7f020220

    const v4, 0x7f02021d

    .line 73
    iget-object v2, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mNumberSteps:Ljava/lang/Integer;

    if-eqz v2, :cond_65

    .line 74
    iget-object v2, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mProgressBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 76
    iget-object v2, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mCurrentStep:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_35

    .line 77
    iget-object v2, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mProgressBar:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v4}, Lcom/airbnb/android/views/StickyStepProgressBar;->createSection(Landroid/widget/LinearLayout;I)V

    .line 82
    :goto_1c
    iget-object v2, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mCurrentStep:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mNumberSteps:Ljava/lang/Integer;

    if-ne v2, v3, :cond_3b

    iget-object v2, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mCurrentStep:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 84
    .local v1, "incrementToStep":I
    :goto_2a
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_2b
    if-ge v0, v1, :cond_42

    .line 85
    iget-object v2, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mProgressBar:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v4}, Lcom/airbnb/android/views/StickyStepProgressBar;->createSection(Landroid/widget/LinearLayout;I)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 79
    .end local v0    # "i":I
    .end local v1    # "incrementToStep":I
    :cond_35
    iget-object v2, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mProgressBar:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v5}, Lcom/airbnb/android/views/StickyStepProgressBar;->createSection(Landroid/widget/LinearLayout;I)V

    goto :goto_1c

    .line 82
    :cond_3b
    iget-object v2, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mCurrentStep:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2a

    .line 88
    .restart local v0    # "i":I
    .restart local v1    # "incrementToStep":I
    :cond_42
    iget-object v2, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mCurrentStep:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    :goto_4a
    iget-object v2, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mNumberSteps:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_5a

    .line 89
    iget-object v2, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mProgressBar:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v5}, Lcom/airbnb/android/views/StickyStepProgressBar;->createSection(Landroid/widget/LinearLayout;I)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 92
    :cond_5a
    iget-object v2, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mCurrentStep:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mNumberSteps:Ljava/lang/Integer;

    if-ne v2, v3, :cond_66

    .line 93
    iget-object v2, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mProgressBar:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v4}, Lcom/airbnb/android/views/StickyStepProgressBar;->createSection(Landroid/widget/LinearLayout;I)V

    .line 98
    .end local v0    # "i":I
    .end local v1    # "incrementToStep":I
    :cond_65
    :goto_65
    return-void

    .line 95
    .restart local v0    # "i":I
    .restart local v1    # "incrementToStep":I
    :cond_66
    iget-object v2, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mProgressBar:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v5}, Lcom/airbnb/android/views/StickyStepProgressBar;->createSection(Landroid/widget/LinearLayout;I)V

    goto :goto_65
.end method


# virtual methods
.method public incrementStep()V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mCurrentStep:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mNumberSteps:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 56
    iget-object v0, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mCurrentStep:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mCurrentStep:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mCurrentStep:Ljava/lang/Integer;

    .line 57
    invoke-direct {p0}, Lcom/airbnb/android/views/StickyStepProgressBar;->setupViews()V

    .line 59
    :cond_21
    return-void
.end method

.method public incrementToStep(I)V
    .registers 3
    .param p1, "step"    # I

    .prologue
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mCurrentStep:Ljava/lang/Integer;

    .line 69
    invoke-direct {p0}, Lcom/airbnb/android/views/StickyStepProgressBar;->setupViews()V

    .line 70
    return-void
.end method

.method public initializeView(II)V
    .registers 4
    .param p1, "numberSteps"    # I
    .param p2, "currentStep"    # I

    .prologue
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mNumberSteps:Ljava/lang/Integer;

    .line 46
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/StickyStepProgressBar;->mCurrentStep:Ljava/lang/Integer;

    .line 48
    invoke-direct {p0}, Lcom/airbnb/android/views/StickyStepProgressBar;->setupViews()V

    .line 49
    return-void
.end method
