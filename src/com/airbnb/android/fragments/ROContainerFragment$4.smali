.class Lcom/airbnb/android/fragments/ROContainerFragment$4;
.super Ljava/lang/Object;
.source "ROContainerFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROContainerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastViewHeight:I

.field final synthetic this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROContainerFragment;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 370
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$4;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 376
    iget-object v6, p0, Lcom/airbnb/android/fragments/ROContainerFragment$4;->val$view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 377
    .local v2, "newHeight":I
    iget v6, p0, Lcom/airbnb/android/fragments/ROContainerFragment$4;->mLastViewHeight:I

    if-eq v2, v6, :cond_74

    iget-object v6, p0, Lcom/airbnb/android/fragments/ROContainerFragment$4;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;
    invoke-static {v6}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$800(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/adapters/ROPagerAdapter;

    move-result-object v6

    if-eqz v6, :cond_74

    .line 378
    iget-object v6, p0, Lcom/airbnb/android/fragments/ROContainerFragment$4;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;
    invoke-static {v6}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$800(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/adapters/ROPagerAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/adapters/ROPagerAdapter;->getTabHolderScrollingContent()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v4

    .line 379
    .local v4, "tabHolderScrollingContent":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;>;"
    iget-object v6, p0, Lcom/airbnb/android/fragments/ROContainerFragment$4;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mROViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v6}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$900(Lcom/airbnb/android/fragments/ROContainerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;

    .line 381
    .local v0, "content":Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;
    if-eqz v0, :cond_72

    .line 382
    instance-of v6, v0, Lcom/airbnb/android/fragments/ROMessageFragment;

    if-eqz v6, :cond_59

    move-object v3, v0

    .line 383
    check-cast v3, Lcom/airbnb/android/fragments/ROMessageFragment;

    .line 386
    .local v3, "roMsgFragment":Lcom/airbnb/android/fragments/ROMessageFragment;
    iget-object v6, p0, Lcom/airbnb/android/fragments/ROContainerFragment$4;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mEnableResponseButton:Z
    invoke-static {v6}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$1000(Lcom/airbnb/android/fragments/ROContainerFragment;)Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/ROMessageFragment;->isCannedMessagesHidden()Z

    move-result v6

    if-eqz v6, :cond_53

    .line 387
    iget v6, p0, Lcom/airbnb/android/fragments/ROContainerFragment$4;->mLastViewHeight:I

    if-le v2, v6, :cond_75

    move v1, v5

    .line 388
    .local v1, "keyboardDismissed":Z
    :goto_49
    if-eqz v1, :cond_53

    .line 389
    invoke-virtual {v3}, Lcom/airbnb/android/fragments/ROMessageFragment;->clearReplyInputTextFocus()V

    .line 390
    iget-object v6, p0, Lcom/airbnb/android/fragments/ROContainerFragment$4;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v6, v5}, Lcom/airbnb/android/fragments/ROContainerFragment;->setRespondNowButtonVisibility(Z)V

    .line 395
    .end local v1    # "keyboardDismissed":Z
    :cond_53
    invoke-virtual {v3}, Lcom/airbnb/android/fragments/ROMessageFragment;->updateReplyButton()V

    .line 396
    invoke-virtual {v3}, Lcom/airbnb/android/fragments/ROMessageFragment;->scrollToBottom()V

    .line 398
    .end local v3    # "roMsgFragment":Lcom/airbnb/android/fragments/ROMessageFragment;
    :cond_59
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROContainerFragment$4;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;
    invoke-static {v5}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$500(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/ROTabBar;

    move-result-object v5

    if-eqz v5, :cond_72

    iget v5, p0, Lcom/airbnb/android/fragments/ROContainerFragment$4;->mLastViewHeight:I

    if-le v2, v5, :cond_72

    .line 400
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROContainerFragment$4;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;
    invoke-static {v5}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$500(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/ROTabBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/views/ROTabBar;->getTop()I

    move-result v5

    invoke-interface {v0, v5}, Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;->adjustScroll(I)V

    .line 404
    :cond_72
    iput v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$4;->mLastViewHeight:I

    .line 407
    .end local v0    # "content":Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;
    .end local v4    # "tabHolderScrollingContent":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;>;"
    :cond_74
    return-void

    .line 387
    .restart local v0    # "content":Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;
    .restart local v3    # "roMsgFragment":Lcom/airbnb/android/fragments/ROMessageFragment;
    .restart local v4    # "tabHolderScrollingContent":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;>;"
    :cond_75
    const/4 v1, 0x0

    goto :goto_49
.end method
