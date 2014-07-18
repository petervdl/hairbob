.class public Lcom/airbnb/android/views/ColorizedIconView;
.super Landroid/widget/ImageView;
.source "ColorizedIconView.java"


# instance fields
.field private mDrawableId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/airbnb/android/views/ColorizedIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/airbnb/android/views/ColorizedIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-virtual {p0}, Lcom/airbnb/android/views/ColorizedIconView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_d

    .line 33
    invoke-direct {p0, p2}, Lcom/airbnb/android/views/ColorizedIconView;->init(Landroid/util/AttributeSet;)V

    .line 35
    :cond_d
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-virtual {p0}, Lcom/airbnb/android/views/ColorizedIconView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_c

    .line 40
    invoke-direct {p0, p2}, Lcom/airbnb/android/views/ColorizedIconView;->init(Landroid/util/AttributeSet;)V

    .line 42
    :cond_c
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/airbnb/android/views/ColorizedIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/airbnb/android/R$styleable;->ColorizedIconView:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/airbnb/android/views/ColorizedIconView;->mDrawableId:I

    .line 47
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 50
    .local v1, "colorStateListRes":I
    iget v2, p0, Lcom/airbnb/android/views/ColorizedIconView;->mDrawableId:I

    if-eqz v2, :cond_25

    if-eqz v1, :cond_25

    .line 51
    iget v2, p0, Lcom/airbnb/android/views/ColorizedIconView;->mDrawableId:I

    invoke-static {v2, v1}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdStateList(II)Lcom/airbnb/android/utils/ColorizedDrawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/airbnb/android/views/ColorizedIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    :cond_25
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method


# virtual methods
.method public setColor(I)V
    .registers 3
    .param p1, "colorId"    # I

    .prologue
    .line 62
    iget v0, p0, Lcom/airbnb/android/views/ColorizedIconView;->mDrawableId:I

    invoke-static {v0, p1}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/ColorizedIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    return-void
.end method

.method public setDrawableId(I)V
    .registers 2
    .param p1, "drawableId"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/airbnb/android/views/ColorizedIconView;->mDrawableId:I

    .line 59
    return-void
.end method
