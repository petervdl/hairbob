.class public Landroid/support/v8/renderscript/FieldPacker;
.super Ljava/lang/Object;
.source "FieldPacker.java"


# instance fields
.field private final mData:[B

.field private mN:Landroid/renderscript/FieldPacker;


# virtual methods
.method public final getData()[B
    .registers 2

    .prologue
    .line 545
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 546
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v0

    .line 548
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Landroid/support/v8/renderscript/FieldPacker;->mData:[B

    goto :goto_c
.end method
