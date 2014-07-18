.class Landroid/support/v8/renderscript/ScriptCThunker;
.super Landroid/renderscript/ScriptC;
.source "ScriptCThunker.java"


# virtual methods
.method thunkForEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V
    .registers 11
    .param p1, "slot"    # I
    .param p2, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "v"    # Landroid/support/v8/renderscript/FieldPacker;

    .prologue
    .line 101
    const/4 v3, 0x0

    .line 102
    .local v3, "nin":Landroid/renderscript/Allocation;
    const/4 v4, 0x0

    .line 103
    .local v4, "nout":Landroid/renderscript/Allocation;
    const/4 v1, 0x0

    .line 104
    .local v1, "nfp":Landroid/renderscript/FieldPacker;
    if-eqz p2, :cond_9

    .line 105
    check-cast p2, Landroid/support/v8/renderscript/AllocationThunker;

    .end local p2    # "ain":Landroid/support/v8/renderscript/Allocation;
    iget-object v3, p2, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    .line 107
    :cond_9
    if-eqz p3, :cond_f

    .line 108
    check-cast p3, Landroid/support/v8/renderscript/AllocationThunker;

    .end local p3    # "aout":Landroid/support/v8/renderscript/Allocation;
    iget-object v4, p3, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    .line 111
    :cond_f
    if-eqz p4, :cond_1b

    .line 112
    :try_start_11
    new-instance v2, Landroid/renderscript/FieldPacker;

    invoke-virtual {p4}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/renderscript/FieldPacker;-><init>([B)V

    .end local v1    # "nfp":Landroid/renderscript/FieldPacker;
    .local v2, "nfp":Landroid/renderscript/FieldPacker;
    move-object v1, v2

    .line 114
    .end local v2    # "nfp":Landroid/renderscript/FieldPacker;
    .restart local v1    # "nfp":Landroid/renderscript/FieldPacker;
    :cond_1b
    invoke-virtual {p0, p1, v3, v4, v1}, Landroid/support/v8/renderscript/ScriptCThunker;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V
    :try_end_1e
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_11 .. :try_end_1e} :catch_1f

    .line 118
    return-void

    .line 115
    :catch_1f
    move-exception v0

    .line 116
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method thunkSetVar(IF)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "v"    # F

    .prologue
    .line 151
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->setVar(IF)V
    :try_end_3
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 155
    return-void

    .line 152
    :catch_4
    move-exception v0

    .line 153
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method thunkSetVar(ILandroid/support/v8/renderscript/BaseObj;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "o"    # Landroid/support/v8/renderscript/BaseObj;

    .prologue
    .line 186
    if-nez p2, :cond_d

    .line 188
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v1}, Landroid/support/v8/renderscript/ScriptCThunker;->setVar(II)V
    :try_end_6
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_3 .. :try_end_6} :catch_7

    .line 199
    :goto_6
    return-void

    .line 189
    :catch_7
    move-exception v0

    .line 190
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 195
    .end local v0    # "e":Landroid/renderscript/RSRuntimeException;
    :cond_d
    :try_start_d
    invoke-virtual {p2}, Landroid/support/v8/renderscript/BaseObj;->getNObj()Landroid/renderscript/BaseObj;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/support/v8/renderscript/ScriptCThunker;->setVar(ILandroid/renderscript/BaseObj;)V
    :try_end_14
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_6

    .line 196
    :catch_15
    move-exception v0

    .line 197
    .restart local v0    # "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
