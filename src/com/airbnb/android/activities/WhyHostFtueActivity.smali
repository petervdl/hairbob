.class public Lcom/airbnb/android/activities/WhyHostFtueActivity;
.super Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;
.source "WhyHostFtueActivity.java"


# static fields
.field private static final NUM_FTUE_PAGES:I = 0x3


# instance fields
.field private mUseSlideAnim:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/activities/WhyHostFtueActivity;->mUseSlideAnim:Z

    return-void
.end method

.method public static intentForDefault(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/WhyHostFtueActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method private navigateUp()V
    .registers 4

    .prologue
    .line 66
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 67
    .local v0, "upIntent":Landroid/content/Intent;
    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 69
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 72
    const/high16 v1, 0x7f040000

    const v2, 0x7f040003

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/activities/WhyHostFtueActivity;->overridePendingTransition(II)V

    .line 76
    :goto_1d
    return-void

    .line 74
    :cond_1e
    invoke-virtual {p0}, Lcom/airbnb/android/activities/WhyHostFtueActivity;->finish()V

    goto :goto_1d
.end method


# virtual methods
.method public forStep(I)Lcom/airbnb/android/fragments/ViewPagerFtueFragment;
    .registers 9
    .param p1, "step"    # I

    .prologue
    const/4 v6, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/airbnb/android/activities/WhyHostFtueActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 81
    .local v1, "fragMgr":Landroid/support/v4/app/FragmentManager;
    packed-switch p1, :pswitch_data_3c

    .line 98
    const/4 v0, 0x0

    :cond_9
    :goto_9
    return-object v0

    .line 83
    :pswitch_a
    const v2, 0x7f0e0206

    const v3, 0x7f0e01fc

    iget-boolean v4, p0, Lcom/airbnb/android/activities/WhyHostFtueActivity;->mUseSlideAnim:Z

    const v5, 0x7f0a002b

    invoke-static {v1, v2, v3, v4, v5}, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->findFragment(Landroid/support/v4/app/FragmentManager;IIZI)Lcom/airbnb/android/fragments/ViewPagerFtueFragment;

    move-result-object v0

    .line 87
    .local v0, "firstPage":Lcom/airbnb/android/fragments/ViewPagerFtueFragment;
    iget-boolean v2, p0, Lcom/airbnb/android/activities/WhyHostFtueActivity;->mUseSlideAnim:Z

    if-eqz v2, :cond_9

    .line 88
    iput-boolean v6, p0, Lcom/airbnb/android/activities/WhyHostFtueActivity;->mUseSlideAnim:Z

    goto :goto_9

    .line 92
    .end local v0    # "firstPage":Lcom/airbnb/android/fragments/ViewPagerFtueFragment;
    :pswitch_20
    const v2, 0x7f0e0201

    const v3, 0x7f0e01f8

    const v4, 0x7f0a000c

    invoke-static {v1, v2, v3, v6, v4}, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->findFragment(Landroid/support/v4/app/FragmentManager;IIZI)Lcom/airbnb/android/fragments/ViewPagerFtueFragment;

    move-result-object v0

    goto :goto_9

    .line 95
    :pswitch_2e
    const v2, 0x7f0e01ff

    const v3, 0x7f0e01f6

    const v4, 0x7f0a0033

    invoke-static {v1, v2, v3, v6, v4}, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->findFragment(Landroid/support/v4/app/FragmentManager;IIZI)Lcom/airbnb/android/fragments/ViewPagerFtueFragment;

    move-result-object v0

    goto :goto_9

    .line 81
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_a
        :pswitch_20
        :pswitch_2e
    .end packed-switch
.end method

.method public getBackgroundImageResIds()[I
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 4
        0x7f020234
        0x7f020235
        0x7f020236
    .end array-data
.end method

.method public getNumPages()I
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x3

    return v0
.end method

.method public isParallaxMode()Z
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    iget-object v0, p0, Lcom/airbnb/android/activities/WhyHostFtueActivity;->mStickyButton:Lcom/airbnb/android/views/FtueStickyButton;

    const v1, 0x7f0e01f0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/FtueStickyButton;->setTitle(I)V

    .line 34
    iget-object v0, p0, Lcom/airbnb/android/activities/WhyHostFtueActivity;->mStickyButton:Lcom/airbnb/android/views/FtueStickyButton;

    new-instance v1, Lcom/airbnb/android/activities/WhyHostFtueActivity$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/WhyHostFtueActivity$1;-><init>(Lcom/airbnb/android/activities/WhyHostFtueActivity;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/FtueStickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/WhyHostFtueActivity;->darkenFtuePics(Z)V

    .line 47
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 57
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_13

    .line 58
    iget v0, p0, Lcom/airbnb/android/activities/WhyHostFtueActivity;->mCurrPage:I

    invoke-static {v0}, Lcom/airbnb/android/analytics/FtueAnalytics;->trackWhyHostUp(I)V

    .line 59
    invoke-direct {p0}, Lcom/airbnb/android/activities/WhyHostFtueActivity;->navigateUp()V

    .line 60
    const/4 v0, 0x1

    .line 62
    :goto_12
    return v0

    :cond_13
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_12
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->onResume()V

    .line 52
    invoke-static {}, Lcom/airbnb/android/analytics/FtueAnalytics;->trackWhyHostImpression()V

    .line 53
    return-void
.end method
