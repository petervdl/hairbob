.class Lcom/airbnb/android/fragments/OauthFragment$1;
.super Ljava/lang/Object;
.source "OauthFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/OauthFragment;->callback(Ljava/lang/String;)V
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
        "Lcom/airbnb/android/requests/OAuthCallbackRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/OauthFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/OauthFragment;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lcom/airbnb/android/fragments/OauthFragment$1;->this$0:Lcom/airbnb/android/fragments/OauthFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOnlineStartDenied(Lcom/airbnb/android/utils/Strap;)V

    .line 119
    iget-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment$1;->this$0:Lcom/airbnb/android/fragments/OauthFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/OauthFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 120
    iget-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment$1;->this$0:Lcom/airbnb/android/fragments/OauthFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/OauthFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 121
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/OAuthCallbackRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/OAuthCallbackRequest;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackOnlineStartConfirmed(Lcom/airbnb/android/utils/Strap;)V

    .line 111
    iget-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment$1;->this$0:Lcom/airbnb/android/fragments/OauthFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/OauthFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 112
    iget-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment$1;->this$0:Lcom/airbnb/android/fragments/OauthFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/OauthFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 113
    iget-object v0, p0, Lcom/airbnb/android/fragments/OauthFragment$1;->this$0:Lcom/airbnb/android/fragments/OauthFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/OauthFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 114
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 106
    check-cast p1, Lcom/airbnb/android/requests/OAuthCallbackRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/OauthFragment$1;->onResponse(Lcom/airbnb/android/requests/OAuthCallbackRequest;)V

    return-void
.end method
