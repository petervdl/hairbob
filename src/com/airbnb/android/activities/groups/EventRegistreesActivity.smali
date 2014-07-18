.class public Lcom/airbnb/android/activities/groups/EventRegistreesActivity;
.super Lcom/airbnb/android/activities/groups/GroupsBaseActivity;
.source "EventRegistreesActivity.java"


# static fields
.field private static final INTENT_EXTRA_EVENT:Ljava/lang/String; = "event"

.field private static final INTENT_EXTRA_GROUP:Ljava/lang/String; = "group"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/airbnb/android/activities/groups/GroupsBaseActivity;-><init>()V

    return-void
.end method

.method public static intentForShow(Landroid/content/Context;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Event;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p2, "event"    # Lcom/airbnb/android/models/groups/Event;

    .prologue
    .line 19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/groups/EventRegistreesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "event"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 21
    const-string/jumbo v1, "group"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 22
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/groups/GroupsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    if-nez p1, :cond_27

    .line 31
    invoke-virtual {p0}, Lcom/airbnb/android/activities/groups/EventRegistreesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "group"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/groups/Group;

    .line 32
    .local v2, "group":Lcom/airbnb/android/models/groups/Group;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/groups/EventRegistreesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "event"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/groups/Event;

    .line 33
    .local v0, "event":Lcom/airbnb/android/models/groups/Event;
    invoke-static {v2, v0}, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->newInstance(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Event;)Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;

    move-result-object v1

    .line 34
    .local v1, "f":Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/airbnb/android/activities/groups/EventRegistreesActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 36
    .end local v0    # "event":Lcom/airbnb/android/models/groups/Event;
    .end local v1    # "f":Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;
    .end local v2    # "group":Lcom/airbnb/android/models/groups/Group;
    :cond_27
    return-void
.end method
