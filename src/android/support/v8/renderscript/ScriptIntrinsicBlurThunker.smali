.class Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;
.super Landroid/support/v8/renderscript/ScriptIntrinsicBlur;
.source "ScriptIntrinsicBlurThunker.java"


# instance fields
.field mN:Landroid/renderscript/ScriptIntrinsicBlur;


# direct methods
.method protected constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 33
    return-void
.end method

.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;
    .registers 8
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;

    .prologue
    .line 36
    move-object v3, p0

    check-cast v3, Landroid/support/v8/renderscript/RenderScriptThunker;

    .local v3, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    move-object v1, p1

    .line 37
    check-cast v1, Landroid/support/v8/renderscript/ElementThunker;

    .line 39
    .local v1, "et":Landroid/support/v8/renderscript/ElementThunker;
    new-instance v0, Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;

    const/4 v4, 0x0

    invoke-direct {v0, v4, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 41
    .local v0, "blur":Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;
    :try_start_c
    iget-object v4, v3, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/ElementThunker;->getNObj()Landroid/renderscript/Element;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v4

    iput-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlur;
    :try_end_18
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_c .. :try_end_18} :catch_19

    .line 45
    return-object v0

    .line 42
    :catch_19
    move-exception v2

    .line 43
    .local v2, "exc":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method


# virtual methods
.method public forEach(Landroid/support/v8/renderscript/Allocation;)V
    .registers 6
    .param p1, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 66
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .line 67
    .local v0, "aoutt":Landroid/support/v8/renderscript/AllocationThunker;
    if-eqz v0, :cond_e

    .line 69
    :try_start_5
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V
    :try_end_e
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_5 .. :try_end_e} :catch_f

    .line 74
    :cond_e
    return-void

    .line 70
    :catch_f
    move-exception v1

    .line 71
    .local v1, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;->getNObj()Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getNObj()Landroid/renderscript/Script;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;->getNObj()Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    return-object v0
.end method

.method getNObj()Landroid/renderscript/ScriptIntrinsicBlur;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlur;

    return-object v0
.end method

.method public setInput(Landroid/support/v8/renderscript/Allocation;)V
    .registers 6
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 49
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .line 51
    .local v0, "aint":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_3
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V
    :try_end_c
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_3 .. :try_end_c} :catch_d

    .line 55
    return-void

    .line 52
    :catch_d
    move-exception v1

    .line 53
    .local v1, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setRadius(F)V
    .registers 4
    .param p1, "radius"    # F

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicBlurThunker;->mN:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v1, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V
    :try_end_5
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 63
    return-void

    .line 60
    :catch_6
    move-exception v0

    .line 61
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
