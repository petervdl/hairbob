.class Lcom/etsy/android/grid/ExtendableListView$PerformClick;
.super Lcom/etsy/android/grid/ExtendableListView$WindowRunnnable;
.source "ExtendableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etsy/android/grid/ExtendableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/etsy/android/grid/ExtendableListView;


# direct methods
.method private constructor <init>(Lcom/etsy/android/grid/ExtendableListView;)V
    .registers 3

    .prologue
    .line 2737
    iput-object p1, p0, Lcom/etsy/android/grid/ExtendableListView$PerformClick;->this$0:Lcom/etsy/android/grid/ExtendableListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/etsy/android/grid/ExtendableListView$WindowRunnnable;-><init>(Lcom/etsy/android/grid/ExtendableListView;Lcom/etsy/android/grid/ExtendableListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/etsy/android/grid/ExtendableListView;Lcom/etsy/android/grid/ExtendableListView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/etsy/android/grid/ExtendableListView;
    .param p2, "x1"    # Lcom/etsy/android/grid/ExtendableListView$1;

    .prologue
    .line 2737
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/ExtendableListView$PerformClick;-><init>(Lcom/etsy/android/grid/ExtendableListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 2741
    iget-object v4, p0, Lcom/etsy/android/grid/ExtendableListView$PerformClick;->this$0:Lcom/etsy/android/grid/ExtendableListView;

    # getter for: Lcom/etsy/android/grid/ExtendableListView;->mDataChanged:Z
    invoke-static {v4}, Lcom/etsy/android/grid/ExtendableListView;->access$700(Lcom/etsy/android/grid/ExtendableListView;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2755
    :cond_8
    :goto_8
    return-void

    .line 2743
    :cond_9
    iget-object v4, p0, Lcom/etsy/android/grid/ExtendableListView$PerformClick;->this$0:Lcom/etsy/android/grid/ExtendableListView;

    iget-object v0, v4, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2744
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget v2, p0, Lcom/etsy/android/grid/ExtendableListView$PerformClick;->mClickMotionPosition:I

    .line 2745
    .local v2, "motionPosition":I
    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/etsy/android/grid/ExtendableListView$PerformClick;->this$0:Lcom/etsy/android/grid/ExtendableListView;

    # getter for: Lcom/etsy/android/grid/ExtendableListView;->mItemCount:I
    invoke-static {v4}, Lcom/etsy/android/grid/ExtendableListView;->access$400(Lcom/etsy/android/grid/ExtendableListView;)I

    move-result v4

    if-lez v4, :cond_8

    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_8

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView$PerformClick;->sameWindow()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2748
    iget-object v4, p0, Lcom/etsy/android/grid/ExtendableListView$PerformClick;->this$0:Lcom/etsy/android/grid/ExtendableListView;

    invoke-virtual {v4, v2}, Lcom/etsy/android/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2750
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_8

    .line 2751
    iget-object v4, p0, Lcom/etsy/android/grid/ExtendableListView$PerformClick;->this$0:Lcom/etsy/android/grid/ExtendableListView;

    iget v4, v4, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    add-int v1, v2, v4

    .line 2752
    .local v1, "clickPosition":I
    iget-object v4, p0, Lcom/etsy/android/grid/ExtendableListView$PerformClick;->this$0:Lcom/etsy/android/grid/ExtendableListView;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-virtual {v4, v3, v1, v5, v6}, Lcom/etsy/android/grid/ExtendableListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_8
.end method
