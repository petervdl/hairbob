.class public Lcom/google/android/gms/drive/internal/CreateFileRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/CreateFileRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final IA:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field final IB:Ljava/lang/Integer;

.field final IC:Lcom/google/android/gms/drive/DriveId;

.field final IE:Z

.field final It:Lcom/google/android/gms/drive/Contents;

.field final Iv:Ljava/lang/String;

.field final xJ:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/drive/internal/j;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/Contents;Ljava/lang/Integer;ZLjava/lang/String;)V
    .registers 9
    .param p1, "versionCode"    # I
    .param p2, "parentDriveId"    # Lcom/google/android/gms/drive/DriveId;
    .param p3, "metadata"    # Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
    .param p4, "contentsReference"    # Lcom/google/android/gms/drive/Contents;
    .param p5, "fileType"    # Ljava/lang/Integer;
    .param p6, "shouldReportConflict"    # Z
    .param p7, "operationTag"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->xJ:I

    invoke-static {p2}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->IC:Lcom/google/android/gms/drive/DriveId;

    invoke-static {p3}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->IA:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    if-eqz p5, :cond_1d

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2c

    :cond_1d
    invoke-static {p4}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/Contents;

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->It:Lcom/google/android/gms/drive/Contents;

    :goto_25
    iput-object p5, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->IB:Ljava/lang/Integer;

    iput-boolean p6, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->IE:Z

    iput-object p7, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->Iv:Ljava/lang/String;

    return-void

    :cond_2c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->It:Lcom/google/android/gms/drive/Contents;

    goto :goto_25
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/j;->a(Lcom/google/android/gms/drive/internal/CreateFileRequest;Landroid/os/Parcel;I)V

    return-void
.end method
