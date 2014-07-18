.class public Lcom/google/android/gms/internal/lr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wallet/Payments;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkForPreAuthorization(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .registers 4
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "requestCode"    # I

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/lr$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/lr$1;-><init>(Lcom/google/android/gms/internal/lr;I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    return-void
.end method

.method public loadFullWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/FullWalletRequest;I)V
    .registers 5
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "request"    # Lcom/google/android/gms/wallet/FullWalletRequest;
    .param p3, "requestCode"    # I

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/lr$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/lr$3;-><init>(Lcom/google/android/gms/internal/lr;Lcom/google/android/gms/wallet/FullWalletRequest;I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    return-void
.end method

.method public loadMaskedWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
    .registers 5
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "request"    # Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .param p3, "requestCode"    # I

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/lr$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/lr$2;-><init>(Lcom/google/android/gms/internal/lr;Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    return-void
.end method
