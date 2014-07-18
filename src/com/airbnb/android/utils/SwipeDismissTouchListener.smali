.class public Lcom/airbnb/android/utils/SwipeDismissTouchListener;
.super Ljava/lang/Object;
.source "SwipeDismissTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/utils/SwipeDismissTouchListener$DismissCallbacks;
    }
.end annotation


# static fields
.field private static final MIN_ALPHA:F = 0.4f


# instance fields
.field private mAnimationTime:J

.field private mCallbacks:Lcom/airbnb/android/utils/SwipeDismissTouchListener$DismissCallbacks;

.field private mDownX:F

.field private mDownY:F

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private mSlop:I

.field private mSwiping:Z

.field private mToken:Ljava/lang/Object;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mView:Landroid/view/View;

.field private mViewToFade:Landroid/view/View;

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Lcom/airbnb/android/utils/SwipeDismissTouchListener$DismissCallbacks;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewToFade"    # Landroid/view/View;
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "callbacks"    # Lcom/airbnb/android/utils/SwipeDismissTouchListener$DismissCallbacks;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v1, 0x1

    iput v1, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mViewWidth:I

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 72
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mSlop:I

    .line 73
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mMinFlingVelocity:I

    .line 74
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mMaxFlingVelocity:I

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mAnimationTime:J

    .line 77
    iput-object p1, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mView:Landroid/view/View;

    .line 78
    iput-object p2, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mViewToFade:Landroid/view/View;

    .line 79
    iput-object p3, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    .line 80
    iput-object p4, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mCallbacks:Lcom/airbnb/android/utils/SwipeDismissTouchListener$DismissCallbacks;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/utils/SwipeDismissTouchListener;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/utils/SwipeDismissTouchListener;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->performDismiss()V

    return-void
.end method

