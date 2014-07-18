.class public Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final LA:Z

.field final LB:[Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;

.field final Ly:[Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;

.field final Lz:Lcom/google/android/gms/common/data/DataHolder;

.field final xJ:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/event/b;

    invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/event/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;Lcom/google/android/gms/common/data/DataHolder;Z[Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;)V
    .registers 6
    .param p1, "versionCode"    # I
    .param p2, "events"    # [Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;
    .param p3, "eventData"    # Lcom/google/android/gms/common/data/DataHolder;
    .param p4, "undoRedoStateChanged"    # Z
    .param p5, "objectChangedEvents"    # [Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->Ly:[Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;

    iput-object p3, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->Lz:Lcom/google/android/gms/common/data/DataHolder;

    iput-boolean p4, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->LA:Z

    iput-object p5, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->LB:[Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/event/b;->a(Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;Landroid/os/Parcel;I)V

    return-void
.end method
