.class public final Lcom/google/android/gms/wallet/MaskedWalletRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/MaskedWalletRequest$1;,
        Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/MaskedWalletRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aiI:Ljava/lang/String;

.field aiO:Ljava/lang/String;

.field aiX:Lcom/google/android/gms/wallet/Cart;

.field ajC:Z

.field ajD:Z

.field ajE:Z

.field ajF:Ljava/lang/String;

.field ajG:Ljava/lang/String;

.field ajH:Z

.field ajI:Z

.field ajJ:[Lcom/google/android/gms/wallet/CountrySpecification;

.field ajK:Z

.field ajL:Z

.field ajM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;"
        }
    .end annotation
.end field

.field private final xJ:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/wallet/l;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->xJ:I

    iput-boolean v1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajK:Z

    iput-boolean v1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajL:Z

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/Cart;ZZ[Lcom/google/android/gms/wallet/CountrySpecification;ZZLjava/util/ArrayList;)V
    .registers 16
    .param p1, "versionCode"    # I
    .param p2, "merchantTransactionId"    # Ljava/lang/String;
    .param p3, "phoneNumberRequired"    # Z
    .param p4, "shippingAddressRequired"    # Z
    .param p5, "useMinimalBillingAddress"    # Z
    .param p6, "estimatedTotalPrice"    # Ljava/lang/String;
    .param p7, "currencyCode"    # Ljava/lang/String;
    .param p8, "merchantName"    # Ljava/lang/String;
    .param p9, "cart"    # Lcom/google/android/gms/wallet/Cart;
    .param p10, "shouldRetrieveWalletObjects"    # Z
    .param p11, "isBillingAgreement"    # Z
    .param p12, "allowedShippingCountrySpecifications"    # [Lcom/google/android/gms/wallet/CountrySpecification;
    .param p13, "allowPrepaidCard"    # Z
    .param p14, "allowDebitCard"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/wallet/Cart;",
            "ZZ[",
            "Lcom/google/android/gms/wallet/CountrySpecification;",
            "ZZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p15, "allowedCountrySpecificationsForShipping":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/identity/intents/model/CountrySpecification;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->aiO:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajC:Z

    iput-boolean p4, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajD:Z

    iput-boolean p5, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajE:Z

    iput-object p6, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajF:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->aiI:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajG:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->aiX:Lcom/google/android/gms/wallet/Cart;

    iput-boolean p10, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajH:Z

    iput-boolean p11, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajI:Z

    iput-object p12, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajJ:[Lcom/google/android/gms/wallet/CountrySpecification;

    iput-boolean p13, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajK:Z

    iput-boolean p14, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajL:Z

    iput-object p15, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->ajM:Ljava/util/ArrayList;

    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    new-instance v0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    new-instance v1, Lcom/google/android/gms/wallet/MaskedWalletRequest;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/MaskedWalletRequest;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;-><init>(Lcom/google/android/gms/wallet/MaskedWalletRequest;Lcom/google/android/gms/wallet/MaskedWalletRequest$1;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->xJ:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/l;->a(Lcom/google/android/gms/wallet/MaskedWalletRequest;Landroid/os/Parcel;I)V

    return-void
.end method
