.class Lcom/airbnb/android/activities/SignInActivity$3$1;
.super Ljava/lang/Object;
.source "SignInActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/SignInActivity$3;->onPostExecute(Ljava/lang/String;)V
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
.field final synthetic this$1:Lcom/airbnb/android/activities/SignInActivity$3;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/SignInActivity$3;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 505
    iput-object p1, p0, Lcom/airbnb/android/activities/SignInActivity$3$1;->this$1:Lcom/airbnb/android/activities/SignInActivity$3;

    iput-object p2, p0, Lcom/airbnb/android/activities/SignInActivity$3$1;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 518
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$3$1;->this$1:Lcom/airbnb/android/activities/SignInActivity$3;

    iget-object v0, v0, Lcom/airbnb/android/activities/SignInActivity$3;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    invoke-static {p1}, Lcom/airbnb/android/requests/AirbnbRequest;->parseErrorMessage(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/SignInActivity;->handleSignInError(Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$3$1;->this$1:Lcom/airbnb/android/activities/SignInActivity$3;

    iget-object v0, v0, Lcom/airbnb/android/activities/SignInActivity$3;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    iget-object v1, p0, Lcom/airbnb/android/activities/SignInActivity$3$1;->val$token:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/GoogleAuthUtil;->invalidateToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 520
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

    .line 509
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v3, "Sign_In"

    aput-object v3, v1, v2

    const-string/jumbo v3, "click_connect_google"

    aput-object v3, v1, v0

    const-string/jumbo v3, "google_signed_in"

    aput-object v3, v1, v4

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 510
    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v1, "Sign_In"

    aput-object v1, v3, v2

    const-string/jumbo v1, "click_connect_google"

    aput-object v1, v3, v0

    iget-object v1, p0, Lcom/airbnb/android/activities/SignInActivity$3$1;->this$1:Lcom/airbnb/android/activities/SignInActivity$3;

    iget-object v1, v1, Lcom/airbnb/android/activities/SignInActivity$3;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    # getter for: Lcom/airbnb/android/activities/SignInActivity;->mGooglePermissionsSeen:Z
    invoke-static {v1}, Lcom/airbnb/android/activities/SignInActivity;->access$700(Lcom/airbnb/android/activities/SignInActivity;)Z

    move-result v1

    if-eqz v1, :cond_63

    const-string/jumbo v1, "google_signed_up"

    :goto_31
    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Lcom/airbnb/android/activities/SignInActivity$3$1;->this$1:Lcom/airbnb/android/activities/SignInActivity$3;

    iget-object v1, v1, Lcom/airbnb/android/activities/SignInActivity$3;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    # getter for: Lcom/airbnb/android/activities/SignInActivity;->mGooglePermissionsSeen:Z
    invoke-static {v1}, Lcom/airbnb/android/activities/SignInActivity;->access$700(Lcom/airbnb/android/activities/SignInActivity;)Z

    move-result v1

    if-eqz v1, :cond_67

    const-string/jumbo v1, "google_signup_successful"

    :goto_43
    invoke-static {v1}, Lcom/airbnb/android/analytics/SignUpLoginAnalytics;->trackLandingAction(Ljava/lang/String;)V

    .line 512
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "referrals_code"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6b

    .line 513
    .local v0, "fromReferrals":Z
    :goto_58
    iget-object v1, p0, Lcom/airbnb/android/activities/SignInActivity$3$1;->this$1:Lcom/airbnb/android/activities/SignInActivity$3;

    iget-object v1, v1, Lcom/airbnb/android/activities/SignInActivity$3;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    const-string/jumbo v3, "google"

    invoke-virtual {v1, v0, v2, v2, v3}, Lcom/airbnb/android/activities/SignInActivity;->getActiveAccountAfterSignIn(ZZZLjava/lang/String;)V

    .line 514
    return-void

    .line 510
    .end local v0    # "fromReferrals":Z
    :cond_63
    const-string/jumbo v1, "google_logged_in"

    goto :goto_31

    .line 511
    :cond_67
    const-string/jumbo v1, "google_login_successful"

    goto :goto_43

    :cond_6b
    move v0, v2

    .line 512
    goto :goto_58
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 505
    check-cast p1, Lcom/airbnb/android/requests/AuthorizeServiceRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/SignInActivity$3$1;->onResponse(Lcom/airbnb/android/requests/AuthorizeServiceRequest;)V

    return-void
.end method
