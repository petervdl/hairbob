.class Lcom/airbnb/android/activities/SignInActivity$4$1;
.super Ljava/lang/Object;
.source "SignInActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/SignInActivity$4;->onResponse(Lcom/airbnb/android/requests/GetActiveAccountRequest;)V
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
        "Lcom/airbnb/android/requests/ApplyReferralRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/activities/SignInActivity$4;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/SignInActivity$4;)V
    .registers 2

    .prologue
    .line 663
    iput-object p1, p0, Lcom/airbnb/android/activities/SignInActivity$4$1;->this$1:Lcom/airbnb/android/activities/SignInActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 673
    invoke-static {}, Lcom/airbnb/android/analytics/ReferralsAnalytics;->trackIneligibleUser()V

    .line 674
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$4$1;->this$1:Lcom/airbnb/android/activities/SignInActivity$4;

    iget-object v0, v0, Lcom/airbnb/android/activities/SignInActivity$4;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    iget-object v1, p0, Lcom/airbnb/android/activities/SignInActivity$4$1;->this$1:Lcom/airbnb/android/activities/SignInActivity$4;

    iget-object v1, v1, Lcom/airbnb/android/activities/SignInActivity$4;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    invoke-static {v1}, Lcom/airbnb/android/activities/CouponFailureActivity;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/SignInActivity;->startActivity(Landroid/content/Intent;)V

    .line 675
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/ApplyReferralRequest;)V
    .registers 3
    .param p1, "response"    # Lcom/airbnb/android/requests/ApplyReferralRequest;

    .prologue
    .line 667
    iget-object v0, p0, Lcom/airbnb/android/activities/SignInActivity$4$1;->this$1:Lcom/airbnb/android/activities/SignInActivity$4;

    iget-object v0, v0, Lcom/airbnb/android/activities/SignInActivity$4;->this$0:Lcom/airbnb/android/activities/SignInActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/SignInActivity;->showCouponCongratulations()V

    .line 668
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 663
    check-cast p1, Lcom/airbnb/android/requests/ApplyReferralRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/SignInActivity$4$1;->onResponse(Lcom/airbnb/android/requests/ApplyReferralRequest;)V

    return-void
.end method
