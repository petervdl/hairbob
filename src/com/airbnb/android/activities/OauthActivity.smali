.class public Lcom/airbnb/android/activities/OauthActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "OauthActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/activities/OauthActivity$Service;
    }
.end annotation


# static fields
.field public static final OAUTH_SERVICE:Ljava/lang/String; = "OAUTH_SERVICE"


# instance fields
.field private service:Lcom/airbnb/android/activities/OauthActivity$Service;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method protected getWindowFeatures()[I
    .registers 4

    .prologue
    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput v2, v0, v1

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/airbnb/android/activities/OauthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "OAUTH_SERVICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/activities/OauthActivity$Service;

    iput-object v1, p0, Lcom/airbnb/android/activities/OauthActivity;->service:Lcom/airbnb/android/activities/OauthActivity$Service;

    .line 32
    const v1, 0x7f0e07c4

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/activities/OauthActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 33
    if-nez p1, :cond_27

    .line 34
    iget-object v1, p0, Lcom/airbnb/android/activities/OauthActivity;->service:Lcom/airbnb/android/activities/OauthActivity$Service;

    invoke-static {v1}, Lcom/airbnb/android/fragments/OauthFragment;->newInstance(Lcom/airbnb/android/activities/OauthActivity$Service;)Lcom/airbnb/android/fragments/OauthFragment;

    move-result-object v0

    .line 35
    .local v0, "oauthFragment":Lcom/airbnb/android/fragments/OauthFragment;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/OauthActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 37
    .end local v0    # "oauthFragment":Lcom/airbnb/android/fragments/OauthFragment;
    :cond_27
    return-void
.end method
