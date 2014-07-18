.class public Lcom/airbnb/android/activities/groups/GroupActivity;
.super Lcom/airbnb/android/activities/groups/GroupsBaseActivity;
.source "GroupActivity.java"


# instance fields
.field private mFragment:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/airbnb/android/activities/groups/GroupsBaseActivity;-><init>()V

    return-void
.end method

.method public static intentForUri(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Lcom/airbnb/android/models/groups/GroupsUri;

    .prologue
    .line 14
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/groups/GroupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "groups_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16
    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/airbnb/android/activities/groups/GroupActivity;->mFragment:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->onBackPressed()V

    .line 33
    invoke-super {p0}, Lcom/airbnb/android/activities/groups/GroupsBaseActivity;->onBackPressed()V

    .line 34
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/groups/GroupsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/airbnb/android/activities/groups/GroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "groups_uri"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/groups/GroupsUri;

    .line 23
    .local v0, "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/groups/GroupActivity;->findFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    iput-object v1, p0, Lcom/airbnb/android/activities/groups/GroupActivity;->mFragment:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    .line 24
    iget-object v1, p0, Lcom/airbnb/android/activities/groups/GroupActivity;->mFragment:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    if-nez v1, :cond_28

    .line 25
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->newInstance(Lcom/airbnb/android/models/groups/GroupsUri;)Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/activities/groups/GroupActivity;->mFragment:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    .line 26
    iget-object v1, p0, Lcom/airbnb/android/activities/groups/GroupActivity;->mFragment:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/activities/groups/GroupActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 28
    :cond_28
    return-void
.end method
