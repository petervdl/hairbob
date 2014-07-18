.class public Lcom/airbnb/android/views/groups/IconCountButton;
.super Landroid/widget/LinearLayout;
.source "IconCountButton.java"


# instance fields
.field private mBaseIconRes:I

.field private mButton:Landroid/widget/Button;

.field private mIconView:Landroid/view/View;

.field private mIsPressable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/airbnb/android/views/groups/IconCountButton;->mIsPressable:Z

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03011f

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/IconCountButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/R$styleable;->ImageCountButton:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 28
    .local v0, "aType":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Lcom/airbnb/android/views/groups/IconCountButton;->setupViews(Landroid/content/res/TypedArray;)V

    .line 29
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    return-void
.end method

.method private setupViews(Landroid/content/res/TypedArray;)V
    .registers 3
    .param p1, "aType"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/views/groups/IconCountButton;->mBaseIconRes:I

    .line 42
    const v0, 0x7f080317

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/IconCountButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/groups/IconCountButton;->mIconView:Landroid/view/View;

    .line 43
    const v0, 0x7f080315

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/IconCountButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/airbnb/android/views/groups/IconCountButton;->mButton:Landroid/widget/Button;

    .line 44
    return-void
.end method

.method private updateVisibilty()V
    .registers 2

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/airbnb/android/views/groups/IconCountButton;->mIsPressable:Z

    if-nez v0, :cond_a

    .line 34
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/IconCountButton;->setVisibility(I)V

    .line 38
    :goto_9
    return-void

    .line 36
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/IconCountButton;->setVisibility(I)V

    goto :goto_9
.end method


# virtual methods
.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 58
    iget-object v0, p0, Lcom/airbnb/android/views/groups/IconCountButton;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 59
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/android/views/groups/IconCountButton;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method public setPressable(Z)V
    .registers 5
    .param p1, "pressable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/airbnb/android/views/groups/IconCountButton;->mIsPressable:Z

    .line 63
    if-eqz p1, :cond_14

    .line 64
    iget-object v0, p0, Lcom/airbnb/android/views/groups/IconCountButton;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/airbnb/android/views/groups/IconCountButton;->mButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 70
    :goto_10
    invoke-direct {p0}, Lcom/airbnb/android/views/groups/IconCountButton;->updateVisibilty()V

    .line 71
    return-void

    .line 67
    :cond_14
    iget-object v0, p0, Lcom/airbnb/android/views/groups/IconCountButton;->mButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/airbnb/android/views/groups/IconCountButton;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_10
.end method

.method public updateState(Z)V
    .registers 5
    .param p1, "isActive"    # Z

    .prologue
    .line 47
    iget-object v0, p0, Lcom/airbnb/android/views/groups/IconCountButton;->mIconView:Landroid/view/View;

    iget v1, p0, Lcom/airbnb/android/views/groups/IconCountButton;->mBaseIconRes:I

    invoke-static {p1}, Lcom/airbnb/android/utils/MiscUtils;->getSubmitColorResourceId(Z)I

    move-result v2

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/MiscUtils;->apiSetBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 49
    return-void
.end method
