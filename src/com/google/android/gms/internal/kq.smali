.class public final Lcom/google/android/gms/internal/kq;
.super Lcom/google/android/gms/internal/hz;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/plus/model/moments/Moment;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/kr;

.field private static final aco:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hz$a",
            "<**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final acp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private adc:Ljava/lang/String;

.field private adk:Lcom/google/android/gms/internal/ko;

.field private adl:Lcom/google/android/gms/internal/ko;

.field private qU:Ljava/lang/String;

.field private xD:Ljava/lang/String;

.field private final xJ:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/kr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/kq;->CREATOR:Lcom/google/android/gms/internal/kr;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/kq;->aco:Ljava/util/HashMap;

    sget-object v0, Lcom/google/android/gms/internal/kq;->aco:Ljava/util/HashMap;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "id"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hz$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/hz$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/kq;->aco:Ljava/util/HashMap;

    const-string/jumbo v1, "result"

    const-string/jumbo v2, "result"

    const/4 v3, 0x4

    const-class v4, Lcom/google/android/gms/internal/ko;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/hz$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/hz$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/kq;->aco:Ljava/util/HashMap;

    const-string/jumbo v1, "startDate"

    const-string/jumbo v2, "startDate"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hz$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/hz$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/kq;->aco:Ljava/util/HashMap;

    const-string/jumbo v1, "target"

    const-string/jumbo v2, "target"

    const/4 v3, 0x6

    const-class v4, Lcom/google/android/gms/internal/ko;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/hz$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/hz$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/kq;->aco:Ljava/util/HashMap;

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "type"

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hz$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/hz$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/hz;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/kq;->xJ:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/kq;->acp:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Lcom/google/android/gms/internal/ko;Ljava/lang/String;Lcom/google/android/gms/internal/ko;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ko;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ko;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/hz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/kq;->acp:Ljava/util/Set;

    iput p2, p0, Lcom/google/android/gms/internal/kq;->xJ:I

    iput-object p3, p0, Lcom/google/android/gms/internal/kq;->xD:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/kq;->adk:Lcom/google/android/gms/internal/ko;

    iput-object p5, p0, Lcom/google/android/gms/internal/kq;->adc:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/kq;->adl:Lcom/google/android/gms/internal/ko;

    iput-object p7, p0, Lcom/google/android/gms/internal/kq;->qU:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/hz$a;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/kq;->acp:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/hz$a;->fI()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected aF(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected aG(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected b(Lcom/google/android/gms/internal/hz$a;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/hz$a;->fI()I

    move-result v0

    packed-switch v0, :pswitch_data_34

    :pswitch_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown safe parcelable id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/hz$a;->fI()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_25
    iget-object v0, p0, Lcom/google/android/gms/internal/kq;->xD:Ljava/lang/String;

    :goto_27
    return-object v0

    :pswitch_28
    iget-object v0, p0, Lcom/google/android/gms/internal/kq;->adk:Lcom/google/android/gms/internal/ko;

    goto :goto_27

    :pswitch_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/kq;->adc:Ljava/lang/String;

    goto :goto_27

    :pswitch_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/kq;->adl:Lcom/google/android/gms/internal/ko;

    goto :goto_27

    :pswitch_31
    iget-object v0, p0, Lcom/google/android/gms/internal/kq;->qU:Ljava/lang/String;

    goto :goto_27

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_25
        :pswitch_7
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
    .end packed-switch
.end method

.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/kq;->CREATOR:Lcom/google/android/gms/internal/kr;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/google/android/gms/internal/kq;

    if-nez v0, :cond_8

    move v0, v1

    .end local p1    # "obj":Ljava/lang/Object;
    :goto_7
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_8
    if-ne p0, p1, :cond_c

    move v0, v2

    goto :goto_7

    :cond_c
    check-cast p1, Lcom/google/android/gms/internal/kq;

    .end local p1    # "obj":Ljava/lang/Object;
    sget-object v0, Lcom/google/android/gms/internal/kq;->aco:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hz$a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kq;->a(Lcom/google/android/gms/internal/hz$a;)Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kq;->a(Lcom/google/android/gms/internal/hz$a;)Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kq;->b(Lcom/google/android/gms/internal/hz$a;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kq;->b(Lcom/google/android/gms/internal/hz$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    move v0, v1

    goto :goto_7

    :cond_40
    move v0, v1

    goto :goto_7

    :cond_42
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kq;->a(Lcom/google/android/gms/internal/hz$a;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_7

    :cond_4a
    move v0, v2

    goto :goto_7
.end method

.method public fB()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hz$a",
            "<**>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/kq;->aco:Ljava/util/HashMap;

    return-object v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kq;->ky()Lcom/google/android/gms/internal/kq;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/kq;->xD:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/kq;->adc:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/kq;->qU:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/kq;->xJ:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/kq;->aco:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hz$a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kq;->a(Lcom/google/android/gms/internal/hz$a;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz$a;->fI()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kq;->b(Lcom/google/android/gms/internal/hz$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_2c
    move v1, v0

    goto :goto_c

    :cond_2e
    return v1

    :cond_2f
    move v0, v1

    goto :goto_2c
.end method

.method kf()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/kq;->acp:Ljava/util/Set;

    return-object v0
.end method

.method kw()Lcom/google/android/gms/internal/ko;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/kq;->adk:Lcom/google/android/gms/internal/ko;

    return-object v0
.end method

.method kx()Lcom/google/android/gms/internal/ko;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/kq;->adl:Lcom/google/android/gms/internal/ko;

    return-object v0
.end method

.method public ky()Lcom/google/android/gms/internal/kq;
    .registers 1

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/kq;->CREATOR:Lcom/google/android/gms/internal/kr;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/kr;->a(Lcom/google/android/gms/internal/kq;Landroid/os/Parcel;I)V

    return-void
.end method
