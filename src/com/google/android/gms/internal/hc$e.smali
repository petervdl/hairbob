.class public final Lcom/google/android/gms/internal/hc$e;
.super Lcom/google/android/gms/internal/hi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field private Gi:Lcom/google/android/gms/internal/hc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hc;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/hi$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/hc$e;->Gi:Lcom/google/android/gms/internal/hc;

    return-void
.end method


# virtual methods
.method public b(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 6

    const-string/jumbo v0, "onPostInitComplete can be called only once per call to getServiceFromBroker"

    iget-object v1, p0, Lcom/google/android/gms/internal/hc$e;->Gi:Lcom/google/android/gms/internal/hc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$e;->Gi:Lcom/google/android/gms/internal/hc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/hc;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hc$e;->Gi:Lcom/google/android/gms/internal/hc;

    return-void
.end method
