.class public Lcom/airbnb/android/utils/animation/AnimationFactory;
.super Ljava/lang/Object;
.source "AnimationFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/utils/animation/AnimationFactory$1;,
        Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static flipAnimation(Landroid/view/View;Landroid/view/View;Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;JLandroid/view/animation/Interpolator;)[Landroid/view/animation/Animation;
    .registers 23
    .param p0, "fromView"    # Landroid/view/View;
    .param p1, "toView"    # Landroid/view/View;
    .param p2, "dir"    # Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 86
    const/4 v3, 0x2

    new-array v0, v3, [Landroid/view/animation/Animation;

    move-object/from16 v16, v0

    .line 90
    .local v16, "result":[Landroid/view/animation/Animation;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    div-float v5, v3, v4

    .line 91
    .local v5, "centerX":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    div-float v6, v3, v4

    .line 93
    .local v6, "centerY":F
    new-instance v2, Lcom/airbnb/android/utils/animation/FlipAnimation;

    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;->getStartDegreeForFirstView()F

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;->getEndDegreeForFirstView()F

    move-result v4

    const v7, 0x3f266666

    sget-object v8, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;->SCALE_DOWN:Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

    invoke-direct/range {v2 .. v8}, Lcom/airbnb/android/utils/animation/FlipAnimation;-><init>(FFFFFLcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;)V

    .line 96
    .local v2, "outFlip":Landroid/view/animation/Animation;
    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 97
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 98
    if-nez p5, :cond_83

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    :goto_39
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 100
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v15, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 101
    .local v15, "outAnimation":Landroid/view/animation/AnimationSet;
    invoke-virtual {v15, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 102
    const/4 v3, 0x0

    aput-object v15, v16, v3

    .line 108
    new-instance v7, Lcom/airbnb/android/utils/animation/FlipAnimation;

    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;->getStartDegreeForSecondView()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;->getEndDegreeForSecondView()F

    move-result v9

    const v12, 0x3f266666

    sget-object v13, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;->SCALE_UP:Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

    move v10, v5

    move v11, v6

    invoke-direct/range {v7 .. v13}, Lcom/airbnb/android/utils/animation/FlipAnimation;-><init>(FFFFFLcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;)V

    .line 111
    .local v7, "inFlip":Landroid/view/animation/Animation;
    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 112
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 113
    if-nez p5, :cond_6c

    new-instance p5, Landroid/view/animation/AccelerateInterpolator;

    .end local p5    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct/range {p5 .. p5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    :cond_6c
    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 114
    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 116
    new-instance v14, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v14, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 117
    .local v14, "inAnimation":Landroid/view/animation/AnimationSet;
    invoke-virtual {v14, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 118
    const/4 v3, 0x1

    aput-object v14, v16, v3

    .line 120
    return-object v16

    .end local v7    # "inFlip":Landroid/view/animation/Animation;
    .end local v14    # "inAnimation":Landroid/view/animation/AnimationSet;
    .end local v15    # "outAnimation":Landroid/view/animation/AnimationSet;
    .restart local p5    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_83
    move-object/from16 v3, p5

    .line 98
    goto :goto_39
.end method

.method public static flipTransition(Landroid/widget/ViewAnimator;Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;J)V
    .registers 13
    .param p0, "viewAnimator"    # Landroid/widget/ViewAnimator;
    .param p1, "dir"    # Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;
    .param p2, "duration"    # J

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, "fromView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v7

    .line 135
    .local v7, "currentIndex":I
    add-int/lit8 v2, v7, 0x1

    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v3

    rem-int v8, v2, v3

    .line 137
    .local v8, "nextIndex":I
    invoke-virtual {p0, v8}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 139
    .local v1, "toView":Landroid/view/View;
    if-ge v8, v7, :cond_30

    invoke-virtual {p1}, Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;->theOtherDirection()Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;

    move-result-object v2

    :goto_1a
    const/4 v5, 0x0

    move-wide v3, p2

    invoke-static/range {v0 .. v5}, Lcom/airbnb/android/utils/animation/AnimationFactory;->flipAnimation(Landroid/view/View;Landroid/view/View;Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;JLandroid/view/animation/Interpolator;)[Landroid/view/animation/Animation;

    move-result-object v6

    .line 141
    .local v6, "animc":[Landroid/view/animation/Animation;
    const/4 v2, 0x0

    aget-object v2, v6, v2

    invoke-virtual {p0, v2}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 142
    const/4 v2, 0x1

    aget-object v2, v6, v2

    invoke-virtual {p0, v2}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 144
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->showNext()V

    .line 145
    return-void

    .end local v6    # "animc":[Landroid/view/animation/Animation;
    :cond_30
    move-object v2, p1

    .line 139
    goto :goto_1a
.end method

.method public static inFromLeftAnimation(JLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 12
    .param p0, "duration"    # J
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 157
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x40800000

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 161
    .local v0, "inFromLeft":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 162
    if-nez p2, :cond_18

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    .end local p2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    :cond_18
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 163
    return-object v0
.end method

.method public static inFromRightAnimation(JLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 12
    .param p0, "duration"    # J
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 192
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 196
    .local v0, "inFromRight":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 197
    if-nez p2, :cond_18

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    .end local p2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    :cond_18
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 198
    return-object v0
.end method

.method public static inFromTopAnimation(JLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 12
    .param p0, "duration"    # J
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 226
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 230
    .local v0, "infromtop":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 231
    if-nez p2, :cond_18

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    .end local p2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    :cond_18
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 232
    return-object v0
.end method

.method public static outToLeftAnimation(JLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 12
    .param p0, "duration"    # J
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 209
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x40800000

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 213
    .local v0, "outtoLeft":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 214
    if-nez p2, :cond_18

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    .end local p2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    :cond_18
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 215
    return-object v0
.end method

.method public static outToRightAnimation(JLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 12
    .param p0, "duration"    # J
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 174
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x3f800000

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 178
    .local v0, "outtoRight":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 179
    if-nez p2, :cond_18

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    .end local p2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    :cond_18
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 180
    return-object v0
.end method

.method public static outToTopAnimation(JLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 12
    .param p0, "duration"    # J
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 243
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 247
    .local v0, "outtotop":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 248
    if-nez p2, :cond_18

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    .end local p2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    :cond_18
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 249
    return-object v0
.end method
