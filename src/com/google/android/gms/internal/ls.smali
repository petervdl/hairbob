.class public Lcom/google/android/gms/internal/ls;
.super Lcom/google/android/gms/internal/hc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ls$1;,
        Lcom/google/android/gms/internal/ls$b;,
        Lcom/google/android/gms/internal/ls$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hc",
        "<",
        "Lcom/google/android/gms/internal/ln;",
        ">;"
    }
.end annotation


# instance fields
.field private final ajY:I

.field private final mTheme:I

.field private final oe:Landroid/app/Activity;

.field private final yN:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;ILjava/lang/String;I)V
    .registers 14

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hc;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ls;->oe:Landroid/app/Activity;

    iput p5, p0, Lcom/google/android/gms/internal/ls;->ajY:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ls;->yN:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/internal/ls;->mTheme:I

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "com.google.android.gms.wallet.EXTRA_ENVIRONMENT"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "androidPackageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string/jumbo v1, "com.google.android.gms.wallet.EXTRA_BUYER_ACCOUNT"

    new-instance v2, Landroid/accounts/Account;

    const-string/jumbo v3, "com.google"

    invoke-direct {v2, p2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_25
    const-string/jumbo v1, "com.google.android.gms.wallet.EXTRA_THEME"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ls;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->oe:Landroid/app/Activity;

    return-object v0
.end method

.method private nd()Landroid/os/Bundle;
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ls;->ajY:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ls;->oe:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ls;->yN:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/ls;->mTheme:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ls;->a(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/hj;Lcom/google/android/gms/internal/hc$e;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x4d7808

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/hj;->a(Lcom/google/android/gms/internal/hi;I)V

    return-void
.end method

.method public a(Lcom/google/android/gms/wallet/FullWalletRequest;I)V
    .registers 7

    new-instance v1, Lcom/google/android/gms/internal/ls$b;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ls$b;-><init>(Lcom/google/android/gms/internal/ls;I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ls;->nd()Landroid/os/Bundle;

    move-result-object v2

    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ls;->fo()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ln;

    invoke-interface {v0, p1, v2, v1}, Lcom/google/android/gms/internal/ln;->a(Lcom/google/android/gms/wallet/FullWalletRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/lq;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-string/jumbo v2, "WalletClientImpl"

    const-string/jumbo v3, "RemoteException getting full wallet"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ls$b;->a(ILcom/google/android/gms/wallet/FullWallet;Landroid/os/Bundle;)V

    goto :goto_12
.end method

.method public a(Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ls;->nd()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ls$b;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/ls$b;-><init>(Lcom/google/android/gms/internal/ls;I)V

    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ls;->fo()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ln;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ln;->a(Lcom/google/android/gms/wallet/MaskedWalletRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/lq;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-string/jumbo v1, "WalletClientImpl"

    const-string/jumbo v3, "RemoteException getting masked wallet"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    const/4 v1, 0x0

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/ls$b;->a(ILcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Bundle;)V

    goto :goto_12
.end method

.method protected bp()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.google.android.gms.wallet.service.BIND"

    return-object v0
.end method

.method protected bq()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.google.android.gms.wallet.internal.IOwService"

    return-object v0
.end method

.method protected bu(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ln;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/ln$a;->bq(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ln;

    move-result-object v0

    return-object v0
.end method

.method public dQ(I)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ls;->nd()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ls$b;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ls$b;-><init>(Lcom/google/android/gms/internal/ls;I)V

    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ls;->fo()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ln;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ln;->a(Landroid/os/Bundle;Lcom/google/android/gms/internal/lq;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-string/jumbo v1, "WalletClientImpl"

    const-string/jumbo v3, "RemoteException during checkForPreAuthorization"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    const/4 v1, 0x0

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/ls$b;->a(IZLandroid/os/Bundle;)V

    goto :goto_12
.end method

.method protected synthetic x(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ls;->bu(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ln;

    move-result-object v0

    return-object v0
.end method
