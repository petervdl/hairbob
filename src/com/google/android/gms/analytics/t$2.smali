.class Lcom/google/android/gms/analytics/t$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/t;->cl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uO:Lcom/google/android/gms/analytics/t;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/t;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/t$2;->uO:Lcom/google/android/gms/analytics/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/t$2;->uO:Lcom/google/android/gms/analytics/t;

    invoke-static {v0}, Lcom/google/android/gms/analytics/t;->d(Lcom/google/android/gms/analytics/t;)Lcom/google/android/gms/analytics/ag;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/analytics/ag;->cl()V

    return-void
.end method
