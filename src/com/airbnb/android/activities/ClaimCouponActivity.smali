.class public Lcom/airbnb/android/activities/ClaimCouponActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "ClaimCouponActivity.java"


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
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/ClaimCouponActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/ClaimCouponActivity;->setContentView(I)V

    .line 17
    const v0, 0x7f0e0609

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/ClaimCouponActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 19
    if-nez p1, :cond_1c

    .line 20
    new-instance v0, Lcom/airbnb/android/fragments/CouponFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/CouponFragment;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/airbnb/android/activities/ClaimCouponActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 22
    :cond_1c
    return-void
.end method
