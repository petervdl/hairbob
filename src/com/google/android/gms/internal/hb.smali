.class public abstract Lcom/google/android/gms/internal/hb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field private static final FU:Ljava/lang/Object;

.field private static FV:Ljava/lang/ClassLoader;

.field private static FW:Ljava/lang/Integer;


# instance fields
.field private FX:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/hb;->FU:Ljava/lang/Object;

    sput-object v1, Lcom/google/android/gms/internal/hb;->FV:Ljava/lang/ClassLoader;

    sput-object v1, Lcom/google/android/gms/internal/hb;->FW:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hb;->FX:Z

    return-void
.end method

.method private static a(Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "NULL"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-string/jumbo v2, "SAFE_PARCELABLE_NULL_STRING"

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_13} :catch_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_13} :catch_15

    move-result v0

    :goto_14
    return v0

    :catch_15
    move-exception v1

    goto :goto_14

    :catch_17
    move-exception v1

    goto :goto_14
.end method

.method protected static aA(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/hb;->fk()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    :try_start_8
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/hb;->a(Ljava/lang/Class;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_11

    move-result v0

    goto :goto_7

    :catch_11
    move-exception v0

    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected static fk()Ljava/lang/ClassLoader;
    .registers 2

    sget-object v1, Lcom/google/android/gms/internal/hb;->FU:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/hb;->FV:Ljava/lang/ClassLoader;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method protected static fl()Ljava/lang/Integer;
    .registers 2

    sget-object v1, Lcom/google/android/gms/internal/hb;->FU:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/hb;->FW:Ljava/lang/Integer;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method


# virtual methods
.method protected fm()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/hb;->FX:Z

    return v0
.end method
