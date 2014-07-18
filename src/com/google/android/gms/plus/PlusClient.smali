.class public Lcom/google/android/gms/plus/PlusClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/PlusClient$Builder;,
        Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final abq:Lcom/google/android/gms/plus/internal/e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/plus/internal/e;)V
    .registers 2
    .param p1, "plusClientImpl"    # Lcom/google/android/gms/plus/internal/e;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;

    return-void
.end method


# virtual methods
.method public clearDefaultAccount()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->clearDefaultAccount()V

    return-void
.end method

.method public connect()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->connect()V

    return-void
.end method

.method public disconnect()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->disconnect()V

    return-void
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->isConnected()Z

    move-result v0

    return v0
.end method

.method public revokeAccessAndDisconnect(Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;

    new-instance v1, Lcom/google/android/gms/plus/PlusClient$7;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/PlusClient$7;-><init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/internal/e;->m(Lcom/google/android/gms/common/api/a$d;)V

    return-void
.end method
