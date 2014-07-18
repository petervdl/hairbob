.class public final Lcom/google/android/gms/internal/dt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/du;


# instance fields
.field public final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public final kL:Ljava/lang/String;

.field public final kO:Lcom/google/android/gms/internal/ew;

.field public final kR:Lcom/google/android/gms/internal/am;

.field public final pU:Landroid/os/Bundle;

.field public final pV:Lcom/google/android/gms/internal/aj;

.field public final pW:Landroid/content/pm/PackageInfo;

.field public final pX:Ljava/lang/String;

.field public final pY:Ljava/lang/String;

.field public final pZ:Ljava/lang/String;

.field public final qa:Landroid/os/Bundle;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/du;

    invoke-direct {v0}, Lcom/google/android/gms/internal/du;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/dt;->CREATOR:Lcom/google/android/gms/internal/du;

    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;Lcom/google/android/gms/internal/aj;Lcom/google/android/gms/internal/am;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ew;Landroid/os/Bundle;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/dt;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/dt;->pU:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/internal/dt;->pV:Lcom/google/android/gms/internal/aj;

    iput-object p4, p0, Lcom/google/android/gms/internal/dt;->kR:Lcom/google/android/gms/internal/am;

    iput-object p5, p0, Lcom/google/android/gms/internal/dt;->kL:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/dt;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/dt;->pW:Landroid/content/pm/PackageInfo;

    iput-object p8, p0, Lcom/google/android/gms/internal/dt;->pX:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/dt;->pY:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/dt;->pZ:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/internal/dt;->kO:Lcom/google/android/gms/internal/ew;

    iput-object p12, p0, Lcom/google/android/gms/internal/dt;->qa:Landroid/os/Bundle;

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/du;->a(Lcom/google/android/gms/internal/dt;Landroid/os/Parcel;I)V

    return-void
.end method
