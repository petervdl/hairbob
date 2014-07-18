.class Lcom/airbnb/android/fragments/PayoutWelcomeFragment$1;
.super Ljava/lang/Object;
.source "PayoutWelcomeFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PayoutWelcomeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "Lcom/airbnb/android/requests/GetSecurityCheckRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/PayoutWelcomeFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PayoutWelcomeFragment;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutWelcomeFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutWelcomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutWelcomeFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutWelcomeFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/PayoutWelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/SolitAirActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/SolitAirActivity;->showLoader(Z)V

    .line 42
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/GetSecurityCheckRequest;)V
    .registers 8
    .param p1, "response"    # Lcom/airbnb/android/requests/GetSecurityCheckRequest;

    .prologue
    .line 46
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutWelcomeFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutWelcomeFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/PayoutWelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/activities/SolitAirActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/android/activities/SolitAirActivity;->showLoader(Z)V

    .line 47
    iget-object v1, p1, Lcom/airbnb/android/requests/GetSecurityCheckRequest;->securityCheck:Lcom/airbnb/android/models/SecurityCheck;

    invoke-virtual {v1}, Lcom/airbnb/android/models/SecurityCheck;->getRequirements()Lcom/airbnb/android/models/SecurityCheckRequirements;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/SecurityCheckRequirements;->isAddPayout()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 48
    iget-object v1, p1, Lcom/airbnb/android/requests/GetSecurityCheckRequest;->securityCheck:Lcom/airbnb/android/models/SecurityCheck;

    invoke-virtual {v1}, Lcom/airbnb/android/models/SecurityCheck;->getStrategy()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "strategy":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/airbnb/android/analytics/SecurityCheckAnalytics;->trackPayoutPresent(Lcom/airbnb/android/utils/Strap;)V

    .line 50
    const-string/jumbo v1, "phone_verification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 51
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutWelcomeFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutWelcomeFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutWelcomeFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutWelcomeFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/PayoutWelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/activities/AccountVerificationActivity;->intentForPayout(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/PayoutWelcomeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 56
    .end local v0    # "strategy":Ljava/lang/String;
    :cond_3c
    :goto_3c
    return-void

    .line 53
    .restart local v0    # "strategy":Ljava/lang/String;
    :cond_3d
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutWelcomeFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutWelcomeFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/PayoutWelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutWelcomeFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutWelcomeFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/PayoutWelcomeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/16 v3, 0x3e9

    iget-object v4, p0, Lcom/airbnb/android/fragments/PayoutWelcomeFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutWelcomeFragment;

    const v5, 0x7f0e06cd

    invoke-static {v1, v2, v3, v4, v5}, Lcom/airbnb/android/models/SecurityCheck;->showContactDialog(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;I)V

    goto :goto_3c
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, Lcom/airbnb/android/requests/GetSecurityCheckRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/PayoutWelcomeFragment$1;->onResponse(Lcom/airbnb/android/requests/GetSecurityCheckRequest;)V

    return-void
.end method
