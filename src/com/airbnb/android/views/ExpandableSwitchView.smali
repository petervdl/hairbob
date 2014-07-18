.class public Lcom/airbnb/android/views/ExpandableSwitchView;
.super Landroid/widget/LinearLayout;
.source "ExpandableSwitchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/views/ExpandableSwitchView$onCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDetailsTextView:Landroid/widget/TextView;

.field private mExpandableView:Landroid/view/View;

.field private mListener:Lcom/airbnb/android/views/ExpandableSwitchView$onCheckedChangeListener;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03005e

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    invoke-virtual {p0}, Lcom/airbnb/android/views/ExpandableSwitchView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/R$styleable;->ExpandableSwitch:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Lcom/airbnb/android/views/ExpandableSwitchView;->setupViews(Landroid/content/res/TypedArray;)V

    .line 39
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/ExpandableSwitchView;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/ExpandableSwitchView;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/ExpandableSwitchView;->setViewVisibility(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/views/ExpandableSwitchView;)Lcom/airbnb/android/views/ExpandableSwitchView$onCheckedChangeListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/ExpandableSwitchView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/airbnb/android/views/ExpandableSwitchView;->mListener:Lcom/airbnb/android/views/ExpandableSwitchView$onCheckedChangeListener;

    return-object v0
.end method

.method private setViewVisibility(Z)V
    .registers 4
    .param p1, "isChecked"    # Z

    .prologue
    .line 101
    if-eqz p1, :cond_9

    .line 102
    iget-object v0, p0, Lcom/airbnb/android/views/ExpandableSwitchView;->mExpandableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :goto_8
    return-void

    .line 104
    :cond_9
    iget-object v0, p0, Lcom/airbnb/android/views/ExpandableSwitchView;->mExpandableView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8
.end method

.method private setupViews(Landroid/content/res/TypedArray;)V
    .registers 9
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v6, 0x0

    .line 43
    const v4, 0x7f08010b

    invoke-virtual {p0, v4}, Lcom/airbnb/android/views/ExpandableSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/airbnb/android/views/ExpandableSwitchView;->mTitleTextView:Landroid/widget/TextView;

    .line 44
    iget-object v4, p0, Lcom/airbnb/android/views/ExpandableSwitchView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "detailsText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 49
    const v4, 0x7f08010c

    invoke-virtual {p0, v4}, Lcom/airbnb/android/views/ExpandableSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/airbnb/android/views/ExpandableSwitchView;->mDetailsTextView:Landroid/widget/TextView;

    .line 50
    iget-object v4, p0, Lcom/airbnb/android/views/ExpandableSwitchView;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v4, p0, Lcom/airbnb/android/views/ExpandableSwitchView;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    :cond_35
    const v4, 0x7f08010d

    invoke-virtual {p0, v4}, Lcom/airbnb/android/views/ExpandableSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/airbnb/android/views/ExpandableSwitchView;->mCheckBox:Landroid/widget/CheckBox;

    .line 55
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 56
    .local v0, "checked":Z
    iget-object v4, p0, Lcom/airbnb/android/views/ExpandableSwitchView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 58
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 59
    .local v3, "layout":I
    const v4, 0x7f08010e

    invoke-virtual {p0, v4}, Lcom/airbnb/android/views/ExpandableSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 61
    .local v2, "frame":Landroid/widget/FrameLayout;
    iput-object v2, p0, Lcom/airbnb/android/views/ExpandableSwitchView;->mExpandableView:Landroid/view/View;

    .line 63
    invoke-virtual {p0}, Lcom/airbnb/android/views/ExpandableSwitchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 65
    if-eqz v0, :cond_7b

    .line 66
    iget-object v4, p0, Lcom/airbnb/android/views/ExpandableSwitchView;->mExpandableView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :goto_70
    iget-object v4, p0, Lcom/airbnb/android/views/ExpandableSwitchView;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v5, Lcom/airbnb/android/views/ExpandableSwitchView$1;

    invoke-direct {v5, p0}, Lcom/airbnb/android/views/ExpandableSwitchView$1;-><init>(Lcom/airbnb/android/views/ExpandableSwitchView;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 82
    return-void

    .line 68
    :cond_7b
    iget-object v4, p0, Lcom/airbnb/android/views/ExpandableSwitchView;->mExpandableView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_70
.end method


# virtual methods
.method public getExpandableView()Landroid/view/View;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/airbnb/android/views/ExpandableSwitchView;->mExpandableView:Landroid/view/View;

    return-object v0
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/airbnb/android/views/ExpandableSwitchView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "checked"    # Z

    .prologue
    .line 97
    iget-object v0, p0, Lcom/airbnb/android/views/ExpandableSwitchView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 98
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/airbnb/android/views/ExpandableSwitchView$onCheckedChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/views/ExpandableSwitchView$onCheckedChangeListener;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/airbnb/android/views/ExpandableSwitchView;->mListener:Lcom/airbnb/android/views/ExpandableSwitchView$onCheckedChangeListener;

    .line 86
    return-void
.end method
