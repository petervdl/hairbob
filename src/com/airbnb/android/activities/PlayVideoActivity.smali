.class public Lcom/airbnb/android/activities/PlayVideoActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "PlayVideoActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v1, 0x400

    .line 29
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 30
    invoke-virtual {p0}, Lcom/airbnb/android/activities/PlayVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 32
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 14
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {p0}, Lcom/airbnb/android/activities/PlayVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 19
    iget-object v0, p0, Lcom/airbnb/android/activities/PlayVideoActivity;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {p0}, Lcom/airbnb/android/activities/PlayVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LoaderFrame;->setBackgroundColor(I)V

    .line 20
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/PlayVideoActivity;->showLoader(Z)V

    .line 22
    if-nez p1, :cond_2e

    .line 23
    invoke-virtual {p0}, Lcom/airbnb/android/activities/PlayVideoActivity;->getBundleFromIntent()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/fragments/PlayVideoFragment;->newInstance(Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/PlayVideoActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 25
    :cond_2e
    return-void
.end method
