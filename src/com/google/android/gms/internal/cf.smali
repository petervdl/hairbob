.class public final Lcom/google/android/gms/internal/cf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ce;


# instance fields
.field public final mimeType:Ljava/lang/String;

.field public final nY:Ljava/lang/String;

.field public final nZ:Ljava/lang/String;

.field public final oa:Ljava/lang/String;

.field public final ob:Ljava/lang/String;

.field public final oc:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ce;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ce;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cf;->CREATOR:Lcom/google/android/gms/internal/ce;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/cf;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/cf;->nY:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/cf;->nZ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/cf;->mimeType:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/cf;->packageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/cf;->oa:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/cf;->ob:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/cf;->oc:Ljava/lang/String;

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ce;->a(Lcom/google/android/gms/internal/cf;Landroid/os/Parcel;I)V

    return-void
.end method
