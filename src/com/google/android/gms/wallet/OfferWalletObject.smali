.class public final Lcom/google/android/gms/wallet/OfferWalletObject;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/OfferWalletObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ajQ:Ljava/lang/String;

.field ajR:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

.field eC:Ljava/lang/String;

.field private final xJ:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/wallet/n;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/OfferWalletObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->xJ:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/wobs/CommonWalletObject;)V
    .registers 6
    .param p1, "versionCode"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "redemptionCode"    # Ljava/lang/String;
    .param p4, "commonWalletObject"    # Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->xJ:I

    iput-object p3, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->ajQ:Ljava/lang/String;

    const/4 v0, 0x3

    if-ge p1, v0, :cond_19

    invoke-static {}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->nf()Lcom/google/android/gms/wallet/wobs/CommonWalletObject$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$a;->cw(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$a;->ng()Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->ajR:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    :goto_18
    return-void

    :cond_19
    iput-object p4, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->ajR:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    goto :goto_18
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->xJ:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/n;->a(Lcom/google/android/gms/wallet/OfferWalletObject;Landroid/os/Parcel;I)V

    return-void
.end method
