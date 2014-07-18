.class public Lcom/airbnb/android/views/StickyButton;
.super Landroid/widget/FrameLayout;
.source "StickyButton.java"


# instance fields
.field protected mRootView:Landroid/widget/LinearLayout;

.field private mSubtitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/android/views/StickyButton;->setupViews(Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p2}, Lcom/airbnb/android/views/StickyButton;->setupViews(Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0, p2}, Lcom/airbnb/android/views/StickyButton;->setupViews(Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method private enableSubtitle()V
    .registers 5

    .prologue
    .line 111
    iget-object v2, p0, Lcom/airbnb/android/views/StickyButton;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 112
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    or-int/lit8 v2, v2, 0x50

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 113
    iget-object v2, p0, Lcom/airbnb/android/views/StickyButton;->mSubtitle:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    invoke-virtual {p0}, Lcom/airbnb/android/views/StickyButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 115
    .local v0, "heightWithSubtitle":I
    iget-object v2, p0, Lcom/airbnb/android/views/StickyButton;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 116
    invoke-virtual {p0}, Lcom/airbnb/android/views/StickyButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 117
    return-void
.end method

.method private setupViews(Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/airbnb/android/views/StickyButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0301d7

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    const v2, 0x7f080508

    invoke-virtual {p0, v2}, Lcom/airbnb/android/views/StickyButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/airbnb/android/views/StickyButton;->mRootView:Landroid/widget/LinearLayout;

    .line 51
    iget-object v2, p0, Lcom/airbnb/android/views/StickyButton;->mRootView:Landroid/widget/LinearLayout;

    const v3, 0x7f08001f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/views/StickyButton;->mTitle:Landroid/widget/TextView;

    .line 52
    iget-object v2, p0, Lcom/airbnb/android/views/StickyButton;->mRootView:Landroid/widget/LinearLayout;

    const v3, 0x7f080020

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/views/StickyButton;->mSubtitle:Landroid/widget/TextView;

    .line 54
    if-eqz p1, :cond_4c

    .line 55
    invoke-virtual {p0}, Lcom/airbnb/android/views/StickyButton;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/airbnb/android/R$styleable;->StickyButton:[I

    invoke-virtual {v2, p1, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "titleText":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    iget-object v2, p0, Lcom/airbnb/android/views/StickyButton;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "titleText":Ljava/lang/String;
    :cond_4c
    return-void
.end method


# virtual methods
.method public getButtonHeight()I
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/airbnb/android/views/StickyButton;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method public getRootViewId()I
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/airbnb/android/views/StickyButton;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    return v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/airbnb/android/views/StickyButton;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public setCustomBackgroundColorResource(I)V
    .registers 5
    .param p1, "colorResId"    # I

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/airbnb/android/views/StickyButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301d8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/StickyButton;->addView(Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lcom/airbnb/android/views/StickyButton;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/airbnb/android/views/StickyButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 104
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 88
    iget-object v0, p0, Lcom/airbnb/android/views/StickyButton;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 89
    iget-object v0, p0, Lcom/airbnb/android/views/StickyButton;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 90
    iget-object v0, p0, Lcom/airbnb/android/views/StickyButton;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 91
    return-void
.end method

.method public setRoundedCorners(Z)V
    .registers 4
    .param p1, "roundCorners"    # Z

    .prologue
    .line 97
    if-eqz p1, :cond_b

    const v0, 0x7f02005b

    .line 98
    .local v0, "bgResId":I
    :goto_5
    iget-object v1, p0, Lcom/airbnb/android/views/StickyButton;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 99
    return-void

    .line 97
    .end local v0    # "bgResId":I
    :cond_b
    const v0, 0x7f02005c

    goto :goto_5
.end method

.method public setSubtitle(I)V
    .registers 3
    .param p1, "titleRes"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/airbnb/android/views/StickyButton;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    invoke-direct {p0}, Lcom/airbnb/android/views/StickyButton;->enableSubtitle()V

    .line 83
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/airbnb/android/views/StickyButton;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-direct {p0}, Lcom/airbnb/android/views/StickyButton;->enableSubtitle()V

    .line 78
    return-void
.end method

.method public setTitle(I)V
    .registers 3
    .param p1, "titleRes"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/airbnb/android/views/StickyButton;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 73
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/airbnb/android/views/StickyButton;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method
