.class Landroid/support/v8/renderscript/TypeThunker;
.super Landroid/support/v8/renderscript/Type;
.source "TypeThunker.java"


# static fields
.field static mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/renderscript/Type;",
            "Landroid/support/v8/renderscript/Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mN:Landroid/renderscript/Type;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v8/renderscript/TypeThunker;->mMap:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Type;)V
    .registers 7
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p2, "t"    # Landroid/renderscript/Type;

    .prologue
    .line 43
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Landroid/support/v8/renderscript/Type;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 44
    iput-object p2, p0, Landroid/support/v8/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;

    .line 46
    :try_start_6
    invoke-virtual {p0}, Landroid/support/v8/renderscript/TypeThunker;->internalCalc()V

    .line 47
    new-instance v1, Landroid/support/v8/renderscript/ElementThunker;

    invoke-virtual {p2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/support/v8/renderscript/ElementThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Element;)V

    iput-object v1, p0, Landroid/support/v8/renderscript/TypeThunker;->mElement:Landroid/support/v8/renderscript/Element;
    :try_end_14
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_6 .. :try_end_14} :catch_20

    .line 52
    sget-object v2, Landroid/support/v8/renderscript/TypeThunker;->mMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 53
    :try_start_17
    sget-object v1, Landroid/support/v8/renderscript/TypeThunker;->mMap:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/support/v8/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;

    invoke-virtual {v1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_26

    .line 55
    return-void

    .line 48
    :catch_20
    move-exception v0

    .line 49
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 54
    .end local v0    # "e":Landroid/renderscript/RSRuntimeException;
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;IIIZZI)Landroid/support/v8/renderscript/Type;
    .registers 16
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "dz"    # I
    .param p5, "dmip"    # Z
    .param p6, "dfaces"    # Z
    .param p7, "yuv"    # I

    .prologue
    .line 63
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/ElementThunker;

    .local v0, "et":Landroid/support/v8/renderscript/ElementThunker;
    move-object v3, p0

    .line 64
    check-cast v3, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 66
    .local v3, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :try_start_6
    new-instance v4, Landroid/renderscript/Type$Builder;

    iget-object v6, v3, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    iget-object v7, v0, Landroid/support/v8/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;

    invoke-direct {v4, v6, v7}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 68
    .local v4, "tb":Landroid/renderscript/Type$Builder;
    if-lez p2, :cond_14

    invoke-virtual {v4, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 69
    :cond_14
    if-lez p3, :cond_19

    invoke-virtual {v4, p3}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 70
    :cond_19
    if-lez p4, :cond_1e

    invoke-virtual {v4, p4}, Landroid/renderscript/Type$Builder;->setZ(I)Landroid/renderscript/Type$Builder;

    .line 71
    :cond_1e
    if-eqz p5, :cond_23

    invoke-virtual {v4, p5}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    .line 72
    :cond_23
    if-eqz p6, :cond_28

    invoke-virtual {v4, p6}, Landroid/renderscript/Type$Builder;->setFaces(Z)Landroid/renderscript/Type$Builder;

    .line 73
    :cond_28
    if-lez p7, :cond_2d

    invoke-virtual {v4, p7}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    .line 74
    :cond_2d
    invoke-virtual {v4}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    .line 75
    .local v2, "nt":Landroid/renderscript/Type;
    new-instance v5, Landroid/support/v8/renderscript/TypeThunker;

    invoke-direct {v5, p0, v2}, Landroid/support/v8/renderscript/TypeThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Type;)V

    .line 76
    .local v5, "tt":Landroid/support/v8/renderscript/TypeThunker;
    invoke-virtual {v5}, Landroid/support/v8/renderscript/TypeThunker;->internalCalc()V
    :try_end_39
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_6 .. :try_end_39} :catch_3a

    .line 78
    return-object v5

    .line 79
    .end local v2    # "nt":Landroid/renderscript/Type;
    .end local v4    # "tb":Landroid/renderscript/Type$Builder;
    .end local v5    # "tt":Landroid/support/v8/renderscript/TypeThunker;
    :catch_3a
    move-exception v1

    .line 80
    .local v1, "exc":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6
.end method

.method static find(Landroid/renderscript/Type;)Landroid/support/v8/renderscript/Type;
    .registers 2
    .param p0, "nt"    # Landroid/renderscript/Type;

    .prologue
    .line 58
    sget-object v0, Landroid/support/v8/renderscript/TypeThunker;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v8/renderscript/Type;

    return-object v0
.end method


# virtual methods
.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/support/v8/renderscript/TypeThunker;->getNObj()Landroid/renderscript/Type;

    move-result-object v0

    return-object v0
.end method

.method getNObj()Landroid/renderscript/Type;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;

    return-object v0
.end method

.method internalCalc()V
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    iput v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mDimX:I

    .line 34
    iget-object v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    iput v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mDimY:I

    .line 35
    iget-object v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    iput v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mDimZ:I

    .line 36
    iget-object v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mDimFaces:Z

    .line 37
    iget-object v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mDimMipmaps:Z

    .line 38
    iget-object v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getYuv()I

    move-result v0

    iput v0, p0, Landroid/support/v8/renderscript/TypeThunker;->mDimYuv:I

    .line 39
    invoke-virtual {p0}, Landroid/support/v8/renderscript/TypeThunker;->calcElementCount()V

    .line 40
    return-void
.end method
