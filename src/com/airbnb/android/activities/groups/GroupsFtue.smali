.class public Lcom/airbnb/android/activities/groups/GroupsFtue;
.super Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;
.source "GroupsFtue.java"


# static fields
.field private static final NUM_FTUE_PAGES:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;-><init>()V

    return-void
.end method

.method public static intentForDefault(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 20
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/groups/GroupsFtue;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method


# virtual methods
.method public forStep(I)Lcom/airbnb/android/fragments/ViewPagerFtueFragment;
    .registers 8
    .param p1, "step"    # I

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/airbnb/android/activities/groups/GroupsFtue;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 45
    .local v1, "fragMgr":Landroid/support/v4/app/FragmentManager;
    const v2, 0x7f0e0276

    const v3, 0x7f0e0275

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->findFragment(Landroid/support/v4/app/FragmentManager;IIZI)Lcom/airbnb/android/fragments/ViewPagerFtueFragment;

    move-result-object v0

    .line 48
    .local v0, "firstPage":Lcom/airbnb/android/fragments/ViewPagerFtueFragment;
    return-object v0
.end method

.method public getBackgroundImageResIds()[I
    .registers 4

    .prologue
    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0200d9

    aput v2, v0, v1

    return-object v0
.end method

.method public getNumPages()I
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public isParallaxMode()Z
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-static {p0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markHasSeenGroupsFtue(Landroid/content/Context;)V

    .line 29
    invoke-static {}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackFtue()V

    .line 31
    iget-object v0, p0, Lcom/airbnb/android/activities/groups/GroupsFtue;->mStickyButton:Lcom/airbnb/android/views/FtueStickyButton;

    const v1, 0x7f0e0274

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/FtueStickyButton;->setTitle(I)V

    .line 33
    iget-object v0, p0, Lcom/airbnb/android/activities/groups/GroupsFtue;->mStickyButton:Lcom/airbnb/android/views/FtueStickyButton;

    new-instance v1, Lcom/airbnb/android/activities/groups/GroupsFtue$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/groups/GroupsFtue$1;-><init>(Lcom/airbnb/android/activities/groups/GroupsFtue;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/FtueStickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method
