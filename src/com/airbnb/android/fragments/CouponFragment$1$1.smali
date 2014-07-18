.class Lcom/airbnb/android/fragments/CouponFragment$1$1;
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
        "Lcom/airbnb/android/fragments/CouponFragment$ApplyReferralRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/CouponFragment$1;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/CouponFragment$1;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/airbnb/android/fragments/CouponFragment$1$1;->this$1:Lcom/airbnb/android/fragments/CouponFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/airbnb/android/fragments/CouponFragment$1$1;->this$1:Lcom/airbnb/android/fragments/CouponFragment$1;

    iget-object v0, v0, Lcom/airbnb/android/fragments/CouponFragment$1;->this$0:Lcom/airbnb/android/fragments/CouponFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/CouponFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 90
    invoke-static {}, Lcom/airbnb/android/analytics/ReferralsAnalytics;->trackIneligibleUser()V

    .line 91
    iget-object v0, p0, Lcom/airbnb/android/fragments/CouponFragment$1$1;->this$1:Lcom/airbnb/android/fragments/CouponFragment$1;

    iget-object v0, v0, Lcom/airbnb/android/fragments/CouponFragment$1;->this$0:Lcom/airbnb/android/fragments/CouponFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/CouponFragment$1$1;->this$1:Lcom/airbnb/android/fragments/CouponFragment$1;

    iget-object v1, v1, Lcom/airbnb/android/fragments/CouponFragment$1;->this$0:Lcom/airbnb/android/fragments/CouponFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/CouponFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/activities/CouponFailureActivity;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/CouponFragment;->startActivity(Landroid/content/Intent;)V

    .line 93
    :cond_20
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/fragments/CouponFragment$ApplyReferralRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/fragments/CouponFragment$ApplyReferralRequest;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/airbnb/android/fragments/CouponFragment$1$1;->this$1:Lcom/airbnb/android/fragments/CouponFragment$1;

    iget-object v0, v0, Lcom/airbnb/android/fragments/CouponFragment$1;->this$0:Lcom/airbnb/android/fragments/CouponFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/CouponFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 76
    # getter for: Lcom/airbnb/android/fragments/CouponFragment$ApplyReferralRequest;->firstName:Ljava/lang/String;
    invoke-static {p1}, Lcom/airbnb/android/fragments/CouponFragment$ApplyReferralRequest;->access$000(Lcom/airbnb/android/fragments/CouponFragment$ApplyReferralRequest;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 77
    iget-object v0, p0, Lcom/airbnb/android/fragments/CouponFragment$1$1;->this$1:Lcom/airbnb/android/fragments/CouponFragment$1;

    iget-object v0, v0, Lcom/airbnb/android/fragments/CouponFragment$1;->this$0:Lcom/airbnb/android/fragments/CouponFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/CouponFragment$1$1;->this$1:Lcom/airbnb/android/fragments/CouponFragment$1;

    iget-object v1, v1, Lcom/airbnb/android/fragments/CouponFragment$1;->this$0:Lcom/airbnb/android/fragments/CouponFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/CouponFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/activities/CouponSuccessActivity;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/CouponFragment;->startActivity(Landroid/content/Intent;)V

    .line 78
    iget-object v0, p0, Lcom/airbnb/android/fragments/CouponFragment$1$1;->this$1:Lcom/airbnb/android/fragments/CouponFragment$1;

    iget-object v0, v0, Lcom/airbnb/android/fragments/CouponFragment$1;->this$0:Lcom/airbnb/android/fragments/CouponFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/CouponFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 85
    :cond_2e
    :goto_2e
    return-void

    .line 81
    :cond_2f
    invoke-static {}, Lcom/airbnb/android/analytics/ReferralsAnalytics;->trackIneligibleUser()V

    .line 82
    iget-object v0, p0, Lcom/airbnb/android/fragments/CouponFragment$1$1;->this$1:Lcom/airbnb/android/fragments/CouponFragment$1;

    iget-object v0, v0, Lcom/airbnb/android/fragments/CouponFragment$1;->this$0:Lcom/airbnb/android/fragments/CouponFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/CouponFragment$1$1;->this$1:Lcom/airbnb/android/fragments/CouponFragment$1;

    iget-object v1, v1, Lcom/airbnb/android/fragments/CouponFragment$1;->this$0:Lcom/airbnb/android/fragments/CouponFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/CouponFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/activities/CouponFailureActivity;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/CouponFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2e
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 71
    check-cast p1, Lcom/airbnb/android/fragments/CouponFragment$ApplyReferralRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/CouponFragment$1$1;->onResponse(Lcom/airbnb/android/fragments/CouponFragment$ApplyReferralRequest;)V

    return-void
.end method
