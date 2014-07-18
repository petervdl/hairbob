.class public Lcom/google/android/gms/internal/fs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ft;


# instance fields
.field public final mN:Ljava/lang/String;

.field final xJ:I

.field final yn:Lcom/google/android/gms/internal/fj;

.field final yo:J

.field final yp:I

.field final yq:Lcom/google/android/gms/internal/fh;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ft;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ft;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fs;->CREATOR:Lcom/google/android/gms/internal/ft;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/fj;JILjava/lang/String;Lcom/google/android/gms/internal/fh;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/fs;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/internal/fs;->yn:Lcom/google/android/gms/internal/fj;

    iput-wide p3, p0, Lcom/google/android/gms/internal/fs;->yo:J

    iput p5, p0, Lcom/google/android/gms/internal/fs;->yp:I

    iput-object p6, p0, Lcom/google/android/gms/internal/fs;->mN:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/fs;->yq:Lcom/google/android/gms/internal/fh;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/fs;->CREATOR:Lcom/google/android/gms/internal/ft;

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const-string/jumbo v0, "UsageInfo[documentId=%s, timestamp=%d, usageType=%d]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/fs;->yn:Lcom/google/android/gms/internal/fj;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/google/android/gms/internal/fs;->yo:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/gms/internal/fs;->yp:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/fs;->CREATOR:Lcom/google/android/gms/internal/ft;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ft;->a(Lcom/google/android/gms/internal/fs;Landroid/os/Parcel;I)V

    return-void
.end method
