.class public final Lcom/google/android/gms/internal/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/x;


# instance fields
.field public final kZ:Z

.field public final lb:Z

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/x;

    invoke-direct {v0}, Lcom/google/android/gms/internal/x;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/w;->CREATOR:Lcom/google/android/gms/internal/x;

    return-void
.end method

.method constructor <init>(IZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/w;->versionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/w;->kZ:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/w;->lb:Z

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
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/internal/w;Landroid/os/Parcel;I)V

    return-void
.end method
