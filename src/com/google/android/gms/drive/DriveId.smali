.class public Lcom/google/android/gms/drive/DriveId;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final HK:Ljava/lang/String;

.field final HL:J

.field final HM:J

.field private volatile HN:Ljava/lang/String;

.field final xJ:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/drive/c;

    invoke-direct {v0}, Lcom/google/android/gms/drive/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JJ)V
    .registers 12
    .param p1, "versionCode"    # I
    .param p2, "resourceId"    # Ljava/lang/String;
    .param p3, "sqlId"    # J
    .param p5, "databaseInstanceId"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->HN:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/drive/DriveId;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/drive/DriveId;->HK:Ljava/lang/String;

    const-string/jumbo v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    move v0, v1

    :goto_16
    invoke-static {v0}, Lcom/google/android/gms/internal/hn;->C(Z)V

    if-nez p2, :cond_21

    const-wide/16 v3, -0x1

    cmp-long v0, p3, v3

    if-eqz v0, :cond_22

    :cond_21
    move v2, v1

    :cond_22
    invoke-static {v2}, Lcom/google/android/gms/internal/hn;->C(Z)V

    iput-wide p3, p0, Lcom/google/android/gms/drive/DriveId;->HL:J

    iput-wide p5, p0, Lcom/google/android/gms/drive/DriveId;->HM:J

    return-void

    :cond_2a
    move v0, v2

    goto :goto_16
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final encodeToString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->HN:Ljava/lang/String;

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/google/android/gms/drive/DriveId;->gf()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DriveId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->HN:Ljava/lang/String;

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->HN:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v5, -0x1

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/drive/DriveId;

    if-nez v1, :cond_8

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_7
    :goto_7
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_8
    check-cast p1, Lcom/google/android/gms/drive/DriveId;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-wide v1, p1, Lcom/google/android/gms/drive/DriveId;->HM:J

    iget-wide v3, p0, Lcom/google/android/gms/drive/DriveId;->HM:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1c

    const-string/jumbo v1, "DriveId"

    const-string/jumbo v2, "Attempt to compare invalid DriveId detected. Has local storage been cleared?"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_1c
    iget-wide v1, p1, Lcom/google/android/gms/drive/DriveId;->HL:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_31

    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->HL:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_31

    iget-object v0, p1, Lcom/google/android/gms/drive/DriveId;->HK:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/drive/DriveId;->HK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7

    :cond_31
    iget-wide v1, p1, Lcom/google/android/gms/drive/DriveId;->HL:J

    iget-wide v3, p0, Lcom/google/android/gms/drive/DriveId;->HL:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method final gf()[B
    .registers 5

    new-instance v1, Lcom/google/android/gms/drive/internal/af;

    invoke-direct {v1}, Lcom/google/android/gms/drive/internal/af;-><init>()V

    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->xJ:I

    iput v0, v1, Lcom/google/android/gms/drive/internal/af;->versionCode:I

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->HK:Ljava/lang/String;

    if-nez v0, :cond_1f

    const-string/jumbo v0, ""

    :goto_10
    iput-object v0, v1, Lcom/google/android/gms/drive/internal/af;->Jq:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->HL:J

    iput-wide v2, v1, Lcom/google/android/gms/drive/internal/af;->Jr:J

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->HM:J

    iput-wide v2, v1, Lcom/google/android/gms/drive/internal/af;->Js:J

    invoke-static {v1}, Lcom/google/android/gms/internal/mf;->d(Lcom/google/android/gms/internal/mf;)[B

    move-result-object v0

    return-object v0

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->HK:Ljava/lang/String;

    goto :goto_10
.end method

.method public hashCode()I
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/drive/DriveId;->HL:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->HK:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->HM:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->HL:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_e
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/drive/DriveId;->encodeToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/c;->a(Lcom/google/android/gms/drive/DriveId;Landroid/os/Parcel;I)V

    return-void
.end method
