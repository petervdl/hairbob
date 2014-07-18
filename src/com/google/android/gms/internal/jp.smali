.class public Lcom/google/android/gms/internal/jp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/jq;


# instance fields
.field private final Wi:Ljava/lang/String;

.field private final mTag:Ljava/lang/String;

.field final xJ:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/jq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jp;->CREATOR:Lcom/google/android/gms/internal/jq;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/jp;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/internal/jp;->Wi:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/jp;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/jp;->CREATOR:Lcom/google/android/gms/internal/jq;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/jp;

    if-nez v1, :cond_6

    .end local p1    # "that":Ljava/lang/Object;
    :cond_5
    :goto_5
    return v0

    .restart local p1    # "that":Ljava/lang/Object;
    :cond_6
    check-cast p1, Lcom/google/android/gms/internal/jp;

    .end local p1    # "that":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/android/gms/internal/jp;->Wi:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/jp;->Wi:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/jp;->mTag:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/jp;->mTag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jp;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/jp;->Wi:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/jp;->mTag:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/hl;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public je()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jp;->Wi:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/hl;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;

    move-result-object v0

    const-string/jumbo v1, "mPlaceId"

    iget-object v2, p0, Lcom/google/android/gms/internal/jp;->Wi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;

    move-result-object v0

    const-string/jumbo v1, "mTag"

    iget-object v2, p0, Lcom/google/android/gms/internal/jp;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hl$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/jp;->CREATOR:Lcom/google/android/gms/internal/jq;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/jq;->a(Lcom/google/android/gms/internal/jp;Landroid/os/Parcel;I)V

    return-void
.end method
