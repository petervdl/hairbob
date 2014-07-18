.class public Landroid/support/v8/renderscript/Script;
.super Landroid/support/v8/renderscript/BaseObj;
.source "Script.java"


# instance fields
.field private final mFIDs:Landroid/util/SparseArray;

.field private final mKIDs:Landroid/util/SparseArray;

.field mT:Landroid/support/v8/renderscript/ScriptCThunker;


# direct methods
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 292
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    .line 114
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    .line 293
    return-void
.end method


# virtual methods
.method protected forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V
    .registers 11
    .param p1, "slot"    # I
    .param p2, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "v"    # Landroid/support/v8/renderscript/FieldPacker;

    .prologue
    .line 228
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_a

    .line 229
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkForEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V

    .line 250
    :goto_9
    return-void

    .line 233
    :cond_a
    if-nez p2, :cond_17

    if-nez p3, :cond_17

    .line 234
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "At least one of ain or aout is required to be non-null."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_17
    const/4 v3, 0x0

    .line 238
    .local v3, "in_id":I
    if-eqz p2, :cond_20

    .line 239
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p2, v0}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v3

    .line 241
    :cond_20
    const/4 v4, 0x0

    .line 242
    .local v4, "out_id":I
    if-eqz p3, :cond_29

    .line 243
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p3, v0}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v4

    .line 245
    :cond_29
    const/4 v5, 0x0

    .line 246
    .local v5, "params":[B
    if-eqz p4, :cond_30

    .line 247
    invoke-virtual {p4}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v5

    .line 249
    :cond_30
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->nScriptForEach(IIII[B)V

    goto :goto_9
.end method

.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
    .registers 2

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Script;->getNObj()Landroid/renderscript/Script;

    move-result-object v0

    return-object v0
.end method

.method getNObj()Landroid/renderscript/Script;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    return-object v0
.end method

.method public setVar(IF)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "v"    # F

    .prologue
    .line 302
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_a

    .line 303
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkSetVar(IF)V

    .line 308
    :goto_9
    return-void

    .line 307
    :cond_a
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarF(IIF)V

    goto :goto_9
.end method

.method public setVar(ILandroid/support/v8/renderscript/BaseObj;)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "o"    # Landroid/support/v8/renderscript/BaseObj;

    .prologue
    .line 377
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_a

    .line 378
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkSetVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 383
    :goto_9
    return-void

    .line 382
    :cond_a
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v2

    if-nez p2, :cond_19

    const/4 v0, 0x0

    :goto_15
    invoke-virtual {v1, v2, p1, v0}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarObj(III)V

    goto :goto_9

    :cond_19
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p2, v0}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v0

    goto :goto_15
.end method
