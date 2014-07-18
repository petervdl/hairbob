.class Lcom/airbnb/android/fragments/EmailSignInFragment$6;
.super Ljava/lang/Object;
.source "EmailSignInFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/EmailSignInFragment;->signIn()V
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
        "Lcom/airbnb/android/requests/AuthorizeServiceRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/EmailSignInFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/EmailSignInFragment;)V
    .registers 2

    .prologue
    .line 157
    iput-object p1, p0, Lcom/airbnb/android/fragments/EmailSignInFragment$6;->this$0:Lcom/airbnb/android/fragments/EmailSignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 173
    iget-object v1, p0, Lcom/airbnb/android/fragments/EmailSignInFragment$6;->this$0:Lcom/airbnb/android/fragments/EmailSignInFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/EmailSignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/airbnb/android/fragments/EmailSignInFragment$6;->this$0:Lcom/airbnb/android/fragments/EmailSignInFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/EmailSignInFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 174
    invoke-static {p1}, Lcom/airbnb/android/requests/AirbnbRequest;->parseErrorMessage(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "errorMessage":Ljava/lang/String;
    if-nez v0, :cond_1f

    .line 176
    iget-object v1, p0, Lcom/airbnb/android/fragments/EmailSignInFragment$6;->this$0:Lcom/airbnb/android/fragments/EmailSignInFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/EmailSignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 178
    :cond_1f
    iget-object v1, p0, Lcom/airbnb/android/fragments/EmailSignInFragment$6;->this$0:Lcom/airbnb/android/fragments/EmailSignInFragment;

    # getter for: Lcom/airbnb/android/fragments/EmailSignInFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;
    invoke-static {v1}, Lcom/airbnb/android/fragments/EmailSignInFragment;->access$400(Lcom/airbnb/android/fragments/EmailSignInFragment;)Lcom/airbnb/android/interfaces/SignInTransitions;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/airbnb/android/interfaces/SignInTransitions;->handleSignInError(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/airbnb/android/fragments/EmailSignInFragment$6;->this$0:Lcom/airbnb/android/fragments/EmailSignInFragment;

    const/4 v2, 0x1

    # invokes: Lcom/airbnb/android/fragments/EmailSignInFragment;->toggleButtonState(Z)V
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/EmailSignInFragment;->access$500(Lcom/airbnb/android/fragments/EmailSignInFragment;Z)V

    .line 181
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_2e
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/AuthorizeServiceRequest;)V
    .registers 8
    .param p1, "response"    # Lcom/airbnb/android/requests/AuthorizeServiceRequest;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "referrals_code"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_49

    move v0, v1

    .line 162
    .local v0, "fromReferrals":Z
    :goto_15
    iget-object v3, p0, Lcom/airbnb/android/fragments/EmailSignInFragment$6;->this$0:Lcom/airbnb/android/fragments/EmailSignInFragment;

    # getter for: Lcom/airbnb/android/fragments/EmailSignInFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;
    invoke-static {v3}, Lcom/airbnb/android/fragments/EmailSignInFragment;->access$400(Lcom/airbnb/android/fragments/EmailSignInFragment;)Lcom/airbnb/android/interfaces/SignInTransitions;

    move-result-object v3

    const-string/jumbo v4, "email"

    invoke-interface {v3, v0, v2, v2, v4}, Lcom/airbnb/android/interfaces/SignInTransitions;->getActiveAccountAfterSignIn(ZZZLjava/lang/String;)V

    .line 164
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Sign_In"

    aput-object v4, v3, v2

    const-string/jumbo v2, "click_connect_email"

    aput-object v2, v3, v1

    const/4 v2, 0x2

    const-string/jumbo v4, "click_sign_in"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string/jumbo v4, "email_signed_in"

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 165
    const-string/jumbo v2, "email_login_successful"

    invoke-static {v2}, Lcom/airbnb/android/analytics/SignUpLoginAnalytics;->trackLoginAction(Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Lcom/airbnb/android/fragments/EmailSignInFragment$6;->this$0:Lcom/airbnb/android/fragments/EmailSignInFragment;

    # invokes: Lcom/airbnb/android/fragments/EmailSignInFragment;->toggleButtonState(Z)V
    invoke-static {v2, v1}, Lcom/airbnb/android/fragments/EmailSignInFragment;->access$500(Lcom/airbnb/android/fragments/EmailSignInFragment;Z)V

    .line 169
    return-void

    .end local v0    # "fromReferrals":Z
    :cond_49
    move v0, v2

    .line 161
    goto :goto_15
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 157
    check-cast p1, Lcom/airbnb/android/requests/AuthorizeServiceRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/EmailSignInFragment$6;->onResponse(Lcom/airbnb/android/requests/AuthorizeServiceRequest;)V

    return-void
.end method
