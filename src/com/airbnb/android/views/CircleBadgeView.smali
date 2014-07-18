.class public Lcom/airbnb/android/views/CircleBadgeView;
.super Landroid/widget/FrameLayout;
.source "CircleBadgeView.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0x3e8


# instance fields
.field private mBackgroundColor:I

.field private mBadgeBorderSize:I

.field private mBadgeSize:I

.field private mBadgeSizeWithDropShadow:I

.field private mBorderCircleImageView:Landroid/widget/ImageView;

.field private mDropShadowCircleImageView:Landroid/widget/ImageView;

.field private mFontIcon:Ljava/lang/String;

.field private mFontIconSize:I

.field private mFontImageActive:Lcom/airbnb/android/views/AirTextView;

.field private mFontImageInactive:Lcom/airbnb/android/views/AirTextView;

.field private mForegroundColor:I

.field private mInactiveForegroundColor:I

.field private mInnerCircleImageView:Landroid/widget/ImageView;

.field private mInvisibleColor:I

.field private mOuterCircleImageView:Landroid/widget/ImageView;

.field private mTextSwitcher:Landroid/widget/TextSwitcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030025

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 62
    .local v2, "view":Landroid/view/View;
    sget-object v3, Lcom/airbnb/android/R$styleable;->CircleBadgeView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v3, 0x64

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBadgeSizeWithDropShadow:I

    .line 64
    const/16 v3, 0x8

    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBadgeBorderSize:I

    .line 65
    const/4 v3, 0x2

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mForegroundColor:I

    .line 66
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBackgroundColor:I

    .line 67
    const/4 v3, 0x5

    const v4, -0x777778

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mInactiveForegroundColor:I

    .line 68
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mInvisibleColor:I

    .line 69
    const/4 v3, 0x6

    const/16 v4, 0x32

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mFontIconSize:I

    .line 70
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mFontIcon:Ljava/lang/String;

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    const/high16 v3, 0x3f800000

    invoke-virtual {p0}, Lcom/airbnb/android/views/CircleBadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v7, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v1, v3

    .line 75
    .local v1, "oneDpInPixels":I
    iget v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBadgeSizeWithDropShadow:I

    mul-int/lit8 v4, v1, 0x7

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBadgeSize:I

    .line 77
    const v3, 0x7f080074

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mDropShadowCircleImageView:Landroid/widget/ImageView;

    .line 78
    const v3, 0x7f080075

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mOuterCircleImageView:Landroid/widget/ImageView;

    .line 79
    const v3, 0x7f080076

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBorderCircleImageView:Landroid/widget/ImageView;

    .line 80
    const v3, 0x7f080077

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mInnerCircleImageView:Landroid/widget/ImageView;

    .line 81
    const v3, 0x7f080079

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/views/AirTextView;

    iput-object v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mFontImageActive:Lcom/airbnb/android/views/AirTextView;

    .line 82
    const v3, 0x7f08007a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/views/AirTextView;

    iput-object v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mFontImageInactive:Lcom/airbnb/android/views/AirTextView;

    .line 83
    const v3, 0x7f080078

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextSwitcher;

    iput-object v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mTextSwitcher:Landroid/widget/TextSwitcher;

    .line 85
    iget-object v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mFontImageActive:Lcom/airbnb/android/views/AirTextView;

    iget v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mForegroundColor:I

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/AirTextView;->setTextColor(I)V

    .line 86
    iget-object v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mFontImageActive:Lcom/airbnb/android/views/AirTextView;

    iget v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mFontIconSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4}, Lcom/airbnb/android/views/AirTextView;->setTextSize(IF)V

    .line 87
    iget-object v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mFontImageActive:Lcom/airbnb/android/views/AirTextView;

    iget-object v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mFontIcon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mFontImageInactive:Lcom/airbnb/android/views/AirTextView;

    iget v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mInactiveForegroundColor:I

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/AirTextView;->setTextColor(I)V

    .line 89
    iget-object v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mFontImageInactive:Lcom/airbnb/android/views/AirTextView;

    iget v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mFontIconSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4}, Lcom/airbnb/android/views/AirTextView;->setTextSize(IF)V

    .line 90
    iget-object v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mFontImageInactive:Lcom/airbnb/android/views/AirTextView;

    iget-object v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mFontIcon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method private animateChangeIconColor()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x1f4

    .line 229
    invoke-virtual {p0}, Lcom/airbnb/android/views/CircleBadgeView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x10a0000

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 230
    .local v0, "in":Landroid/view/animation/Animation;
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 231
    invoke-virtual {p0}, Lcom/airbnb/android/views/CircleBadgeView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10a0001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 232
    .local v1, "out":Landroid/view/animation/Animation;
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 233
    iget-object v2, p0, Lcom/airbnb/android/views/CircleBadgeView;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 234
    iget-object v2, p0, Lcom/airbnb/android/views/CircleBadgeView;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 235
    iget-object v2, p0, Lcom/airbnb/android/views/CircleBadgeView;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mFontIcon:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 236
    return-void
