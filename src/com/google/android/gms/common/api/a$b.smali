.class public abstract Lcom/google/android/gms/common/api/a$b;
.super Lcom/google/android/gms/common/api/a$a;

# interfaces
.implements Lcom/google/android/gms/common/api/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        "A::",
        "Lcom/google/android/gms/common/api/Api$a;",
        ">",
        "Lcom/google/android/gms/common/api/a$a",
        "<TR;>;",
        "Lcom/google/android/gms/common/api/c$c",
        "<TA;>;"
    }
.end annotation


# instance fields
.field private final Dk:Lcom/google/android/gms/common/api/Api$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$c",
            "<TA;>;"
        }
    .end annotation
.end field

.field private Dv:Lcom/google/android/gms/common/api/c$a;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/Api$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api$c",
            "<TA;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$c;

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$b;->Dk:Lcom/google/android/gms/common/api/Api$c;

    return-void
.end method

.method private a(Landroid/os/RemoteException;)V
    .registers 6

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$b;->m(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/common/api/Api$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public a(Lcom/google/android/gms/common/api/c$a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/a$b;->Dv:Lcom/google/android/gms/common/api/c$a;

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/a$c;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/Api$a;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/a$c;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$b;->a(Lcom/google/android/gms/common/api/a$c;)V

    :try_start_c
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/a$b;->a(Lcom/google/android/gms/common/api/Api$a;)V
    :try_end_f
    .catch Landroid/os/DeadObjectException; {:try_start_c .. :try_end_f} :catch_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_15

    :goto_f
    return-void

    :catch_10
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$b;->a(Landroid/os/RemoteException;)V

    throw v0

    :catch_15
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$b;->a(Landroid/os/RemoteException;)V

    goto :goto_f
.end method

.method public eB()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final ew()Lcom/google/android/gms/common/api/Api$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api$c",
            "<TA;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$b;->Dk:Lcom/google/android/gms/common/api/Api$c;

    return-object v0
.end method

.method protected ey()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/common/api/a$a;->ey()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$b;->Dv:Lcom/google/android/gms/common/api/c$a;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$b;->Dv:Lcom/google/android/gms/common/api/c$a;

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/c$a;->b(Lcom/google/android/gms/common/api/c$c;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$b;->Dv:Lcom/google/android/gms/common/api/c$a;

    :cond_f
    return-void
.end method

.method public final m(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_7
    const-string/jumbo v1, "Failed result must not be success"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/a$b;->c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$b;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_15
    const/4 v0, 0x0

    goto :goto_7
.end method
