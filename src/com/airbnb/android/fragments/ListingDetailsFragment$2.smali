.class Lcom/airbnb/android/fragments/ListingDetailsFragment$2;
.super Ljava/lang/Object;
.source "ListingDetailsFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateViewPager(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

.field final synthetic val$picTopScrollView:Lcom/airbnb/android/views/PicTopScrollView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;Lcom/airbnb/android/views/PicTopScrollView;)V
    .registers 3

    .prologue
    .line 343
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$2;->val$picTopScrollView:Lcom/airbnb/android/views/PicTopScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(II)V
    .registers 9
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I

    .prologue
    .line 347
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mImageViews:Ljava/util/List;
    invoke-static {v4}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$600(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/AirImageView;

    .line 348
    .local v1, "view":Lcom/airbnb/android/views/AirImageView;
    invoke-virtual {v1}, Lcom/airbnb/android/views/AirImageView;->updateParallaxState()V

    goto :goto_a

    .line 350
    .end local v1    # "view":Lcom/airbnb/android/views/AirImageView;
    :cond_1a
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$2;->val$picTopScrollView:Lcom/airbnb/android/views/PicTopScrollView;

    invoke-virtual {v4}, Lcom/airbnb/android/views/PicTopScrollView;->getWidth()I

    move-result v3

    .line 351
    .local v3, "width":I
    int-to-float v4, v3

    const v5, 0x3f2aaaab

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 353
    .local v2, "viewPagerHeight":I
    if-le p2, v2, :cond_32

    .line 355
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;
    invoke-static {v4}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$700(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/views/ClickableViewPager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/views/ClickableViewPager;->stopScrolling()V

    .line 360
    :goto_31
    return-void

    .line 358
    :cond_32
    iget-object v4, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mImagePager:Lcom/airbnb/android/views/ClickableViewPager;
    invoke-static {v4}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$700(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/views/ClickableViewPager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/views/ClickableViewPager;->startScrolling()V

    goto :goto_31
.end method
