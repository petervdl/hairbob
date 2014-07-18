.class Lcom/airbnb/android/fragments/AccountSettingsFragment$9;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AccountSettingsFragment;->setupCurrencySettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V
    .registers 2

    .prologue
    .line 276
    iput-object p1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$9;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$9;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    # getter for: Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrenciesRequest:Lcom/airbnb/android/requests/CurrenciesRequest;
    invoke-static {v0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$600(Lcom/airbnb/android/fragments/AccountSettingsFragment;)Lcom/airbnb/android/requests/CurrenciesRequest;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 313
    :goto_8
    return-void

    .line 283
    :cond_9
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$9;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    new-instance v1, Lcom/airbnb/android/requests/CurrenciesRequest;

    const/4 v2, 0x0

    new-instance v3, Lcom/airbnb/android/fragments/AccountSettingsFragment$9$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/AccountSettingsFragment$9$1;-><init>(Lcom/airbnb/android/fragments/AccountSettingsFragment$9;)V

    invoke-direct {v1, v2, v3}, Lcom/airbnb/android/requests/CurrenciesRequest;-><init>(Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    # setter for: Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrenciesRequest:Lcom/airbnb/android/requests/CurrenciesRequest;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$602(Lcom/airbnb/android/fragments/AccountSettingsFragment;Lcom/airbnb/android/requests/CurrenciesRequest;)Lcom/airbnb/android/requests/CurrenciesRequest;

    .line 312
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$9;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    # getter for: Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrenciesRequest:Lcom/airbnb/android/requests/CurrenciesRequest;
    invoke-static {v0}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->access$600(Lcom/airbnb/android/fragments/AccountSettingsFragment;)Lcom/airbnb/android/requests/CurrenciesRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment$9;->this$0:Lcom/airbnb/android/fragments/AccountSettingsFragment;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/requests/CurrenciesRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    goto :goto_8
.end method
