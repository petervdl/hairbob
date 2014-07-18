.class public Lcom/airbnb/android/utils/animation/FlipAnimation;
.super Landroid/view/animation/Animation;
.source "FlipAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/utils/animation/FlipAnimation$1;,
        Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;
    }
.end annotation


# static fields
.field public static final SCALE_DEFAULT:F = 0.65f


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mFromDegrees:F

.field private final mToDegrees:F

.field private scale:F

.field private final scaleType:Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;


# direct methods
.method public constructor <init>(FFFFFLcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;)V
    .registers 8
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "scale"    # F
    .param p6, "scaleType"    # Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 45
    iput p1, p0, Lcom/airbnb/android/utils/animation/FlipAnimation;->mFromDegrees:F

    .line 46
    iput p2, p0, Lcom/airbnb/android/utils/animation/FlipAnimation;->mToDegrees:F

    .line 47
    iput p3, p0, Lcom/airbnb/android/utils/animation/FlipAnimation;->mCenterX:F

    .line 48
    iput p4, p0, Lcom/airbnb/android/utils/animation/FlipAnimation;->mCenterY:F

    .line 49
    const/4 v0, 0x0

    cmpg-float v0, p5, v0

    if-lez v0, :cond_16

    const/high16 v0, 0x3f800000

    cmpl-float v0, p5, v0

    if-ltz v0, :cond_19

    :cond_16
    const p5, 0x3f266666

    .end local p5    # "scale":F
    :cond_19
    iput p5, p0, Lcom/airbnb/android/utils/animation/FlipAnimation;->scale:F

    .line 50
    if-nez p6, :cond_1f

    sget-object p6, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;->SCALE_CYCLE:Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

    .end local p6    # "scaleType":Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;
    :cond_1f
    iput-object p6, p0, Lcom/airbnb/android/utils/animation/FlipAnimation;->scaleType:Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

    .line 51
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 12
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 61
    iget v4, p0, Lcom/airbnb/android/utils/animation/FlipAnimation;->mFromDegrees:F

    .line 62
    .local v4, "fromDegrees":F
    iget v6, p0, Lcom/airbnb/android/utils/animation/FlipAnimation;->mToDegrees:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, p1

    add-float v3, v4, v6

    .line 64
    .local v3, "degrees":F
    iget v1, p0, Lcom/airbnb/android/utils/animation/FlipAnimation;->mCenterX:F

    .line 65
    .local v1, "centerX":F
    iget v2, p0, Lcom/airbnb/android/utils/animation/FlipAnimation;->mCenterY:F

    .line 66
    .local v2, "centerY":F
    iget-object v0, p0, Lcom/airbnb/android/utils/animation/FlipAnimation;->mCamera:Landroid/graphics/Camera;

    .line 68
    .local v0, "camera":Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 70
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 72
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateY(F)V

    .line 74
    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 75
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 77
    neg-float v6, v1

    neg-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 78
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 80
    iget-object v6, p0, Lcom/airbnb/android/utils/animation/FlipAnimation;->scaleType:Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

    iget v7, p0, Lcom/airbnb/android/utils/animation/FlipAnimation;->scale:F

    invoke-virtual {v6, v7, p1}, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;->getScale(FF)F

    move-result v6

    iget-object v7, p0, Lcom/airbnb/android/utils/animation/FlipAnimation;->scaleType:Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

    iget v8, p0, Lcom/airbnb/android/utils/animation/FlipAnimation;->scale:F

    invoke-virtual {v7, v8, p1}, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;->getScale(FF)F

    move-result v7

    invoke-virtual {v5, v6, v7, v1, v2}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 82
    return-void
.end method

.method public initialize(IIII)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 56
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/utils/animation/FlipAnimation;->mCamera:Landroid/graphics/Camera;

    .line 57
    return-void
.end method
