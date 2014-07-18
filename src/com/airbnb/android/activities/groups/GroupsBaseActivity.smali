.class public abstract Lcom/airbnb/android/activities/groups/GroupsBaseActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "GroupsBaseActivity.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/GroupsCallbacks;


# static fields
.field protected static final INTENT_EXTRA_GROUPS_URI:Ljava/lang/String; = "groups_uri"


# instance fields
.field private mParentIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method private getParentIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/airbnb/android/activities/groups/GroupsBaseActivity;->mParentIntent:Landroid/content/Intent;

    if-eqz v0, :cond_7

    .line 143
    iget-object v0, p0, Lcom/airbnb/android/activities/groups/GroupsBaseActivity;->mParentIntent:Landroid/content/Intent;

    .line 145
    :goto_6
    return-object v0

    :cond_7
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_6
.end method

.method private handleUpNavigation()V
    .registers 4

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/airbnb/android/activities/groups/GroupsBaseActivity;->getParentIntent()Landroid/content/Intent;

    move-result-object v0

    .line 125
    .local v0, "upIntent":Landroid/content/Intent;
    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 127
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 130
    const/high16 v1, 0x7f040000

    const v2, 0x7f040003

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/activities/groups/GroupsBaseActivity;->overridePendingTransition(II)V

    .line 134
    :goto_1d
    return-void

    .line 132
    :cond_1e
    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_1d
.end method

.method private wouldUpLeaveTask()Z
    .registers 3

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/airbnb/android/activities/groups/GroupsBaseActivity;->getParentIntent()Landroid/content/Intent;

    move-result-object v0

    .line 138
    .local v0, "upIntent":Landroid/content/Intent;
    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected getWindowFeatures()[I
    .registers 4

    .prologue
    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput v2, v0, v1

    return-object v0
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/airbnb/android/activities/groups/GroupsBaseActivity;->wouldUpLeaveTask()Z

    move-result v0

    if-nez v0, :cond_d

    .line 71
    invoke-direct {p0}, Lcom/airbnb/android/activities/groups/GroupsBaseActivity;->getParentIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 73
    :cond_d
    invoke-super {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->onBackPressed()V

    .line 74
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 25
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-static {p0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeGroupsFtue(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 28
    invoke-static {p0}, Lcom/airbnb/android/activities/groups/GroupsFtue;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/groups/GroupsBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 31
    :cond_11
    invoke-virtual {p0}, Lcom/airbnb/android/activities/groups/GroupsBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 32
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 33
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 34
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v1, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 37
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/groups/GroupsBaseActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 38
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->onDestroy()V

    .line 50
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 57
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "groups_uri"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/GroupsUri;

    .line 58
    .local v1, "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    if-eqz v1, :cond_23

    .line 59
    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/GroupsUri;->getDataEvent()Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, "event":Ljava/lang/Object;
    if-eqz v0, :cond_23

    .line 61
    sget-object v2, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v2, v0}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 65
    .end local v0    # "event":Ljava/lang/Object;
    .end local v1    # "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    :cond_23
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 120
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 117
    :pswitch_c
    invoke-direct {p0}, Lcom/airbnb/android/activities/groups/GroupsBaseActivity;->handleUpNavigation()V

    .line 118
    const/4 v0, 0x1

    goto :goto_b

    .line 115
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public overrideParentIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "parentIntent"    # Landroid/content/Intent;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/airbnb/android/activities/groups/GroupsBaseActivity;->mParentIntent:Landroid/content/Intent;

    .line 111
    return-void
.end method

.method public setActionBarSubtitle(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/airbnb/android/activities/groups/GroupsBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 87
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_9

    .line 88
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(I)V

    .line 90
    :cond_9
    return-void
.end method

.method public setActionBarSubtitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/airbnb/android/activities/groups/GroupsBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 103
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_9

    .line 104
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 106
    :cond_9
    return-void
.end method

.method public setActionBarTitle(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/airbnb/android/activities/groups/GroupsBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 79
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_9

    .line 80
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 82
    :cond_9
    return-void
.end method

.method public setActionBarTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/airbnb/android/activities/groups/GroupsBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 95
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_9

    .line 96
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    :cond_9
    return-void
.end method
