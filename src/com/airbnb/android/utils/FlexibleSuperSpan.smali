.class public Lcom/airbnb/android/utils/FlexibleSuperSpan;
.super Landroid/text/style/SuperscriptSpan;
.source "FlexibleSuperSpan.java"


# instance fields
.field final mCoefficient:F


# direct methods
.method public constructor <init>(F)V
    .registers 2
    .param p1, "coefficient"    # F

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/text/style/SuperscriptSpan;-><init>()V

    .line 11
    iput p1, p0, Lcom/airbnb/android/utils/FlexibleSuperSpan;->mCoefficient:F

    .line 12
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 5
    .param p1, "tp"    # Landroid/text/TextPaint;

    .prologue
    .line 16
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/airbnb/android/utils/FlexibleSuperSpan;->mCoefficient:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 17
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .registers 5
    .param p1, "tp"    # Landroid/text/TextPaint;

    .prologue
    .line 21
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/airbnb/android/utils/FlexibleSuperSpan;->mCoefficient:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 22
    return-void
.end method
