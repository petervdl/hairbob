.class Lcom/airbnb/android/fragments/ROMessageFragment$6;
.super Ljava/lang/Object;
.source "ROMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROMessageFragment;->scrollToBottom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROMessageFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROMessageFragment;)V
    .registers 2

    .prologue
    .line 433
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROMessageFragment$6;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 437
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment$6;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    # getter for: Lcom/airbnb/android/fragments/ROMessageFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/airbnb/android/fragments/ROMessageFragment;->access$300(Lcom/airbnb/android/fragments/ROMessageFragment;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    .line 438
    .local v3, "numItems":I
    const/4 v1, 0x0

    .line 440
    .local v1, "delayMs":I
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment$6;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    # getter for: Lcom/airbnb/android/fragments/ROMessageFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/airbnb/android/fragments/ROMessageFragment;->access$300(Lcom/airbnb/android/fragments/ROMessageFragment;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 441
    .local v0, "currentVisibleIndex":I
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment$6;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    # getter for: Lcom/airbnb/android/fragments/ROMessageFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/airbnb/android/fragments/ROMessageFragment;->access$300(Lcom/airbnb/android/fragments/ROMessageFragment;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v5

    sub-int/2addr v5, v0

    add-int/lit8 v4, v5, 0x1

    .line 442
    .local v4, "visibleChildCount":I
    const/4 v5, 0x0

    add-int/lit8 v6, v3, -0x1

    sub-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 444
    .local v2, "newVisibleIndex":I
    if-le v2, v0, :cond_3b

    .line 445
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment$6;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    # getter for: Lcom/airbnb/android/fragments/ROMessageFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/airbnb/android/fragments/ROMessageFragment;->access$300(Lcom/airbnb/android/fragments/ROMessageFragment;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 446
    const/16 v1, 0x32

    .line 450
    :cond_3b
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment$6;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    # getter for: Lcom/airbnb/android/fragments/ROMessageFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/airbnb/android/fragments/ROMessageFragment;->access$300(Lcom/airbnb/android/fragments/ROMessageFragment;)Landroid/widget/ListView;

    move-result-object v5

    new-instance v6, Lcom/airbnb/android/fragments/ROMessageFragment$6$1;

    invoke-direct {v6, p0, v3}, Lcom/airbnb/android/fragments/ROMessageFragment$6$1;-><init>(Lcom/airbnb/android/fragments/ROMessageFragment$6;I)V

    int-to-long v7, v1

    invoke-virtual {v5, v6, v7, v8}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 457
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment$6;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    # getter for: Lcom/airbnb/android/fragments/ROMessageFragment;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v5}, Lcom/airbnb/android/fragments/ROMessageFragment;->access$400(Lcom/airbnb/android/fragments/ROMessageFragment;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v5

    if-eqz v5, :cond_69

    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment$6;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    invoke-virtual {v5}, Lcom/airbnb/android/fragments/ROMessageFragment;->getUserVisibleHint()Z

    move-result v5

    if-eqz v5, :cond_69

    .line 458
    iget-object v5, p0, Lcom/airbnb/android/fragments/ROMessageFragment$6;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    # getter for: Lcom/airbnb/android/fragments/ROMessageFragment;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v5}, Lcom/airbnb/android/fragments/ROMessageFragment;->access$400(Lcom/airbnb/android/fragments/ROMessageFragment;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v5

    iget-object v6, p0, Lcom/airbnb/android/fragments/ROMessageFragment$6;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    # getter for: Lcom/airbnb/android/fragments/ROMessageFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/airbnb/android/fragments/ROMessageFragment;->access$300(Lcom/airbnb/android/fragments/ROMessageFragment;)Landroid/widget/ListView;

    move-result-object v6

    invoke-interface {v5, v6, v2, v4, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 463
    :cond_69
    return-void
.end method
