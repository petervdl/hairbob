.class public Lcom/airbnb/android/activities/RecommendedListingsActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "RecommendedListingsActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    if-nez p1, :cond_11

    .line 14
    invoke-virtual {p0}, Lcom/airbnb/android/activities/RecommendedListingsActivity;->getBundleFromIntent()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/fragments/RecommendedListingsFragment;->newInstanceForBundle(Landroid/os/Bundle;)Lcom/airbnb/android/fragments/RecommendedListingsFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/RecommendedListingsActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 16
    :cond_11
    return-void
.end method
