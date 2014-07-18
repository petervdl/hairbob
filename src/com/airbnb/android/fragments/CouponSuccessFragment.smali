.class public Lcom/airbnb/android/fragments/CouponSuccessFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "CouponSuccessFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 21
    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/CouponSuccessFragment;
    .registers 1

    .prologue
    .line 16
    new-instance v0, Lcom/airbnb/android/fragments/CouponSuccessFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/CouponSuccessFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    const v2, 0x7f030089

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 27
    .local v1, "couponView":Landroid/view/View;
    const v2, 0x7f080191

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 29
    .local v0, "continueButton":Landroid/widget/Button;
    new-instance v2, Lcom/airbnb/android/fragments/CouponSuccessFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/CouponSuccessFragment$1;-><init>(Lcom/airbnb/android/fragments/CouponSuccessFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-object v1
.end method
