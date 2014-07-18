.class public Lcom/airbnb/android/activities/SolitAirActivity;
.super Lcom/airbnb/android/activities/AirActivity;
.source "SolitAirActivity.java"


# static fields
.field private static final ARG_BUNDLE:Ljava/lang/String; = "bundle"


# instance fields
.field protected mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/airbnb/android/activities/AirActivity;-><init>()V

    return-void
.end method

.method public static intentForBundle(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "bundle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 31
    return-object v0
.end method


# virtual methods
.method protected findFragment()Landroid/support/v4/app/Fragment;
    .registers 3

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->getContentId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getBundleFromIntent()Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    goto :goto_11
.end method

.method protected getContentId()I
    .registers 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->inflateDirectlyIntoActivityContentFrame()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x1020002

    :goto_9
    return v0

    :cond_a
    const v0, 0x7f080025

    goto :goto_9
.end method

.method protected getLoaderFrame()Lcom/airbnb/android/views/LoaderFrame;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/airbnb/android/activities/SolitAirActivity;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    return-object v0
.end method

.method protected getWindowFeatures()[I
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method protected inflateDirectlyIntoActivityContentFrame()Z
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->getContentId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 113
    .local v0, "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 114
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/activities/AirActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 115
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    :try_start_3
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->getWindowFeatures()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_9
    if-ge v2, v3, :cond_14

    aget v1, v0, v2

    .line 47
    .local v1, "feature":I
    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/SolitAirActivity;->requestWindowFeature(I)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_13

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 49
    .end local v0    # "arr$":[I
    .end local v1    # "feature":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catch_13
    move-exception v4

    .line 52
    :cond_14
    const v4, 0x7f030010

    invoke-virtual {p0, v4}, Lcom/airbnb/android/activities/SolitAirActivity;->setContentView(I)V

    .line 53
    const v4, 0x7f080026

    invoke-virtual {p0, v4}, Lcom/airbnb/android/activities/SolitAirActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/LoaderFrame;

    iput-object v4, p0, Lcom/airbnb/android/activities/SolitAirActivity;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    .line 54
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 101
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 98
    :pswitch_c
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->finish()V

    .line 99
    const/4 v0, 0x1

    goto :goto_b

    .line 96
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected showFragment(Landroid/support/v4/app/Fragment;Z)V
    .registers 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "addToBackStack"    # Z

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/airbnb/android/activities/SolitAirActivity;->showFragment(Landroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 92
    return-void
.end method

.method protected showFragment(Landroid/support/v4/app/Fragment;ZLjava/lang/String;)V
    .registers 9
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "addToBackStack"    # Z
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 62
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f080025

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 63
    const v1, 0x7f040006

    const v2, 0x7f040008

    const v3, 0x7f040007

    const v4, 0x7f040009

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 64
    if-eqz p2, :cond_2b

    .line 65
    if-eqz p3, :cond_36

    .end local p3    # "tag":Ljava/lang/String;
    :goto_28
    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 68
    :cond_2b
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->getContentId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 69
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 70
    return-void

    .line 65
    .restart local p3    # "tag":Ljava/lang/String;
    :cond_36
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p3

    goto :goto_28
.end method

.method public showLoader(Z)V
    .registers 4
    .param p1, "show"    # Z

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->getLoaderFrame()Lcom/airbnb/android/views/LoaderFrame;

    move-result-object v0

    .line 123
    .local v0, "loaderFrame":Lcom/airbnb/android/views/LoaderFrame;
    if-eqz p1, :cond_e

    .line 124
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LoaderFrame;->setVisibility(I)V

    .line 125
    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->startAnimation()V

    .line 130
    :goto_d
    return-void

    .line 127
    :cond_e
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LoaderFrame;->setVisibility(I)V

    .line 128
    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    goto :goto_d
.end method
