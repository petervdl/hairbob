.class Lcom/google/android/gms/analytics/r$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ud:Lcom/google/android/gms/analytics/r;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/r;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/r$1;->ud:Lcom/google/android/gms/analytics/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public s(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/r$1;->ud:Lcom/google/android/gms/analytics/r;

    iget-object v1, p0, Lcom/google/android/gms/analytics/r$1;->ud:Lcom/google/android/gms/analytics/r;

    invoke-static {v1}, Lcom/google/android/gms/analytics/r;->a(Lcom/google/android/gms/analytics/r;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/analytics/r;->a(ZZ)V

    return-void
.end method
