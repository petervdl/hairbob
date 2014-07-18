.class Landroid/support/v8/renderscript/RenderScriptThunker;
.super Landroid/support/v8/renderscript/RenderScript;
.source "RenderScriptThunker.java"


# instance fields
.field mN:Landroid/renderscript/RenderScript;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/v8/renderscript/RenderScriptThunker;->isNative:Z

    .line 50
    return-void
.end method

.method public static create(Landroid/content/Context;I)Landroid/support/v8/renderscript/RenderScript;
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sdkVersion"    # I

    .prologue
    .line 54
    :try_start_0
    new-instance v1, Landroid/support/v8/renderscript/RenderScriptThunker;

    invoke-direct {v1, p0}, Landroid/support/v8/renderscript/RenderScriptThunker;-><init>(Landroid/content/Context;)V

    .line 55
    .local v1, "rs":Landroid/support/v8/renderscript/RenderScriptThunker;
    invoke-static {p0, p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;I)Landroid/renderscript/RenderScript;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
    :try_end_b
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_b} :catch_c

    .line 56
    return-object v1

    .line 58
    .end local v1    # "rs":Landroid/support/v8/renderscript/RenderScriptThunker;
    :catch_c
    move-exception v0

    .line 59
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method validate()V
    .registers 3

    .prologue
    .line 33
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_d

    .line 34
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Calling RS with no Context active."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_d
    return-void
.end method
