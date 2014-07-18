.class public final Lcom/google/android/gms/drive/events/FileConflictEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/drive/events/DriveEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/events/FileConflictEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Hw:Lcom/google/android/gms/drive/DriveId;

.field final Ig:Landroid/os/ParcelFileDescriptor;

.field final Ih:Landroid/os/ParcelFileDescriptor;

.field final Ii:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field final Ij:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Ik:Z

.field private Il:Z

.field private Im:Z

.field final xJ:I

.field final yN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/drive/events/c;

    invoke-direct {v0}, Lcom/google/android/gms/drive/events/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/events/FileConflictEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Ljava/util/ArrayList;)V
    .registers 9
    .param p1, "versionCode"    # I
    .param p2, "driveId"    # Lcom/google/android/gms/drive/DriveId;
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "baseParcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "modifiedParcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p6, "modifiedMetadataBundle"    # Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/drive/DriveId;",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/ParcelFileDescriptor;",
            "Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p7, "operationTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->Ik:Z

    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->Il:Z

    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->Im:Z

    iput p1, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->Hw:Lcom/google/android/gms/drive/DriveId;

    iput-object p3, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->yN:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->Ig:Landroid/os/ParcelFileDescriptor;

    iput-object p5, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->Ih:Landroid/os/ParcelFileDescriptor;

    iput-object p6, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->Ii:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iput-object p7, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->Ij:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "FileConflictEvent [id=%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->Hw:Lcom/google/android/gms/drive/DriveId;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/events/c;->a(Lcom/google/android/gms/drive/events/FileConflictEvent;Landroid/os/Parcel;I)V

    return-void
.end method
