.class Lcom/airbnb/android/activities/MainActivity$2;
.super Landroid/support/v4/app/ActionBarDrawerToggle;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/MainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V
    .registers 13
    .param p2, "x0"    # Landroid/app/Activity;
    .param p3, "x1"    # Landroid/support/v4/widget/DrawerLayout;
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    .line 386
    iput-object p1, p0, Lcom/airbnb/android/activities/MainActivity$2;->this$0:Lcom/airbnb/android/activities/MainActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x7f080025

    const v4, 0x106000d

    .line 390
    iget-object v2, p0, Lcom/airbnb/android/activities/MainActivity$2;->this$0:Lcom/airbnb/android/activities/MainActivity;

    # invokes: Lcom/airbnb/android/activities/MainActivity;->executePendingTransactions()V
    invoke-static {v2}, Lcom/airbnb/android/activities/MainActivity;->access$000(Lcom/airbnb/android/activities/MainActivity;)V

    .line 393
    iget-object v2, p0, Lcom/airbnb/android/activities/MainActivity$2;->this$0:Lcom/airbnb/android/activities/MainActivity;

    # getter for: Lcom/airbnb/android/activities/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v2}, Lcom/airbnb/android/activities/MainActivity;->access$100(Lcom/airbnb/android/activities/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/activities/MainActivity$2;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-virtual {v3}, Lcom/airbnb/android/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->setBackgroundColor(I)V

    .line 394
    iget-object v2, p0, Lcom/airbnb/android/activities/MainActivity$2;->this$0:Lcom/airbnb/android/activities/MainActivity;

    # getter for: Lcom/airbnb/android/activities/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v2}, Lcom/airbnb/android/activities/MainActivity;->access$100(Lcom/airbnb/android/activities/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/activities/MainActivity$2;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-virtual {v3}, Lcom/airbnb/android/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 396
    iget-object v2, p0, Lcom/airbnb/android/activities/MainActivity$2;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-virtual {v2}, Lcom/airbnb/android/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 397
    .local v1, "f":Landroid/support/v4/app/Fragment;
    const-class v2, Lcom/airbnb/android/fragments/BaseDrawerFragment;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 402
    :goto_47
    return-void

    :cond_48
    move-object v0, v1

    .line 400
    check-cast v0, Lcom/airbnb/android/fragments/BaseDrawerFragment;

    .line 401
    .local v0, "drawerFragment":Lcom/airbnb/android/fragments/BaseDrawerFragment;
    invoke-virtual {v0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onDrawerClosed()V

    goto :goto_47
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .registers 12
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 407
    iget-object v4, p0, Lcom/airbnb/android/activities/MainActivity$2;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-static {v4}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/AirbnbApi;->hasCurrentUser()Z

    move-result v3

    .line 408
    .local v3, "isSignedIn":Z
    if-eqz v3, :cond_51

    iget-object v4, p0, Lcom/airbnb/android/activities/MainActivity$2;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-static {v4}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/User;->getTotalListingsCount()I

    move-result v4

    if-lez v4, :cond_51

    .line 409
    new-array v4, v5, [Ljava/lang/String;

    sget-object v5, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v5, v5, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v5, v4, v6

    const-string/jumbo v5, "impressions"

    aput-object v5, v4, v7

    const-string/jumbo v5, "lys"

    aput-object v5, v4, v8

    const-string/jumbo v5, "left_nav_spaces_tab"

    aput-object v5, v4, v9

    invoke-static {v4}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 414
    :goto_3b
    iget-object v4, p0, Lcom/airbnb/android/activities/MainActivity$2;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-virtual {v4}, Lcom/airbnb/android/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f080025

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 415
    .local v2, "f":Landroid/support/v4/app/Fragment;
    const-class v4, Lcom/airbnb/android/fragments/BaseDrawerFragment;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6c

    .line 428
    :goto_50
    return-void

    .line 411
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    :cond_51
    new-array v4, v5, [Ljava/lang/String;

    sget-object v5, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v5, v5, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v5, v4, v6

    const-string/jumbo v5, "impressions"

    aput-object v5, v4, v7

    const-string/jumbo v5, "lys"

    aput-object v5, v4, v8

    const-string/jumbo v5, "left_nav_lys_tab"

    aput-object v5, v4, v9

    invoke-static {v4}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    goto :goto_3b

    .restart local v2    # "f":Landroid/support/v4/app/Fragment;
    :cond_6c
    move-object v1, v2

    .line 418
    check-cast v1, Lcom/airbnb/android/fragments/BaseDrawerFragment;

    .line 419
    .local v1, "drawerFragment":Lcom/airbnb/android/fragments/BaseDrawerFragment;
    invoke-virtual {v1}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onDrawerOpened()V

    .line 421
    iget-object v4, p0, Lcom/airbnb/android/activities/MainActivity$2;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-virtual {v4}, Lcom/airbnb/android/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f080038

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/SlidingMenuFragment;

    .line 422
    .local v0, "airnavFragment":Lcom/airbnb/android/fragments/SlidingMenuFragment;
    if-eqz v0, :cond_87

    .line 423
    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->drawerOpened()V

    goto :goto_50

    .line 426
    :cond_87
    iget-object v4, p0, Lcom/airbnb/android/activities/MainActivity$2;->this$0:Lcom/airbnb/android/activities/MainActivity;

    # invokes: Lcom/airbnb/android/activities/MainActivity;->loadDrawerView()V
    invoke-static {v4}, Lcom/airbnb/android/activities/MainActivity;->access$200(Lcom/airbnb/android/activities/MainActivity;)V

    goto :goto_50
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .registers 9
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const v5, 0x7f080025

    .line 433
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ActionBarDrawerToggle;->onDrawerSlide(Landroid/view/View;F)V

    .line 436
    iget-object v2, p0, Lcom/airbnb/android/activities/MainActivity$2;->this$0:Lcom/airbnb/android/activities/MainActivity;

    # getter for: Lcom/airbnb/android/activities/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v2}, Lcom/airbnb/android/activities/MainActivity;->access$100(Lcom/airbnb/android/activities/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/activities/MainActivity$2;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-virtual {v3}, Lcom/airbnb/android/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->setBackgroundColor(I)V

    .line 437
    iget-object v2, p0, Lcom/airbnb/android/activities/MainActivity$2;->this$0:Lcom/airbnb/android/activities/MainActivity;

    # getter for: Lcom/airbnb/android/activities/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v2}, Lcom/airbnb/android/activities/MainActivity;->access$100(Lcom/airbnb/android/activities/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/activities/MainActivity$2;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-virtual {v3}, Lcom/airbnb/android/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 439
    iget-object v2, p0, Lcom/airbnb/android/activities/MainActivity$2;->this$0:Lcom/airbnb/android/activities/MainActivity;

    # getter for: Lcom/airbnb/android/activities/MainActivity;->mSlideOffset:F
    invoke-static {v2}, Lcom/airbnb/android/activities/MainActivity;->access$300(Lcom/airbnb/android/activities/MainActivity;)F

    move-result v2

    const/4 v3, 0x1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_55

    iget-object v2, p0, Lcom/airbnb/android/activities/MainActivity$2;->this$0:Lcom/airbnb/android/activities/MainActivity;

    # getter for: Lcom/airbnb/android/activities/MainActivity;->mSlideOffset:F
    invoke-static {v2}, Lcom/airbnb/android/activities/MainActivity;->access$300(Lcom/airbnb/android/activities/MainActivity;)F

    move-result v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_55

    .line 440
    sget-object v2, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v3, Lcom/airbnb/android/events/DrawerOpenedEvent;

    invoke-direct {v3}, Lcom/airbnb/android/events/DrawerOpenedEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 442
    :cond_55
    iget-object v2, p0, Lcom/airbnb/android/activities/MainActivity$2;->this$0:Lcom/airbnb/android/activities/MainActivity;

    # setter for: Lcom/airbnb/android/activities/MainActivity;->mSlideOffset:F
    invoke-static {v2, p2}, Lcom/airbnb/android/activities/MainActivity;->access$302(Lcom/airbnb/android/activities/MainActivity;F)F

    .line 447
    iget-object v2, p0, Lcom/airbnb/android/activities/MainActivity$2;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-virtual {v2}, Lcom/airbnb/android/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 448
    .local v1, "f":Landroid/support/v4/app/Fragment;
    const-class v2, Lcom/airbnb/android/fragments/BaseDrawerFragment;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 453
    :goto_6c
    return-void

    :cond_6d
    move-object v0, v1

    .line 451
    check-cast v0, Lcom/airbnb/android/fragments/BaseDrawerFragment;

    .line 452
    .local v0, "drawerFragment":Lcom/airbnb/android/fragments/BaseDrawerFragment;
    invoke-virtual {v0, p2}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onDrawerSlide(F)V

    goto :goto_6c
.end method
