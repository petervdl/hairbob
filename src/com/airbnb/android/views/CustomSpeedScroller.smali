.class public Lcom/airbnb/android/views/CustomSpeedScroller;
.super Landroid/widget/Scroller;
.source "CustomSpeedScroller.java"


# instance fields
.field private mDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 15
    const/16 v0, 0x190

    iput v0, p0, Lcom/airbnb/android/views/CustomSpeedScroller;->mDuration:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 15
    const/16 v0, 0x190

    iput v0, p0, Lcom/airbnb/android/views/CustomSpeedScroller;->mDuration:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 15
    const/16 v0, 0x190

    iput v0, p0, Lcom/airbnb/android/views/CustomSpeedScroller;->mDuration:I

    .line 28
    return-void
.end method


# virtual methods
.method public setScrollDuration(I)V
    .registers 2
    .param p1, "duration"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/airbnb/android/views/CustomSpeedScroller;->mDuration:I

    .line 44
    return-void
.end method

.method public startScroll(IIII)V
    .registers 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 39
    iget v5, p0, Lcom/airbnb/android/views/CustomSpeedScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 40
    return-void
.end method

.method public startScroll(IIIII)V
    .registers 12
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    .line 33
    iget v5, p0, Lcom/airbnb/android/views/CustomSpeedScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 34
    return-void
.end method
