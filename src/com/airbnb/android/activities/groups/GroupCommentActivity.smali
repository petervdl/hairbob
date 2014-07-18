.class public Lcom/airbnb/android/activities/groups/GroupCommentActivity;
.super Lcom/airbnb/android/activities/groups/GroupsBaseActivity;
.source "GroupCommentActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
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

    const-class v1, Lcom/airbnb/android/activities/groups/GroupCommentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "groups_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/groups/GroupsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    if-nez p1, :cond_1a

    .line 23
    invoke-virtual {p0}, Lcom/airbnb/android/activities/groups/GroupCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "groups_uri"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/GroupsUri;

    .line 24
    .local v1, "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->newInstance(Lcom/airbnb/android/models/groups/GroupsUri;)Lcom/airbnb/android/fragments/groups/CommentFragment;

    move-result-object v0

    .line 25
    .local v0, "f":Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/airbnb/android/activities/groups/GroupCommentActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 27
    .end local v0    # "f":Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;
    .end local v1    # "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    :cond_1a
    return-void
.end method
