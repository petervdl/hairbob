.class public final Lcom/google/android/gms/internal/ax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ay;


# instance fields
.field public final backgroundColor:I

.field public final mB:I

.field public final mC:I

.field public final mD:I

.field public final mE:I

.field public final mF:I

.field public final mG:I

.field public final mH:I

.field public final mI:Ljava/lang/String;

.field public final mJ:I

.field public final mK:Ljava/lang/String;

.field public final mL:I

.field public final mM:I

.field public final mN:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ay;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ay;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ax;->CREATOR:Lcom/google/android/gms/internal/ay;

    return-void
.end method

.method constructor <init>(IIIIIIIIILjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ax;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/internal/ax;->mB:I

    iput p3, p0, Lcom/google/android/gms/internal/ax;->backgroundColor:I

    iput p4, p0, Lcom/google/android/gms/internal/ax;->mC:I

    iput p5, p0, Lcom/google/android/gms/internal/ax;->mD:I

    iput p6, p0, Lcom/google/android/gms/internal/ax;->mE:I

    iput p7, p0, Lcom/google/android/gms/internal/ax;->mF:I

    iput p8, p0, Lcom/google/android/gms/internal/ax;->mG:I

    iput p9, p0, Lcom/google/android/gms/internal/ax;->mH:I

    iput-object p10, p0, Lcom/google/android/gms/internal/ax;->mI:Ljava/lang/String;

    iput p11, p0, Lcom/google/android/gms/internal/ax;->mJ:I

    iput-object p12, p0, Lcom/google/android/gms/internal/ax;->mK:Ljava/lang/String;

    iput p13, p0, Lcom/google/android/gms/internal/ax;->mL:I

    iput p14, p0, Lcom/google/android/gms/internal/ax;->mM:I

    iput-object p15, p0, Lcom/google/android/gms/internal/ax;->mN:Ljava/lang/String;

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ay;->a(Lcom/google/android/gms/internal/ax;Landroid/os/Parcel;I)V

    return-void
.end method
