.class public final Lcom/google/android/gms/internal/hc$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final Gh:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/hc$c;->Gh:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    instance-of v0, p1, Lcom/google/android/gms/internal/hc$c;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$c;->Gh:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    check-cast p1, Lcom/google/android/gms/internal/hc$c;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lcom/google/android/gms/internal/hc$c;->Gh:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_e
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/hc$c;->Gh:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/hc$c;->Gh:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 3
    .param p1, "cause"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/hc$c;->Gh:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    invoke-interface {v0}, Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;->onDisconnected()V

    return-void
.end method
