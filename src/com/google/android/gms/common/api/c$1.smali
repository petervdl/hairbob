.class Lcom/google/android/gms/common/api/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Eh:Lcom/google/android/gms/common/api/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/c;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/c$1;->Eh:Lcom/google/android/gms/common/api/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/common/api/c$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/c$c",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/c$1;->Eh:Lcom/google/android/gms/common/api/c;

    iget-object v0, v0, Lcom/google/android/gms/common/api/c;->Ee:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
