.class public Lcom/airbnb/android/activities/AddPaymentActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "AddPaymentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/activities/AddPaymentActivity$1;,
        Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;
    }
.end annotation


# static fields
.field private static final EXTRA_PAYMENT_TYPE:Ljava/lang/String; = "payment_type"


# instance fields
.field private mOnBackListener:Lcom/airbnb/android/interfaces/OnBackListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    .line 17
    return-void
.end method

.method public static intentForCreditCard(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/AddPaymentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "payment_type"

    sget-object v2, Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;->CreditCard:Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;

    invoke-virtual {v2}, Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    return-object v0
.end method

.method private setOnBackListener(Lcom/airbnb/android/interfaces/OnBackListener;)V
    .registers 2
    .param p1, "f"    # Lcom/airbnb/android/interfaces/OnBackListener;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/airbnb/android/activities/AddPaymentActivity;->mOnBackListener:Lcom/airbnb/android/interfaces/OnBackListener;

    .line 63
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/airbnb/android/activities/AddPaymentActivity;->mOnBackListener:Lcom/airbnb/android/interfaces/OnBackListener;

    if-eqz v0, :cond_d

    .line 68
    iget-object v0, p0, Lcom/airbnb/android/activities/AddPaymentActivity;->mOnBackListener:Lcom/airbnb/android/interfaces/OnBackListener;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/OnBackListener;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 74
    :goto_c
    return-void

    .line 73
    :cond_d
    invoke-super {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->onBackPressed()V

    goto :goto_c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/airbnb/android/activities/AddPaymentActivity;->getLoaderFrame()Lcom/airbnb/android/views/LoaderFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 40
    invoke-virtual {p0}, Lcom/airbnb/android/activities/AddPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "payment_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;->valueOf(Ljava/lang/String;)Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;

    move-result-object v1

    .line 41
    .local v1, "type":Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;
    iget v2, v1, Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;->mTitleId:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/airbnb/android/activities/AddPaymentActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 43
    if-nez p1, :cond_2e

    .line 44
    sget-object v2, Lcom/airbnb/android/activities/AddPaymentActivity$1;->$SwitchMap$com$airbnb$android$activities$AddPaymentActivity$PaymentType:[I

    invoke-virtual {v1}, Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_40

    .line 59
    :cond_2e
    :goto_2e
    :pswitch_2e
    return-void

    .line 46
    :pswitch_2f
    invoke-static {}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->newInstance()Lcom/airbnb/android/fragments/AddCreditCardFragment;

    move-result-object v0

    .line 47
    .local v0, "fragment":Lcom/airbnb/android/fragments/AddCreditCardFragment;
    instance-of v2, v0, Lcom/airbnb/android/interfaces/OnBackListener;

    if-eqz v2, :cond_3a

    .line 48
    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/AddPaymentActivity;->setOnBackListener(Lcom/airbnb/android/interfaces/OnBackListener;)V

    .line 50
    :cond_3a
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/airbnb/android/activities/AddPaymentActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_2e

    .line 44
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2e
    .end packed-switch
.end method
