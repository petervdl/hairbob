.class Lcom/airbnb/android/activities/SignInActivity$6;
.super Ljava/lang/Object;
.source "SignInActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/SignInActivity;->onSignInSuccess(Lcom/airbnb/android/utils/SignInUtil$Service;)V
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
.field final synthetic this$0:Lcom/airbnb/android/activities/SignInActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/SignInActivity;)V
    .registers 2

    .prologue
    .line 771
    iput-object p1, p0, Lcom/airbnb/android/activities/SignInActivity$6;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 786
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$6;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    if-eqz v0, :cond_13

    .line 787
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$6;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    invoke-static {p1}, Lcom/airbnb/android/requests/AirbnbRequest;->parseErrorMessage(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/SignInActivity;->handleSignInError(Ljava/lang/String;)V

    .line 788
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$6;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/SignInActivity;->showProgressSpinner(Z)V

    .line 790
    :cond_13
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/AuthorizeServiceRequest;)V
    .registers 8
    .param p1, "response"    # Lcom/airbnb/android/requests/AuthorizeServiceRequest;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 775
    iget-object v1, p0, Lcom/airbnb/android/activities/SignInActivity$6;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    if-eqz v1, :cond_66

    .line 776
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v3, "Sign_In"

    aput-object v3, v1, v2

    const-string/jumbo v3, "click_connect_facebook"

    aput-object v3, v1, v0

    const-string/jumbo v3, "facebook_signed_in"

    aput-object v3, v1, v4

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 777
    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v1, "Sign_In"

    aput-object v1, v3, v2

    const-string/jumbo v1, "click_connect_facebook"

    aput-object v1, v3, v0

    iget-object v1, p0, Lcom/airbnb/android/activities/SignInActivity$6;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    # getter for: Lcom/airbnb/android/activities/SignInActivity;->facebookPermissionsSeen:Z
    invoke-static {v1}, Lcom/airbnb/android/activities/SignInActivity;->access$1200(Lcom/airbnb/android/activities/SignInActivity;)Z

    move-result v1

    if-eqz v1, :cond_67

    const-string/jumbo v1, "facebook_signed_up"

    :goto_33
    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 778
    iget-object v1, p0, Lcom/airbnb/android/activities/SignInActivity$6;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    # getter for: Lcom/airbnb/android/activities/SignInActivity;->facebookPermissionsSeen:Z
    invoke-static {v1}, Lcom/airbnb/android/activities/SignInActivity;->access$1200(Lcom/airbnb/android/activities/SignInActivity;)Z

    move-result v1

    if-eqz v1, :cond_6b

    const-string/jumbo v1, "facebook_signup_successful"

    :goto_43
    invoke-static {v1}, Lcom/airbnb/android/analytics/SignUpLoginAnalytics;->trackLandingAction(Ljava/lang/String;)V

    .line 779
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "referrals_code"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6f

    .line 780
    .local v0, "fromReferrals":Z
    :goto_58
    iget-object v1, p0, Lcom/airbnb/android/activities/SignInActivity$6;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    iget-object v3, p0, Lcom/airbnb/android/activities/SignInActivity$6;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    # getter for: Lcom/airbnb/android/activities/SignInActivity;->facebookPermissionsSeen:Z
    invoke-static {v3}, Lcom/airbnb/android/activities/SignInActivity;->access$1200(Lcom/airbnb/android/activities/SignInActivity;)Z

    move-result v3

    const-string/jumbo v4, "facebook"

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/airbnb/android/activities/SignInActivity;->getActiveAccountAfterSignIn(ZZZLjava/lang/String;)V

    .line 782
    .end local v0    # "fromReferrals":Z
    :cond_66
    return-void

    .line 777
    :cond_67
    const-string/jumbo v1, "facebook_logged_in"

    goto :goto_33

    .line 778
    :cond_6b
    const-string/jumbo v1, "facebook_login_successful"

    goto :goto_43

    :cond_6f
    move v0, v2

    .line 779
    goto :goto_58
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 771
    check-cast p1, Lcom/airbnb/android/requests/AuthorizeServiceRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/SignInActivity$6;->onResponse(Lcom/airbnb/android/requests/AuthorizeServiceRequest;)V

    return-void
.end method
