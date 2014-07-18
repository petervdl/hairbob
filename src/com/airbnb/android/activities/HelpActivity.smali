.class public Lcom/airbnb/android/activities/HelpActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "HelpActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method public static intentForDefault(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/HelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f0e0754

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/HelpActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 22
    if-nez p1, :cond_15

    .line 23
    invoke-static {}, Lcom/airbnb/android/fragments/HelpFragment;->newInstance()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/airbnb/android/activities/HelpActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 25
    :cond_15
    return-void
.end method
