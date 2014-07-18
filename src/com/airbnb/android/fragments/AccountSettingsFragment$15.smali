.class Lcom/airbnb/android/fragments/AccountSettingsFragment$15;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AccountSettingsFragment;->goToVerifyIdFlow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/VerificationsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V
    .registers 2

    .prologue
    .line 424
    iput-object p1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$15;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$15;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    const/4 v1, 0x0

    # invokes: Lcom/airbnb/android/fragments/AccountSettingsFragment;->setActionBarLoaderVisible(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$1100(Lcom/airbnb/android/fragments/AccountSettingsFragment;Z)V

    .line 436
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$15;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 437
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/VerificationsRequest;)V
    .registers 6
    .param p1, "response"    # Lcom/airbnb/android/requests/VerificationsRequest;

    .prologue
    .line 428
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$15;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    const/4 v2, 0x0

    # invokes: Lcom/airbnb/android/fragments/AccountSettingsFragment;->setActionBarLoaderVisible(Z)V
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$1100(Lcom/airbnb/android/fragments/AccountSettingsFragment;Z)V

    .line 429
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$15;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p1, Lcom/airbnb/android/requests/VerificationsRequest;->verifications:Lcom/airbnb/android/models/CheckpointVerifications;

    iget-object v3, p1, Lcom/airbnb/android/requests/VerificationsRequest;->reservation:Lcom/airbnb/android/models/Reservation;

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/activities/VerifiedIdActivity;->intentForVerifiedId(Landroid/content/Context;Lcom/airbnb/android/models/CheckpointVerifications;Lcom/airbnb/android/models/Reservation;)Landroid/content/Intent;

    move-result-object v0

    .line 430
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$15;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 431
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 424
    check-cast p1, Lcom/airbnb/android/requests/VerificationsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/AccountSettingsFragment$15;->onResponse(Lcom/airbnb/android/requests/VerificationsRequest;)V

    return-void
.end method
