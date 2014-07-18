.class Lcom/airbnb/android/fragments/CouponFragment$1$2;
.super Ljava/lang/Object;
.source "CouponFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/CouponFragment$1;->onClick(Landroid/view/View;)V
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
        "Lcom/airbnb/android/requests/VerifyReferralCodeRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/CouponFragment$1;

.field final synthetic val$couponCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/CouponFragment$1;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 103
    iput-object p1, p0, Lcom/airbnb/android/fragments/CouponFragment$1$2;->this$1:Lcom/airbnb/android/fragments/CouponFragment$1;

    iput-object p2, p0, Lcom/airbnb/android/fragments/CouponFragment$1$2;->val$couponCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 125
    iget-object v1, p0, Lcom/airbnb/android/fragments/CouponFragment$1$2;->this$1:Lcom/airbnb/android/fragments/CouponFragment$1;

    iget-object v1, v1, Lcom/airbnb/android/fragments/CouponFragment$1;->this$0:Lcom/airbnb/android/fragments/CouponFragment;

    const v2, 0x7f0e0603

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/CouponFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "errorToast":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/fragments/CouponFragment$1$2;->this$1:Lcom/airbnb/android/fragments/CouponFragment$1;

    iget-object v1, v1, Lcom/airbnb/android/fragments/CouponFragment$1;->this$0:Lcom/airbnb/android/fragments/CouponFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/CouponFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 127
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/VerifyReferralCodeRequest;)V
    .registers 7
    .param p1, "response"    # Lcom/airbnb/android/requests/VerifyReferralCodeRequest;

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/airbnb/android/requests/VerifyReferralCodeRequest;->getFirstName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 109
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "referrals_code"

    iget-object v4, p0, Lcom/airbnb/android/fragments/CouponFragment$1$2;->val$couponCode:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 112
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 114
    iget-object v2, p0, Lcom/airbnb/android/fragments/CouponFragment$1$2;->this$1:Lcom/airbnb/android/fragments/CouponFragment$1;

    iget-object v2, v2, Lcom/airbnb/android/fragments/CouponFragment$1;->this$0:Lcom/airbnb/android/fragments/CouponFragment;

    iget-object v3, p0, Lcom/airbnb/android/fragments/CouponFragment$1$2;->this$1:Lcom/airbnb/android/fragments/CouponFragment$1;

    iget-object v3, v3, Lcom/airbnb/android/fragments/CouponFragment$1;->this$0:Lcom/airbnb/android/fragments/CouponFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/CouponFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/activities/SignInActivity;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/CouponFragment;->startActivity(Landroid/content/Intent;)V

    .line 121
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_31
    return-void

    .line 118
    :cond_32
    iget-object v2, p0, Lcom/airbnb/android/fragments/CouponFragment$1$2;->this$1:Lcom/airbnb/android/fragments/CouponFragment$1;

    iget-object v2, v2, Lcom/airbnb/android/fragments/CouponFragment$1;->this$0:Lcom/airbnb/android/fragments/CouponFragment;

    const v3, 0x7f0e0603

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/CouponFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "failureToast":Ljava/lang/String;
    iget-object v2, p0, Lcom/airbnb/android/fragments/CouponFragment$1$2;->this$1:Lcom/airbnb/android/fragments/CouponFragment$1;

    iget-object v2, v2, Lcom/airbnb/android/fragments/CouponFragment$1;->this$0:Lcom/airbnb/android/fragments/CouponFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/CouponFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_31
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 103
    check-cast p1, Lcom/airbnb/android/requests/VerifyReferralCodeRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/CouponFragment$1$2;->onResponse(Lcom/airbnb/android/requests/VerifyReferralCodeRequest;)V

    return-void
.end method
