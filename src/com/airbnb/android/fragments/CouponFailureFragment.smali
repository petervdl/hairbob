.class public Lcom/airbnb/android/fragments/CouponFailureFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "CouponFailureFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 21
    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/CouponFailureFragment;
    .registers 1

    .prologue
    .line 16
    new-instance v0, Lcom/airbnb/android/fragments/CouponFailureFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/CouponFailureFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    const v3, 0x7f030088

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 27
    .local v1, "couponView":Landroid/view/View;
    const v3, 0x7f080191

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 29
    .local v0, "continueButton":Landroid/widget/Button;
    new-instance v2, Lcom/airbnb/android/fragments/CouponFailureFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/CouponFailureFragment$1;-><init>(Lcom/airbnb/android/fragments/CouponFailureFragment;)V

    .line 39
    .local v2, "onClickListener":Landroid/view/View$OnClickListener;
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-object v1
.end method
