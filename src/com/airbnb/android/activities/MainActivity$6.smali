.class Lcom/airbnb/android/activities/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/MainActivity;->setupCurrencies()V
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
.field final synthetic this$0:Lcom/airbnb/android/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/MainActivity;)V
    .registers 2

    .prologue
    .line 819
    iput-object p1, p0, Lcom/airbnb/android/activities/MainActivity$6;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 855
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 856
    sget-object v0, Lcom/airbnb/android/activities/MainActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_f
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity$6;->this$0:Lcom/airbnb/android/activities/MainActivity;

    const v1, 0x7f0e013b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 860
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/CurrenciesRequest;)V
    .registers 10
    .param p1, "response"    # Lcom/airbnb/android/requests/CurrenciesRequest;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 824
    iget-object v1, p1, Lcom/airbnb/android/requests/CurrenciesRequest;->currencyList:Ljava/util/List;

    .line 825
    .local v1, "currencies":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Currency;>;"
    new-instance v0, Lcom/airbnb/android/models/Currency;

    invoke-direct {v0}, Lcom/airbnb/android/models/Currency;-><init>()V

    .line 826
    .local v0, "c":Lcom/airbnb/android/models/Currency;
    iget-object v5, p0, Lcom/airbnb/android/activities/MainActivity$6;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-static {v5}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/utils/CurrencyHelper;->getLocalCurrencyString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/airbnb/android/models/Currency;->setCurrencyCode(Ljava/lang/String;)V

    .line 827
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 828
    iget-object v5, p0, Lcom/airbnb/android/activities/MainActivity$6;->this$0:Lcom/airbnb/android/activities/MainActivity;

    const-string/jumbo v6, "airbnb_prefs"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/airbnb/android/activities/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "currency"

    invoke-virtual {v0}, Lcom/airbnb/android/models/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 830
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 851
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_36
    :goto_36
    return-void

    .line 832
    :cond_37
    iget-object v5, p0, Lcom/airbnb/android/activities/MainActivity$6;->this$0:Lcom/airbnb/android/activities/MainActivity;

    # getter for: Lcom/airbnb/android/activities/MainActivity;->mIsResumed:Z
    invoke-static {v5}, Lcom/airbnb/android/activities/MainActivity;->access$500(Lcom/airbnb/android/activities/MainActivity;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 833
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5, v1}, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->newInstance(ILjava/util/List;)Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;

    move-result-object v3

    .line 834
    .local v3, "fragment":Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;
    new-instance v5, Lcom/airbnb/android/activities/MainActivity$6$1;

    invoke-direct {v5, p0}, Lcom/airbnb/android/activities/MainActivity$6$1;-><init>(Lcom/airbnb/android/activities/MainActivity$6;)V

    invoke-virtual {v3, v5}, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->setOnCurrencySelectedDialogListener(Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$OnCurrencySelectedListener;)V

    .line 842
    iget-object v5, p0, Lcom/airbnb/android/activities/MainActivity$6;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-virtual {v5}, Lcom/airbnb/android/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string/jumbo v6, "currency_dialog"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;

    .line 844
    .local v4, "prev":Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;
    if-eqz v4, :cond_63

    .line 845
    invoke-virtual {v4}, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->dismiss()V

    .line 848
    :cond_63
    iget-object v5, p0, Lcom/airbnb/android/activities/MainActivity$6;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-virtual {v5}, Lcom/airbnb/android/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string/jumbo v6, "currency_dialog"

    invoke-virtual {v3, v5, v6}, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_36
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 819
    check-cast p1, Lcom/airbnb/android/requests/CurrenciesRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/MainActivity$6;->onResponse(Lcom/airbnb/android/requests/CurrenciesRequest;)V

    return-void
.end method
