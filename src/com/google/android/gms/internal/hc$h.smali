.class public final Lcom/google/android/gms/internal/hc$h;
.super Lcom/google/android/gms/internal/hc$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hc",
        "<TT;>.b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Gf:Lcom/google/android/gms/internal/hc;

.field public final Gk:Landroid/os/Bundle;

.field public final Gl:Landroid/os/IBinder;

.field public final statusCode:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hc;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/hc$h;->Gf:Lcom/google/android/gms/internal/hc;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/hc$b;-><init>(Lcom/google/android/gms/internal/hc;Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/internal/hc$h;->statusCode:I

    iput-object p3, p0, Lcom/google/android/gms/internal/hc$h;->Gl:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/google/android/gms/internal/hc$h;->Gk:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/Boolean;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$h;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/internal/hc;I)V

    :goto_9
    return-void

    :cond_a
    iget v0, p0, Lcom/google/android/gms/internal/hc$h;->statusCode:I

    sparse-switch v0, :sswitch_data_e4

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$h;->Gk:Landroid/os/Bundle;

    if-eqz v0, :cond_e0

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$h;->Gk:Landroid/os/Bundle;

    const-string/jumbo v2, "pendingIntent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_1e
    iget-object v2, p0, Lcom/google/android/gms/internal/hc$h;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-static {v2}, Lcom/google/android/gms/internal/hc;->d(Lcom/google/android/gms/internal/hc;)Lcom/google/android/gms/internal/hc$f;

    move-result-object v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/google/android/gms/internal/hc$h;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-static {v2}, Lcom/google/android/gms/internal/hc;->e(Lcom/google/android/gms/internal/hc;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/he;->B(Landroid/content/Context;)Lcom/google/android/gms/internal/he;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/hc$h;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/hc;->bp()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/hc$h;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-static {v4}, Lcom/google/android/gms/internal/hc;->d(Lcom/google/android/gms/internal/hc;)Lcom/google/android/gms/internal/hc$f;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;Lcom/google/android/gms/internal/hc$f;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/hc$h;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/internal/hc;Lcom/google/android/gms/internal/hc$f;)Lcom/google/android/gms/internal/hc$f;

    :cond_44
    iget-object v2, p0, Lcom/google/android/gms/internal/hc$h;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/internal/hc;I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/hc$h;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/internal/hc;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v1, p0, Lcom/google/android/gms/internal/hc$h;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-static {v1}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/internal/hc;)Lcom/google/android/gms/internal/hd;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    iget v3, p0, Lcom/google/android/gms/internal/hc$h;->statusCode:I

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/hd;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_9

    :sswitch_5f
    :try_start_5f
    iget-object v0, p0, Lcom/google/android/gms/internal/hc$h;->Gl:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/hc$h;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/hc;->bq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$h;->Gf:Lcom/google/android/gms/internal/hc;

    iget-object v2, p0, Lcom/google/android/gms/internal/hc$h;->Gf:Lcom/google/android/gms/internal/hc;

    iget-object v3, p0, Lcom/google/android/gms/internal/hc$h;->Gl:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/hc;->x(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/internal/hc;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$h;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-static {v0}, Lcom/google/android/gms/internal/hc;->c(Lcom/google/android/gms/internal/hc;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$h;->Gf:Lcom/google/android/gms/internal/hc;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/internal/hc;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$h;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-static {v0}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/internal/hc;)Lcom/google/android/gms/internal/hd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hd;->ck()V
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_95} :catch_97

    goto/16 :goto_9

    :catch_97
    move-exception v0

    :cond_98
    iget-object v0, p0, Lcom/google/android/gms/internal/hc$h;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-static {v0}, Lcom/google/android/gms/internal/hc;->e(Lcom/google/android/gms/internal/hc;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->B(Landroid/content/Context;)Lcom/google/android/gms/internal/he;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/hc$h;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/hc;->bp()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/hc$h;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-static {v3}, Lcom/google/android/gms/internal/hc;->d(Lcom/google/android/gms/internal/hc;)Lcom/google/android/gms/internal/hc$f;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;Lcom/google/android/gms/internal/hc$f;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$h;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/internal/hc;Lcom/google/android/gms/internal/hc$f;)Lcom/google/android/gms/internal/hc$f;

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$h;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/internal/hc;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$h;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/internal/hc;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$h;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-static {v0}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/internal/hc;)Lcom/google/android/gms/internal/hd;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/hd;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto/16 :goto_9

    :sswitch_d2
    iget-object v0, p0, Lcom/google/android/gms/internal/hc$h;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/internal/hc;I)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "A fatal developer error has occurred. Check the logs for further information."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e0
    move-object v0, v1

    goto/16 :goto_1e

    nop

    :sswitch_data_e4
    .sparse-switch
        0x0 -> :sswitch_5f
        0xa -> :sswitch_d2
    .end sparse-switch
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hc$h;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected fp()V
    .registers 1

    return-void
.end method
