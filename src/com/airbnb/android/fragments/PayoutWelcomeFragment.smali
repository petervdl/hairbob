.class public Lcom/airbnb/android/fragments/PayoutWelcomeFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "PayoutWelcomeFragment.java"


# static fields
.field private static final REQUEST_CODE_ACCOUNT_VERIFICATION:I = 0x3e8

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/airbnb/android/fragments/PayoutWelcomeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/PayoutWelcomeFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/PayoutWelcomeFragment;
    .registers 1

    .prologue
    .line 30
    new-instance v0, Lcom/airbnb/android/fragments/PayoutWelcomeFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/PayoutWelcomeFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 81
    packed-switch p1, :pswitch_data_56

    .line 97
    :cond_4
    :goto_4
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/AirFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 98
    return-void

    .line 83
    :pswitch_8
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "success"

    if-ne p2, v4, :cond_23

    const/4 v1, 0x1

    :goto_12
    invoke-virtual {v2, v3, v1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/SecurityCheckAnalytics;->trackPayoutDismiss(Lcom/airbnb/android/utils/Strap;)V

    .line 84
    if-eq p2, v4, :cond_4

    .line 85
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutWelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_4

    .line 83
    :cond_23
    const/4 v1, 0x0

    goto :goto_12

    .line 89
    :pswitch_25
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "text/html"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string/jumbo v1, "android.intent.extra.EMAIL"

    const v2, 0x7f0e0036

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/PayoutWelcomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const v1, 0x7f0e06e2

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/PayoutWelcomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/PayoutWelcomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 94
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutWelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_4

    .line 81
    :pswitch_data_56
    .packed-switch 0x3e8
        :pswitch_8
        :pswitch_25
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    const v2, 0x7f0300d2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 37
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutWelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/activities/SolitAirActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/airbnb/android/activities/SolitAirActivity;->showLoader(Z)V

    .line 38
    new-instance v2, Lcom/airbnb/android/requests/GetSecurityCheckRequest;

    new-instance v3, Lcom/airbnb/android/fragments/PayoutWelcomeFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/PayoutWelcomeFragment$1;-><init>(Lcom/airbnb/android/fragments/PayoutWelcomeFragment;)V

    invoke-direct {v2, v3}, Lcom/airbnb/android/requests/GetSecurityCheckRequest;-><init>(Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v2, p0}, Lcom/airbnb/android/requests/GetSecurityCheckRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 60
    const v2, 0x7f080250

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 61
    .local v0, "startPayout":Landroid/widget/Button;
    new-instance v2, Lcom/airbnb/android/fragments/PayoutWelcomeFragment$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/PayoutWelcomeFragment$2;-><init>(Lcom/airbnb/android/fragments/PayoutWelcomeFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-object v1
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 73
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onDestroyView()V

    .line 76
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutWelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/SolitAirActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/SolitAirActivity;->showLoader(Z)V

    .line 77
    return-void
.end method
