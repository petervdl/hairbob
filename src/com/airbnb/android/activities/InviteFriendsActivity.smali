.class public Lcom/airbnb/android/activities/InviteFriendsActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "InviteFriendsActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method public static intentForDefault(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/InviteFriendsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 15
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v1, 0x7f0e0369

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/activities/InviteFriendsActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 19
    if-nez p1, :cond_16

    .line 20
    new-instance v0, Lcom/airbnb/android/fragments/InviteFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/InviteFragment;-><init>()V

    .line 21
    .local v0, "inviteFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0, v0, v3}, Lcom/airbnb/android/activities/InviteFriendsActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 24
    .end local v0    # "inviteFragment":Landroid/support/v4/app/Fragment;
    :cond_16
    return-void
.end method
