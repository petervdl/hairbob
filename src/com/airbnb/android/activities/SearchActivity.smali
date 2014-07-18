.class public Lcom/airbnb/android/activities/SearchActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "SearchActivity.java"


# static fields
.field private static final KEY_CONTINUE_SEARCH:Ljava/lang/String; = "continue_search"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method public static intentForAutoSearch(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "continue_search"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 17
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 22
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v2}, Lcom/airbnb/android/activities/SearchActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 26
    if-nez p1, :cond_1f

    .line 27
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "continue_search"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 29
    .local v0, "autoSearch":Z
    if-eqz v0, :cond_20

    invoke-static {}, Lcom/airbnb/android/fragments/SearchFragment;->newInstanceForAutoSearch()Lcom/airbnb/android/fragments/SearchFragment;

    move-result-object v1

    .line 30
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    :goto_1c
    invoke-virtual {p0, v1, v4}, Lcom/airbnb/android/activities/SearchActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 32
    .end local v0    # "autoSearch":Z
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1f
    return-void

    .line 29
    .restart local v0    # "autoSearch":Z
    :cond_20
    invoke-static {}, Lcom/airbnb/android/fragments/SearchFragment;->newInstance()Lcom/airbnb/android/fragments/SearchFragment;

    move-result-object v1

    goto :goto_1c
.end method
