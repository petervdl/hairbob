.class final Lcom/google/android/gms/internal/jh$d;
.super Lcom/google/android/gms/internal/hc$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hc",
        "<",
        "Lcom/google/android/gms/internal/jf;",
        ">.b<",
        "Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final CQ:I

.field private final VQ:[Ljava/lang/String;

.field final synthetic VR:Lcom/google/android/gms/internal/jh;

.field private final VV:I

.field private final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/jh;ILcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;ILandroid/app/PendingIntent;)V
    .registers 7

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/google/android/gms/internal/jh$d;->VR:Lcom/google/android/gms/internal/jh;

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/hc$b;-><init>(Lcom/google/android/gms/internal/hc;Ljava/lang/Object;)V

    if-ne p2, v0, :cond_19

    :goto_8
    invoke-static {v0}, Lcom/google/android/gms/internal/gy;->A(Z)V

    iput p2, p0, Lcom/google/android/gms/internal/jh$d;->VV:I

    invoke-static {p4}, Lcom/google/android/gms/location/LocationStatusCodes;->cJ(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/jh$d;->CQ:I

    iput-object p5, p0, Lcom/google/android/gms/internal/jh$d;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jh$d;->VQ:[Ljava/lang/String;

    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/jh;ILcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;I[Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/jh$d;->VR:Lcom/google/android/gms/internal/jh;

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/hc$b;-><init>(Lcom/google/android/gms/internal/hc;Ljava/lang/Object;)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1a

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/internal/gy;->A(Z)V

    iput p2, p0, Lcom/google/android/gms/internal/jh$d;->VV:I

    invoke-static {p4}, Lcom/google/android/gms/location/LocationStatusCodes;->cJ(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/jh$d;->CQ:I

    iput-object p5, p0, Lcom/google/android/gms/internal/jh$d;->VQ:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jh$d;->mPendingIntent:Landroid/app/PendingIntent;

    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
    .registers 5

    if-eqz p1, :cond_23

    iget v0, p0, Lcom/google/android/gms/internal/jh$d;->VV:I

    packed-switch v0, :pswitch_data_34

    const-string/jumbo v0, "LocationClientImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/jh$d;->VV:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    :goto_23
    return-void

    :pswitch_24
    iget v0, p0, Lcom/google/android/gms/internal/jh$d;->CQ:I

    iget-object v1, p0, Lcom/google/android/gms/internal/jh$d;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;->onRemoveGeofencesByPendingIntentResult(ILandroid/app/PendingIntent;)V

    goto :goto_23

    :pswitch_2c
    iget v0, p0, Lcom/google/android/gms/internal/jh$d;->CQ:I

    iget-object v1, p0, Lcom/google/android/gms/internal/jh$d;->VQ:[Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;->onRemoveGeofencesByRequestIdsResult(I[Ljava/lang/String;)V

    goto :goto_23

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_24
        :pswitch_2c
    .end packed-switch
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jh$d;->a(Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V

    return-void
.end method

.method protected fp()V
    .registers 1

    return-void
.end method
