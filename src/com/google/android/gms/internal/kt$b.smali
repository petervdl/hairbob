.class public final Lcom/google/android/gms/internal/kt$b;
.super Lcom/google/android/gms/internal/hz;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/plus/model/people/Person$Cover;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/kt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/kt$b$b;,
        Lcom/google/android/gms/internal/kt$b$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/kw;

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

.field private adI:Lcom/google/android/gms/internal/kt$b$a;

.field private adJ:Lcom/google/android/gms/internal/kt$b$b;

.field private adK:I

.field private final xJ:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x0

    new-instance v0, Lcom/google/android/gms/internal/kw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/kt$b;->CREATOR:Lcom/google/android/gms/internal/kw;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/kt$b;->aco:Ljava/util/HashMap;

    sget-object v0, Lcom/google/android/gms/internal/kt$b;->aco:Ljava/util/HashMap;

    const-string/jumbo v1, "coverInfo"

    const-string/jumbo v2, "coverInfo"

    const/4 v3, 0x2

    const-class v4, Lcom/google/android/gms/internal/kt$b$a;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/hz$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/hz$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/kt$b;->aco:Ljava/util/HashMap;

    const-string/jumbo v1, "coverPhoto"

    const-string/jumbo v2, "coverPhoto"

    const/4 v3, 0x3

    const-class v4, Lcom/google/android/gms/internal/kt$b$b;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/hz$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/hz$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/kt$b;->aco:Ljava/util/HashMap;

    const-string/jumbo v1, "layout"

    const-string/jumbo v2, "layout"

    const/4 v3, 0x4

    new-instance v4, Lcom/google/android/gms/internal/hw;

    invoke-direct {v4}, Lcom/google/android/gms/internal/hw;-><init>()V

    const-string/jumbo v5, "banner"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/hw;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/hw;

    move-result-object v4

    invoke-static {v2, v3, v4, v6}, Lcom/google/android/gms/internal/hz$a;->a(Ljava/lang/String;ILcom/google/android/gms/internal/hz$b;Z)Lcom/google/android/gms/internal/hz$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/hz;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/kt$b;->xJ:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/kt$b;->acp:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILcom/google/android/gms/internal/kt$b$a;Lcom/google/android/gms/internal/kt$b$b;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/google/android/gms/internal/kt$b$a;",
            "Lcom/google/android/gms/internal/kt$b$b;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/hz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/kt$b;->acp:Ljava/util/Set;

    iput p2, p0, Lcom/google/android/gms/internal/kt$b;->xJ:I

    iput-object p3, p0, Lcom/google/android/gms/internal/kt$b;->adI:Lcom/google/android/gms/internal/kt$b$a;

    iput-object p4, p0, Lcom/google/android/gms/internal/kt$b;->adJ:Lcom/google/android/gms/internal/kt$b$b;

    iput p5, p0, Lcom/google/android/gms/internal/kt$b;->adK:I

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/hz$a;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/kt$b;->acp:Ljava/util/Set;

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

    packed-switch v0, :pswitch_data_32

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
    iget-object v0, p0, Lcom/google/android/gms/internal/kt$b;->adI:Lcom/google/android/gms/internal/kt$b$a;

    :goto_27
    return-object v0

    :pswitch_28
    iget-object v0, p0, Lcom/google/android/gms/internal/kt$b;->adJ:Lcom/google/android/gms/internal/kt$b$b;

    goto :goto_27

    :pswitch_2b
    iget v0, p0, Lcom/google/android/gms/internal/kt$b;->adK:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_27

    :pswitch_data_32
    .packed-switch 0x2
        :pswitch_25
        :pswitch_28
        :pswitch_2b
    .end packed-switch
.end method

.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/kt$b;->CREATOR:Lcom/google/android/gms/internal/kw;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/google/android/gms/internal/kt$b;

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
    check-cast p1, Lcom/google/android/gms/internal/kt$b;

    .end local p1    # "obj":Ljava/lang/Object;
    sget-object v0, Lcom/google/android/gms/internal/kt$b;->aco:Ljava/util/HashMap;

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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kt$b;->a(Lcom/google/android/gms/internal/hz$a;)Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kt$b;->a(Lcom/google/android/gms/internal/hz$a;)Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kt$b;->b(Lcom/google/android/gms/internal/hz$a;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kt$b;->b(Lcom/google/android/gms/internal/hz$a;)Ljava/lang/Object;

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
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kt$b;->a(Lcom/google/android/gms/internal/hz$a;)Z

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

    sget-object v0, Lcom/google/android/gms/internal/kt$b;->aco:Ljava/util/HashMap;

    return-object v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kt$b;->kL()Lcom/google/android/gms/internal/kt$b;

    move-result-object v0

    return-object v0
.end method

.method public getLayout()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/kt$b;->adK:I

    return v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/kt$b;->xJ:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/kt$b;->aco:Ljava/util/HashMap;

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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kt$b;->a(Lcom/google/android/gms/internal/hz$a;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz$a;->fI()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kt$b;->b(Lcom/google/android/gms/internal/hz$a;)Ljava/lang/Object;

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

.method kJ()Lcom/google/android/gms/internal/kt$b$a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/kt$b;->adI:Lcom/google/android/gms/internal/kt$b$a;

    return-object v0
.end method

.method kK()Lcom/google/android/gms/internal/kt$b$b;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/kt$b;->adJ:Lcom/google/android/gms/internal/kt$b$b;

    return-object v0
.end method

.method public kL()Lcom/google/android/gms/internal/kt$b;
    .registers 1

    return-object p0
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

    iget-object v0, p0, Lcom/google/android/gms/internal/kt$b;->acp:Ljava/util/Set;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/kt$b;->CREATOR:Lcom/google/android/gms/internal/kw;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/kw;->a(Lcom/google/android/gms/internal/kt$b;Landroid/os/Parcel;I)V

    return-void
.end method
