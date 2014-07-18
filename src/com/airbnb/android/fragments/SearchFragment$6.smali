.class Lcom/airbnb/android/fragments/SearchFragment$6;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SearchFragment;->setOnActionExpandListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SearchFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SearchFragment;)V
    .registers 2

    .prologue
    .line 492
    iput-object p1, p0, Lcom/airbnb/android/fragments/SearchFragment$6;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .registers 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 516
    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchFragment$6;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$6;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SearchFragment;->mCurrentState:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    sget-object v4, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->NewFetch:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    if-eq v0, v4, :cond_16

    move v0, v1

    :goto_d
    invoke-virtual {v3, v0}, Lcom/airbnb/android/fragments/SearchFragment;->setMenuItemsVisibility(Z)V

    .line 517
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$6;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # setter for: Lcom/airbnb/android/fragments/SearchFragment;->mDrawerAction:Z
    invoke-static {v0, v2}, Lcom/airbnb/android/fragments/SearchFragment;->access$902(Lcom/airbnb/android/fragments/SearchFragment;Z)Z

    .line 518
    return v1

    :cond_16
    move v0, v2

    .line 516
    goto :goto_d
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 496
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$6;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # getter for: Lcom/airbnb/android/fragments/SearchFragment;->mDrawerAction:Z
    invoke-static {v0}, Lcom/airbnb/android/fragments/SearchFragment;->access$900(Lcom/airbnb/android/fragments/SearchFragment;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 497
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$6;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SearchFragment;->mBrowsableViewPager:Lcom/airbnb/android/views/BrowsableViewPager;

    if-eqz v0, :cond_16

    .line 498
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$6;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SearchFragment;->mBrowsableViewPager:Lcom/airbnb/android/views/BrowsableViewPager;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/BrowsableViewPager;->setCurrentItem(I)V

    .line 500
    :cond_16
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$6;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # getter for: Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;
    invoke-static {v0}, Lcom/airbnb/android/fragments/SearchFragment;->access$100(Lcom/airbnb/android/fragments/SearchFragment;)Lcom/airbnb/android/models/SearchInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->clearAllFilters()V

    .line 501
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$6;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/fragments/SearchFragment;->enableListingsResult(Z)V

    .line 502
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$6;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    sget-object v1, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->NewFetch:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/SearchFragment;->setState(Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;)V

    .line 506
    :cond_2b
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$6;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    const-string/jumbo v1, ""

    # setter for: Lcom/airbnb/android/fragments/SearchFragment;->mSearchQuery:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/SearchFragment;->access$402(Lcom/airbnb/android/fragments/SearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 508
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$6;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    # setter for: Lcom/airbnb/android/fragments/SearchFragment;->mDrawerAction:Z
    invoke-static {v0, v2}, Lcom/airbnb/android/fragments/SearchFragment;->access$902(Lcom/airbnb/android/fragments/SearchFragment;Z)Z

    .line 509
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$6;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/fragments/SearchFragment;->setMenuItemsVisibility(Z)V

    .line 511
    const/4 v0, 0x1

    return v0
.end method
