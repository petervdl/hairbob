.class public Lcom/airbnb/android/activities/groups/GroupContentActivity;
.super Lcom/airbnb/android/activities/groups/GroupsBaseActivity;
.source "GroupContentActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/airbnb/android/activities/groups/GroupsBaseActivity;-><init>()V

    return-void
.end method

.method public static intentForUri(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Lcom/airbnb/android/models/groups/GroupsUri;

    .prologue
    .line 16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/groups/GroupContentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "groups_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 18
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/groups/GroupsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    if-nez p1, :cond_28

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "f":Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/groups/GroupContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "groups_uri"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/GroupsUri;

    .line 27
    .local v1, "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    const-string/jumbo v2, "event"

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/GroupsUri;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 28
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/EventFragment;->newInstance(Lcom/airbnb/android/models/groups/GroupsUri;)Lcom/airbnb/android/fragments/groups/EventFragment;

    move-result-object v0

    .line 32
    :goto_24
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/airbnb/android/activities/groups/GroupContentActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 34
    .end local v0    # "f":Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;
    .end local v1    # "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    :cond_28
    return-void

    .line 30
    .restart local v0    # "f":Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;
    .restart local v1    # "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    :cond_29
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/ContentFragment;->newInstance(Lcom/airbnb/android/models/groups/GroupsUri;)Lcom/airbnb/android/fragments/groups/ContentFragment;

    move-result-object v0

    goto :goto_24
.end method
