.class public final Lcom/google/android/gms/internal/ew;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ex;


# instance fields
.field public st:Ljava/lang/String;

.field public su:I

.field public sv:I

.field public sw:Z

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ex;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ex;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ew;->CREATOR:Lcom/google/android/gms/internal/ex;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IIZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ew;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ew;->st:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ew;->su:I

    iput p4, p0, Lcom/google/android/gms/internal/ew;->sv:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ew;->sw:Z

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ex;->a(Lcom/google/android/gms/internal/ew;Landroid/os/Parcel;I)V

    return-void
.end method
