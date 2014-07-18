.class Lcom/airbnb/android/activities/ManageListingActivity$2;
.super Ljava/lang/Object;
.source "ManageListingActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/ManageListingActivity;->handleCurrenciesClick()V
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
.field final synthetic this$0:Lcom/airbnb/android/activities/ManageListingActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/ManageListingActivity;)V
    .registers 2

    .prologue
    .line 392
    iput-object p1, p0, Lcom/airbnb/android/activities/ManageListingActivity$2;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 415
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 416
    sget-object v0, Lcom/airbnb/android/activities/ManageListingActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_f
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity$2;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    const v1, 0x7f0e013b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 420
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/CurrenciesRequest;)V
    .registers 9
    .param p1, "response"    # Lcom/airbnb/android/requests/CurrenciesRequest;

    .prologue
    .line 396
    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v6, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v6, v6, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v6, v5, v4

    const/4 v4, 0x1

    const-string/jumbo v6, "impressions"

    aput-object v6, v5, v4

    const/4 v6, 0x2

    iget-object v4, p0, Lcom/airbnb/android/activities/ManageListingActivity$2;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    # getter for: Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v4}, Lcom/airbnb/android/activities/ManageListingActivity;->access$000(Lcom/airbnb/android/activities/ManageListingActivity;)Lcom/airbnb/android/models/Listing;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v4

    if-eqz v4, :cond_68

    const-string/jumbo v4, "ml_post_list"

    :goto_20
    aput-object v4, v5, v6

    const/4 v4, 0x3

    const-string/jumbo v6, "currency"

    aput-object v6, v5, v4

    invoke-static {v5}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 398
    iget-object v1, p1, Lcom/airbnb/android/requests/CurrenciesRequest;->currencyList:Ljava/util/List;

    .line 399
    .local v1, "currencies":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Currency;>;"
    new-instance v0, Lcom/airbnb/android/models/Currency;

    invoke-direct {v0}, Lcom/airbnb/android/models/Currency;-><init>()V

    .line 400
    .local v0, "c":Lcom/airbnb/android/models/Currency;
    iget-object v4, p0, Lcom/airbnb/android/activities/ManageListingActivity$2;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    # getter for: Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v4}, Lcom/airbnb/android/activities/ManageListingActivity;->access$000(Lcom/airbnb/android/activities/ManageListingActivity;)Lcom/airbnb/android/models/Listing;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getListingNativeCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/airbnb/android/models/Currency;->setCurrencyCode(Ljava/lang/String;)V

    .line 402
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4, v1}, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->newInstance(ILjava/util/List;)Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;

    move-result-object v2

    .line 404
    .local v2, "fragment":Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;
    iget-object v4, p0, Lcom/airbnb/android/activities/ManageListingActivity$2;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    invoke-virtual {v4}, Lcom/airbnb/android/activities/ManageListingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, "currencies_dialog"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;

    .line 406
    .local v3, "prev":Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;
    if-eqz v3, :cond_5b

    .line 407
    invoke-virtual {v3}, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->dismiss()V

    .line 410
    :cond_5b
    iget-object v4, p0, Lcom/airbnb/android/activities/ManageListingActivity$2;->this$0:Lcom/airbnb/android/activities/ManageListingActivity;

    invoke-virtual {v4}, Lcom/airbnb/android/activities/ManageListingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, "currencies_dialog"

    invoke-virtual {v2, v4, v5}, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 411
    return-void

    .line 396
    .end local v0    # "c":Lcom/airbnb/android/models/Currency;
    .end local v1    # "currencies":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Currency;>;"
    .end local v2    # "fragment":Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;
    .end local v3    # "prev":Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;
    :cond_68
    const-string/jumbo v4, "ml_pre_list"

    goto :goto_20
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 392
    check-cast p1, Lcom/airbnb/android/requests/CurrenciesRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/ManageListingActivity$2;->onResponse(Lcom/airbnb/android/requests/CurrenciesRequest;)V

    return-void
.end method
