.class public final Lcom/google/android/gms/internal/jn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/jo;


# instance fields
.field final VZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/jt;",
            ">;"
        }
    .end annotation
.end field

.field private final Wa:Ljava/lang/String;

.field private final Wb:Z

.field final Wc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/jx;",
            ">;"
        }
    .end annotation
.end field

.field private final Wd:Ljava/lang/String;

.field final We:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Wf:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/jt;",
            ">;"
        }
    .end annotation
.end field

.field private final Wg:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/jx;",
            ">;"
        }
    .end annotation
.end field

.field private final Wh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final xJ:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/jo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jn;->CREATOR:Lcom/google/android/gms/internal/jo;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/jt;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/jx;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/jn;->xJ:I

    if-nez p2, :cond_46

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/google/android/gms/internal/jn;->VZ:Ljava/util/List;

    if-nez p3, :cond_12

    const-string/jumbo p3, ""

    :cond_12
    iput-object p3, p0, Lcom/google/android/gms/internal/jn;->Wa:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/jn;->Wb:Z

    if-nez p5, :cond_4b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1c
    iput-object v0, p0, Lcom/google/android/gms/internal/jn;->Wc:Ljava/util/List;

    if-nez p6, :cond_23

    const-string/jumbo p6, ""

    :cond_23
    iput-object p6, p0, Lcom/google/android/gms/internal/jn;->Wd:Ljava/lang/String;

    if-nez p7, :cond_50

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_2b
    iput-object v0, p0, Lcom/google/android/gms/internal/jn;->We:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/jn;->VZ:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/jn;->c(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jn;->Wf:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/internal/jn;->Wc:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/jn;->c(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jn;->Wg:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/internal/jn;->We:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/jn;->c(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jn;->Wh:Ljava/util/Set;

    return-void

    :cond_46
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_b

    :cond_4b
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1c

    :cond_50
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_2b
.end method

.method private static c(Ljava/util/List;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_a
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/jn;->CREATOR:Lcom/google/android/gms/internal/jo;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    .end local p1    # "object":Ljava/lang/Object;
    :cond_4
    :goto_4
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/internal/jn;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/jn;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/internal/jn;->Wf:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/internal/jn;->Wf:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-boolean v2, p0, Lcom/google/android/gms/internal/jn;->Wb:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/jn;->Wb:Z

    if-ne v2, v3, :cond_3b

    iget-object v2, p0, Lcom/google/android/gms/internal/jn;->Wd:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/jn;->Wd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/google/android/gms/internal/jn;->Wg:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/internal/jn;->Wg:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/google/android/gms/internal/jn;->Wh:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/internal/jn;->Wh:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3b
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/jn;->Wf:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/jn;->Wb:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/jn;->Wg:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/jn;->Wd:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/jn;->Wh:Ljava/util/Set;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/hl;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public jb()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/jn;->Wa:Ljava/lang/String;

    return-object v0
.end method

.method public jc()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/jn;->Wb:Z

    return v0
.end method

.method public jd()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jn;->Wd:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/hl;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;

    move-result-object v0

    const-string/jumbo v1, "types"

    iget-object v2, p0, Lcom/google/android/gms/internal/jn;->Wf:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;

    move-result-object v0

    const-string/jumbo v1, "placeIds"

    iget-object v2, p0, Lcom/google/android/gms/internal/jn;->Wh:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;

    move-result-object v0

    const-string/jumbo v1, "requireOpenNow"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/jn;->Wb:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;

    move-result-object v0

    const-string/jumbo v1, "userAccountName"

    iget-object v2, p0, Lcom/google/android/gms/internal/jn;->Wd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;

    move-result-object v0

    const-string/jumbo v1, "requestedUserDataTypes"

    iget-object v2, p0, Lcom/google/android/gms/internal/jn;->Wg:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hl$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/jn;->CREATOR:Lcom/google/android/gms/internal/jo;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/jo;->a(Lcom/google/android/gms/internal/jn;Landroid/os/Parcel;I)V

    return-void
.end method
