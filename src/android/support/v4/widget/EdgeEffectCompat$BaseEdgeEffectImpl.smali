.class Landroid/support/v4/widget/EdgeEffectCompat$BaseEdgeEffectImpl;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"

# interfaces
.implements Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/EdgeEffectCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseEdgeEffectImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
    .registers 4
    .param p1, "edgeEffect"    # Ljava/lang/Object;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public finish(Ljava/lang/Object;)V
    .registers 2
    .param p1, "edgeEffect"    # Ljava/lang/Object;

    .prologue
    .line 71
    return-void
.end method

.method public isFinished(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "edgeEffect"    # Ljava/lang/Object;

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPull(Ljava/lang/Object;F)Z
    .registers 4
    .param p1, "edgeEffect"    # Ljava/lang/Object;
    .param p2, "deltaDistance"    # F

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public onRelease(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "edgeEffect"    # Ljava/lang/Object;

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public setSize(Ljava/lang/Object;II)V
    .registers 4
    .param p1, "edgeEffect"    # Ljava/lang/Object;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 64
    return-void
.end method
