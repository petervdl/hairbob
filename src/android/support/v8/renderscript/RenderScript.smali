.class public Landroid/support/v8/renderscript/RenderScript;
.super Ljava/lang/Object;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/RenderScript$MessageThread;,
        Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;,
        Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;,
        Landroid/support/v8/renderscript/RenderScript$ContextType;
    }
.end annotation


# static fields
.field static isNative:Z

.field static lock:Ljava/lang/Object;

.field static registerNativeAllocation:Ljava/lang/reflect/Method;

.field static registerNativeFree:Ljava/lang/reflect/Method;

.field static sInitialized:Z

.field static sRuntime:Ljava/lang/Object;

.field static sUseGCHooks:Z

.field private static thunk:I


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field mContext:I

.field mDev:I

.field mElement_A_8:Landroid/support/v8/renderscript/Element;

.field mElement_RGBA_4444:Landroid/support/v8/renderscript/Element;

.field mElement_RGBA_8888:Landroid/support/v8/renderscript/Element;

.field mElement_RGB_565:Landroid/support/v8/renderscript/Element;

.field mElement_U8:Landroid/support/v8/renderscript/Element;

.field mElement_UCHAR_4:Landroid/support/v8/renderscript/Element;

.field mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

.field mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

.field mMessageThread:Landroid/support/v8/renderscript/RenderScript$MessageThread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v8/renderscript/RenderScript;->lock:Ljava/lang/Object;

    .line 77
    sput-boolean v1, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    .line 79
    sput v1, Landroid/support/v8/renderscript/RenderScript;->thunk:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    .line 755
    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

    .line 891
    if-eqz p1, :cond_10

    .line 892
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    .line 894
    :cond_10
    return-void
.end method

