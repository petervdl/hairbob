.class final Lcom/google/android/gms/internal/jh$b;
.super Lcom/google/android/gms/internal/je$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private VS:Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

.field private VT:Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

.field private VU:Lcom/google/android/gms/internal/jh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;Lcom/google/android/gms/internal/jh;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/je$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jh$b;->VS:Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jh$b;->VT:Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/jh$b;->VU:Lcom/google/android/gms/internal/jh;

    return-void
.end method


# virtual methods
.method public onAddGeofencesResult(I[Ljava/lang/String;)V
    .registers 8
    .param p1, "statusCode"    # I
    .param p2, "geofenceRequestIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/jh$b;->VU:Lcom/google/android/gms/internal/jh;

    if-nez v0, :cond_f

    const-string/jumbo v0, "LocationClientImpl"

    const-string/jumbo v1, "onAddGeofenceResult called multiple times"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/jh$b;->VU:Lcom/google/android/gms/internal/jh;

    new-instance v1, Lcom/google/android/gms/internal/jh$a;

    iget-object v2, p0, Lcom/google/android/gms/internal/jh$b;->VU:Lcom/google/android/gms/internal/jh;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/gms/internal/jh$b;->VS:Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/jh$a;-><init>(Lcom/google/android/gms/internal/jh;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jh;->a(Lcom/google/android/gms/internal/hc$b;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/jh$b;->VU:Lcom/google/android/gms/internal/jh;

    iput-object v4, p0, Lcom/google/android/gms/internal/jh$b;->VS:Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

    iput-object v4, p0, Lcom/google/android/gms/internal/jh$b;->VT:Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

    goto :goto_e
.end method

.method public onRemoveGeofencesByPendingIntentResult(ILandroid/app/PendingIntent;)V
    .registers 11
    .param p1, "statusCode"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/jh$b;->VU:Lcom/google/android/gms/internal/jh;

    if-nez v0, :cond_f

    const-string/jumbo v0, "LocationClientImpl"

    const-string/jumbo v1, "onRemoveGeofencesByPendingIntentResult called multiple times"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    return-void

    :cond_f
    iget-object v6, p0, Lcom/google/android/gms/internal/jh$b;->VU:Lcom/google/android/gms/internal/jh;

    new-instance v0, Lcom/google/android/gms/internal/jh$d;

    iget-object v1, p0, Lcom/google/android/gms/internal/jh$b;->VU:Lcom/google/android/gms/internal/jh;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/jh$b;->VT:Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/jh$d;-><init>(Lcom/google/android/gms/internal/jh;ILcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;ILandroid/app/PendingIntent;)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/jh;->a(Lcom/google/android/gms/internal/hc$b;)V

    iput-object v7, p0, Lcom/google/android/gms/internal/jh$b;->VU:Lcom/google/android/gms/internal/jh;

    iput-object v7, p0, Lcom/google/android/gms/internal/jh$b;->VS:Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

    iput-object v7, p0, Lcom/google/android/gms/internal/jh$b;->VT:Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

    goto :goto_e
.end method

.method public onRemoveGeofencesByRequestIdsResult(I[Ljava/lang/String;)V
    .registers 11
    .param p1, "statusCode"    # I
    .param p2, "geofenceRequestIds"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/jh$b;->VU:Lcom/google/android/gms/internal/jh;

    if-nez v0, :cond_f

    const-string/jumbo v0, "LocationClientImpl"

    const-string/jumbo v1, "onRemoveGeofencesByRequestIdsResult called multiple times"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    return-void

    :cond_f
    iget-object v6, p0, Lcom/google/android/gms/internal/jh$b;->VU:Lcom/google/android/gms/internal/jh;

    new-instance v0, Lcom/google/android/gms/internal/jh$d;

    iget-object v1, p0, Lcom/google/android/gms/internal/jh$b;->VU:Lcom/google/android/gms/internal/jh;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/jh$b;->VT:Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/jh$d;-><init>(Lcom/google/android/gms/internal/jh;ILcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;I[Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/jh;->a(Lcom/google/android/gms/internal/hc$b;)V

    iput-object v7, p0, Lcom/google/android/gms/internal/jh$b;->VU:Lcom/google/android/gms/internal/jh;

    iput-object v7, p0, Lcom/google/android/gms/internal/jh$b;->VS:Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

    iput-object v7, p0, Lcom/google/android/gms/internal/jh$b;->VT:Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

    goto :goto_e
.end method
