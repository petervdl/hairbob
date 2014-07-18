.class Lcom/airbnb/android/fragments/PayoutTrustFragment$6;
.super Ljava/lang/Object;
.source "PayoutTrustFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PayoutTrustFragment;->loadSupportedCountriesForDialog()V
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
        "Lcom/airbnb/android/requests/PayoutCountriesRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PayoutTrustFragment;)V
    .registers 2

    .prologue
    .line 198
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$6;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$6;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 209
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/PayoutCountriesRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/PayoutCountriesRequest;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$6;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    invoke-virtual {p1}, Lcom/airbnb/android/requests/PayoutCountriesRequest;->getSupportedCountries()Ljava/util/ArrayList;

    move-result-object v1

    # setter for: Lcom/airbnb/android/fragments/PayoutTrustFragment;->mSupportedCountries:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->access$502(Lcom/airbnb/android/fragments/PayoutTrustFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 203
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$6;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$6;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    # getter for: Lcom/airbnb/android/fragments/PayoutTrustFragment;->mSupportedCountries:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->access$500(Lcom/airbnb/android/fragments/PayoutTrustFragment;)Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lcom/airbnb/android/fragments/PayoutTrustFragment;->showSelectCountryDialog(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->access$700(Lcom/airbnb/android/fragments/PayoutTrustFragment;Ljava/util/ArrayList;)V

    .line 204
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 198
    check-cast p1, Lcom/airbnb/android/requests/PayoutCountriesRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/PayoutTrustFragment$6;->onResponse(Lcom/airbnb/android/requests/PayoutCountriesRequest;)V

    return-void
.end method
