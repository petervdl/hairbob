.class public final Lcom/google/android/gms/internal/gz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gz$a;
    }
.end annotation


# instance fields
.field private final DG:Landroid/view/View;

.field private final FR:Lcom/google/android/gms/internal/gz$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;ILandroid/view/View;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/gz$a;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/gz$a;-><init>(Ljava/lang/String;Ljava/util/Collection;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gz;->FR:Lcom/google/android/gms/internal/gz$a;

    iput-object p4, p0, Lcom/google/android/gms/internal/gz;->DG:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public fg()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gz;->FR:Lcom/google/android/gms/internal/gz$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gz$a;->fg()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gz;->FR:Lcom/google/android/gms/internal/gz$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gz$a;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
