.class public final Lcom/google/android/gms/internal/jr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/js;

.field static final Wj:J


# instance fields
.field private final Vi:J

.field private final Wk:Lcom/google/android/gms/internal/jn;

.field private final mPriority:I

.field final xJ:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/js;

    invoke-direct {v0}, Lcom/google/android/gms/internal/js;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jr;->CREATOR:Lcom/google/android/gms/internal/js;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/jr;->Wj:J

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/jn;JI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/jr;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/internal/jr;->Wk:Lcom/google/android/gms/internal/jn;

    iput-wide p3, p0, Lcom/google/android/gms/internal/jr;->Vi:J

    iput p5, p0, Lcom/google/android/gms/internal/jr;->mPriority:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/jr;->CREATOR:Lcom/google/android/gms/internal/js;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
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
    instance-of v2, p1, Lcom/google/android/gms/internal/jr;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/jr;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/internal/jr;->Wk:Lcom/google/android/gms/internal/jn;

    iget-object v3, p1, Lcom/google/android/gms/internal/jr;->Wk:Lcom/google/android/gms/internal/jn;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-wide v2, p0, Lcom/google/android/gms/internal/jr;->Vi:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/jr;->Vi:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_25

    iget v2, p0, Lcom/google/android/gms/internal/jr;->mPriority:I

    iget v3, p1, Lcom/google/android/gms/internal/jr;->mPriority:I

    if-eq v2, v3, :cond_4

    :cond_25
    move v0, v1

    goto :goto_4
.end method

.method public getInterval()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/jr;->Vi:J

    return-wide v0
.end method

.method public getPriority()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/jr;->mPriority:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/jr;->Wk:Lcom/google/android/gms/internal/jn;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/jr;->Vi:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/jr;->mPriority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/hl;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public ja()Lcom/google/android/gms/internal/jn;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jr;->Wk:Lcom/google/android/gms/internal/jn;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/google/android/gms/internal/hl;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;

    move-result-object v0

    const-string/jumbo v1, "filter"

    iget-object v2, p0, Lcom/google/android/gms/internal/jr;->Wk:Lcom/google/android/gms/internal/jn;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;

    move-result-object v0

    const-string/jumbo v1, "interval"

    iget-wide v2, p0, Lcom/google/android/gms/internal/jr;->Vi:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;

    move-result-object v0

    const-string/jumbo v1, "priority"

    iget v2, p0, Lcom/google/android/gms/internal/jr;->mPriority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

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
    sget-object v0, Lcom/google/android/gms/internal/jr;->CREATOR:Lcom/google/android/gms/internal/js;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/js;->a(Lcom/google/android/gms/internal/jr;Landroid/os/Parcel;I)V

    return-void
.end method
