.class final Lcom/google/android/gms/internal/hc$f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation


# instance fields
.field final synthetic Gf:Lcom/google/android/gms/internal/hc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hc;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/hc$f;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/hc$f;, "Lcom/google/android/gms/internal/hc<TT;>.f;"
    iget-object v0, p0, Lcom/google/android/gms/internal/hc$f;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/hc;->I(Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/hc$f;, "Lcom/google/android/gms/internal/hc<TT;>.f;"
    iget-object v0, p0, Lcom/google/android/gms/internal/hc$f;->Gf:Lcom/google/android/gms/internal/hc;

    iget-object v0, v0, Lcom/google/android/gms/internal/hc;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/hc$f;->Gf:Lcom/google/android/gms/internal/hc;

    iget-object v1, v1, Lcom/google/android/gms/internal/hc;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
