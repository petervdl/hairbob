.class Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;
.super Ljava/lang/Object;
.source "PhotoRearranger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/views/PhotoRearranger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueInterpolator"
.end annotation


# instance fields
.field private final mEndTime:J

.field private final mEndValue:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mStartTime:J

.field private final mStartValue:F

.field final synthetic this$0:Lcom/airbnb/android/views/PhotoRearranger;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/views/PhotoRearranger;JJFFLandroid/view/animation/Interpolator;)V
    .registers 10
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .param p6, "startValue"    # F
    .param p7, "endValue"    # F
    .param p8, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-wide p2, p0, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->mStartTime:J

    .line 79
    iput-wide p4, p0, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->mEndTime:J

    .line 80
    iput p6, p0, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->mStartValue:F

    .line 81
    iput p7, p0, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->mEndValue:F

    .line 83
    if-nez p8, :cond_17

    .line 84
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 88
    :goto_16
    return-void

    .line 86
    :cond_17
    iput-object p8, p0, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_16
.end method


# virtual methods
.method public getValue(J)F
    .registers 10
    .param p1, "time"    # J

    .prologue
    .line 91
    iget-wide v2, p0, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->mStartTime:J

    cmp-long v2, p1, v2

    if-gtz v2, :cond_9

    .line 92
    iget v2, p0, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->mStartValue:F

    .line 98
    :goto_8
    return v2

    .line 93
    :cond_9
    iget-wide v2, p0, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->mEndTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_12

    .line 94
    iget v2, p0, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->mEndValue:F

    goto :goto_8

    .line 96
    :cond_12
    iget-wide v2, p0, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->mStartTime:J

    sub-long v2, p1, v2

    long-to-float v2, v2

    iget-wide v3, p0, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->mEndTime:J

    iget-wide v5, p0, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->mStartTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    div-float v1, v2, v3

    .line 97
    .local v1, "percent":F
    iget-object v2, p0, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 98
    .local v0, "interpolatedPercent":F
    iget v2, p0, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->mEndValue:F

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f800000

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/airbnb/android/views/PhotoRearranger$ValueInterpolator;->mStartValue:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    goto :goto_8
.end method
