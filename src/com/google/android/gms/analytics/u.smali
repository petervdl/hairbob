.class Lcom/google/android/gms/analytics/u;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/u$a;
    }
.end annotation


# static fields
.field private static final uS:Lcom/google/android/gms/analytics/u;


# instance fields
.field private uP:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/google/android/gms/analytics/u$a;",
            ">;"
        }
    .end annotation
.end field

.field private uQ:Ljava/lang/StringBuilder;

.field private uR:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/analytics/u;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/u;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/u;->uS:Lcom/google/android/gms/analytics/u;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/u;->uP:Ljava/util/SortedSet;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/u;->uQ:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/u;->uR:Z

    return-void
.end method

.method public static cP()Lcom/google/android/gms/analytics/u;
    .registers 1

    sget-object v0, Lcom/google/android/gms/analytics/u;->uS:Lcom/google/android/gms/analytics/u;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/google/android/gms/analytics/u$a;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/u;->uR:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/analytics/u;->uP:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/analytics/u;->uQ:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/u$a;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cQ()Ljava/lang/String;
    .registers 8

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x6

    move v2, v3

    :goto_9
    iget-object v0, p0, Lcom/google/android/gms/analytics/u;->uP:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    if-lez v0, :cond_3d

    iget-object v0, p0, Lcom/google/android/gms/analytics/u;->uP:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/u$a;

    iget-object v5, p0, Lcom/google/android/gms/analytics/u;->uP:Ljava/util/SortedSet;

    invoke-interface {v5, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/u$a;->ordinal()I

    move-result v5

    :goto_22
    if-lt v5, v1, :cond_32

    const-string/jumbo v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x6

    move v2, v3

    goto :goto_22

    :cond_32
    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/u$a;->ordinal()I

    move-result v0

    rem-int/lit8 v0, v0, 0x6

    shl-int v0, v5, v0

    add-int/2addr v2, v0

    goto :goto_9

    :cond_3d
    if-gtz v2, :cond_45

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_4f

    :cond_45
    const-string/jumbo v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/analytics/u;->uP:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_57
    .catchall {:try_start_2 .. :try_end_57} :catchall_5a

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_5a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cR()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/u;->uQ:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/analytics/u;->uQ:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const-string/jumbo v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/analytics/u;->uQ:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/analytics/u;->uQ:Ljava/lang/StringBuilder;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-object v0

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized u(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/analytics/u;->uR:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