.end method

.method private animateShowDropShadow()V
    .registers 5

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/airbnb/android/views/CircleBadgeView;->makeDropShadowCircle()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 219
    .local v1, "dropShadowCircle":Landroid/graphics/drawable/GradientDrawable;
    iget-object v2, p0, Lcom/airbnb/android/views/CircleBadgeView;->mDropShadowCircleImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 221
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 222
    iget-object v2, p0, Lcom/airbnb/android/views/CircleBadgeView;->mDropShadowCircleImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 223
    return-void
.end method

.method private makeActivationTransitionDrawable(III)Landroid/graphics/drawable/TransitionDrawable;
    .registers 10
    .param p1, "size"    # I
    .param p2, "startColor"    # I
    .param p3, "endColor"    # I

    .prologue
    const/4 v5, 0x0

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/CircleBadgeView;->makeCircleWithColor(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    .line 208
    .local v1, "start":Landroid/graphics/drawable/ShapeDrawable;
    invoke-direct {p0, p1, p3}, Lcom/airbnb/android/views/CircleBadgeView;->makeCircleWithColor(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    .line 209
    .local v0, "end":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v2, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 210
    .local v2, "transition":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 211
    return-object v2
.end method

.method private makeCircleWithColor(II)Landroid/graphics/drawable/ShapeDrawable;
    .registers 5
    .param p1, "size"    # I
    .param p2, "color"    # I

    .prologue
    .line 174
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 175
    .local v0, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 176
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 177
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/ShapeDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 178
    return-object v0
.end method

.method private makeDropShadowCircle()Landroid/graphics/drawable/GradientDrawable;
    .registers 5

    .prologue
    const/high16 v3, 0x3f000000

    .line 187
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_26

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 188
    .local v0, "dropShadowCircle":Landroid/graphics/drawable/GradientDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 189
    iget v1, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBadgeSizeWithDropShadow:I

    iget v2, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBadgeSizeWithDropShadow:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 190
    iget v1, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBadgeSizeWithDropShadow:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 191
    invoke-virtual {v0, v3, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 192
    return-object v0

    .line 187
    nop

    :array_26
    .array-data 4
        -0x1000000
        0x0
    .end array-data
.end method


# virtual methods
.method public animateActivation(Z)V
    .registers 9
    .param p1, "dropShadow"    # Z

    .prologue
    const/16 v6, 0x3e8

    .line 142
    iget v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBadgeSize:I

    iget v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mInvisibleColor:I

    iget v5, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBackgroundColor:I

    invoke-direct {p0, v3, v4, v5}, Lcom/airbnb/android/views/CircleBadgeView;->makeActivationTransitionDrawable(III)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v2

    .line 144
    .local v2, "outerTransition":Landroid/graphics/drawable/TransitionDrawable;
    iget-object v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mOuterCircleImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBadgeSize:I

    iget v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBadgeBorderSize:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mInactiveForegroundColor:I

    iget v5, p0, Lcom/airbnb/android/views/CircleBadgeView;->mForegroundColor:I

    invoke-direct {p0, v3, v4, v5}, Lcom/airbnb/android/views/CircleBadgeView;->makeActivationTransitionDrawable(III)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    .line 148
    .local v0, "borderTransition":Landroid/graphics/drawable/TransitionDrawable;
    iget-object v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBorderCircleImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBadgeSize:I

    iget v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBadgeBorderSize:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mInvisibleColor:I

    iget v5, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBackgroundColor:I

    invoke-direct {p0, v3, v4, v5}, Lcom/airbnb/android/views/CircleBadgeView;->makeActivationTransitionDrawable(III)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v1

    .line 152
    .local v1, "innerTransition":Landroid/graphics/drawable/TransitionDrawable;
    iget-object v3, p0, Lcom/airbnb/android/views/CircleBadgeView;->mInnerCircleImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    if-eqz p1, :cond_3c

    .line 155
    invoke-direct {p0}, Lcom/airbnb/android/views/CircleBadgeView;->animateShowDropShadow()V

    .line 158
    :cond_3c
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 159
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 160
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 161
    invoke-direct {p0}, Lcom/airbnb/android/views/CircleBadgeView;->animateChangeIconColor()V

    .line 162
    return-void
.end method

.method public initializeAsActiveBadge()V
    .registers 7

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/airbnb/android/views/CircleBadgeView;->makeDropShadowCircle()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 98
    .local v1, "dropShadowCircle":Landroid/graphics/drawable/GradientDrawable;
    iget-object v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mDropShadowCircleImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBadgeSize:I

    iget v5, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBackgroundColor:I

    invoke-direct {p0, v4, v5}, Lcom/airbnb/android/views/CircleBadgeView;->makeCircleWithColor(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    .line 101
    .local v3, "outerCircle":Landroid/graphics/drawable/ShapeDrawable;
    iget-object v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mOuterCircleImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBadgeSize:I

    iget v5, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBadgeBorderSize:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/airbnb/android/views/CircleBadgeView;->mForegroundColor:I

    invoke-direct {p0, v4, v5}, Lcom/airbnb/android/views/CircleBadgeView;->makeCircleWithColor(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    .line 104
    .local v0, "borderCircle":Landroid/graphics/drawable/ShapeDrawable;
    iget-object v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBorderCircleImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBadgeSize:I

    iget v5, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBadgeBorderSize:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBackgroundColor:I

    invoke-direct {p0, v4, v5}, Lcom/airbnb/android/views/CircleBadgeView;->makeCircleWithColor(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    .line 107
    .local v2, "innerCircle":Landroid/graphics/drawable/ShapeDrawable;
    iget-object v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mInnerCircleImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mTextSwitcher:Landroid/widget/TextSwitcher;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextSwitcher;->setDisplayedChild(I)V

    .line 110
    return-void
.end method

.method public initializeAsInactiveBadge()V
    .registers 7

    .prologue
    .line 117
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 118
    .local v1, "dropShadowCircle":Landroid/graphics/drawable/ShapeDrawable;
    iget v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBadgeSizeWithDropShadow:I

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 119
    iget v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBadgeSizeWithDropShadow:I

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 120
    iget v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mInvisibleColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/ShapeDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 121
    iget-object v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mDropShadowCircleImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBadgeSize:I

    iget v5, p0, Lcom/airbnb/android/views/CircleBadgeView;->mInvisibleColor:I

    invoke-direct {p0, v4, v5}, Lcom/airbnb/android/views/CircleBadgeView;->makeCircleWithColor(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    .line 124
    .local v3, "outerCircle":Landroid/graphics/drawable/ShapeDrawable;
    iget-object v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mOuterCircleImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBadgeSize:I

    iget v5, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBadgeBorderSize:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/airbnb/android/views/CircleBadgeView;->mInactiveForegroundColor:I

    invoke-direct {p0, v4, v5}, Lcom/airbnb/android/views/CircleBadgeView;->makeCircleWithColor(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    .line 127
    .local v0, "borderCircle":Landroid/graphics/drawable/ShapeDrawable;
    iget-object v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBorderCircleImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBadgeSize:I

    iget v5, p0, Lcom/airbnb/android/views/CircleBadgeView;->mBadgeBorderSize:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/airbnb/android/views/CircleBadgeView;->mInvisibleColor:I

    invoke-direct {p0, v4, v5}, Lcom/airbnb/android/views/CircleBadgeView;->makeCircleWithColor(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    .line 130
    .local v2, "innerCircle":Landroid/graphics/drawable/ShapeDrawable;
    iget-object v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mInnerCircleImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v4, p0, Lcom/airbnb/android/views/CircleBadgeView;->mTextSwitcher:Landroid/widget/TextSwitcher;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextSwitcher;->setDisplayedChild(I)V

    .line 133
    return-void
.end method
