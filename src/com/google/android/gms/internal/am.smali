.class public final Lcom/google/android/gms/internal/am;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/an;


# instance fields
.field public final height:I

.field public final heightPixels:I

.field public final mc:Ljava/lang/String;

.field public final md:Z

.field public final me:[Lcom/google/android/gms/internal/am;

.field public final versionCode:I

.field public final width:I

.field public final widthPixels:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/an;

    invoke-direct {v0}, Lcom/google/android/gms/internal/an;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/am;->CREATOR:Lcom/google/android/gms/internal/an;

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    const/4 v3, 0x0

    const/4 v1, 0x2

    const-string/jumbo v2, "interstitial_mb"

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v4, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/am;-><init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/internal/am;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/internal/am;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/am;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/am;->mc:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/am;->height:I

    iput p4, p0, Lcom/google/android/gms/internal/am;->heightPixels:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/am;->md:Z

    iput p6, p0, Lcom/google/android/gms/internal/am;->width:I

    iput p7, p0, Lcom/google/android/gms/internal/am;->widthPixels:I

    iput-object p8, p0, Lcom/google/android/gms/internal/am;->me:[Lcom/google/android/gms/internal/am;

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/an;->a(Lcom/google/android/gms/internal/am;Landroid/os/Parcel;I)V

    return-void
.end method
