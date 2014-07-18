.class public Lcom/airbnb/android/activities/AppIntroFtueActivity;
.super Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;
.source "AppIntroFtueActivity.java"


# static fields
.field private static final EXTRA_FIRST_TIME:Ljava/lang/String; = "first_time"

.field private static final NUM_FTUE_PAGES:I = 0x4

.field private static final REQUEST_LOGIN_FROM_FTUE:I = 0x191


# instance fields
.field private mUseSlideAnim:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/activities/AppIntroFtueActivity;->mUseSlideAnim:Z

    return-void
.end method

.method public static intentForFirstTime(Landroid/content/Context;Z)Landroid/content/Intent;
    .registers 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "firstTime"    # Z

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/AppIntroFtueActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "first_time"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    return-object v0
.end method

.method private navigateUp()V
    .registers 4

    .prologue
    .line 81
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 82
    .local v0, "upIntent":Landroid/content/Intent;
    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 84
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 87
    const/high16 v1, 0x7f040000

    const v2, 0x7f040003

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/activities/AppIntroFtueActivity;->overridePendingTransition(II)V

    .line 91
    :goto_1d
    return-void

    .line 89
    :cond_1e
    invoke-virtual {p0}, Lcom/airbnb/android/activities/AppIntroFtueActivity;->finish()V

    goto :goto_1d
.end method


# virtual methods
.method public forStep(I)Lcom/airbnb/android/fragments/ViewPagerFtueFragment;
    .registers 8
    .param p1, "step"    # I

    .prologue
    const/4 v5, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/airbnb/android/activities/AppIntroFtueActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 108
    .local v1, "fragMgr":Landroid/support/v4/app/FragmentManager;
    packed-switch p1, :pswitch_data_48

    .line 128
    const/4 v0, 0x0

    :cond_9
    :goto_9
    return-object v0

    .line 110
    :pswitch_a
    const v2, 0x7f0e0203

    iget-boolean v3, p0, Lcom/airbnb/android/activities/AppIntroFtueActivity;->mUseSlideAnim:Z

    const v4, 0x7f0a002b

    invoke-static {v1, v2, v5, v3, v4}, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->findFragment(Landroid/support/v4/app/FragmentManager;IIZI)Lcom/airbnb/android/fragments/ViewPagerFtueFragment;

    move-result-object v0

    .line 114
    .local v0, "firstPage":Lcom/airbnb/android/fragments/ViewPagerFtueFragment;
    iget-boolean v2, p0, Lcom/airbnb/android/activities/AppIntroFtueActivity;->mUseSlideAnim:Z

    if-eqz v2, :cond_9

    .line 115
    iput-boolean v5, p0, Lcom/airbnb/android/activities/AppIntroFtueActivity;->mUseSlideAnim:Z

    goto :goto_9

    .line 119
    .end local v0    # "firstPage":Lcom/airbnb/android/fragments/ViewPagerFtueFragment;
    :pswitch_1d
    const v2, 0x7f0e0202

    const v3, 0x7f0e01f9

    const v4, 0x7f0a000c

    invoke-static {v1, v2, v3, v5, v4}, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->findFragment(Landroid/support/v4/app/FragmentManager;IIZI)Lcom/airbnb/android/fragments/ViewPagerFtueFragment;

    move-result-object v0

    goto :goto_9

    .line 122
    :pswitch_2b
    const v2, 0x7f0e01fe

    const v3, 0x7f0e01f5

    const v4, 0x7f0a0033

    invoke-static {v1, v2, v3, v5, v4}, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->findFragment(Landroid/support/v4/app/FragmentManager;IIZI)Lcom/airbnb/android/fragments/ViewPagerFtueFragment;

    move-result-object v0

    goto :goto_9

    .line 125
    :pswitch_39
    const v2, 0x7f0e0207

    const v3, 0x7f0e01fd

    const v4, 0x7f0a0026

    invoke-static {v1, v2, v3, v5, v4}, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->findFragment(Landroid/support/v4/app/FragmentManager;IIZI)Lcom/airbnb/android/fragments/ViewPagerFtueFragment;

    move-result-object v0

    goto :goto_9

    .line 108
    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_a
        :pswitch_1d
        :pswitch_2b
        :pswitch_39
    .end packed-switch
.end method

.method public getBackgroundImageResIds()[I
    .registers 2

    .prologue
    .line 138
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 4
        0x7f020008
        0x7f020009
        0x7f02000a
        0x7f02000b
    .end array-data
.end method

.method public getNumPages()I
    .registers 2

    .prologue
    .line 133
    const/4 v0, 0x4

    return v0
.end method

.method public isParallaxMode()Z
    .registers 2

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 95
    packed-switch p1, :pswitch_data_e

    .line 102
    :cond_3
    :goto_3
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 103
    return-void

    .line 97
    :pswitch_7
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 98
    invoke-virtual {p0}, Lcom/airbnb/android/activities/AppIntroFtueActivity;->finish()V

    goto :goto_3

    .line 95
    :pswitch_data_e
    .packed-switch 0x191
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/airbnb/android/activities/AppIntroFtueActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "first_time"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 39
    .local v0, "firstTime":Z
    if-eqz v0, :cond_14

    .line 40
    invoke-static {p0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markHasSeenAppIntroFtue(Landroid/content/Context;)V

    .line 43
    :cond_14
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->hasCurrentUser()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 44
    iget-object v2, p0, Lcom/airbnb/android/activities/AppIntroFtueActivity;->mStickyButton:Lcom/airbnb/android/views/FtueStickyButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/FtueStickyButton;->setVisibility(I)V

    .line 61
    :goto_25
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/AppIntroFtueActivity;->darkenFtuePics(Z)V

    .line 62
    return-void

    .line 46
    :cond_2a
    new-instance v1, Lcom/airbnb/android/activities/AppIntroFtueActivity$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/AppIntroFtueActivity$1;-><init>(Lcom/airbnb/android/activities/AppIntroFtueActivity;)V

    .line 56
    .local v1, "listener":Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/airbnb/android/activities/AppIntroFtueActivity;->mStickyButton:Lcom/airbnb/android/views/FtueStickyButton;

    const v3, 0x7f0e0708

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/FtueStickyButton;->setTitle(I)V

    .line 57
    iget-object v2, p0, Lcom/airbnb/android/activities/AppIntroFtueActivity;->mStickyButton:Lcom/airbnb/android/views/FtueStickyButton;

    invoke-virtual {v2, v1}, Lcom/airbnb/android/views/FtueStickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v2, 0x7f0e0703

    invoke-virtual {p0, v2, v1}, Lcom/airbnb/android/activities/AppIntroFtueActivity;->showSecondStickyButton(ILandroid/view/View$OnClickListener;)V

    goto :goto_25
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_13

    .line 73
    iget v0, p0, Lcom/airbnb/android/activities/AppIntroFtueActivity;->mCurrPage:I

    invoke-static {v0}, Lcom/airbnb/android/analytics/FtueAnalytics;->trackAppIntroUp(I)V

    .line 74
    invoke-direct {p0}, Lcom/airbnb/android/activities/AppIntroFtueActivity;->navigateUp()V

    .line 75
    const/4 v0, 0x1

    .line 77
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
    .line 66
    invoke-super {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->onResume()V

    .line 67
    invoke-static {}, Lcom/airbnb/android/analytics/FtueAnalytics;->trackAppIntroImpression()V

    .line 68
    return-void
.end method
