.class Lcom/airbnb/android/fragments/groups/BaseContentFragment$11;
.super Ljava/lang/Object;
.source "BaseContentFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/BaseContentFragment;->updateCommentsList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V
    .registers 2

    .prologue
    .line 570
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 584
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 574
    if-nez p2, :cond_19

    .line 575
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mPhotoPager:Lcom/airbnb/android/views/ClickableViewPager;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$1600(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/views/ClickableViewPager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 576
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mViewPager:Lcom/airbnb/android/interfaces/ViewPagerAbsListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$1700(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$11;->this$0:Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mPhotoPager:Lcom/airbnb/android/views/ClickableViewPager;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->access$1600(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/views/ClickableViewPager;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ViewPagerAbsListView;->setCurrentViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 579
    :cond_19
    return-void
.end method
