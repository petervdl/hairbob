.class Landroid/support/v8/renderscript/AllocationThunker;
.super Landroid/support/v8/renderscript/Allocation;
.source "AllocationThunker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/AllocationThunker$1;
    }
.end annotation


# static fields
.field static mBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field mN:Landroid/renderscript/Allocation;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 375
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Landroid/support/v8/renderscript/AllocationThunker;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 377
    sget-object v0, Landroid/support/v8/renderscript/AllocationThunker;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 378
    return-void
.end method

.method constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;ILandroid/renderscript/Allocation;)V
    .registers 6
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p2, "t"    # Landroid/support/v8/renderscript/Type;
    .param p3, "usage"    # I
    .param p4, "na"    # Landroid/renderscript/Allocation;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V

    .line 78
    iput-object p2, p0, Landroid/support/v8/renderscript/AllocationThunker;->mType:Landroid/support/v8/renderscript/Type;

    .line 79
    iput p3, p0, Landroid/support/v8/renderscript/AllocationThunker;->mUsage:I

    .line 80
    iput-object p4, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    .line 81
    return-void
.end method

.method static convertMipmapControl(Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation$MipmapControl;
    .registers 3
    .param p0, "mc"    # Landroid/support/v8/renderscript/Allocation$MipmapControl;

    .prologue
    .line 40
    sget-object v0, Landroid/support/v8/renderscript/AllocationThunker$1;->$SwitchMap$android$support$v8$renderscript$Allocation$MipmapControl:[I

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation$MipmapControl;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 48
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 42
    :pswitch_d
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    goto :goto_c

    .line 44
    :pswitch_10
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    goto :goto_c

    .line 46
    :pswitch_13
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/renderscript/Allocation$MipmapControl;

    goto :goto_c

    .line 40
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_d
        :pswitch_10
        :pswitch_13
    .end packed-switch
.end method

.method public static createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .registers 10
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mips"    # Landroid/support/v8/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    .prologue
    .line 399
    move-object v2, p0

    check-cast v2, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 401
    .local v2, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :try_start_3
    iget-object v4, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {p2}, Landroid/support/v8/renderscript/AllocationThunker;->convertMipmapControl(Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation$MipmapControl;

    move-result-object v5

    invoke-static {v4, p1, v5, p3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 405
    .local v0, "a":Landroid/renderscript/Allocation;
    new-instance v3, Landroid/support/v8/renderscript/TypeThunker;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/support/v8/renderscript/TypeThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Type;)V

    .line 406
    .local v3, "tt":Landroid/support/v8/renderscript/TypeThunker;
    new-instance v4, Landroid/support/v8/renderscript/AllocationThunker;

    invoke-direct {v4, p0, v3, p3, v0}, Landroid/support/v8/renderscript/AllocationThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;ILandroid/renderscript/Allocation;)V
    :try_end_1b
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_3 .. :try_end_1b} :catch_1c

    return-object v4

    .line 408
    .end local v0    # "a":Landroid/renderscript/Allocation;
    .end local v3    # "tt":Landroid/support/v8/renderscript/TypeThunker;
    :catch_1c
    move-exception v1

    .line 409
    .local v1, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public static createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .registers 11
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "type"    # Landroid/support/v8/renderscript/Type;
    .param p2, "mips"    # Landroid/support/v8/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    .prologue
    .line 381
    move-object v2, p0

    check-cast v2, Landroid/support/v8/renderscript/RenderScriptThunker;

    .local v2, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    move-object v3, p1

    .line 382
    check-cast v3, Landroid/support/v8/renderscript/TypeThunker;

    .line 385
    .local v3, "tt":Landroid/support/v8/renderscript/TypeThunker;
    :try_start_6
    iget-object v4, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    iget-object v5, v3, Landroid/support/v8/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;

    invoke-static {p2}, Landroid/support/v8/renderscript/AllocationThunker;->convertMipmapControl(Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation$MipmapControl;

    move-result-object v6

    invoke-static {v4, v5, v6, p3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 389
    .local v0, "a":Landroid/renderscript/Allocation;
    new-instance v4, Landroid/support/v8/renderscript/AllocationThunker;

    invoke-direct {v4, p0, p1, p3, v0}, Landroid/support/v8/renderscript/AllocationThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;ILandroid/renderscript/Allocation;)V
    :try_end_17
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_6 .. :try_end_17} :catch_18

    return-object v4

    .line 390
    .end local v0    # "a":Landroid/renderscript/Allocation;
    :catch_18
    move-exception v1

    .line 391
    .local v1, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method


# virtual methods
.method public copyTo(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 339
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_5
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 343
    return-void

    .line 340
    :catch_6
    move-exception v0

    .line 341
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method getNObj()Landroid/renderscript/Allocation;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public getType()Landroid/support/v8/renderscript/Type;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v8/renderscript/TypeThunker;->find(Landroid/renderscript/Type;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

    return-object v0
.end method
