.class Lcom/airbnb/android/fragments/ROContainerFragment$2;
.super Ljava/lang/Object;
.source "ROContainerFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;


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
    .line 263
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$2;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(II)V
    .registers 8
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I

    .prologue
    const/4 v4, 0x0

    .line 267
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$2;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # setter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mScrollY:I
    invoke-static {v0, p2}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$202(Lcom/airbnb/android/fragments/ROContainerFragment;I)I

    .line 269
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$2;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mTopImageHeight:I
    invoke-static {v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$400(Lcom/airbnb/android/fragments/ROContainerFragment;)I

    move-result v1

    if-ge v0, v1, :cond_61

    .line 270
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$2;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$100(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/AirImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/airbnb/android/views/AirImageView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$2;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$100(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/AirImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$2;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$100(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/AirImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/views/AirImageView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$2;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    div-int/lit8 v3, p2, 0x2

    # invokes: Lcom/airbnb/android/fragments/ROContainerFragment;->getScrollY(I)I
    invoke-static {v2, v3}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$300(Lcom/airbnb/android/fragments/ROContainerFragment;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/views/AirImageView;->scrollTo(II)V

    .line 277
    :goto_36
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$2;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mTopImageHeight:I
    invoke-static {v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$400(Lcom/airbnb/android/fragments/ROContainerFragment;)I

    move-result v1

    if-ge v0, v1, :cond_6d

    .line 278
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$2;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$500(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/ROTabBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/ROTabBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$2;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mTopImageHeight:I
    invoke-static {v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$400(Lcom/airbnb/android/fragments/ROContainerFragment;)I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 282
    :goto_57
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$2;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$500(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/ROTabBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/ROTabBar;->requestLayout()V

    .line 283
    return-void

    .line 273
    :cond_61
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$2;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$100(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/AirImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirImageView;->setVisibility(I)V

    goto :goto_36

    .line 280
    :cond_6d
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$2;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mNonStickyTabBar:Lcom/airbnb/android/views/ROTabBar;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$500(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/ROTabBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/ROTabBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_57
.end method