.method public static create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;
    .registers 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 968
    sget-object v0, Landroid/support/v8/renderscript/RenderScript$ContextType;->NORMAL:Landroid/support/v8/renderscript/RenderScript$ContextType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;Landroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;
    .registers 13
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sdkVersion"    # I
    .param p2, "ct"    # Landroid/support/v8/renderscript/RenderScript$ContextType;

    .prologue
    const/4 v9, 0x0

    .line 920
    new-instance v2, Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v2, p0}, Landroid/support/v8/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    .line 922
    .local v2, "rs":Landroid/support/v8/renderscript/RenderScript;
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 923
    const-string/jumbo v4, "RenderScript_jni"

    const-string/jumbo v5, "RS native mode"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/RenderScriptThunker;->create(Landroid/content/Context;I)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v2

    .line 958
    .end local v2    # "rs":Landroid/support/v8/renderscript/RenderScript;
    :goto_19
    return-object v2

    .line 926
    .restart local v2    # "rs":Landroid/support/v8/renderscript/RenderScript;
    :cond_1a
    sget-object v5, Landroid/support/v8/renderscript/RenderScript;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 927
    :try_start_1d
    sget-boolean v4, Landroid/support/v8/renderscript/RenderScript;->sInitialized:Z
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_a5

    if-nez v4, :cond_70

    .line 929
    :try_start_21
    const-string/jumbo v4, "dalvik.system.VMRuntime"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 930
    .local v3, "vm_runtime":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "getRuntime"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 931
    .local v1, "get_runtime":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sput-object v4, Landroid/support/v8/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    .line 932
    const-string/jumbo v4, "registerNativeAllocation"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/support/v8/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    .line 933
    const-string/jumbo v4, "registerNativeFree"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/support/v8/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;

    .line 934
    const/4 v4, 0x1

    sput-boolean v4, Landroid/support/v8/renderscript/RenderScript;->sUseGCHooks:Z
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_61} :catch_97
    .catchall {:try_start_21 .. :try_end_61} :catchall_a5

    .line 940
    .end local v1    # "get_runtime":Ljava/lang/reflect/Method;
    .end local v3    # "vm_runtime":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_61
    :try_start_61
    const-string/jumbo v4, "RSSupport"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 941
    const-string/jumbo v4, "rsjni"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 942
    const/4 v4, 0x1

    sput-boolean v4, Landroid/support/v8/renderscript/RenderScript;->sInitialized:Z
    :try_end_70
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_61 .. :try_end_70} :catch_a8
    .catchall {:try_start_61 .. :try_end_70} :catchall_a5

    .line 948
    :cond_70
    :try_start_70
    monitor-exit v5
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_a5

    .line 950
    const-string/jumbo v4, "RenderScript_jni"

    const-string/jumbo v5, "RS compat mode"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-virtual {v2}, Landroid/support/v8/renderscript/RenderScript;->nDeviceCreate()I

    move-result v4

    iput v4, v2, Landroid/support/v8/renderscript/RenderScript;->mDev:I

    .line 952
    iget v4, v2, Landroid/support/v8/renderscript/RenderScript;->mDev:I

    iget v5, p2, Landroid/support/v8/renderscript/RenderScript$ContextType;->mID:I

    invoke-virtual {v2, v4, v9, p1, v5}, Landroid/support/v8/renderscript/RenderScript;->nContextCreate(IIII)I

    move-result v4

    iput v4, v2, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    .line 953
    iget v4, v2, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    if-nez v4, :cond_dd

    .line 954
    new-instance v4, Landroid/support/v8/renderscript/RSDriverException;

    const-string/jumbo v5, "Failed to create RS context."

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 935
    :catch_97
    move-exception v0

    .line 936
    .local v0, "e":Ljava/lang/Exception;
    :try_start_98
    const-string/jumbo v4, "RenderScript_jni"

    const-string/jumbo v6, "No GC methods"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    const/4 v4, 0x0

    sput-boolean v4, Landroid/support/v8/renderscript/RenderScript;->sUseGCHooks:Z

    goto :goto_61

    .line 948
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_a5
    move-exception v4

    monitor-exit v5
    :try_end_a7
    .catchall {:try_start_98 .. :try_end_a7} :catchall_a5

    throw v4

    .line 943
    :catch_a8
    move-exception v0

    .line 944
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :try_start_a9
    const-string/jumbo v4, "RenderScript_jni"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error loading RS jni library: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error loading RS jni library: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_dd
    .catchall {:try_start_a9 .. :try_end_dd} :catchall_a5

    .line 956
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_dd
    new-instance v4, Landroid/support/v8/renderscript/RenderScript$MessageThread;

    invoke-direct {v4, v2}, Landroid/support/v8/renderscript/RenderScript$MessageThread;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    iput-object v4, v2, Landroid/support/v8/renderscript/RenderScript;->mMessageThread:Landroid/support/v8/renderscript/RenderScript$MessageThread;

    .line 957
    iget-object v4, v2, Landroid/support/v8/renderscript/RenderScript;->mMessageThread:Landroid/support/v8/renderscript/RenderScript$MessageThread;

    invoke-virtual {v4}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->start()V

    goto/16 :goto_19
.end method

