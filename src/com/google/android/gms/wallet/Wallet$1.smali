.class final Lcom/google/android/gms/wallet/Wallet$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/Api$b",
        "<",
        "Lcom/google/android/gms/internal/ls;",
        "Lcom/google/android/gms/wallet/Wallet$WalletOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gz;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;
    .registers 14

    move-object v4, p4

    check-cast v4, Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/wallet/Wallet$1;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gz;Lcom/google/android/gms/wallet/Wallet$WalletOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gz;Lcom/google/android/gms/wallet/Wallet$WalletOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/ls;
    .registers 15

    instance-of v0, p1, Landroid/app/Activity;

    const-string/jumbo v1, "An Activity must be used for Wallet APIs"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->b(ZLjava/lang/Object;)V

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    if-eqz p4, :cond_1e

    :goto_d
    new-instance v0, Lcom/google/android/gms/internal/ls;

    iget v5, p4, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->environment:I

    invoke-virtual {p3}, Lcom/google/android/gms/internal/gz;->getAccountName()Ljava/lang/String;

    move-result-object v6

    iget v7, p4, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->theme:I

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ls;-><init>(Landroid/app/Activity;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;ILjava/lang/String;I)V

    return-object v0

    :cond_1e
    new-instance p4, Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/google/android/gms/wallet/Wallet$WalletOptions;-><init>(Lcom/google/android/gms/wallet/Wallet$1;)V

    goto :goto_d
.end method

.method public getPriority()I
    .registers 2

    const v0, 0x7fffffff

    return v0
.end method
