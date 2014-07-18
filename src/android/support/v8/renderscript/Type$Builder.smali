.class public Landroid/support/v8/renderscript/Type$Builder;
.super Ljava/lang/Object;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimZ:I

.field mElement:Landroid/support/v8/renderscript/Element;

.field mRS:Landroid/support/v8/renderscript/RenderScript;

.field mYuv:I


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V
    .registers 4
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p2, "e"    # Landroid/support/v8/renderscript/Element;

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    .line 216
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Element;->checkValid()V

    .line 217
    iput-object p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 218
    iput-object p2, p0, Landroid/support/v8/renderscript/Type$Builder;->mElement:Landroid/support/v8/renderscript/Element;

    .line 219
    return-void
.end method


# virtual methods
.method public create()Landroid/support/v8/renderscript/Type;
    .registers 12

    .prologue
    const/4 v2, 0x1

    .line 289
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    if-lez v1, :cond_23

    .line 290
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    if-lt v1, v2, :cond_d

    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    if-ge v1, v2, :cond_16

    .line 291
    :cond_d
    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string/jumbo v2, "Both X and Y dimension required when Z is present."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_16
    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v1, :cond_23

    .line 294
    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string/jumbo v2, "Cube maps not supported with 3D types."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_23
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    if-lez v1, :cond_34

    .line 298
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    if-ge v1, v2, :cond_34

    .line 299
    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string/jumbo v2, "X dimension required when Y is present."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    :cond_34
    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v1, :cond_45

    .line 303
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    if-ge v1, v2, :cond_45

    .line 304
    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string/jumbo v2, "Cube maps require 2D Types."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :cond_45
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mYuv:I

    if-eqz v1, :cond_5e

    .line 309
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    if-nez v1, :cond_55

    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    if-nez v1, :cond_55

    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimMipmaps:Z

    if-eqz v1, :cond_5e

    .line 310
    :cond_55
    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string/jumbo v2, "YUV only supports basic 2D."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 315
    :cond_5e
    iget-object v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    sget-boolean v1, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v1, :cond_9a

    .line 316
    iget-object v0, p0, Landroid/support/v8/renderscript/Type$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    check-cast v0, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 317
    .local v0, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    iget-object v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mElement:Landroid/support/v8/renderscript/Element;

    iget v2, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    iget v3, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    iget v4, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    iget-boolean v5, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimMipmaps:Z

    iget-boolean v6, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    iget v7, p0, Landroid/support/v8/renderscript/Type$Builder;->mYuv:I

    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/TypeThunker;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;IIIZZI)Landroid/support/v8/renderscript/Type;

    move-result-object v10

    .line 324
    .end local v0    # "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    .local v10, "t":Landroid/support/v8/renderscript/Type;
    :goto_7a
    iget-object v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mElement:Landroid/support/v8/renderscript/Element;

    iput-object v1, v10, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    .line 325
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    iput v1, v10, Landroid/support/v8/renderscript/Type;->mDimX:I

    .line 326
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    iput v1, v10, Landroid/support/v8/renderscript/Type;->mDimY:I

    .line 327
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    iput v1, v10, Landroid/support/v8/renderscript/Type;->mDimZ:I

    .line 328
    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimMipmaps:Z

    iput-boolean v1, v10, Landroid/support/v8/renderscript/Type;->mDimMipmaps:Z

    .line 329
    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    iput-boolean v1, v10, Landroid/support/v8/renderscript/Type;->mDimFaces:Z

    .line 330
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mYuv:I

    iput v1, v10, Landroid/support/v8/renderscript/Type;->mDimYuv:I

    .line 332
    invoke-virtual {v10}, Landroid/support/v8/renderscript/Type;->calcElementCount()V

    .line 333
    return-object v10

    .line 320
    .end local v10    # "t":Landroid/support/v8/renderscript/Type;
    :cond_9a
    iget-object v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Landroid/support/v8/renderscript/Type$Builder;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v3, p0, Landroid/support/v8/renderscript/Type$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v2

    iget v3, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    iget v4, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    iget v5, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    iget-boolean v6, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimMipmaps:Z

    iget-boolean v7, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    iget v8, p0, Landroid/support/v8/renderscript/Type$Builder;->mYuv:I

    invoke-virtual/range {v1 .. v8}, Landroid/support/v8/renderscript/RenderScript;->nTypeCreate(IIIIZZI)I

    move-result v9

    .line 322
    .local v9, "id":I
    new-instance v10, Landroid/support/v8/renderscript/Type;

    iget-object v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v10, v9, v1}, Landroid/support/v8/renderscript/Type;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .restart local v10    # "t":Landroid/support/v8/renderscript/Type;
    goto :goto_7a
.end method

.method public setMipmaps(Z)Landroid/support/v8/renderscript/Type$Builder;
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 252
    iput-boolean p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimMipmaps:Z

    .line 253
    return-object p0
.end method

.method public setX(I)Landroid/support/v8/renderscript/Type$Builder;
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 228
    const/4 v0, 0x1

    if-ge p1, v0, :cond_c

    .line 229
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Values of less than 1 for Dimension X are not valid."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_c
    iput p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    .line 232
    return-object p0
.end method

.method public setY(I)Landroid/support/v8/renderscript/Type$Builder;
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 236
    const/4 v0, 0x1

    if-ge p1, v0, :cond_c

    .line 237
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Values of less than 1 for Dimension Y are not valid."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_c
    iput p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    .line 240
    return-object p0
.end method