.method public static create(Landroid/content/Context;Landroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ct"    # Landroid/support/v8/renderscript/RenderScript$ContextType;

    .prologue
    .line 981
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 982
    .local v0, "v":I
    invoke-static {p0, v0, p1}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v1

    return-object v1
.end method

.method static shouldThunk()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 85
    sget v2, Landroid/support/v8/renderscript/RenderScript;->thunk:I

    if-nez v2, :cond_17

    .line 86
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_1c

    const-string/jumbo v2, "debug.rs.forcecompat"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1c

    .line 88
    sput v0, Landroid/support/v8/renderscript/RenderScript;->thunk:I

    .line 93
    :cond_17
    :goto_17
    sget v2, Landroid/support/v8/renderscript/RenderScript;->thunk:I

    if-ne v2, v0, :cond_20

    .line 96
    :goto_1b
    return v0

    .line 90
    :cond_1c
    const/4 v2, -0x1

    sput v2, Landroid/support/v8/renderscript/RenderScript;->thunk:I

    goto :goto_17

    :cond_20
    move v0, v1

    .line 96
    goto :goto_1b
.end method


# virtual methods
.method isAlive()Z
    .registers 2

    .prologue
    .line 1027
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method declared-synchronized nAllocationCopyToBitmap(ILandroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "alloc"    # I
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 261
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 262
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCopyToBitmap(IILandroid/graphics/Bitmap;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 263
    monitor-exit p0

    return-void

    .line 261
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateBitmapBackedAllocation(IILandroid/graphics/Bitmap;I)I
    .registers 11
    .param p1, "type"    # I
    .param p2, "mip"    # I
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "usage"    # I

    .prologue
    .line 238
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 239
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCreateBitmapBackedAllocation(IIILandroid/graphics/Bitmap;I)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit p0

    return v0

    .line 238
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateFromBitmap(IILandroid/graphics/Bitmap;I)I
    .registers 11
    .param p1, "type"    # I
    .param p2, "mip"    # I
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "usage"    # I

    .prologue
    .line 232
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 233
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit p0

    return v0

    .line 232
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateTyped(IIII)I
    .registers 11
    .param p1, "type"    # I
    .param p2, "mip"    # I
    .param p3, "usage"    # I
    .param p4, "pointer"    # I

    .prologue
    .line 227
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 228
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCreateTyped(IIIII)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit p0

    return v0

    .line 227
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextCreate(IIII)I
    .registers 6
    .param p1, "dev"    # I
    .param p2, "ver"    # I
    .param p3, "sdkVer"    # I
    .param p4, "contextType"    # I

    .prologue
    .line 153
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/RenderScript;->rsnContextCreate(IIII)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nContextGetErrorMessage(I)Ljava/lang/String;
.end method

.method native nContextGetUserMessage(I[I)I
.end method

.method native nContextInitToClient(I)V
.end method

.method native nContextPeekMessage(I[I)I
.end method

.method native nDeviceCreate()I
.end method

.method declared-synchronized nElementCreate(IIZI)I
    .registers 11
    .param p1, "type"    # I
    .param p2, "kind"    # I
    .param p3, "norm"    # Z
    .param p4, "vecSize"    # I

    .prologue
    .line 194
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 195
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnElementCreate(IIIZI)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit p0

    return v0

    .line 194
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nObjDestroy(I)V
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 187
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    if-eqz v0, :cond_a

    .line 188
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/RenderScript;->rsnObjDestroy(II)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 190
    :cond_a
    monitor-exit p0

    return-void

    .line 187
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptForEach(IIII[B)V
    .registers 13
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "ain"    # I
    .param p4, "aout"    # I
    .param p5, "params"    # [B

    .prologue
    .line 467
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 468
    if-nez p5, :cond_12

    .line 469
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptForEach(IIIII)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1e

    .line 473
    :goto_10
    monitor-exit p0

    return-void

    .line 471
    :cond_12
    :try_start_12
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptForEach(IIIII[B)V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1e

    goto :goto_10

    .line 467
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptIntrinsicCreate(II)I
    .registers 4
    .param p1, "id"    # I
    .param p2, "eid"    # I

    .prologue
    .line 537
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 538
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptIntrinsicCreate(III)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 537
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarF(IIF)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "val"    # F

    .prologue
    .line 502
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 503
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarF(IIIF)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 504
    monitor-exit p0

    return-void

    .line 502
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarObj(III)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "val"    # I

    .prologue
    .line 524
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 525
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarObj(IIII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 526
    monitor-exit p0

    return-void

    .line 524
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nTypeCreate(IIIIZZI)I
    .registers 17
    .param p1, "eid"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "mips"    # Z
    .param p6, "faces"    # Z
    .param p7, "yuv"    # I

    .prologue
    .line 216
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 217
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/support/v8/renderscript/RenderScript;->rsnTypeCreate(IIIIIZZI)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_15

    move-result v0

    monitor-exit p0

    return v0

    .line 216
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native rsnAllocationCopyToBitmap(IILandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationCreateBitmapBackedAllocation(IIILandroid/graphics/Bitmap;I)I
.end method

.method native rsnAllocationCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
.end method

.method native rsnAllocationCreateTyped(IIIII)I
.end method

.method native rsnContextCreate(IIII)I
.end method

.method native rsnElementCreate(IIIZI)I
.end method

.method native rsnObjDestroy(II)V
.end method

.method native rsnScriptForEach(IIIII)V
.end method

.method native rsnScriptForEach(IIIII[B)V
.end method

.method native rsnScriptIntrinsicCreate(III)I
.end method

.method native rsnScriptSetVarF(IIIF)V
.end method

.method native rsnScriptSetVarObj(IIII)V
.end method

.method native rsnTypeCreate(IIIIIZZI)I
.end method

.method validate()V
    .registers 3

    .prologue
    .line 792
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    if-nez v0, :cond_d

    .line 793
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Calling RS with no Context active."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
    :cond_d
    return-void
.end method
