.class public Lcom/airbnb/android/activities/AirActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AirActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field private mShakeObserver:Lcom/airbnb/android/utils/ShakeFeedbackHelper;

.field private mWideMode:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private enableActionBarHomeAsUpAndShowTitle()Landroid/app/ActionBar;
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 136
    invoke-virtual {p0}, Lcom/airbnb/android/activities/AirActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 137
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 138
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 139
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 140
    return-object v0
.end method


# virtual methods
.method public dismantleFakeActionBar()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 153
    invoke-virtual {p0}, Lcom/airbnb/android/activities/AirActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 154
    .local v0, "actionbar":Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 155
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 156
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 157
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 158
    return-void
.end method

.method public finish()V
    .registers 3

    .prologue
    .line 78
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 79
    const/high16 v0, 0x7f040000

    const v1, 0x7f040003

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/AirActivity;->overridePendingTransition(II)V

    .line 80
    return-void
.end method

.method protected final isWideMode()Z
    .registers 2

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/airbnb/android/activities/AirActivity;->mWideMode:Z

    return v0
.end method

.method public navigateUpTo(Landroid/content/Intent;)Z
    .registers 5
    .param p1, "upIntent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->navigateUpTo(Landroid/content/Intent;)Z

    move-result v0

    .line 87
    .local v0, "navigateUpTo":Z
    const/high16 v1, 0x7f040000

    const v2, 0x7f040003

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/activities/AirActivity;->overridePendingTransition(II)V

    .line 88
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    const-string/jumbo v0, "AirActivity"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Lcom/airbnb/android/activities/AirActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "AirActivity#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_f} :catch_2c

    .line 34
    :goto_f
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/airbnb/android/activities/AirActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/activities/AirActivity;->mWideMode:Z

    .line 36
    const v0, 0x7f040002

    const v1, 0x7f040001

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/AirActivity;->overridePendingTransition(II)V

    .line 37
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_2c
    move-exception v0

    const/4 v0, 0x0

    :try_start_2e
    const-string/jumbo v1, "AirActivity#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_35} :catch_2c

    goto :goto_f
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/activities/AirActivity;->mShakeObserver:Lcom/airbnb/android/utils/ShakeFeedbackHelper;

    .line 44
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 69
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 70
    invoke-virtual {p0}, Lcom/airbnb/android/activities/AirActivity;->finish()V

    .line 71
    const/4 v0, 0x1

    .line 73
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_d
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 60
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 62
    iget-object v0, p0, Lcom/airbnb/android/activities/AirActivity;->mShakeObserver:Lcom/airbnb/android/utils/ShakeFeedbackHelper;

    if-eqz v0, :cond_c

    .line 63
    iget-object v0, p0, Lcom/airbnb/android/activities/AirActivity;->mShakeObserver:Lcom/airbnb/android/utils/ShakeFeedbackHelper;

    invoke-virtual {v0}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->stop()V

    .line 65
    :cond_c
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 48
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 50
    invoke-static {p0}, Lcom/airbnb/android/utils/DebugSettings;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/utils/DebugSettings;->isShakeFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 51
    iget-object v0, p0, Lcom/airbnb/android/activities/AirActivity;->mShakeObserver:Lcom/airbnb/android/utils/ShakeFeedbackHelper;

    if-nez v0, :cond_18

    .line 52
    new-instance v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;

    invoke-direct {v0, p0}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/airbnb/android/activities/AirActivity;->mShakeObserver:Lcom/airbnb/android/utils/ShakeFeedbackHelper;

    .line 54
    :cond_18
    iget-object v0, p0, Lcom/airbnb/android/activities/AirActivity;->mShakeObserver:Lcom/airbnb/android/utils/ShakeFeedbackHelper;

    invoke-virtual {v0}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->start()V

    .line 56
    :cond_1d
    return-void
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method

.method public varargs setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;
    .registers 5
    .param p1, "title"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/airbnb/android/activities/AirActivity;->enableActionBarHomeAsUpAndShowTitle()Landroid/app/ActionBar;

    move-result-object v0

    .line 125
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-lez p1, :cond_16

    .line 126
    if-eqz p2, :cond_17

    array-length v1, p2

    if-lez v1, :cond_17

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/activities/AirActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/FontManager;->wrapSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    :cond_16
    :goto_16
    return-object v0

    .line 129
    :cond_17
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/FontManager;->wrapSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_16
.end method

.method public setupActionBar(Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActionBar;
    .registers 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/airbnb/android/activities/AirActivity;->enableActionBarHomeAsUpAndShowTitle()Landroid/app/ActionBar;

    move-result-object v0

    .line 100
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-static {p1}, Lcom/airbnb/android/utils/FontManager;->wrapSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    invoke-static {p2}, Lcom/airbnb/android/utils/FontManager;->wrapSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 102
    return-object v0
.end method

.method public setupFakeActionBar(I)V
    .registers 5
    .param p1, "layout"    # I

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/airbnb/android/activities/AirActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 145
    .local v0, "actionbar":Landroid/app/ActionBar;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 146
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 147
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 148
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 149
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 150
    return-void
.end method

.method protected setupTransparentActionBar()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 106
    invoke-virtual {p0}, Lcom/airbnb/android/activities/AirActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 107
    .local v1, "actionBarBg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/AirActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 108
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 110
    const v2, 0x7f0200ec

    const v3, 0x7f0a00a4

    invoke-static {v2, v3}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 111
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 112
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 113
    return-void
.end method
