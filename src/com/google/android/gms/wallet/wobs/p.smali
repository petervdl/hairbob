.class public final Lcom/google/android/gms/wallet/wobs/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/wobs/p;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field akW:Ljava/lang/String;

.field ala:Lcom/google/android/gms/wallet/wobs/l;

.field alb:Lcom/google/android/gms/wallet/wobs/n;

.field alc:Lcom/google/android/gms/wallet/wobs/n;

.field qb:Ljava/lang/String;

.field private final xJ:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/wallet/wobs/q;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/wobs/p;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/wobs/p;->xJ:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/wobs/l;Lcom/google/android/gms/wallet/wobs/n;Lcom/google/android/gms/wallet/wobs/n;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/wobs/p;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/wobs/p;->akW:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/wobs/p;->qb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/wobs/p;->ala:Lcom/google/android/gms/wallet/wobs/l;

    iput-object p5, p0, Lcom/google/android/gms/wallet/wobs/p;->alb:Lcom/google/android/gms/wallet/wobs/n;

    iput-object p6, p0, Lcom/google/android/gms/wallet/wobs/p;->alc:Lcom/google/android/gms/wallet/wobs/n;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/wobs/p;->xJ:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/wobs/q;->a(Lcom/google/android/gms/wallet/wobs/p;Landroid/os/Parcel;I)V

    return-void
.end method
