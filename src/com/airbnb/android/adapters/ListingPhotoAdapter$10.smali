.class Lcom/airbnb/android/adapters/ListingPhotoAdapter$10;
.super Ljava/lang/Object;
.source "ListingPhotoAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/ListingPhotoAdapter;->getOnScrollListener(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$OnScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)V
    .registers 2

    .prologue
    .line 622
    iput-object p1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$10;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

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
    .line 638
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 7
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 625
    if-nez p2, :cond_14

    .line 626
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$10;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    # getter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$500(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$10;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    # getter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mShowHintRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$1000(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 634
    :goto_13
    return-void

    .line 628
    :cond_14
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$10;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    # getter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mHideHintRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$700(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 630
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$10;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    # getter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$500(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$10;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    # getter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mHideHintRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$700(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 632
    :cond_2b
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$10;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    # getter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$500(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$10;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    # getter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mShowHintRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$1000(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_13
.end method
