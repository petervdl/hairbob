.class Lcom/google/android/gms/plus/PlusClient$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/plus/PlusClient;->revokeAccessAndDisconnect(Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/a$d",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic abs:Lcom/google/android/gms/plus/PlusClient;

.field final synthetic abu:Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusClient$7;->abs:Lcom/google/android/gms/plus/PlusClient;

    iput-object p2, p0, Lcom/google/android/gms/plus/PlusClient$7;->abu:Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/PlusClient$7;->al(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public al(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$7;->abu:Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->eM()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;->onAccessRevoked(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
