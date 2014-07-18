.class public Lcom/airbnb/android/fragments/TravelLocationSearchFragment;
.super Lcom/airbnb/android/fragments/SearchFragment;
.source "TravelLocationSearchFragment.java"


# static fields
.field private static final KEY_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SearchFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/airbnb/android/fragments/TravelLocationSearchFragment;
    .registers 5
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 16
    new-instance v1, Lcom/airbnb/android/fragments/TravelLocationSearchFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/TravelLocationSearchFragment;-><init>()V

    .line 17
    .local v1, "f":Lcom/airbnb/android/fragments/TravelLocationSearchFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 18
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string/jumbo v2, "auto_start_search"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/TravelLocationSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 21
    return-object v1
.end method


# virtual methods
.method protected getBrowsableType()Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;
    .registers 2

    .prologue
    .line 26
    sget-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->Search:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    return-object v0
.end method

.method protected getCameFrom()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    const-string/jumbo v0, "weekend"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/SearchFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TravelLocationSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/TravelLocationSearchFragment;->mTitle:Ljava/lang/String;

    .line 33
    return-void
.end method

.method protected updateActionBar()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 42
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TravelLocationSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 43
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_27

    .line 44
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 45
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 46
    iget-object v3, p0, Lcom/airbnb/android/fragments/TravelLocationSearchFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/TravelLocationSearchFragment;->getDatesString()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "subtitle":Ljava/lang/String;
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 v2, 0x0

    .end local v2    # "subtitle":Ljava/lang/String;
    :cond_24
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 53
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_27
    return-void
.end method
