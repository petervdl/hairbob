.class final Lcom/google/android/gms/plus/internal/e$g;
.super Lcom/google/android/gms/plus/internal/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "g"
.end annotation


# instance fields
.field private final abI:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic abJ:Lcom/google/android/gms/plus/internal/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/e$g;->abJ:Lcom/google/android/gms/plus/internal/e;

    invoke-direct {p0}, Lcom/google/android/gms/plus/internal/a;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/plus/internal/e$g;->abI:Lcom/google/android/gms/common/api/a$d;

    return-void
.end method


# virtual methods
.method public h(ILandroid/os/Bundle;)V
    .registers 8

    const/4 v1, 0x0

    if-eqz p2, :cond_20

    const-string/jumbo v0, "pendingIntent"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_c
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p1, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$g;->abJ:Lcom/google/android/gms/plus/internal/e;

    new-instance v1, Lcom/google/android/gms/plus/internal/e$h;

    iget-object v3, p0, Lcom/google/android/gms/plus/internal/e$g;->abJ:Lcom/google/android/gms/plus/internal/e;

    iget-object v4, p0, Lcom/google/android/gms/plus/internal/e$g;->abI:Lcom/google/android/gms/common/api/a$d;

    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/gms/plus/internal/e$h;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/internal/hc$b;)V

    return-void

    :cond_20
    move-object v0, v1

    goto :goto_c
.end method
