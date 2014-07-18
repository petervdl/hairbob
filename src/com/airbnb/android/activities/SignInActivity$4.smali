.class Lcom/airbnb/android/activities/SignInActivity$4;
.super Ljava/lang/Object;
.source "SignInActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/SignInActivity;->getActiveAccountAfterSignIn(ZZZLjava/lang/String;)V
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
        "Lcom/airbnb/android/requests/GetActiveAccountRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/SignInActivity;

.field final synthetic val$fromEmailSignup:Z

.field final synthetic val$fromFacebookSignup:Z

.field final synthetic val$fromReferral:Z

.field final synthetic val$signinMethod:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/SignInActivity;ZZZLjava/lang/String;)V
    .registers 6

    .prologue
    .line 620
    iput-object p1, p0, Lcom/airbnb/android/activities/SignInActivity$4;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    iput-boolean p2, p0, Lcom/airbnb/android/activities/SignInActivity$4;->val$fromEmailSignup:Z

    iput-boolean p3, p0, Lcom/airbnb/android/activities/SignInActivity$4;->val$fromFacebookSignup:Z

    iput-boolean p4, p0, Lcom/airbnb/android/activities/SignInActivity$4;->val$fromReferral:Z

    iput-object p5, p0, Lcom/airbnb/android/activities/SignInActivity$4;->val$signinMethod:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 624
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$4;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/SignInActivity;->showProgressSpinner(Z)V

    .line 626
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$4;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    # getter for: Lcom/airbnb/android/activities/SignInActivity;->mIsResumed:Z
    invoke-static {v0}, Lcom/airbnb/android/activities/SignInActivity;->access$900(Lcom/airbnb/android/activities/SignInActivity;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 627
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$4;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/SignInActivity;->handleSignInError(Ljava/lang/String;)V

    .line 629
    :cond_14
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/GetActiveAccountRequest;)V
    .registers 12
    .param p1, "response"    # Lcom/airbnb/android/requests/GetActiveAccountRequest;

    .prologue
    .line 633
    iget-object v7, p0, Lcom/airbnb/android/activities/SignInActivity$4;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/airbnb/android/activities/SignInActivity;->showProgressSpinner(Z)V

    .line 635
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "com.airbnb.android.intent.action.USER_SIGNED_IN"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 636
    .local v2, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/airbnb/android/activities/SignInActivity$4;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    invoke-static {v7}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 638
    sget-object v7, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v8, Lcom/airbnb/android/events/LoginStatusEvent;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Lcom/airbnb/android/events/LoginStatusEvent;-><init>(Z)V

    invoke-virtual {v7, v8}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 640
    iget-object v7, p0, Lcom/airbnb/android/activities/SignInActivity$4;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/airbnb/android/activities/SignInActivity;->setResult(I)V

    .line 641
    iget-object v7, p0, Lcom/airbnb/android/activities/SignInActivity$4;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    invoke-virtual {v7}, Lcom/airbnb/android/activities/SignInActivity;->finish()V

    .line 645
    iget-object v7, p0, Lcom/airbnb/android/activities/SignInActivity$4;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    # getter for: Lcom/airbnb/android/activities/SignInActivity;->mGoingToBookItAfterSignIn:Z
    invoke-static {v7}, Lcom/airbnb/android/activities/SignInActivity;->access$1000(Lcom/airbnb/android/activities/SignInActivity;)Z

    move-result v7

    if-nez v7, :cond_58

    iget-object v7, p0, Lcom/airbnb/android/activities/SignInActivity$4;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    iget-boolean v8, p0, Lcom/airbnb/android/activities/SignInActivity$4;->val$fromEmailSignup:Z

    # invokes: Lcom/airbnb/android/activities/SignInActivity;->shouldShowAddProfilePhoto(Lcom/airbnb/android/requests/GetActiveAccountRequest;Z)Z
    invoke-static {v7, p1, v8}, Lcom/airbnb/android/activities/SignInActivity;->access$1100(Lcom/airbnb/android/activities/SignInActivity;Lcom/airbnb/android/requests/GetActiveAccountRequest;Z)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 648
    iget-boolean v7, p0, Lcom/airbnb/android/activities/SignInActivity$4;->val$fromEmailSignup:Z

    if-nez v7, :cond_47

    iget-boolean v7, p0, Lcom/airbnb/android/activities/SignInActivity$4;->val$fromFacebookSignup:Z

    if-eqz v7, :cond_83

    :cond_47
    const-string/jumbo v0, "signup"

    .line 649
    .local v0, "action":Ljava/lang/String;
    :goto_4a
    invoke-static {v0}, Lcom/airbnb/android/analytics/GuestOnboardingAnalytics;->trackShowAddProfilePhotoFlow(Ljava/lang/String;)V

    .line 650
    iget-object v7, p0, Lcom/airbnb/android/activities/SignInActivity$4;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    iget-object v8, p0, Lcom/airbnb/android/activities/SignInActivity$4;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    invoke-static {v8}, Lcom/airbnb/android/activities/AddProfilePhotoActivity;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/android/activities/SignInActivity;->startActivity(Landroid/content/Intent;)V

    .line 653
    .end local v0    # "action":Ljava/lang/String;
    :cond_58
    iget-boolean v7, p0, Lcom/airbnb/android/activities/SignInActivity$4;->val$fromReferral:Z

    if-eqz v7, :cond_75

    .line 654
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "signup:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/airbnb/android/activities/SignInActivity$4;->val$signinMethod:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/airbnb/android/analytics/ReferralsAnalytics;->trackReferralSetUser(Ljava/lang/String;)V

    .line 657
    :cond_75
    iget-boolean v7, p0, Lcom/airbnb/android/activities/SignInActivity$4;->val$fromReferral:Z

    if-eqz v7, :cond_87

    iget-boolean v7, p0, Lcom/airbnb/android/activities/SignInActivity$4;->val$fromEmailSignup:Z

    if-eqz v7, :cond_87

    .line 658
    iget-object v7, p0, Lcom/airbnb/android/activities/SignInActivity$4;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    invoke-virtual {v7}, Lcom/airbnb/android/activities/SignInActivity;->showCouponCongratulations()V

    .line 679
    :cond_82
    :goto_82
    return-void

    .line 648
    :cond_83
    const-string/jumbo v0, "login"

    goto :goto_4a

    .line 659
    :cond_87
    iget-boolean v7, p0, Lcom/airbnb/android/activities/SignInActivity$4;->val$fromReferral:Z

    if-eqz v7, :cond_82

    .line 660
    iget-object v7, p0, Lcom/airbnb/android/activities/SignInActivity$4;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    invoke-static {v7}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v5

    .line 661
    .local v5, "userId":J
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 662
    .local v4, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v7, "referrals_code"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 663
    .local v3, "referralCode":Ljava/lang/String;
    new-instance v1, Lcom/airbnb/android/requests/ApplyReferralRequest;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/airbnb/android/activities/SignInActivity$4$1;

    invoke-direct {v8, p0}, Lcom/airbnb/android/activities/SignInActivity$4$1;-><init>(Lcom/airbnb/android/activities/SignInActivity$4;)V

    invoke-direct {v1, v7, v3, v8}, Lcom/airbnb/android/requests/ApplyReferralRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 677
    .local v1, "codeRequest":Lcom/airbnb/android/requests/ApplyReferralRequest;
    invoke-virtual {v1}, Lcom/airbnb/android/requests/ApplyReferralRequest;->execute()V

    goto :goto_82
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 620
    check-cast p1, Lcom/airbnb/android/requests/GetActiveAccountRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/SignInActivity$4;->onResponse(Lcom/airbnb/android/requests/GetActiveAccountRequest;)V

    return-void
.end method
