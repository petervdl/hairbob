.class Lcom/airbnb/android/fragments/AccountSettingsFragment$13;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AccountSettingsFragment;->disconnectGoogle()V
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
        "Lcom/airbnb/android/requests/DeauthorizeServiceRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V
    .registers 2

    .prologue
    .line 378
    iput-object p1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$13;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$13;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    const/4 v1, 0x0

    # invokes: Lcom/airbnb/android/fragments/AccountSettingsFragment;->setActionBarLoaderVisible(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$1100(Lcom/airbnb/android/fragments/AccountSettingsFragment;Z)V

    .line 403
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$13;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 404
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/DeauthorizeServiceRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/DeauthorizeServiceRequest;

    .prologue
    const/4 v2, 0x0

    .line 381
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$13;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_a

    .line 398
    :cond_9
    :goto_9
    return-void

    .line 384
    :cond_a
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$13;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    # invokes: Lcom/airbnb/android/fragments/AccountSettingsFragment;->setActionBarLoaderVisible(Z)V
    invoke-static {v0, v2}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$1100(Lcom/airbnb/android/fragments/AccountSettingsFragment;Z)V

    .line 385
    invoke-virtual {p1}, Lcom/airbnb/android/requests/DeauthorizeServiceRequest;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 386
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$13;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    # setter for: Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGoogleConnected:Z
    invoke-static {v0, v2}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$802(Lcom/airbnb/android/fragments/AccountSettingsFragment;Z)Z

    .line 389
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$13;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e07bf

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 390
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$13;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGoogleSettingsCell:Lcom/airbnb/android/views/GroupedCell;

    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$13;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    const v2, 0x7f0e07b8

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 393
    new-instance v0, Lcom/airbnb/android/requests/GetActiveAccountRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$13;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/GetActiveAccountRequest;-><init>(Landroid/content/Context;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/GetActiveAccountRequest;->execute()V

    .line 396
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$13;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    # invokes: Lcom/airbnb/android/fragments/AccountSettingsFragment;->revokeGoogleClientPermission()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$1200(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V

    goto :goto_9
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 378
    check-cast p1, Lcom/airbnb/android/requests/DeauthorizeServiceRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/AccountSettingsFragment$13;->onResponse(Lcom/airbnb/android/requests/DeauthorizeServiceRequest;)V

    return-void
.end method
