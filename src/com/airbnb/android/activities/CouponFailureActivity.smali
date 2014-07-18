.class public Lcom/airbnb/android/activities/CouponFailureActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "CouponFailureActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method public static intentForDefault(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/CouponFailureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/CouponFailureActivity;->setContentView(I)V

    .line 17
    const v0, 0x7f0e074e

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/CouponFailureActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 19
    if-nez p1, :cond_1c

    .line 20
    invoke-static {}, Lcom/airbnb/android/fragments/CouponFailureFragment;->newInstance()Lcom/airbnb/android/fragments/CouponFailureFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/CouponFailureActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 22
    :cond_1c
    return-void
.end method
