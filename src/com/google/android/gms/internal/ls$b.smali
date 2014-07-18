.class final Lcom/google/android/gms/internal/ls$b;
.super Lcom/google/android/gms/internal/ls$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private final FT:I

.field final synthetic akJ:Lcom/google/android/gms/internal/ls;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ls;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ls$b;->akJ:Lcom/google/android/gms/internal/ls;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ls$a;-><init>(Lcom/google/android/gms/internal/ls$1;)V

    iput p2, p0, Lcom/google/android/gms/internal/ls$b;->FT:I

    return-void
.end method


# virtual methods
.method public a(ILcom/google/android/gms/wallet/FullWallet;Landroid/os/Bundle;)V
    .registers 9

    const/4 v0, 0x0

    if-eqz p3, :cond_c

    const-string/jumbo v0, "com.google.android.gms.wallet.EXTRA_PENDING_INTENT"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_c
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_2e

    :try_start_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ls$b;->akJ:Lcom/google/android/gms/internal/ls;

    invoke-static {v0}, Lcom/google/android/gms/internal/ls;->b(Lcom/google/android/gms/internal/ls;)Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/ls$b;->FT:I

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_22
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_17 .. :try_end_22} :catch_23

    :goto_22
    return-void

    :catch_23
    move-exception v0

    const-string/jumbo v1, "WalletClientImpl"

    const-string/jumbo v2, "Exception starting pending intent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    :cond_2e
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5a

    const/4 v0, -0x1

    const-string/jumbo v1, "com.google.android.gms.wallet.EXTRA_FULL_WALLET"

    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_40
    iget-object v1, p0, Lcom/google/android/gms/internal/ls$b;->akJ:Lcom/google/android/gms/internal/ls;

    invoke-static {v1}, Lcom/google/android/gms/internal/ls;->b(Lcom/google/android/gms/internal/ls;)Landroid/app/Activity;

    move-result-object v1

    iget v3, p0, Lcom/google/android/gms/internal/ls$b;->FT:I

    const/high16 v4, 0x40000000

    invoke-virtual {v1, v3, v2, v4}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_68

    const-string/jumbo v0, "WalletClientImpl"

    const-string/jumbo v1, "Null pending result returned for onFullWalletLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_5a
    const/16 v0, 0x198

    if-ne p1, v0, :cond_66

    const/4 v0, 0x0

    :goto_5f
    const-string/jumbo v1, "com.google.android.gms.wallet.EXTRA_ERROR_CODE"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_40

    :cond_66
    const/4 v0, 0x1

    goto :goto_5f

    :cond_68
    :try_start_68
    invoke-virtual {v1, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_6b
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_22

    :catch_6c
    move-exception v0

    const-string/jumbo v1, "WalletClientImpl"

    const-string/jumbo v2, "Exception setting pending result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method

.method public a(ILcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Bundle;)V
    .registers 9

    const/4 v0, 0x0

    if-eqz p3, :cond_c

    const-string/jumbo v0, "com.google.android.gms.wallet.EXTRA_PENDING_INTENT"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_c
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_2e

    :try_start_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ls$b;->akJ:Lcom/google/android/gms/internal/ls;

    invoke-static {v0}, Lcom/google/android/gms/internal/ls;->b(Lcom/google/android/gms/internal/ls;)Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/ls$b;->FT:I

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_22
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_17 .. :try_end_22} :catch_23

    :goto_22
    return-void

    :catch_23
    move-exception v0

    const-string/jumbo v1, "WalletClientImpl"

    const-string/jumbo v2, "Exception starting pending intent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    :cond_2e
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5a

    const/4 v0, -0x1

    const-string/jumbo v1, "com.google.android.gms.wallet.EXTRA_MASKED_WALLET"

    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_40
    iget-object v1, p0, Lcom/google/android/gms/internal/ls$b;->akJ:Lcom/google/android/gms/internal/ls;

    invoke-static {v1}, Lcom/google/android/gms/internal/ls;->b(Lcom/google/android/gms/internal/ls;)Landroid/app/Activity;

    move-result-object v1

    iget v3, p0, Lcom/google/android/gms/internal/ls$b;->FT:I

    const/high16 v4, 0x40000000

    invoke-virtual {v1, v3, v2, v4}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_68

    const-string/jumbo v0, "WalletClientImpl"

    const-string/jumbo v1, "Null pending result returned for onMaskedWalletLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_5a
    const/16 v0, 0x198

    if-ne p1, v0, :cond_66

    const/4 v0, 0x0

    :goto_5f
    const-string/jumbo v1, "com.google.android.gms.wallet.EXTRA_ERROR_CODE"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_40

    :cond_66
    const/4 v0, 0x1

    goto :goto_5f

    :cond_68
    :try_start_68
    invoke-virtual {v1, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_6b
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_22

    :catch_6c
    move-exception v0

    const-string/jumbo v1, "WalletClientImpl"

    const-string/jumbo v2, "Exception setting pending result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method

.method public a(IZLandroid/os/Bundle;)V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.google.android.gm.wallet.EXTRA_IS_USER_PREAUTHORIZED"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls$b;->akJ:Lcom/google/android/gms/internal/ls;

    invoke-static {v1}, Lcom/google/android/gms/internal/ls;->b(Lcom/google/android/gms/internal/ls;)Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ls$b;->FT:I

    const/high16 v3, 0x40000000

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_25

    const-string/jumbo v0, "WalletClientImpl"

    const-string/jumbo v1, "Null pending result returned for onPreAuthorizationDetermined"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void

    :cond_25
    const/4 v1, -0x1

    :try_start_26
    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_29
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_24

    :catch_2a
    move-exception v0

    const-string/jumbo v1, "WalletClientImpl"

    const-string/jumbo v2, "Exception setting pending result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24
.end method

.method public i(ILandroid/os/Bundle;)V
    .registers 7

    const-string/jumbo v0, "Bundle should not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "com.google.android.gms.wallet.EXTRA_PENDING_INTENT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_31

    :try_start_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ls$b;->akJ:Lcom/google/android/gms/internal/ls;

    invoke-static {v0}, Lcom/google/android/gms/internal/ls;->b(Lcom/google/android/gms/internal/ls;)Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/ls$b;->FT:I

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_25
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1a .. :try_end_25} :catch_26

    :goto_25
    return-void

    :catch_26
    move-exception v0

    const-string/jumbo v1, "WalletClientImpl"

    const-string/jumbo v2, "Exception starting pending intent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    :cond_31
    const-string/jumbo v0, "WalletClientImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Create Wallet Objects confirmation UI will not be shown connection result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.google.android.gms.wallet.EXTRA_ERROR_CODE"

    const/16 v2, 0x19d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/ls$b;->akJ:Lcom/google/android/gms/internal/ls;

    invoke-static {v1}, Lcom/google/android/gms/internal/ls;->b(Lcom/google/android/gms/internal/ls;)Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ls$b;->FT:I

    const/high16 v3, 0x40000000

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_72

    const-string/jumbo v0, "WalletClientImpl"

    const-string/jumbo v1, "Null pending result returned for onWalletObjectsCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :cond_72
    const/4 v1, 0x1

    :try_start_73
    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_76
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_25

    :catch_77
    move-exception v0

    const-string/jumbo v1, "WalletClientImpl"

    const-string/jumbo v2, "Exception setting pending result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25
.end method
