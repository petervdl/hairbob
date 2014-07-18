.class public final Lcom/google/android/gms/maps/model/RuntimeRemoteException;
.super Ljava/lang/RuntimeException;


# direct methods
.method public constructor <init>(Landroid/os/RemoteException;)V
    .registers 2
    .param p1, "e"    # Landroid/os/RemoteException;

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
