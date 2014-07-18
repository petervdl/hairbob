.class public Lcom/airbnb/android/activities/PayoutActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "PayoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/activities/PayoutActivity$1;,
        Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;
    }
.end annotation


# static fields
.field public static final INVALID_RES_ID:I = -0x1

.field private static final SAVED_COUNTRY_CODE:Ljava/lang/String; = "country_code"

.field private static final SAVED_TRUST_PARAMS:Ljava/lang/String; = "trust_params"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCountryCode:Ljava/lang/String;

.field private mSupportedCurrencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTrustParameters:Lcom/airbnb/android/utils/Strap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/airbnb/android/activities/PayoutActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/activities/PayoutActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    .line 40
    return-void
.end method

.method public static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/PayoutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public clearBackStackAndGoToList()V
    .registers 5

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/airbnb/android/activities/PayoutActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 112
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 113
    invoke-virtual {p0}, Lcom/airbnb/android/activities/PayoutActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080025

    invoke-static {}, Lcom/airbnb/android/fragments/PayoutListFragment;->newInstance()Lcom/airbnb/android/fragments/PayoutListFragment;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 115
    return-void
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/airbnb/android/activities/PayoutActivity;->mCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/airbnb/android/activities/PayoutActivity;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 165
    iget-object v0, p0, Lcom/airbnb/android/activities/PayoutActivity;->mCountryCode:Ljava/lang/String;

    return-object v0

    .line 167
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "country code invalid, was it set correctly? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/activities/PayoutActivity;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getObjectForPaymentMethod(Ljava/lang/String;)Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;
    .registers 5
    .param p1, "paymentMethod"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/PayoutActivity;->isPaymentSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 123
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "check isPaymentSupported() before calling startAddPayment"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_f
    invoke-static {p1}, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;->get(Ljava/lang/String;)Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;

    move-result-object v0

    .line 126
    .local v0, "selectedMethod":Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;
    if-eqz v0, :cond_16

    .line 127
    return-object v0

    .line 129
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "payment method not found, but you should never get to this line anyways"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSupportedCurrencies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/airbnb/android/activities/PayoutActivity;->mSupportedCurrencies:Ljava/util/List;

    return-object v0
.end method

.method public getTrustParameters()Lcom/airbnb/android/utils/Strap;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/airbnb/android/activities/PayoutActivity;->mTrustParameters:Lcom/airbnb/android/utils/Strap;

    return-object v0
.end method

.method public isPaymentSupported(Ljava/lang/String;)Z
    .registers 3
    .param p1, "paymentMethod"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-static {p1}, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v2, 0x7f0e05b2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/airbnb/android/activities/PayoutActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 83
    if-nez p1, :cond_35

    .line 84
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->hasPayoutInfo()Z

    move-result v1

    .line 85
    .local v1, "hasPaymentOption":Z
    const-string/jumbo v2, "payments"

    const-string/jumbo v3, "add_payout_disabled"

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 86
    .local v0, "addPayoutDisabled":Z
    if-nez v0, :cond_28

    if-eqz v1, :cond_30

    :cond_28
    invoke-static {}, Lcom/airbnb/android/fragments/PayoutListFragment;->newInstance()Lcom/airbnb/android/fragments/PayoutListFragment;

    move-result-object v2

    :goto_2c
    invoke-virtual {p0, v2, v4}, Lcom/airbnb/android/activities/PayoutActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 93
    .end local v0    # "addPayoutDisabled":Z
    .end local v1    # "hasPaymentOption":Z
    :goto_2f
    return-void

    .line 86
    .restart local v0    # "addPayoutDisabled":Z
    .restart local v1    # "hasPaymentOption":Z
    :cond_30
    invoke-static {}, Lcom/airbnb/android/fragments/PayoutWelcomeFragment;->newInstance()Lcom/airbnb/android/fragments/PayoutWelcomeFragment;

    move-result-object v2

    goto :goto_2c

    .line 90
    .end local v0    # "addPayoutDisabled":Z
    .end local v1    # "hasPaymentOption":Z
    :cond_35
    const-string/jumbo v2, "country_code"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/activities/PayoutActivity;->mCountryCode:Ljava/lang/String;

    .line 91
    const-string/jumbo v2, "trust_params"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/utils/Strap;

    iput-object v2, p0, Lcom/airbnb/android/activities/PayoutActivity;->mTrustParameters:Lcom/airbnb/android/utils/Strap;

    goto :goto_2f
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 99
    const-string/jumbo v0, "country_code"

    iget-object v1, p0, Lcom/airbnb/android/activities/PayoutActivity;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v0, "trust_params"

    iget-object v1, p0, Lcom/airbnb/android/activities/PayoutActivity;->mTrustParameters:Lcom/airbnb/android/utils/Strap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 101
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/airbnb/android/activities/PayoutActivity;->mCountryCode:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setTrustParameters(Lcom/airbnb/android/utils/Strap;)V
    .registers 2
    .param p1, "mTrustParameters"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/airbnb/android/activities/PayoutActivity;->mTrustParameters:Lcom/airbnb/android/utils/Strap;

    .line 181
    return-void
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 104
    const/4 v0, 0x1

    invoke-super {p0, p1, v0}, Lcom/airbnb/android/activities/SolitAirActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 105
    return-void
.end method

.method public startAddPayment(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "paymentMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p2, "supportedCurrencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/PayoutActivity;->isPaymentSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 135
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "check isPaymentSupported() before calling startAddPayment"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_f
    iput-object p2, p0, Lcom/airbnb/android/activities/PayoutActivity;->mSupportedCurrencies:Ljava/util/List;

    .line 140
    invoke-static {p1}, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;->get(Ljava/lang/String;)Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;

    move-result-object v0

    .line 141
    .local v0, "selectedMethod":Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;
    if-nez v0, :cond_20

    .line 142
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "since we checked that payment is supported, then it should match one of the methods"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_20
    sget-object v1, Lcom/airbnb/android/activities/PayoutActivity$1;->$SwitchMap$com$airbnb$android$activities$PayoutActivity$PaymentMethod:[I

    invoke-virtual {v0}, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_44

    .line 157
    :goto_2b
    return-void

    .line 147
    :pswitch_2c
    invoke-static {}, Lcom/airbnb/android/fragments/PayoutAchPreFragment;->newInstance()Lcom/airbnb/android/fragments/PayoutAchPreFragment;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/PayoutActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_2b

    .line 150
    :pswitch_34
    invoke-static {}, Lcom/airbnb/android/fragments/PayoutEnvoyFragment;->newInstance()Lcom/airbnb/android/fragments/PayoutEnvoyFragment;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/PayoutActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_2b

    .line 153
    :pswitch_3c
    invoke-static {}, Lcom/airbnb/android/fragments/PayoutPaypalFragment;->newInstance()Lcom/airbnb/android/fragments/PayoutPaypalFragment;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/PayoutActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_2b

    .line 145
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_34
        :pswitch_3c
    .end packed-switch
.end method
