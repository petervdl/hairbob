.class Landroid/support/v8/renderscript/ExceptionThunker;
.super Ljava/lang/Object;
.source "ExceptionThunker.java"


# direct methods
.method static convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;
    .registers 3
    .param p0, "e"    # Ljava/lang/RuntimeException;

    .prologue
    .line 23
    instance-of v0, p0, Landroid/renderscript/RSIllegalArgumentException;

    if-eqz v0, :cond_f

    .line 24
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    .line 32
    .end local p0    # "e":Ljava/lang/RuntimeException;
    :cond_e
    :goto_e
    return-object p0

    .line 25
    .restart local p0    # "e":Ljava/lang/RuntimeException;
    :cond_f
    instance-of v0, p0, Landroid/renderscript/RSInvalidStateException;

    if-eqz v0, :cond_1e

    .line 26
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_e

    .line 27
    :cond_1e
    instance-of v0, p0, Landroid/renderscript/RSDriverException;

    if-eqz v0, :cond_2d

    .line 28
    new-instance v0, Landroid/support/v8/renderscript/RSDriverException;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_e

    .line 29
    :cond_2d
    instance-of v0, p0, Landroid/renderscript/RSRuntimeException;

    if-eqz v0, :cond_e

    .line 30
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_e
.end method
