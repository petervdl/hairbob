.class Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1$1;
.super Ljava/lang/Object;
.source "PayoutEnvoyFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;->onClick(Landroid/view/View;)V
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
        "Lcom/airbnb/android/requests/PayoutEnvoyRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1$1;->this$1:Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 56
    invoke-static {p1}, Lcom/airbnb/android/requests/AirbnbRequest;->parseError(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "errorString":Ljava/lang/String;
    const-string/jumbo v1, "security_check_required"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 58
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "envoy"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/SecurityCheckAnalytics;->trackPayoutPresent(Lcom/airbnb/android/utils/Strap;)V

    .line 59
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1$1;->this$1:Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;

    iget-object v1, v1, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutEnvoyFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1$1;->this$1:Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;

    iget-object v2, v2, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutEnvoyFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/PayoutEnvoyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;->Payout:Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;

    invoke-virtual {v3}, Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;->ordinal()I

    move-result v3

    invoke-static {v2, v3}, Lcom/airbnb/android/activities/AccountVerificationActivity;->intentForVerificationType(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/PayoutEnvoyFragment;->startActivity(Landroid/content/Intent;)V

    .line 63
    :goto_37
    return-void

    .line 61
    :cond_38
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1$1;->this$1:Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;

    iget-object v1, v1, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutEnvoyFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/PayoutEnvoyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    goto :goto_37
.end method

.method public onResponse(Lcom/airbnb/android/requests/PayoutEnvoyRequest;)V
    .registers 8
    .param p1, "response"    # Lcom/airbnb/android/requests/PayoutEnvoyRequest;

    .prologue
    .line 67
    iget-object v3, p0, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1$1;->this$1:Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;

    iget-object v3, v3, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutEnvoyFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/PayoutEnvoyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_b

    .line 93
    :cond_a
    :goto_a
    return-void

    .line 70
    :cond_b
    iget-object v3, p1, Lcom/airbnb/android/requests/PayoutEnvoyRequest;->envoyUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    iget-object v3, p1, Lcom/airbnb/android/requests/PayoutEnvoyRequest;->envoyUrl:Ljava/lang/String;

    const-string/jumbo v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2a

    .line 71
    :cond_1e
    iget-object v3, p0, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1$1;->this$1:Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;

    iget-object v3, v3, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutEnvoyFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/PayoutEnvoyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    goto :goto_a

    .line 77
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/airbnb/android/requests/PayoutEnvoyRequest;->envoyUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    iget-object v3, p1, Lcom/airbnb/android/requests/PayoutEnvoyRequest;->postDataJson:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    iget-object v3, p1, Lcom/airbnb/android/requests/PayoutEnvoyRequest;->postDataJson:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 85
    .end local v1    # "key":Ljava/lang/String;
    :cond_65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 87
    iget-object v3, p0, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1$1;->this$1:Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;

    iget-object v3, v3, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutEnvoyFragment;

    # getter for: Lcom/airbnb/android/fragments/PayoutEnvoyFragment;->mEnvoyWebviewLaunched:Z
    invoke-static {v3}, Lcom/airbnb/android/fragments/PayoutEnvoyFragment;->access$000(Lcom/airbnb/android/fragments/PayoutEnvoyFragment;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 90
    iget-object v3, p0, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1$1;->this$1:Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;

    iget-object v3, v3, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutEnvoyFragment;

    const/4 v4, 0x1

    # setter for: Lcom/airbnb/android/fragments/PayoutEnvoyFragment;->mEnvoyWebviewLaunched:Z
    invoke-static {v3, v4}, Lcom/airbnb/android/fragments/PayoutEnvoyFragment;->access$002(Lcom/airbnb/android/fragments/PayoutEnvoyFragment;Z)Z

    .line 91
    iget-object v3, p0, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1$1;->this$1:Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;

    iget-object v3, v3, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutEnvoyFragment;

    iget-object v4, p0, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1$1;->this$1:Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;

    iget-object v4, v4, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutEnvoyFragment;

    invoke-virtual {v4}, Lcom/airbnb/android/fragments/PayoutEnvoyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/airbnb/android/activities/EnvoyWebViewActivity;->intentForEnvoyPayout(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/fragments/PayoutEnvoyFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_a
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p1, Lcom/airbnb/android/requests/PayoutEnvoyRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/PayoutEnvoyFragment$1$1;->onResponse(Lcom/airbnb/android/requests/PayoutEnvoyRequest;)V

    return-void
.end method
