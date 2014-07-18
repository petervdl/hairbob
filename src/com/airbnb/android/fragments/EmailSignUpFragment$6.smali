.class Lcom/airbnb/android/fragments/EmailSignUpFragment$6;
.super Ljava/lang/Object;
.source "EmailSignUpFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/EmailSignUpFragment;->signUp()V
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
        "Lcom/airbnb/android/requests/CreateUserRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

.field final synthetic val$referralCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/EmailSignUpFragment;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 222
    iput-object p1, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$6;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$6;->val$referralCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 7
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 241
    iget-object v2, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$6;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 242
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2e

    .line 243
    invoke-static {p1}, Lcom/airbnb/android/requests/AirbnbRequest;->parseErrorMessage(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "errorMessage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 246
    iget-object v2, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$6;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    const v3, 0x7f0e070e

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 248
    :cond_1b
    iget-object v2, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$6;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    # getter for: Lcom/airbnb/android/fragments/EmailSignUpFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;
    invoke-static {v2}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->access$300(Lcom/airbnb/android/fragments/EmailSignUpFragment;)Lcom/airbnb/android/interfaces/SignInTransitions;

    move-result-object v2

    const v3, 0x7f0e070d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v1}, Lcom/airbnb/android/interfaces/SignInTransitions;->handleError(IILjava/lang/String;)V

    .line 249
    iget-object v2, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$6;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    const/4 v3, 0x1

    # invokes: Lcom/airbnb/android/fragments/EmailSignUpFragment;->toggleButtonState(Z)V
    invoke-static {v2, v3}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->access$400(Lcom/airbnb/android/fragments/EmailSignUpFragment;Z)V

    .line 251
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_2e
    iget-object v2, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$6;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    const/4 v3, 0x0

    # setter for: Lcom/airbnb/android/fragments/EmailSignUpFragment;->mCreateUserRequest:Lcom/airbnb/android/requests/CreateUserRequest;
    invoke-static {v2, v3}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->access$502(Lcom/airbnb/android/fragments/EmailSignUpFragment;Lcom/airbnb/android/requests/CreateUserRequest;)Lcom/airbnb/android/requests/CreateUserRequest;

    .line 252
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/CreateUserRequest;)V
    .registers 9
    .param p1, "response"    # Lcom/airbnb/android/requests/CreateUserRequest;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 226
    iget-object v1, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$6;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    # getter for: Lcom/airbnb/android/fragments/EmailSignUpFragment;->mSignInTransitions:Lcom/airbnb/android/interfaces/SignInTransitions;
    invoke-static {v1}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->access$300(Lcom/airbnb/android/fragments/EmailSignUpFragment;)Lcom/airbnb/android/interfaces/SignInTransitions;

    move-result-object v5

    iget-object v1, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$6;->val$referralCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5f

    move v1, v2

    :goto_12
    const-string/jumbo v6, "email"

    invoke-interface {v5, v1, v2, v3, v6}, Lcom/airbnb/android/interfaces/SignInTransitions;->getActiveAccountAfterSignIn(ZZZLjava/lang/String;)V

    .line 227
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v5, "Sign_In"

    aput-object v5, v1, v3

    const-string/jumbo v3, "click_connect_email"

    aput-object v3, v1, v2

    const/4 v3, 0x2

    const-string/jumbo v5, "click_sign_up"

    aput-object v5, v1, v3

    const/4 v3, 0x3

    const-string/jumbo v5, "email_signed_up"

    aput-object v5, v1, v3

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 228
    const-string/jumbo v1, "email_signup_successful"

    invoke-static {v1}, Lcom/airbnb/android/analytics/SignUpLoginAnalytics;->trackSignupAction(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$6;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    # invokes: Lcom/airbnb/android/fragments/EmailSignUpFragment;->toggleButtonState(Z)V
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->access$400(Lcom/airbnb/android/fragments/EmailSignUpFragment;Z)V

    .line 232
    iget-object v1, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$6;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    # setter for: Lcom/airbnb/android/fragments/EmailSignUpFragment;->mCreateUserRequest:Lcom/airbnb/android/requests/CreateUserRequest;
    invoke-static {v1, v4}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->access$502(Lcom/airbnb/android/fragments/EmailSignUpFragment;Lcom/airbnb/android/requests/CreateUserRequest;)Lcom/airbnb/android/requests/CreateUserRequest;

    .line 235
    iget-object v1, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$6;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$6;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/LocationHelper;->getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    .line 236
    .local v0, "location":Landroid/location/Location;
    :goto_56
    new-instance v1, Lcom/airbnb/android/requests/CampaignsRequest;

    invoke-direct {v1, v0, v4}, Lcom/airbnb/android/requests/CampaignsRequest;-><init>(Landroid/location/Location;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v1}, Lcom/airbnb/android/requests/CampaignsRequest;->execute()V

    .line 237
    return-void

    .end local v0    # "location":Landroid/location/Location;
    :cond_5f
    move v1, v3

    .line 226
    goto :goto_12

    :cond_61
    move-object v0, v4

    .line 235
    goto :goto_56
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 222
    check-cast p1, Lcom/airbnb/android/requests/CreateUserRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/EmailSignUpFragment$6;->onResponse(Lcom/airbnb/android/requests/CreateUserRequest;)V

    return-void
.end method