.method private performDismiss()V
    .registers 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mCallbacks:Lcom/airbnb/android/utils/SwipeDismissTouchListener$DismissCallbacks;

    iget-object v1, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/airbnb/android/utils/SwipeDismissTouchListener$DismissCallbacks;->onDismiss(Landroid/view/View;Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mViewToFade:Landroid/view/View;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 201
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 85
    iget v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mViewWidth:I

    const/4 v10, 0x2

    if-ge v9, v10, :cond_d

    .line 86
    iget-object v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    iput v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mViewWidth:I

    .line 89
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_1a4

    .line 194
    :cond_14
    :goto_14
    const/4 v9, 0x0

    :goto_15
    return v9

    .line 92
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iput v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mDownX:F

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mDownY:F

    .line 94
    iget-object v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mCallbacks:Lcom/airbnb/android/utils/SwipeDismissTouchListener$DismissCallbacks;

    iget-object v10, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    invoke-interface {v9, v10}, Lcom/airbnb/android/utils/SwipeDismissTouchListener$DismissCallbacks;->canDismiss(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 95
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 96
    iget-object v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 98
    :cond_39
    const/4 v9, 0x1

    goto :goto_15

    .line 102
    :pswitch_3b
    iget-object v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_14

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iget v10, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mDownX:F

    sub-float v4, v9, v10

    .line 107
    .local v4, "deltaX":F
    iget-object v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 108
    iget-object v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 109
    iget-object v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    .line 110
    .local v8, "velocityX":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 111
    .local v1, "absVelocityX":F
    iget-object v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 112
    .local v2, "absVelocityY":F
    const/4 v6, 0x0

    .line 113
    .local v6, "dismiss":Z
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mViewWidth:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_a6

    .line 114
    const/4 v6, 0x1

    .line 121
    :cond_78
    :goto_78
    if-eqz v6, :cond_d8

    .line 123
    iget-object v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mViewToFade:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    iget-wide v10, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    new-instance v10, Lcom/airbnb/android/utils/SwipeDismissTouchListener$1;

    invoke-direct {v10, p0}, Lcom/airbnb/android/utils/SwipeDismissTouchListener$1;-><init>(Lcom/airbnb/android/utils/SwipeDismissTouchListener;)V

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 139
    :cond_93
    :goto_93
    iget-object v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 140
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 141
    const/4 v9, 0x0

    iput v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mDownX:F

    .line 142
    const/4 v9, 0x0

    iput v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mDownY:F

    .line 143
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mSwiping:Z

    goto/16 :goto_14

    .line 115
    :cond_a6
    iget v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mMinFlingVelocity:I

    int-to-float v9, v9

    cmpg-float v9, v9, v1

    if-gtz v9, :cond_78

    iget v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mMaxFlingVelocity:I

    int-to-float v9, v9

    cmpg-float v9, v1, v9

    if-gtz v9, :cond_78

    cmpg-float v9, v2, v1

    if-gez v9, :cond_78

    cmpg-float v9, v2, v1

    if-gez v9, :cond_78

    iget-boolean v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v9, :cond_78

    .line 119
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_d1

    const/4 v9, 0x1

    move v10, v9

    :goto_c7
    const/4 v9, 0x0

    cmpg-float v9, v4, v9

    if-gez v9, :cond_d4

    const/4 v9, 0x1

    :goto_cd
    if-ne v10, v9, :cond_d6

    const/4 v6, 0x1

    :goto_d0
    goto :goto_78

    :cond_d1
    const/4 v9, 0x0

    move v10, v9

    goto :goto_c7

    :cond_d4
    const/4 v9, 0x0

    goto :goto_cd

    :cond_d6
    const/4 v6, 0x0

    goto :goto_d0

    .line 132
    :cond_d8
    iget-boolean v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v9, :cond_93

    .line 134
    iget-object v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mViewToFade:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const/high16 v10, 0x3f800000

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    iget-wide v10, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_93

    .line 148
    .end local v1    # "absVelocityX":F
    .end local v2    # "absVelocityY":F
    .end local v4    # "deltaX":F
    .end local v6    # "dismiss":Z
    .end local v8    # "velocityX":F
    :pswitch_f3
    iget-object v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_14

    .line 152
    iget-object v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mViewToFade:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const/high16 v10, 0x3f800000

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    iget-wide v10, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 156
    iget-object v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 157
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 158
    const/4 v9, 0x0

    iput v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mDownX:F

    .line 159
    const/4 v9, 0x0

    iput v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mDownY:F

    .line 160
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mSwiping:Z

    goto/16 :goto_14

    .line 165
    :pswitch_120
    iget-object v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_14

    .line 169
    iget-object v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iget v10, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mDownX:F

    sub-float v4, v9, v10

    .line 171
    .restart local v4    # "deltaX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iget v10, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mDownY:F

    sub-float v5, v9, v10

    .line 172
    .local v5, "deltaY":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mSlop:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_179

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_179

    .line 173
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mSwiping:Z

    .line 174
    iget-object v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 177
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 178
    .local v3, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    shl-int/lit8 v9, v9, 0x8

    or-int/lit8 v9, v9, 0x3

    invoke-virtual {v3, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 181
    iget-object v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v9, v3}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 182
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 185
    .end local v3    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_179
    iget-boolean v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v9, :cond_14

    .line 186
    const v7, 0x3f99999a

    .line 187
    .local v7, "ratio":F
    iget-object v9, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mViewToFade:Landroid/view/View;

    const v10, 0x3ecccccd

    const/high16 v11, 0x3f800000

    const/high16 v12, 0x3f800000

    const v13, 0x3f99999a

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v14

    mul-float/2addr v13, v14

    iget v14, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->mViewWidth:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    .line 189
    const/4 v9, 0x1

    goto/16 :goto_15

    .line 89
    :pswitch_data_1a4
    .packed-switch 0x0
        :pswitch_16
        :pswitch_3b
        :pswitch_120
        :pswitch_f3
    .end packed-switch
.end method
