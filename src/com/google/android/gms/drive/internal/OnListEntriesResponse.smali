.class public Lcom/google/android/gms/drive/internal/OnListEntriesResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/OnListEntriesResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final IM:Z

.field final Jx:Lcom/google/android/gms/common/data/DataHolder;

.field final xJ:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/drive/internal/ak;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/ak;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/data/DataHolder;Z)V
    .registers 4
    .param p1, "versionCode"    # I
    .param p2, "entries"    # Lcom/google/android/gms/common/data/DataHolder;
    .param p3, "moreEntriesMayExist"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->Jx:Lcom/google/android/gms/common/data/DataHolder;

    iput-boolean p3, p0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->IM:Z

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/ak;->a(Lcom/google/android/gms/drive/internal/OnListEntriesResponse;Landroid/os/Parcel;I)V

    return-void
.end method
