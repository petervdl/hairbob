.class Lcom/airbnb/android/activities/AccountVerificationActivity$1;
.super Ljava/lang/Object;
.source "AccountVerificationActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/AccountVerificationActivity;->submitPhoneCode(JLjava/lang/String;)V
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
        "Lcom/airbnb/android/requests/PutSecurityCheckRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/AccountVerificationActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/AccountVerificationActivity;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/airbnb/android/activities/AccountVerificationActivity$1;->this$0:Lcom/airbnb/android/activities/AccountVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/airbnb/android/activities/AccountVerificationActivity$1;->this$0:Lcom/airbnb/android/activities/AccountVerificationActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/AccountVerificationActivity;->showLoader(Z)V

    .line 76
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/PutSecurityCheckRequest;)V
    .registers 6
    .param p1, "response"    # Lcom/airbnb/android/requests/PutSecurityCheckRequest;

    .prologue
    const/4 v3, 0x0

    .line 80
    iget-object v1, p0, Lcom/airbnb/android/activities/AccountVerificationActivity$1;->this$0:Lcom/airbnb/android/activities/AccountVerificationActivity;

    invoke-virtual {v1, v3}, Lcom/airbnb/android/activities/AccountVerificationActivity;->showLoader(Z)V

    .line 81
    iget-object v1, p1, Lcom/airbnb/android/requests/PutSecurityCheckRequest;->securityCheck:Lcom/airbnb/android/models/SecurityCheck;

    invoke-virtual {v1}, Lcom/airbnb/android/models/SecurityCheck;->isSatisfied()Z

    move-result v0

    .line 82
    .local v0, "isSatisfied":Z
    invoke-static {v0}, Lcom/airbnb/android/analytics/SecurityCheckAnalytics;->trackCodeResponse(Z)V

    .line 83
    if-eqz v0, :cond_1d

    .line 84
    iget-object v1, p0, Lcom/airbnb/android/activities/AccountVerificationActivity$1;->this$0:Lcom/airbnb/android/activities/AccountVerificationActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/airbnb/android/activities/AccountVerificationActivity;->setResult(I)V

    .line 85
    iget-object v1, p0, Lcom/airbnb/android/activities/AccountVerificationActivity$1;->this$0:Lcom/airbnb/android/activities/AccountVerificationActivity;

    invoke-virtual {v1}, Lcom/airbnb/android/activities/AccountVerificationActivity;->finish()V

    .line 89
    :goto_1c
    return-void

    .line 87
    :cond_1d
    iget-object v1, p0, Lcom/airbnb/android/activities/AccountVerificationActivity$1;->this$0:Lcom/airbnb/android/activities/AccountVerificationActivity;

    const v2, 0x7f0e0034

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1c
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 72
    check-cast p1, Lcom/airbnb/android/requests/PutSecurityCheckRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/AccountVerificationActivity$1;->onResponse(Lcom/airbnb/android/requests/PutSecurityCheckRequest;)V

    return-void
.end method
