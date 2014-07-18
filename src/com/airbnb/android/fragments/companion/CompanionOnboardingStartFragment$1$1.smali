.class Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment$1$1;
.super Ljava/lang/Object;
.source "CompanionOnboardingStartFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment$1;->onClickLink(I)V
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
        "Lcom/airbnb/android/requests/LocalCompanionTermsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment$1;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment$1;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment$1$1;->this$1:Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 82
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/LocalCompanionTermsRequest;)V
    .registers 6
    .param p1, "response"    # Lcom/airbnb/android/requests/LocalCompanionTermsRequest;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment$1$1;->this$1:Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment$1;

    iget-object v0, v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment$1;->this$0:Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment$1$1;->this$1:Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment$1;

    iget-object v1, v1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment$1;->this$0:Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p1, Lcom/airbnb/android/requests/LocalCompanionTermsRequest;->terms:Ljava/lang/String;

    const v3, 0x7f0e073f

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/activities/WebViewActivity;->intentForBodyAndTitle(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 73
    check-cast p1, Lcom/airbnb/android/requests/LocalCompanionTermsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment$1$1;->onResponse(Lcom/airbnb/android/requests/LocalCompanionTermsRequest;)V

    return-void
.end method
