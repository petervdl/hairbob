.class public Lcom/airbnb/android/activities/groups/NewContentActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "NewContentActivity.java"


# static fields
.field private static final INTENT_EXTRA_GROUP:Ljava/lang/String; = "group"


# instance fields
.field private mNewContentFragment:Lcom/airbnb/android/fragments/groups/NewContentFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method public static intentForShow(Landroid/content/Context;Lcom/airbnb/android/models/groups/Group;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/groups/NewContentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "group"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 23
    return-object v0
.end method


# virtual methods
.method public finish()V
    .registers 4

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 54
    .local v0, "data":Landroid/content/Intent;
    const-string/jumbo v1, "group"

    iget-object v2, p0, Lcom/airbnb/android/activities/groups/NewContentActivity;->mNewContentFragment:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->getGroup()Lcom/airbnb/android/models/groups/Group;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 55
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/airbnb/android/activities/groups/NewContentActivity;->setResult(ILandroid/content/Intent;)V

    .line 56
    invoke-super {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->finish()V

    .line 57
    return-void
.end method

.method protected getWindowFeatures()[I
    .registers 4

    .prologue
    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput v2, v0, v1

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v2}, Lcom/airbnb/android/activities/groups/NewContentActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    move-result-object v0

    .line 38
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 40
    invoke-virtual {p0}, Lcom/airbnb/android/activities/groups/NewContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "group"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/Group;

    .line 41
    .local v1, "group":Lcom/airbnb/android/models/groups/Group;
    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/Group;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    const v2, 0x7f0e0231

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSubtitle(I)V

    .line 43
    if-nez p1, :cond_36

    .line 44
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->newInstance(Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/fragments/groups/NewContentFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/activities/groups/NewContentActivity;->mNewContentFragment:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    .line 45
    iget-object v2, p0, Lcom/airbnb/android/activities/groups/NewContentActivity;->mNewContentFragment:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/airbnb/android/activities/groups/NewContentActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 49
    :goto_35
    return-void

    .line 47
    :cond_36
    invoke-virtual {p0}, Lcom/airbnb/android/activities/groups/NewContentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f080025

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/fragments/groups/NewContentFragment;

    iput-object v2, p0, Lcom/airbnb/android/activities/groups/NewContentActivity;->mNewContentFragment:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    goto :goto_35
.end method
