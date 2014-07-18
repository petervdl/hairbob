.class public Lcom/google/android/gms/internal/he$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/he$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic GC:Lcom/google/android/gms/internal/he$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/he$a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/he$a$a;->GC:Lcom/google/android/gms/internal/he$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/he$a$a;->GC:Lcom/google/android/gms/internal/he$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/he$a;->GB:Lcom/google/android/gms/internal/he;

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->a(Lcom/google/android/gms/internal/he;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/he$a$a;->GC:Lcom/google/android/gms/internal/he$a;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/he$a;->a(Lcom/google/android/gms/internal/he$a;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v0, p0, Lcom/google/android/gms/internal/he$a$a;->GC:Lcom/google/android/gms/internal/he$a;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/he$a;->a(Lcom/google/android/gms/internal/he$a;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/google/android/gms/internal/he$a$a;->GC:Lcom/google/android/gms/internal/he$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/he$a;->a(Lcom/google/android/gms/internal/he$a;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hc$f;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/hc$f;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_1d

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_2d

    throw v0

    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/google/android/gms/internal/he$a$a;->GC:Lcom/google/android/gms/internal/he$a;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/he$a;->a(Lcom/google/android/gms/internal/he$a;I)I

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_2d

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/he$a$a;->GC:Lcom/google/android/gms/internal/he$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/he$a;->GB:Lcom/google/android/gms/internal/he;

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->a(Lcom/google/android/gms/internal/he;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/he$a$a;->GC:Lcom/google/android/gms/internal/he$a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/he$a;->a(Lcom/google/android/gms/internal/he$a;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v0, p0, Lcom/google/android/gms/internal/he$a$a;->GC:Lcom/google/android/gms/internal/he$a;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/he$a;->a(Lcom/google/android/gms/internal/he$a;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/google/android/gms/internal/he$a$a;->GC:Lcom/google/android/gms/internal/he$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/he$a;->a(Lcom/google/android/gms/internal/he$a;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hc$f;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hc$f;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_1e

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_2e

    throw v0

    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/google/android/gms/internal/he$a$a;->GC:Lcom/google/android/gms/internal/he$a;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/he$a;->a(Lcom/google/android/gms/internal/he$a;I)I

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2e

    return-void
.end method
