.class public Lcom/google/android/gms/wearable/internal/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/ak;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final alY:J

.field public final label:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/al;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/al;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/ak;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/ak;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/ak;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/ak;->label:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/wearable/internal/ak;->alY:J

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/al;->a(Lcom/google/android/gms/wearable/internal/ak;Landroid/os/Parcel;I)V

    return-void
.end method
