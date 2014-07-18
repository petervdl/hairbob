.class public Lcom/airbnb/android/activities/InstantBookFtueActivity;
.super Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;
.source "InstantBookFtueActivity.java"


# static fields
.field private static final INTENT_EXTRA_MANAGED_LISTING_ID:Ljava/lang/String; = "managed_listing_id"

.field private static final NUM_FTUE_PAGES:I = 0x3


# instance fields
.field private mUseSlideAnim:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/activities/InstantBookFtueActivity;->mUseSlideAnim:Z

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/activities/InstantBookFtueActivity;J)V
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/activities/InstantBookFtueActivity;
    .param p1, "x1"    # J

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/activities/InstantBookFtueActivity;->redirectToManageListing(J)V

    return-void
.end method

.method public static intentForDefault(Landroid/content/Context;J)Landroid/content/Intent;
    .registers 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "listingId"    # J

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/InstantBookFtueActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "managed_listing_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 28
    return-object v0
.end method

.method private navigateUp()V
    .registers 4

    .prologue
    .line 67
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 68
    .local v0, "upIntent":Landroid/content/Intent;
    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 70
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 73
    const/high16 v1, 0x7f040000

    const v2, 0x7f040003

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/activities/InstantBookFtueActivity;->overridePendingTransition(II)V

    .line 77
    :goto_1d
    return-void

    .line 75
    :cond_1e
    invoke-virtual {p0}, Lcom/airbnb/android/activities/InstantBookFtueActivity;->finish()V

    goto :goto_1d
.end method

.method private redirectToManageListing(J)V
    .registers 4
    .param p1, "listingId"    # J

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/airbnb/android/activities/InstantBookFtueActivity;->finish()V

    .line 53
    invoke-static {p0, p1, p2}, Lcom/airbnb/android/activities/ManageListingActivity;->intentForIBSell(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/InstantBookFtueActivity;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method


# virtual methods
.method public forStep(I)Lcom/airbnb/android/fragments/ViewPagerFtueFragment;
    .registers 11
    .param p1, "step"    # I

    .prologue
    const/4 v8, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/airbnb/android/activities/InstantBookFtueActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 83
    .local v1, "fragMgr":Landroid/support/v4/app/FragmentManager;
    packed-switch p1, :pswitch_data_4c

    .line 101
    const/4 v0, 0x0

    :cond_9
    :goto_9
    return-object v0

    .line 85
    :pswitch_a
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v4

    .line 86
    .local v4, "user":Lcom/airbnb/android/models/User;
    const v5, 0x7f0e0205

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/airbnb/android/activities/InstantBookFtueActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "title":Ljava/lang/String;
    const v5, 0x7f0e01fb

    invoke-virtual {p0, v5}, Lcom/airbnb/android/activities/InstantBookFtueActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "subtitle":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/airbnb/android/activities/InstantBookFtueActivity;->mUseSlideAnim:Z

    invoke-static {v1, v3, v2, v5, v8}, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->findFragment(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/airbnb/android/fragments/ViewPagerFtueFragment;

    move-result-object v0

    .line 90
    .local v0, "firstPage":Lcom/airbnb/android/fragments/ViewPagerFtueFragment;
    iget-boolean v5, p0, Lcom/airbnb/android/activities/InstantBookFtueActivity;->mUseSlideAnim:Z

    if-eqz v5, :cond_9

    .line 91
    iput-boolean v8, p0, Lcom/airbnb/android/activities/InstantBookFtueActivity;->mUseSlideAnim:Z

    goto :goto_9

    .line 95
    .end local v0    # "firstPage":Lcom/airbnb/android/fragments/ViewPagerFtueFragment;
    .end local v2    # "subtitle":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "user":Lcom/airbnb/android/models/User;
    :pswitch_36
    const v5, 0x7f0e0204

    const v6, 0x7f0e01fa

    invoke-static {v1, v5, v6, v8, v8}, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->findFragment(Landroid/support/v4/app/FragmentManager;IIZI)Lcom/airbnb/android/fragments/ViewPagerFtueFragment;

    move-result-object v0

    goto :goto_9

    .line 98
    :pswitch_41
    const v5, 0x7f0e0200

    const v6, 0x7f0e01f7

    invoke-static {v1, v5, v6, v8, v8}, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->findFragment(Landroid/support/v4/app/FragmentManager;IIZI)Lcom/airbnb/android/fragments/ViewPagerFtueFragment;

    move-result-object v0

    goto :goto_9

    .line 83
    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_a
        :pswitch_36
        :pswitch_41
    .end packed-switch
.end method

.method public getBackgroundImageResIds()[I
    .registers 2

    .prologue
    .line 111
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 4
        0x7f0200e6
        0x7f0200e6
        0x7f0200e6
    .end array-data
.end method

.method public getNumPages()I
    .registers 2

    .prologue
    .line 106
    const/4 v0, 0x3

    return v0
.end method

.method public isParallaxMode()Z
    .registers 2

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, -0x1

    .line 33
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/airbnb/android/activities/InstantBookFtueActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "managed_listing_id"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 35
    .local v0, "listingId":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_17

    .line 36
    invoke-virtual {p0}, Lcom/airbnb/android/activities/InstantBookFtueActivity;->finish()V

    .line 39
    :cond_17
    iget-object v2, p0, Lcom/airbnb/android/activities/InstantBookFtueActivity;->mStickyButton:Lcom/airbnb/android/views/FtueStickyButton;

    const v3, 0x7f0e01ef

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/FtueStickyButton;->setTitle(I)V

    .line 40
    iget-object v2, p0, Lcom/airbnb/android/activities/InstantBookFtueActivity;->mStickyButton:Lcom/airbnb/android/views/FtueStickyButton;

    new-instance v3, Lcom/airbnb/android/activities/InstantBookFtueActivity$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/airbnb/android/activities/InstantBookFtueActivity$1;-><init>(Lcom/airbnb/android/activities/InstantBookFtueActivity;J)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/FtueStickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/airbnb/android/analytics/ManageListingAnalytics;->trackInstantBookFtueImpressions(Z)V

    .line 49
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 58
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_13

    .line 59
    iget v0, p0, Lcom/airbnb/android/activities/InstantBookFtueActivity;->mCurrPage:I

    invoke-static {v0}, Lcom/airbnb/android/analytics/ManageListingAnalytics;->trackInstantBookFtuePressUp(I)V

    .line 60
    invoke-direct {p0}, Lcom/airbnb/android/activities/InstantBookFtueActivity;->navigateUp()V

    .line 61
    const/4 v0, 0x1

    .line 63
    :goto_12
    return v0

    :cond_13
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/ViewPagerFtueBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_12
.end method
