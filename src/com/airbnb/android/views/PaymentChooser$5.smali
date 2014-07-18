.class Lcom/airbnb/android/views/PaymentChooser$5;
.super Ljava/lang/Object;
.source "PaymentChooser.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/PaymentChooser;->createWalletClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/PaymentChooser;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/PaymentChooser;)V
    .registers 2

    .prologue
    .line 479
    iput-object p1, p0, Lcom/airbnb/android/views/PaymentChooser$5;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser$5;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    const/4 v1, 0x1

    # setter for: Lcom/airbnb/android/views/PaymentChooser;->mGoogleWalletEnabled:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/views/PaymentChooser;->access$402(Lcom/airbnb/android/views/PaymentChooser;Z)Z

    .line 483
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser$5;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    # getter for: Lcom/airbnb/android/views/PaymentChooser;->mWalletClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v0}, Lcom/airbnb/android/views/PaymentChooser;->access$500(Lcom/airbnb/android/views/PaymentChooser;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-static {v0, v1}, Lcom/google/android/gms/wallet/Wallet;->checkForPreAuthorization(Lcom/google/android/gms/common/api/GoogleApiClient;I)V

    .line 484
    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 488
    iget-object v0, p0, Lcom/airbnb/android/views/PaymentChooser$5;->this$0:Lcom/airbnb/android/views/PaymentChooser;

    const/4 v1, 0x0

    # setter for: Lcom/airbnb/android/views/PaymentChooser;->mGoogleWalletEnabled:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/views/PaymentChooser;->access$402(Lcom/airbnb/android/views/PaymentChooser;Z)Z

    .line 489
    return-void
.end method
