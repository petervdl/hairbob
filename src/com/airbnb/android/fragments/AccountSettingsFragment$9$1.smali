.class Lcom/airbnb/android/fragments/AccountSettingsFragment$9$1;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AccountSettingsFragment$9;->onClick(Landroid/view/View;)V
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
        "Lcom/airbnb/android/requests/CurrenciesRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/AccountSettingsFragment$9;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AccountSettingsFragment$9;)V
    .registers 2

    .prologue
    .line 283
    iput-object p1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$9$1;->this$1:Lcom/airbnb/android/fragments/AccountSettingsFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$9$1;->this$1:Lcom/airbnb/android/fragments/AccountSettingsFragment$9;

    iget-object v0, v0, Lcom/airbnb/android/fragments/AccountSettingsFragment$9;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    const/4 v1, 0x0

    # setter for: Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrenciesRequest:Lcom/airbnb/android/requests/CurrenciesRequest;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$602(Lcom/airbnb/android/fragments/AccountSettingsFragment;Lcom/airbnb/android/requests/CurrenciesRequest;)Lcom/airbnb/android/requests/CurrenciesRequest;

    .line 305
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 306
    # getter for: Lcom/airbnb/android/fragments/AccountSettingsFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_19
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$9$1;->this$1:Lcom/airbnb/android/fragments/AccountSettingsFragment$9;

    iget-object v0, v0, Lcom/airbnb/android/fragments/AccountSettingsFragment$9;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e013b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 309
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/CurrenciesRequest;)V
    .registers 8
    .param p1, "response"    # Lcom/airbnb/android/requests/CurrenciesRequest;

    .prologue
    .line 287
    iget-object v3, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$9$1;->this$1:Lcom/airbnb/android/fragments/AccountSettingsFragment$9;

    iget-object v3, v3, Lcom/airbnb/android/fragments/AccountSettingsFragment$9;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    const/4 v4, 0x0

    # setter for: Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrenciesRequest:Lcom/airbnb/android/requests/CurrenciesRequest;
    invoke-static {v3, v4}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$602(Lcom/airbnb/android/fragments/AccountSettingsFragment;Lcom/airbnb/android/requests/CurrenciesRequest;)Lcom/airbnb/android/requests/CurrenciesRequest;

    .line 288
    iget-object v1, p1, Lcom/airbnb/android/requests/CurrenciesRequest;->currencyList:Ljava/util/List;

    .line 289
    .local v1, "currencies":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Currency;>;"
    new-instance v0, Lcom/airbnb/android/models/Currency;

    invoke-direct {v0}, Lcom/airbnb/android/models/Currency;-><init>()V

    .line 290
    .local v0, "c":Lcom/airbnb/android/models/Currency;
    iget-object v3, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$9$1;->this$1:Lcom/airbnb/android/fragments/AccountSettingsFragment$9;

    iget-object v3, v3, Lcom/airbnb/android/fragments/AccountSettingsFragment$9;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/utils/CurrencyHelper;->getLocalCurrencyString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/airbnb/android/models/Currency;->setCurrencyCode(Ljava/lang/String;)V

    .line 291
    iget-object v3, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$9$1;->this$1:Lcom/airbnb/android/fragments/AccountSettingsFragment$9;

    iget-object v3, v3, Lcom/airbnb/android/fragments/AccountSettingsFragment$9;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4, v1}, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->newInstance(ILjava/util/List;)Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;

    move-result-object v4

    # setter for: Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrencyDialogFragment:Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;
    invoke-static {v3, v4}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$702(Lcom/airbnb/android/fragments/AccountSettingsFragment;Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;)Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;

    .line 292
    iget-object v3, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$9$1;->this$1:Lcom/airbnb/android/fragments/AccountSettingsFragment$9;

    iget-object v3, v3, Lcom/airbnb/android/fragments/AccountSettingsFragment$9;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    # getter for: Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrencyDialogFragment:Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;
    invoke-static {v3}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$700(Lcom/airbnb/android/fragments/AccountSettingsFragment;)Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$9$1;->this$1:Lcom/airbnb/android/fragments/AccountSettingsFragment$9;

    iget-object v4, v4, Lcom/airbnb/android/fragments/AccountSettingsFragment$9;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 293
    iget-object v3, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$9$1;->this$1:Lcom/airbnb/android/fragments/AccountSettingsFragment$9;

    iget-object v3, v3, Lcom/airbnb/android/fragments/AccountSettingsFragment$9;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "currency_dialog"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;

    .line 295
    .local v2, "prev":Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;
    if-eqz v2, :cond_57

    .line 296
    invoke-virtual {v2}, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->dismiss()V

    .line 299
    :cond_57
    iget-object v3, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$9$1;->this$1:Lcom/airbnb/android/fragments/AccountSettingsFragment$9;

    iget-object v3, v3, Lcom/airbnb/android/fragments/AccountSettingsFragment$9;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    # getter for: Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrencyDialogFragment:Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;
    invoke-static {v3}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$700(Lcom/airbnb/android/fragments/AccountSettingsFragment;)Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$9$1;->this$1:Lcom/airbnb/android/fragments/AccountSettingsFragment$9;

    iget-object v4, v4, Lcom/airbnb/android/fragments/AccountSettingsFragment$9;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-virtual {v4}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, "currency_dialog"

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 283
    check-cast p1, Lcom/airbnb/android/requests/CurrenciesRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/AccountSettingsFragment$9$1;->onResponse(Lcom/airbnb/android/requests/CurrenciesRequest;)V

    return-void
.end method
