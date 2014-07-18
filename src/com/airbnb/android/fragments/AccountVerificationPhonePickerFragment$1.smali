.class Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$1;
.super Ljava/lang/Object;
.source "AccountVerificationPhonePickerFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;

.field final synthetic val$activity:Lcom/airbnb/android/activities/AccountVerificationActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;Lcom/airbnb/android/activities/AccountVerificationActivity;)V
    .registers 3

    .prologue
    .line 74
    iput-object p1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$1;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$1;->val$activity:Lcom/airbnb/android/activities/AccountVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$1;->val$activity:Lcom/airbnb/android/activities/AccountVerificationActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/AccountVerificationActivity;->showLoader(Z)V

    .line 78
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/GetSecurityCheckRequest;)V
    .registers 8
    .param p1, "response"    # Lcom/airbnb/android/requests/GetSecurityCheckRequest;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$1;->val$activity:Lcom/airbnb/android/activities/AccountVerificationActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/android/activities/AccountVerificationActivity;->showLoader(Z)V

    .line 83
    iget-object v0, p1, Lcom/airbnb/android/requests/GetSecurityCheckRequest;->securityCheck:Lcom/airbnb/android/models/SecurityCheck;

    .line 84
    .local v0, "securityCheck":Lcom/airbnb/android/models/SecurityCheck;
    invoke-virtual {v0}, Lcom/airbnb/android/models/SecurityCheck;->getRequirements()Lcom/airbnb/android/models/SecurityCheckRequirements;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/SecurityCheckRequirements;->isAddPayout()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Lcom/airbnb/android/models/SecurityCheck;->getRequirements()Lcom/airbnb/android/models/SecurityCheckRequirements;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/SecurityCheckRequirements;->isManageListing()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 85
    :cond_1c
    const-string/jumbo v1, "phone_verification"

    invoke-virtual {v0}, Lcom/airbnb/android/models/SecurityCheck;->getStrategy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 86
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$1;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/models/SecurityCheck;->getData()Lcom/airbnb/android/models/SecurityCheckData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/SecurityCheckData;->getPhoneNumbers()Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->mPhoneNumbers:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->access$002(Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;Ljava/util/List;)Ljava/util/List;

    .line 87
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$1;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;

    # invokes: Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->setupPhoneNumbersList()V
    invoke-static {v1}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->access$100(Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;)V

    .line 93
    :cond_3b
    :goto_3b
    return-void

    .line 89
    :cond_3c
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$1;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$1;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/16 v3, 0x3e9

    iget-object v4, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$1;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;

    iget-object v5, p0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$1;->this$0:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;

    iget-object v5, v5, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;->mVerificationType:Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;

    iget v5, v5, Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;->mBody:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/airbnb/android/models/SecurityCheck;->showContactDialog(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;I)V

    goto :goto_3b
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 74
    check-cast p1, Lcom/airbnb/android/requests/GetSecurityCheckRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$1;->onResponse(Lcom/airbnb/android/requests/GetSecurityCheckRequest;)V

    return-void
.end method
