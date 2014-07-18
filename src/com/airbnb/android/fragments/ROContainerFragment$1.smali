.class Lcom/airbnb/android/fragments/ROContainerFragment$1;
.super Ljava/lang/Object;
.source "ROContainerFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/ROContainerFragment;
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
    .line 224
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$1;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

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
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 234
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$1;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # invokes: Lcom/airbnb/android/fragments/ROContainerFragment;->dismissKeyboardIfTabBarOverlapsReplyEditText(II)V
    invoke-static {v1, p3, p4}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$000(Lcom/airbnb/android/fragments/ROContainerFragment;II)V

    .line 237
    if-nez p2, :cond_69

    .line 238
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$1;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$100(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/AirImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/airbnb/android/views/AirImageView;->setVisibility(I)V

    .line 240
    invoke-virtual {p1, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 241
    invoke-virtual {p1, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v0, v1

    .line 242
    .local v0, "y":I
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$1;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # setter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mScrollY:I
    invoke-static {v1, v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$202(Lcom/airbnb/android/fragments/ROContainerFragment;I)I

    .line 243
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$1;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$100(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/AirImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$1;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$100(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/AirImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/views/AirImageView;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROContainerFragment$1;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    div-int/lit8 v4, v0, 0x2

    # invokes: Lcom/airbnb/android/fragments/ROContainerFragment;->getScrollY(I)I
    invoke-static {v3, v4}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$300(Lcom/airbnb/android/fragments/ROContainerFragment;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/views/AirImageView;->scrollTo(II)V

    .line 251
    .end local v0    # "y":I
    :cond_41
    :goto_41
    if-nez p2, :cond_7f

    .line 252
    invoke-virtual {p1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_68

    .line 253
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$1;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$500(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/ROTabBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/views/ROTabBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 254
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$1;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$500(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/ROTabBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/views/ROTabBar;->requestLayout()V

    .line 260
    :cond_68
    :goto_68
    return-void

    .line 246
    :cond_69
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$1;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$100(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/AirImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirImageView;->setVisibility(I)V

    .line 247
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$1;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$1;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mTopImageHeight:I
    invoke-static {v2}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$400(Lcom/airbnb/android/fragments/ROContainerFragment;)I

    move-result v2

    # setter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mScrollY:I
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$202(Lcom/airbnb/android/fragments/ROContainerFragment;I)I

    goto :goto_41

    .line 257
    :cond_7f
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$1;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$500(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/ROTabBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/views/ROTabBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 258
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$1;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$500(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/ROTabBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/views/ROTabBar;->requestLayout()V

    goto :goto_68
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 228
    return-void
.end method
