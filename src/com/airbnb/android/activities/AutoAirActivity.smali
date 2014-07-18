.class public Lcom/airbnb/android/activities/AutoAirActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "AutoAirActivity.java"


# static fields
.field private static final ARG_CLS:Ljava/lang/String; = "frag_cls"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method public static intentForFragment(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragCls"    # Ljava/lang/Class;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 35
    const-class v1, Lcom/airbnb/android/activities/AutoAirActivity;

    invoke-static {p0, v1, p2}, Lcom/airbnb/android/activities/AutoAirActivity;->intentForBundle(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 36
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "frag_cls"

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v1}, Lcom/airbnb/android/activities/AutoAirActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 22
    if-nez p1, :cond_21

    .line 23
    invoke-virtual {p0}, Lcom/airbnb/android/activities/AutoAirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "frag_cls"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/android/activities/AutoAirActivity;->getBundleFromIntent()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 24
    .local v0, "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0, v0, v3}, Lcom/airbnb/android/activities/AutoAirActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 26
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_21
    return-void
.end method
