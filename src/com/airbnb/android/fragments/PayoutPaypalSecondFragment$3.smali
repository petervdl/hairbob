.class Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$3;
.super Ljava/lang/Object;
.source "PayoutPaypalSecondFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->submitPaypalInfo()V
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
        "Lcom/airbnb/android/requests/PayoutPaypalRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

.field final synthetic val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V
    .registers 3

    .prologue
    .line 164
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$3;->val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 175
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$3;->val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->dismiss()V

    .line 176
    invoke-static {p1}, Lcom/airbnb/android/requests/AirbnbRequest;->parseError(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "errorString":Ljava/lang/String;
    const-string/jumbo v1, "security_check_required"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 178
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "paypal"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/SecurityCheckAnalytics;->trackPayoutPresent(Lcom/airbnb/android/utils/Strap;)V

    .line 179
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;->Payout:Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;

    invoke-virtual {v3}, Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;->ordinal()I

    move-result v3

    invoke-static {v2, v3}, Lcom/airbnb/android/activities/AccountVerificationActivity;->intentForVerificationType(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->startActivity(Landroid/content/Intent;)V

    .line 183
    :goto_38
    return-void

    .line 181
    :cond_39
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    goto :goto_38
.end method

.method public onResponse(Lcom/airbnb/android/requests/PayoutPaypalRequest;)V
    .registers 7
    .param p1, "response"    # Lcom/airbnb/android/requests/PayoutPaypalRequest;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 168
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$3;->val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    const v2, 0x7f0e059c

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$3;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    const v3, 0x7f0e0590

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020129

    const/16 v4, 0xbb8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->onProgressComplete(Ljava/lang/String;Ljava/lang/String;II)V

    .line 171
    :cond_24
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 164
    check-cast p1, Lcom/airbnb/android/requests/PayoutPaypalRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$3;->onResponse(Lcom/airbnb/android/requests/PayoutPaypalRequest;)V

    return-void
.end method
