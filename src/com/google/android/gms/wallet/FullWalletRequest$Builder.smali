.class public final Lcom/google/android/gms/wallet/FullWalletRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/FullWalletRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic aiY:Lcom/google/android/gms/wallet/FullWalletRequest;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/FullWalletRequest;)V
    .registers 2

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;->aiY:Lcom/google/android/gms/wallet/FullWalletRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/FullWalletRequest;Lcom/google/android/gms/wallet/FullWalletRequest$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/gms/wallet/FullWalletRequest;
    .param p2, "x1"    # Lcom/google/android/gms/wallet/FullWalletRequest$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;-><init>(Lcom/google/android/gms/wallet/FullWalletRequest;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/wallet/FullWalletRequest;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;->aiY:Lcom/google/android/gms/wallet/FullWalletRequest;

    return-object v0
.end method

.method public setCart(Lcom/google/android/gms/wallet/Cart;)Lcom/google/android/gms/wallet/FullWalletRequest$Builder;
    .registers 3
    .param p1, "cart"    # Lcom/google/android/gms/wallet/Cart;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;->aiY:Lcom/google/android/gms/wallet/FullWalletRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/FullWalletRequest;->aiX:Lcom/google/android/gms/wallet/Cart;

    return-object p0
.end method

.method public setGoogleTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/FullWalletRequest$Builder;
    .registers 3
    .param p1, "googleTransactionId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;->aiY:Lcom/google/android/gms/wallet/FullWalletRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/FullWalletRequest;->aiN:Ljava/lang/String;

    return-object p0
.end method
