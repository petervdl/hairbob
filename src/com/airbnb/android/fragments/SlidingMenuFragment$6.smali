.class Lcom/airbnb/android/fragments/SlidingMenuFragment$6;
.super Ljava/lang/Object;
.source "SlidingMenuFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SlidingMenuFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SlidingMenuFragment;)V
    .registers 2

    .prologue
    .line 193
    iput-object p1, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$6;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 12
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 206
    if-eqz p2, :cond_12

    iget-object v3, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$6;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    # getter for: Lcom/airbnb/android/fragments/SlidingMenuFragment;->mAdapter:Lcom/airbnb/android/adapters/SlidingMenuAdapter;
    invoke-static {v3}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->access$300(Lcom/airbnb/android/fragments/SlidingMenuFragment;)Lcom/airbnb/android/adapters/SlidingMenuAdapter;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->getHeaderItemIndex(I)I

    move-result v3

    if-ne p2, v3, :cond_63

    .line 207
    :cond_12
    invoke-virtual {p1, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 208
    .local v2, "top":Landroid/view/View;
    if-eqz v2, :cond_42

    .line 209
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-ltz v3, :cond_4f

    .line 210
    iget-object v3, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$6;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mSlidingMenuListView:Landroid/widget/ListView;

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 219
    :cond_25
    :goto_25
    iget-object v3, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$6;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    # getter for: Lcom/airbnb/android/fragments/SlidingMenuFragment;->mStickyScrollListener:Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;
    invoke-static {v3}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->access$500(Lcom/airbnb/android/fragments/SlidingMenuFragment;)Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->getHeaderView()Landroid/view/View;

    move-result-object v0

    .line 220
    .local v0, "header":Landroid/view/View;
    if-eqz v0, :cond_42

    .line 221
    iget-object v3, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$6;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mListFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    const/high16 v4, 0x40000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v3, v5}, Landroid/view/View;->measure(II)V

    .line 236
    .end local v0    # "header":Landroid/view/View;
    .end local v2    # "top":Landroid/view/View;
    :cond_42
    :goto_42
    if-lez p4, :cond_4e

    iget-object v3, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$6;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_9f

    .line 249
    :cond_4e
    :goto_4e
    return-void

    .line 211
    .restart local v2    # "top":Landroid/view/View;
    :cond_4f
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-gez v3, :cond_25

    .line 212
    iget-object v3, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$6;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mSlidingMenuListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$6;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    # getter for: Lcom/airbnb/android/fragments/SlidingMenuFragment;->mMeasuredHeaderHeight:I
    invoke-static {v4}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->access$400(Lcom/airbnb/android/fragments/SlidingMenuFragment;)I

    move-result v4

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    goto :goto_25

    .line 225
    .end local v2    # "top":Landroid/view/View;
    :cond_63
    iget-object v3, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$6;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    # getter for: Lcom/airbnb/android/fragments/SlidingMenuFragment;->mAdapter:Lcom/airbnb/android/adapters/SlidingMenuAdapter;
    invoke-static {v3}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->access$300(Lcom/airbnb/android/fragments/SlidingMenuFragment;)Lcom/airbnb/android/adapters/SlidingMenuAdapter;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/airbnb/android/adapters/SlidingMenuAdapter;->getHeaderItemIndex(I)I

    move-result v1

    .line 226
    .local v1, "headerIndex":I
    if-lt v1, p2, :cond_42

    add-int v3, p2, p3

    if-ge v1, v3, :cond_42

    .line 227
    sub-int v3, v1, p2

    invoke-virtual {p1, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 228
    .restart local v0    # "header":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$6;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    # getter for: Lcom/airbnb/android/fragments/SlidingMenuFragment;->mMeasuredHeaderHeight:I
    invoke-static {v4}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->access$400(Lcom/airbnb/android/fragments/SlidingMenuFragment;)I

    move-result v4

    if-gt v3, v4, :cond_91

    .line 229
    iget-object v3, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$6;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mSlidingMenuListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    goto :goto_42

    .line 231
    :cond_91
    iget-object v3, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$6;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mSlidingMenuListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$6;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    # getter for: Lcom/airbnb/android/fragments/SlidingMenuFragment;->mMeasuredHeaderHeight:I
    invoke-static {v4}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->access$400(Lcom/airbnb/android/fragments/SlidingMenuFragment;)I

    move-result v4

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    goto :goto_42

    .line 241
    .end local v0    # "header":Landroid/view/View;
    .end local v1    # "headerIndex":I
    :cond_9f
    add-int v3, p2, p3

    if-ne v3, p4, :cond_4e

    .line 242
    iget-object v3, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$6;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    if-eq p3, p4, :cond_4e

    .line 246
    iget-object v3, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$6;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markHasSeenAirnavArrow(Landroid/content/Context;)V

    goto :goto_4e
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 197
    return-void
.end method
