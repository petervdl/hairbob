.class Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"

# interfaces
.implements Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/KeyEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseKeyEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static metaStateFilterDirectionalModifiers(IIIII)I
    .registers 10
    .param p0, "metaState"    # I
    .param p1, "modifiers"    # I
    .param p2, "basic"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 55
    and-int v4, p1, p2

    if-eqz v4, :cond_1a

    move v1, v2

    .line 56
    .local v1, "wantBasic":Z
    :goto_7
    or-int v0, p3, p4

    .line 57
    .local v0, "directional":I
    and-int v4, p1, v0

    if-eqz v4, :cond_1c

    .line 59
    .local v2, "wantLeftOrRight":Z
    :goto_d
    if-eqz v1, :cond_22

    .line 60
    if-eqz v2, :cond_1e

    .line 61
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "bad arguments"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0    # "directional":I
    .end local v1    # "wantBasic":Z
    .end local v2    # "wantLeftOrRight":Z
    :cond_1a
    move v1, v3

    .line 55
    goto :goto_7

    .restart local v0    # "directional":I
    .restart local v1    # "wantBasic":Z
    :cond_1c
    move v2, v3

    .line 57
    goto :goto_d

    .line 63
    .restart local v2    # "wantLeftOrRight":Z
    :cond_1e
    xor-int/lit8 v3, v0, -0x1

    and-int/2addr p0, v3

    .line 67
    .end local p0    # "metaState":I
    :cond_21
    :goto_21
    return p0

    .line 64
    .restart local p0    # "metaState":I
    :cond_22
    if-eqz v2, :cond_21

    .line 65
    xor-int/lit8 v3, p2, -0x1

    and-int/2addr p0, v3

    goto :goto_21
.end method


# virtual methods
.method public metaStateHasModifiers(II)Z
    .registers 7
    .param p1, "metaState"    # I
    .param p2, "modifiers"    # I

    .prologue
    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, p1}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->normalizeMetaState(I)I

    move-result v1

    and-int/lit16 p1, v1, 0xf7

    .line 85
    const/16 v1, 0x40

    const/16 v2, 0x80

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p1

    .line 87
    const/4 v1, 0x2

    const/16 v2, 0x10

    const/16 v3, 0x20

    invoke-static {p1, p2, v1, v2, v3}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p1

    .line 89
    if-ne p1, p2, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public metaStateHasNoModifiers(I)Z
    .registers 3
    .param p1, "metaState"    # I

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->normalizeMetaState(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xf7

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public normalizeMetaState(I)I
    .registers 3
    .param p1, "metaState"    # I

    .prologue
    .line 73
    and-int/lit16 v0, p1, 0xc0

    if-eqz v0, :cond_6

    .line 74
    or-int/lit8 p1, p1, 0x1

    .line 76
    :cond_6
    and-int/lit8 v0, p1, 0x30

    if-eqz v0, :cond_c

    .line 77
    or-int/lit8 p1, p1, 0x2

    .line 79
    :cond_c
    and-int/lit16 v0, p1, 0xf7

    return v0
.end method

.method public startTracking(Landroid/view/KeyEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 99
    return-void
.end method
