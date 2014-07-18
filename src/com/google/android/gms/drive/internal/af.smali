.class public final Lcom/google/android/gms/drive/internal/af;
.super Lcom/google/android/gms/internal/mb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mb",
        "<",
        "Lcom/google/android/gms/drive/internal/af;",
        ">;"
    }
.end annotation


# instance fields
.field public Jq:Ljava/lang/String;

.field public Jr:J

.field public Js:J

.field public versionCode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mb;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/af;->gn()Lcom/google/android/gms/drive/internal/af;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ma;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/drive/internal/af;->versionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->p(II)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/af;->Jq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->b(ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/af;->Jr:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ma;->c(IJ)V

    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/af;->Js:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ma;->c(IJ)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mb;->a(Lcom/google/android/gms/internal/ma;)V

    return-void
.end method

.method protected c()I
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/mb;->c()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/drive/internal/af;->versionCode:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ma;->r(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/af;->Jq:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ma;->h(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/af;->Jr:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ma;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/af;->Js:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ma;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_6

    move v0, v1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_5
    :goto_5
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/drive/internal/af;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/drive/internal/af;

    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p0, Lcom/google/android/gms/drive/internal/af;->versionCode:I

    iget v3, p1, Lcom/google/android/gms/drive/internal/af;->versionCode:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/af;->Jq:Ljava/lang/String;

    if-nez v2, :cond_44

    iget-object v2, p1, Lcom/google/android/gms/drive/internal/af;->Jq:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_1a
    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/af;->Jr:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/af;->Jr:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/af;->Js:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/af;->Js:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/af;->amU:Ljava/util/List;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/af;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4f

    :cond_36
    iget-object v2, p1, Lcom/google/android/gms/drive/internal/af;->amU:Ljava/util/List;

    if-eqz v2, :cond_42

    iget-object v2, p1, Lcom/google/android/gms/drive/internal/af;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_42
    move v0, v1

    goto :goto_5

    :cond_44
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/af;->Jq:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/drive/internal/af;->Jq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_5

    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/af;->amU:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/drive/internal/af;->amU:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public gn()Lcom/google/android/gms/drive/internal/af;
    .registers 4

    const-wide/16 v1, -0x1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/af;->versionCode:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/af;->Jq:Ljava/lang/String;

    iput-wide v1, p0, Lcom/google/android/gms/drive/internal/af;->Jr:J

    iput-wide v1, p0, Lcom/google/android/gms/drive/internal/af;->Js:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/af;->amU:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/af;->amY:I

    return-object p0
.end method

.method public hashCode()I
    .registers 8

    const/16 v6, 0x20

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/drive/internal/af;->versionCode:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/af;->Jq:Ljava/lang/String;

    if-nez v0, :cond_33

    move v0, v1

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/af;->Jr:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/af;->Jr:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/af;->Js:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/af;->Js:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/af;->amU:Ljava/util/List;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/af;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3a

    :cond_31
    :goto_31
    add-int/2addr v0, v1

    return v0

    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/af;->Jq:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_e

    :cond_3a
    iget-object v1, p0, Lcom/google/android/gms/drive/internal/af;->amU:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_31
.end method
