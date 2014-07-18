.class Lcom/airbnb/android/fragments/PayoutSelectFragment$2;
.super Ljava/lang/Object;
.source "PayoutSelectFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PayoutSelectFragment;->loadSupportedPayoutMethods()V
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
        "Lcom/airbnb/android/requests/PayoutMethodsForCountryRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/PayoutSelectFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PayoutSelectFragment;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment$2;->this$0:Lcom/airbnb/android/fragments/PayoutSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment$2;->this$0:Lcom/airbnb/android/fragments/PayoutSelectFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/PayoutSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 113
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment$2;->this$0:Lcom/airbnb/android/fragments/PayoutSelectFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/PayoutSelectFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 114
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/PayoutMethodsForCountryRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/PayoutMethodsForCountryRequest;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment$2;->this$0:Lcom/airbnb/android/fragments/PayoutSelectFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/PayoutSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 119
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment$2;->this$0:Lcom/airbnb/android/fragments/PayoutSelectFragment;

    # getter for: Lcom/airbnb/android/fragments/PayoutSelectFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/PayoutSelectFragment;->access$000(Lcom/airbnb/android/fragments/PayoutSelectFragment;)Lcom/airbnb/android/views/LoaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->finishLoader()V

    .line 120
    iget-object v0, p1, Lcom/airbnb/android/requests/PayoutMethodsForCountryRequest;->payoutMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_31

    .line 121
    const v0, 0x7f0e05ad

    const v1, 0x7f0e05ac

    const v2, 0x7f0e0563

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->createSingleButtonDialog(III)Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment$2;->this$0:Lcom/airbnb/android/fragments/PayoutSelectFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/PayoutSelectFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 128
    :cond_30
    :goto_30
    return-void

    .line 124
    :cond_31
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment$2;->this$0:Lcom/airbnb/android/fragments/PayoutSelectFragment;

    iget-object v1, p1, Lcom/airbnb/android/requests/PayoutMethodsForCountryRequest;->payoutMethods:Ljava/util/List;

    # invokes: Lcom/airbnb/android/fragments/PayoutSelectFragment;->setAdapter(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/PayoutSelectFragment;->access$100(Lcom/airbnb/android/fragments/PayoutSelectFragment;Ljava/util/List;)V

    .line 125
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment$2;->this$0:Lcom/airbnb/android/fragments/PayoutSelectFragment;

    iget-object v1, p1, Lcom/airbnb/android/requests/PayoutMethodsForCountryRequest;->payoutMethods:Ljava/util/List;

    # setter for: Lcom/airbnb/android/fragments/PayoutSelectFragment;->mPaymentMethodResponse:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/PayoutSelectFragment;->access$202(Lcom/airbnb/android/fragments/PayoutSelectFragment;Ljava/util/List;)Ljava/util/List;

    goto :goto_30
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 108
    check-cast p1, Lcom/airbnb/android/requests/PayoutMethodsForCountryRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/PayoutSelectFragment$2;->onResponse(Lcom/airbnb/android/requests/PayoutMethodsForCountryRequest;)V

    return-void
.end method
