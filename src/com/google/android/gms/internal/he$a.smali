.class final Lcom/google/android/gms/internal/he$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/he;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/he$a$a;
    }
.end annotation


# instance fields
.field private GA:Landroid/content/ComponentName;

.field final synthetic GB:Lcom/google/android/gms/internal/he;

.field private final Gv:Ljava/lang/String;

.field private final Gw:Lcom/google/android/gms/internal/he$a$a;

.field private final Gx:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/hc",
            "<*>.f;>;"
        }
    .end annotation
.end field

.field private Gy:Z

.field private Gz:Landroid/os/IBinder;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/he;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/he$a;->GB:Lcom/google/android/gms/internal/he;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/he$a;->Gv:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/he$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/he$a$a;-><init>(Lcom/google/android/gms/internal/he$a;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/he$a;->Gw:Lcom/google/android/gms/internal/he$a$a;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/he$a;->Gx:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/he$a;->mState:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/he$a;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/he$a;->mState:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/he$a;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/he$a;->GA:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/he$a;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/he$a;->Gz:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/he$a;)Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/he$a;->Gx:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public B(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/he$a;->Gy:Z

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/hc$f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/hc",
            "<*>.f;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/he$a;->Gx:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/google/android/gms/internal/hc$f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/hc",
            "<*>.f;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/he$a;->Gx:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lcom/google/android/gms/internal/hc$f;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/hc",
            "<*>.f;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/he$a;->Gx:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fs()Lcom/google/android/gms/internal/he$a$a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/he$a;->Gw:Lcom/google/android/gms/internal/he$a$a;

    return-object v0
.end method

.method public ft()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/he$a;->Gv:Ljava/lang/String;

    return-object v0
.end method

.method public fu()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/he$a;->Gx:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/he$a;->Gz:Landroid/os/IBinder;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/he$a;->GA:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getState()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/he$a;->mState:I

    return v0
.end method

.method public isBound()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/he$a;->Gy:Z

    return v0
.end method
