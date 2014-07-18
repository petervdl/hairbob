.class public Lcom/airbnb/android/activities/groups/GroupMembersActivity;
.super Lcom/airbnb/android/activities/groups/GroupsBaseActivity;
.source "GroupMembersActivity.java"


# static fields
.field private static final INTENT_EXTRA_GROUP:Ljava/lang/String; = "group"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/airbnb/android/activities/groups/GroupsBaseActivity;-><init>()V

    return-void
.end method

.method public static intentForShow(Landroid/content/Context;Lcom/airbnb/android/models/groups/Group;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/groups/GroupMembersActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "group"

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

    .line 25
    if-nez p1, :cond_1a

    .line 26
    invoke-virtual {p0}, Lcom/airbnb/android/activities/groups/GroupMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "group"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/Group;

    .line 27
    .local v1, "group":Lcom/airbnb/android/models/groups/Group;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->newInstance(Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    move-result-object v0

    .line 28
    .local v0, "f":Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/airbnb/android/activities/groups/GroupMembersActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 30
    .end local v0    # "f":Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;
    .end local v1    # "group":Lcom/airbnb/android/models/groups/Group;
    :cond_1a
    return-void
.end method
