.class public final Lcom/google/android/gms/internal/hc$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field private final Gj:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/hc$g;->Gj:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    instance-of v0, p1, Lcom/google/android/gms/internal/hc$g;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$g;->Gj:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    check-cast p1, Lcom/google/android/gms/internal/hc$g;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lcom/google/android/gms/internal/hc$g;->Gj:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_e
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/hc$g;->Gj:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/hc$g;->Gj:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
