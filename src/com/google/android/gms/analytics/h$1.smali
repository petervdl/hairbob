.class Lcom/google/android/gms/analytics/h$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/h;->cu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tI:Lcom/google/android/gms/analytics/h;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/h;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/analytics/h$1;->tI:Lcom/google/android/gms/analytics/h;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/h$1;->tI:Lcom/google/android/gms/analytics/h;

    invoke-static {v0}, Lcom/google/android/gms/analytics/h;->a(Lcom/google/android/gms/analytics/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/analytics/h$1;->tI:Lcom/google/android/gms/analytics/h;

    iget-object v2, p0, Lcom/google/android/gms/analytics/h$1;->tI:Lcom/google/android/gms/analytics/h;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/h;->cv()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/analytics/h;->a(Lcom/google/android/gms/analytics/h;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/analytics/h$1;->tI:Lcom/google/android/gms/analytics/h;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/analytics/h;->a(Lcom/google/android/gms/analytics/h;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/analytics/h$1;->tI:Lcom/google/android/gms/analytics/h;

    invoke-static {v0}, Lcom/google/android/gms/analytics/h;->a(Lcom/google/android/gms/analytics/h;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v0
.end method
