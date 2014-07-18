.class public Lcom/google/android/gms/drive/Contents;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/Contents;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Fg:Landroid/os/ParcelFileDescriptor;

.field private HA:Z

.field private HB:Z

.field final Hv:I

.field final Hw:Lcom/google/android/gms/drive/DriveId;

.field Hx:Ljava/lang/String;

.field Hy:Z

.field private Hz:Z

.field private mClosed:Z

.field final qX:I

.field final xJ:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/drive/a;

    invoke-direct {v0}, Lcom/google/android/gms/drive/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/ParcelFileDescriptor;IILcom/google/android/gms/drive/DriveId;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "versionCode"    # I
    .param p2, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "requestId"    # I
    .param p4, "mode"    # I
    .param p5, "driveId"    # Lcom/google/android/gms/drive/DriveId;
    .param p6, "baseContentHash"    # Ljava/lang/String;
    .param p7, "validForConflictDetection"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->mClosed:Z

    iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->Hz:Z

    iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->HA:Z

    iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->HB:Z

    iput p1, p0, Lcom/google/android/gms/drive/Contents;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/drive/Contents;->Fg:Landroid/os/ParcelFileDescriptor;

    iput p3, p0, Lcom/google/android/gms/drive/Contents;->qX:I

    iput p4, p0, Lcom/google/android/gms/drive/Contents;->Hv:I

    iput-object p5, p0, Lcom/google/android/gms/drive/Contents;->Hw:Lcom/google/android/gms/drive/DriveId;

    iput-object p6, p0, Lcom/google/android/gms/drive/Contents;->Hx:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/drive/Contents;->Hy:Z

    return-void
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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/a;->a(Lcom/google/android/gms/drive/Contents;Landroid/os/Parcel;I)V

    return-void
.end method
