.class final Lcom/google/android/gms/internal/jh$a;
.super Lcom/google/android/gms/internal/hc$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hc",
        "<",
        "Lcom/google/android/gms/internal/jf;",
        ">.b<",
        "Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final CQ:I

.field private final VQ:[Ljava/lang/String;

.field final synthetic VR:Lcom/google/android/gms/internal/jh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/jh;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;I[Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/jh$a;->VR:Lcom/google/android/gms/internal/jh;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/hc$b;-><init>(Lcom/google/android/gms/internal/hc;Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/google/android/gms/location/LocationStatusCodes;->cJ(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/jh$a;->CQ:I

    iput-object p4, p0, Lcom/google/android/gms/internal/jh$a;->VQ:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V
    .registers 4

    if-eqz p1, :cond_9

    iget v0, p0, Lcom/google/android/gms/internal/jh$a;->CQ:I

    iget-object v1, p0, Lcom/google/android/gms/internal/jh$a;->VQ:[Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;->onAddGeofencesResult(I[Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jh$a;->a(Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V

    return-void
.end method

.method protected fp()V
    .registers 1

    return-void
.end method
