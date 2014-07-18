.class public Lcom/airbnb/android/fragments/CouponFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "CouponFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/CouponFragment$ApplyReferralRequest;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 16
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    .line 39
    const v8, 0x7f030087

    invoke-virtual {p1, v8, p2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 41
    .local v3, "couponView":Landroid/view/View;
    const v8, 0x7f080191

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 42
    .local v1, "couponButton":Landroid/widget/Button;
    const v8, 0x7f080193

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 43
    .local v5, "skipLink":Landroid/widget/TextView;
    const v8, 0x7f080190

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 46
    .local v2, "couponField":Landroid/widget/EditText;
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v8

    invoke-virtual {v8}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    const-string/jumbo v9, "referrals_code"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "referralsCode":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3c

    .line 48
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_3c
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CouponFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v8

    invoke-virtual {v8}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v7

    .line 53
    .local v7, "user":Lcom/airbnb/android/models/User;
    new-instance v0, Lcom/airbnb/android/fragments/CouponFragment$1;

    invoke-direct {v0, p0, v2, v7}, Lcom/airbnb/android/fragments/CouponFragment$1;-><init>(Lcom/airbnb/android/fragments/CouponFragment;Landroid/widget/EditText;Lcom/airbnb/android/models/User;)V

    .line 136
    .local v0, "claimOnClickListener":Landroid/view/View$OnClickListener;
    new-instance v6, Lcom/airbnb/android/fragments/CouponFragment$2;

    invoke-direct {v6, p0}, Lcom/airbnb/android/fragments/CouponFragment$2;-><init>(Lcom/airbnb/android/fragments/CouponFragment;)V

    .line 145
    .local v6, "skipOnClickListener":Landroid/view/View$OnClickListener;
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    if-nez v7, :cond_5d

    .line 150
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    :cond_5d
    return-object v3
.end method
