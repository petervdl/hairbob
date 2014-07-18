.class Lcom/airbnb/android/fragments/ROContainerFragment$6;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "ROContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROContainerFragment;->setupROViewPagerTabs(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROContainerFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROContainerFragment;)V
    .registers 2

    .prologue
    .line 643
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$6;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .registers 8
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 647
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment$6;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mROViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v3}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$900(Lcom/airbnb/android/fragments/ROContainerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 648
    .local v1, "currentItem":I
    if-lez p3, :cond_36

    .line 649
    const/4 v0, 0x0

    .line 651
    .local v0, "content":Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment$6;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;
    invoke-static {v3}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$800(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/adapters/ROPagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/ROPagerAdapter;->getTabHolderScrollingContent()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v2

    .line 652
    .local v2, "tabHolderScrollingContent":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;>;"
    if-ge p1, v1, :cond_37

    .line 654
    invoke-virtual {v2, p1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "content":Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;
    check-cast v0, Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;

    .line 660
    .restart local v0    # "content":Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;
    :goto_1f
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment$6;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;
    invoke-static {v3}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$500(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/ROTabBar;

    move-result-object v3

    if-eqz v3, :cond_36

    if-eqz v0, :cond_36

    .line 661
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment$6;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;
    invoke-static {v3}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$500(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/ROTabBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/views/ROTabBar;->getTop()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;->adjustScroll(I)V

    .line 664
    .end local v0    # "content":Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;
    .end local v2    # "tabHolderScrollingContent":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;>;"
    :cond_36
    return-void

    .line 657
    .restart local v0    # "content":Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;
    .restart local v2    # "tabHolderScrollingContent":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;>;"
    :cond_37
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "content":Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;
    check-cast v0, Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;

    .restart local v0    # "content":Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;
    goto :goto_1f
.end method

.method public onPageSelected(I)V
    .registers 8
    .param p1, "position"    # I

    .prologue
    .line 668
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 669
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment$6;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # invokes: Lcom/airbnb/android/fragments/ROContainerFragment;->trackROTabImpression(I)V
    invoke-static {v4, p1}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$1700(Lcom/airbnb/android/fragments/ROContainerFragment;I)V

    .line 671
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment$6;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;
    invoke-static {v4}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$500(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/ROTabBar;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 672
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment$6;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;
    invoke-static {v4}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$500(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/ROTabBar;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/airbnb/android/views/ROTabBar;->selectTabButton(I)V

    .line 675
    :cond_19
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment$6;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;
    invoke-static {v4}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$800(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/adapters/ROPagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/adapters/ROPagerAdapter;->getTabHolderScrollingContent()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v3

    .line 676
    .local v3, "tabHolderScrollingContent":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;>;"
    invoke-virtual {v3, p1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;

    .line 679
    .local v0, "content":Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment$6;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;
    invoke-static {v4}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$500(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/ROTabBar;

    move-result-object v4

    if-eqz v4, :cond_44

    if-eqz v0, :cond_44

    instance-of v4, v0, Lcom/airbnb/android/fragments/ROMessageFragment;

    if-nez v4, :cond_44

    .line 680
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment$6;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;
    invoke-static {v4}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$500(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/ROTabBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/views/ROTabBar;->getTop()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;->adjustScroll(I)V

    .line 683
    :cond_44
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment$6;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mEnableResponseButton:Z
    invoke-static {v4}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$1000(Lcom/airbnb/android/fragments/ROContainerFragment;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 684
    sget-object v4, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Message:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    iget-object v5, p0, Lcom/airbnb/android/fragments/ROContainerFragment$6;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;
    invoke-static {v5}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$800(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/adapters/ROPagerAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/adapters/ROPagerAdapter;->hasItinerary()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->getIndex(Z)I

    move-result v1

    .line 685
    .local v1, "msgTabIndex":I
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment$6;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;
    invoke-static {v4}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$800(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/adapters/ROPagerAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/airbnb/android/adapters/ROPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/fragments/ROMessageFragment;

    .line 686
    .local v2, "roMessageFragment":Lcom/airbnb/android/fragments/ROMessageFragment;
    if-ne p1, v1, :cond_6d

    .line 687
    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ROMessageFragment;->clearReplyInputTextFocus()V

    .line 689
    :cond_6d
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment$6;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/airbnb/android/fragments/ROContainerFragment;->setRespondNowButtonVisibility(Z)V

    .line 691
    .end local v1    # "msgTabIndex":I
    .end local v2    # "roMessageFragment":Lcom/airbnb/android/fragments/ROMessageFragment;
    :cond_73
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROContainerFragment$6;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # invokes: Lcom/airbnb/android/fragments/ROContainerFragment;->updateImageOnTabUpdated(I)V
    invoke-static {v4, p1}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$1800(Lcom/airbnb/android/fragments/ROContainerFragment;I)V

    .line 692
    return-void
.end method
