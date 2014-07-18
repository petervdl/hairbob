.class public abstract Lcom/etsy/android/grid/ExtendableListView;
.super Landroid/widget/AbsListView;
.source "ExtendableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/etsy/android/grid/ExtendableListView$1;,
        Lcom/etsy/android/grid/ExtendableListView$WindowRunnnable;,
        Lcom/etsy/android/grid/ExtendableListView$PerformClick;,
        Lcom/etsy/android/grid/ExtendableListView$ListSavedState;,
        Lcom/etsy/android/grid/ExtendableListView$RecycleBin;,
        Lcom/etsy/android/grid/ExtendableListView$LayoutParams;,
        Lcom/etsy/android/grid/ExtendableListView$AdapterDataSetObserver;,
        Lcom/etsy/android/grid/ExtendableListView$FlingRunnable;,
        Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_FORCE_TOP:I = 0x1

.field private static final LAYOUT_NORMAL:I = 0x0

.field private static final LAYOUT_SYNC:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ExtendableListView"

.field private static final TOUCH_MODE_DONE_WAITING:I = 0x5

.field private static final TOUCH_MODE_DOWN:I = 0x3

.field private static final TOUCH_MODE_FLINGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I = 0x0

.field private static final TOUCH_MODE_SCROLLING:I = 0x1

.field private static final TOUCH_MODE_TAP:I = 0x4


# instance fields
.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field private mBlockLayoutRequests:Z

.field protected mClipToPadding:Z

.field private mDataChanged:Z

.field protected mFirstPosition:I

.field private mFlingRunnable:Lcom/etsy/android/grid/ExtendableListView$FlingRunnable;

.field private mFlingVelocity:I

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInLayout:Z

.field private mIsAttached:Z

.field final mIsScrap:[Z

.field private mItemCount:I

.field private mLastY:I

.field private mLayoutMode:I

.field private mMaximumVelocity:I

.field private mMotionCorrection:I

.field private mMotionPosition:I

.field private mMotionX:I

.field private mMotionY:I

.field mNeedSync:Z

.field private mObserver:Lcom/etsy/android/grid/ExtendableListView$AdapterDataSetObserver;

.field private mOldItemCount:I

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mPerformClick:Lcom/etsy/android/grid/ExtendableListView$PerformClick;

.field private mRecycleBin:Lcom/etsy/android/grid/ExtendableListView$RecycleBin;

.field private mScrollState:I

.field protected mSpecificTop:I

.field mSyncHeight:J

.field protected mSyncPosition:I

.field mSyncRowId:J

.field private mSyncState:Lcom/etsy/android/grid/ExtendableListView$ListSavedState;

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 166
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    iput v3, p0, Lcom/etsy/android/grid/ExtendableListView;->mScrollState:I

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 113
    const/4 v1, -0x1

    iput v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mActivePointerId:I

    .line 124
    iput-boolean v3, p0, Lcom/etsy/android/grid/ExtendableListView;->mBlockLayoutRequests:Z

    .line 131
    const/4 v1, 0x1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mIsScrap:[Z

    .line 2543
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mSyncRowId:J

    .line 2553
    iput-boolean v3, p0, Lcom/etsy/android/grid/ExtendableListView;->mNeedSync:Z

    .line 169
    invoke-virtual {p0, v3}, Lcom/etsy/android/grid/ExtendableListView;->setWillNotDraw(Z)V

    .line 170
    invoke-virtual {p0, v3}, Lcom/etsy/android/grid/ExtendableListView;->setClipToPadding(Z)V

    .line 171
    invoke-virtual {p0, v3}, Lcom/etsy/android/grid/ExtendableListView;->setFocusableInTouchMode(Z)V

    .line 173
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 174
    .local v0, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mTouchSlop:I

    .line 175
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mMaximumVelocity:I

    .line 176
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mFlingVelocity:I

    .line 178
    new-instance v1, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;

    invoke-direct {v1, p0}, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;-><init>(Lcom/etsy/android/grid/ExtendableListView;)V

    iput-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mRecycleBin:Lcom/etsy/android/grid/ExtendableListView$RecycleBin;

    .line 179
    new-instance v1, Lcom/etsy/android/grid/ExtendableListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/etsy/android/grid/ExtendableListView$AdapterDataSetObserver;-><init>(Lcom/etsy/android/grid/ExtendableListView;)V

    iput-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mObserver:Lcom/etsy/android/grid/ExtendableListView$AdapterDataSetObserver;

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 185
    iput v3, p0, Lcom/etsy/android/grid/ExtendableListView;->mLayoutMode:I

    .line 186
    return-void
.end method

.method static synthetic access$1000(Lcom/etsy/android/grid/ExtendableListView;)V
    .registers 1
    .param p0, "x0"    # Lcom/etsy/android/grid/ExtendableListView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/etsy/android/grid/ExtendableListView;->updateEmptyStatus()V

    return-void
.end method

.method static synthetic access$1100(Lcom/etsy/android/grid/ExtendableListView;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/etsy/android/grid/ExtendableListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/etsy/android/grid/ExtendableListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/etsy/android/grid/ExtendableListView;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/etsy/android/grid/ExtendableListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/etsy/android/grid/ExtendableListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/etsy/android/grid/ExtendableListView;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/etsy/android/grid/ExtendableListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/etsy/android/grid/ExtendableListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/etsy/android/grid/ExtendableListView;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/etsy/android/grid/ExtendableListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/etsy/android/grid/ExtendableListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/etsy/android/grid/ExtendableListView;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/etsy/android/grid/ExtendableListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/etsy/android/grid/ExtendableListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/etsy/android/grid/ExtendableListView;)I
    .registers 2
    .param p0, "x0"    # Lcom/etsy/android/grid/ExtendableListView;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/etsy/android/grid/ExtendableListView;)I
    .registers 2
    .param p0, "x0"    # Lcom/etsy/android/grid/ExtendableListView;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/etsy/android/grid/ExtendableListView;)I
    .registers 2
    .param p0, "x0"    # Lcom/etsy/android/grid/ExtendableListView;

    .prologue
    .line 59
    iget v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mTouchMode:I

    return v0
.end method

.method static synthetic access$202(Lcom/etsy/android/grid/ExtendableListView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/etsy/android/grid/ExtendableListView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/etsy/android/grid/ExtendableListView;->mTouchMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/etsy/android/grid/ExtendableListView;Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "x0"    # Lcom/etsy/android/grid/ExtendableListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/ExtendableListView;->postOnAnimate(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/etsy/android/grid/ExtendableListView;)I
    .registers 2
    .param p0, "x0"    # Lcom/etsy/android/grid/ExtendableListView;

    .prologue
    .line 59
    iget v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mItemCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/etsy/android/grid/ExtendableListView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/etsy/android/grid/ExtendableListView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/etsy/android/grid/ExtendableListView;->mItemCount:I

    return p1
.end method

.method static synthetic access$502(Lcom/etsy/android/grid/ExtendableListView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/etsy/android/grid/ExtendableListView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/etsy/android/grid/ExtendableListView;->mMotionPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/etsy/android/grid/ExtendableListView;II)Z
    .registers 4
    .param p0, "x0"    # Lcom/etsy/android/grid/ExtendableListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/etsy/android/grid/ExtendableListView;->moveTheChildren(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/etsy/android/grid/ExtendableListView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/etsy/android/grid/ExtendableListView;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mDataChanged:Z

    return v0
.end method

.method static synthetic access$702(Lcom/etsy/android/grid/ExtendableListView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/etsy/android/grid/ExtendableListView;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/etsy/android/grid/ExtendableListView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$800(Lcom/etsy/android/grid/ExtendableListView;)I
    .registers 2
    .param p0, "x0"    # Lcom/etsy/android/grid/ExtendableListView;

    .prologue
    .line 59
    iget v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mOldItemCount:I

    return v0
.end method

.method static synthetic access$802(Lcom/etsy/android/grid/ExtendableListView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/etsy/android/grid/ExtendableListView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/etsy/android/grid/ExtendableListView;->mOldItemCount:I

    return p1
.end method

.method static synthetic access$900(Lcom/etsy/android/grid/ExtendableListView;)Lcom/etsy/android/grid/ExtendableListView$RecycleBin;
    .registers 2
    .param p0, "x0"    # Lcom/etsy/android/grid/ExtendableListView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mRecycleBin:Lcom/etsy/android/grid/ExtendableListView$RecycleBin;

    return-object v0
.end method

.method private adjustViewsUpOrDown()V
    .registers 5

    .prologue
    .line 1697
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getChildCount()I

    move-result v0

    .line 1700
    .local v0, "childCount":I
    if-lez v0, :cond_19

    .line 1703
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getHighestChildTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getListPaddingTop()I

    move-result v3

    sub-int v1, v2, v3

    .line 1704
    .local v1, "delta":I
    if-gez v1, :cond_13

    .line 1706
    const/4 v1, 0x0

    .line 1709
    :cond_13
    if-eqz v1, :cond_19

    .line 1710
    neg-int v2, v1

    invoke-virtual {p0, v2}, Lcom/etsy/android/grid/ExtendableListView;->offsetChildrenTopAndBottom(I)V

    .line 1713
    .end local v1    # "delta":I
    :cond_19
    return-void
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2599
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;>;"
    if-nez p1, :cond_3

    .line 2608
    :cond_2
    return-void

    .line 2600
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;

    .line 2601
    .local v2, "info":Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;
    iget-object v0, v2, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;->view:Landroid/view/View;

    .line 2602
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2604
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v3, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;

    if-eqz v4, :cond_7

    .line 2605
    check-cast v3, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;->recycledHeaderFooter:Z

    goto :goto_7
.end method

.method private clearState()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2585
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/etsy/android/grid/ExtendableListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 2586
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/etsy/android/grid/ExtendableListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 2588
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->removeAllViewsInLayout()V

    .line 2589
    iput v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    .line 2590
    iput-boolean v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mDataChanged:Z

    .line 2591
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mRecycleBin:Lcom/etsy/android/grid/ExtendableListView$RecycleBin;

    invoke-virtual {v0}, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->clear()V

    .line 2592
    iput-boolean v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mNeedSync:Z

    .line 2593
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mSyncState:Lcom/etsy/android/grid/ExtendableListView$ListSavedState;

    .line 2594
    iput v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mLayoutMode:I

    .line 2595
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->invalidate()V

    .line 2596
    return-void
.end method

.method private correctTooHigh(I)V
    .registers 10
    .param p1, "childCount"    # I

    .prologue
    .line 1601
    iget v6, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    add-int/2addr v6, p1

    add-int/lit8 v4, v6, -0x1

    .line 1602
    .local v4, "lastPosition":I
    iget v6, p0, Lcom/etsy/android/grid/ExtendableListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ne v4, v6, :cond_54

    if-lez p1, :cond_54

    .line 1605
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getLowestChildBottom()I

    move-result v3

    .line 1608
    .local v3, "lastBottom":I
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getListPaddingBottom()I

    move-result v7

    sub-int v1, v6, v7

    .line 1612
    .local v1, "end":I
    sub-int v0, v1, v3

    .line 1614
    .local v0, "bottomOffset":I
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getHighestChildTop()I

    move-result v2

    .line 1618
    .local v2, "firstTop":I
    if-lez v0, :cond_54

    iget v6, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    if-gtz v6, :cond_32

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getListPaddingTop()I

    move-result v6

    if-ge v2, v6, :cond_54

    .line 1619
    :cond_32
    iget v6, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    if-nez v6, :cond_3f

    .line 1621
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getListPaddingTop()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1624
    :cond_3f
    invoke-virtual {p0, v0}, Lcom/etsy/android/grid/ExtendableListView;->offsetChildrenTopAndBottom(I)V

    .line 1625
    iget v6, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    if-lez v6, :cond_54

    .line 1628
    iget v6, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    add-int/lit8 v5, v6, -0x1

    .line 1629
    .local v5, "previousPosition":I
    invoke-virtual {p0, v5}, Lcom/etsy/android/grid/ExtendableListView;->getNextChildUpsBottom(I)I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/etsy/android/grid/ExtendableListView;->fillUp(II)Landroid/view/View;

    .line 1631
    invoke-direct {p0}, Lcom/etsy/android/grid/ExtendableListView;->adjustViewsUpOrDown()V

    .line 1636
    .end local v0    # "bottomOffset":I
    .end local v1    # "end":I
    .end local v2    # "firstTop":I
    .end local v3    # "lastBottom":I
    .end local v5    # "previousPosition":I
    :cond_54
    return-void
.end method

.method private correctTooLow(I)V
    .registers 11
    .param p1, "childCount"    # I

    .prologue
    .line 1648
    iget v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    if-nez v7, :cond_54

    if-lez p1, :cond_54

    .line 1651
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getHighestChildTop()I

    move-result v1

    .line 1654
    .local v1, "firstTop":I
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getListPaddingTop()I

    move-result v5

    .line 1657
    .local v5, "start":I
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getListPaddingBottom()I

    move-result v8

    sub-int v0, v7, v8

    .line 1661
    .local v0, "end":I
    sub-int v6, v1, v5

    .line 1662
    .local v6, "topOffset":I
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getLowestChildBottom()I

    move-result v2

    .line 1664
    .local v2, "lastBottom":I
    iget v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v3, v7, -0x1

    .line 1668
    .local v3, "lastPosition":I
    if-lez v6, :cond_54

    .line 1669
    iget v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-lt v3, v7, :cond_32

    if-le v2, v0, :cond_55

    .line 1670
    :cond_32
    iget v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v3, v7, :cond_3e

    .line 1672
    sub-int v7, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1675
    :cond_3e
    neg-int v7, v6

    invoke-virtual {p0, v7}, Lcom/etsy/android/grid/ExtendableListView;->offsetChildrenTopAndBottom(I)V

    .line 1676
    iget v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_54

    .line 1679
    add-int/lit8 v4, v3, 0x1

    .line 1680
    .local v4, "nextPosition":I
    invoke-virtual {p0, v4}, Lcom/etsy/android/grid/ExtendableListView;->getNextChildDownsTop(I)I

    move-result v7

    invoke-direct {p0, v4, v7}, Lcom/etsy/android/grid/ExtendableListView;->fillDown(II)Landroid/view/View;

    .line 1682
    invoke-direct {p0}, Lcom/etsy/android/grid/ExtendableListView;->adjustViewsUpOrDown()V

    .line 1690
    .end local v0    # "end":I
    .end local v1    # "firstTop":I
    .end local v2    # "lastBottom":I
    .end local v3    # "lastPosition":I
    .end local v4    # "nextPosition":I
    .end local v5    # "start":I
    .end local v6    # "topOffset":I
    :cond_54
    :goto_54
    return-void

    .line 1685
    .restart local v0    # "end":I
    .restart local v1    # "firstTop":I
    .restart local v2    # "lastBottom":I
    .restart local v3    # "lastPosition":I
    .restart local v5    # "start":I
    .restart local v6    # "topOffset":I
    :cond_55
    iget v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v3, v7, :cond_54

    .line 1686
    invoke-direct {p0}, Lcom/etsy/android/grid/ExtendableListView;->adjustViewsUpOrDown()V

    goto :goto_54
.end method

.method private fillDown(II)Landroid/view/View;
    .registers 7
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .prologue
    .line 1285
    const/4 v1, 0x0

    .line 1287
    .local v1, "selectedView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getHeight()I

    move-result v0

    .line 1288
    .local v0, "end":I
    iget-boolean v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mClipToPadding:Z

    if-eqz v2, :cond_e

    .line 1289
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getListPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1292
    :cond_e
    :goto_e
    if-lt p2, v0, :cond_16

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->hasSpaceDown()Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_16
    iget v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mItemCount:I

    if-ge p1, v2, :cond_26

    .line 1294
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/etsy/android/grid/ExtendableListView;->makeAndAddView(IIZZ)Landroid/view/View;

    .line 1295
    add-int/lit8 p1, p1, 0x1

    .line 1296
    invoke-virtual {p0, p1}, Lcom/etsy/android/grid/ExtendableListView;->getNextChildDownsTop(I)I

    move-result p2

    goto :goto_e

    .line 1299
    :cond_26
    return-object v1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .registers 4
    .param p1, "nextTop"    # I

    .prologue
    .line 1338
    iget v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    iget v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    .line 1339
    iget v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    if-gez v0, :cond_13

    .line 1340
    const/4 v0, 0x0

    iput v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    .line 1342
    :cond_13
    iget v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/etsy/android/grid/ExtendableListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .registers 11
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 1356
    const/4 v6, 0x0

    .line 1357
    .local v6, "tempIsSelected":Z
    const/4 v7, 0x1

    invoke-direct {p0, p1, p2, v7, v6}, Lcom/etsy/android/grid/ExtendableListView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object v5

    .line 1359
    .local v5, "temp":Landroid/view/View;
    iput p1, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    .line 1364
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Lcom/etsy/android/grid/ExtendableListView;->getNextChildUpsBottom(I)I

    move-result v3

    .line 1365
    .local v3, "nextBottom":I
    add-int/lit8 v7, p1, 0x1

    invoke-virtual {p0, v7}, Lcom/etsy/android/grid/ExtendableListView;->getNextChildDownsTop(I)I

    move-result v4

    .line 1367
    .local v4, "nextTop":I
    add-int/lit8 v7, p1, -0x1

    invoke-direct {p0, v7, v3}, Lcom/etsy/android/grid/ExtendableListView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 1369
    .local v0, "above":Landroid/view/View;
    invoke-direct {p0}, Lcom/etsy/android/grid/ExtendableListView;->adjustViewsUpOrDown()V

    .line 1370
    add-int/lit8 v7, p1, 0x1

    invoke-direct {p0, v7, v4}, Lcom/etsy/android/grid/ExtendableListView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 1371
    .local v1, "below":Landroid/view/View;
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getChildCount()I

    move-result v2

    .line 1372
    .local v2, "childCount":I
    if-lez v2, :cond_2c

    .line 1373
    invoke-direct {p0, v2}, Lcom/etsy/android/grid/ExtendableListView;->correctTooHigh(I)V

    .line 1376
    :cond_2c
    if-eqz v6, :cond_2f

    .line 1383
    .end local v5    # "temp":Landroid/view/View;
    :goto_2e
    return-object v5

    .line 1379
    .restart local v5    # "temp":Landroid/view/View;
    :cond_2f
    if-eqz v0, :cond_33

    move-object v5, v0

    .line 1380
    goto :goto_2e

    :cond_33
    move-object v5, v1

    .line 1383
    goto :goto_2e
.end method

.method private fillUp(II)Landroid/view/View;
    .registers 7
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .prologue
    const/4 v2, 0x0

    .line 1311
    const/4 v1, 0x0

    .line 1313
    .local v1, "selectedView":Landroid/view/View;
    iget-boolean v3, p0, Lcom/etsy/android/grid/ExtendableListView;->mClipToPadding:Z

    if-eqz v3, :cond_1e

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getListPaddingTop()I

    move-result v0

    .line 1315
    .local v0, "end":I
    :goto_a
    if-gt p2, v0, :cond_12

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->hasSpaceUp()Z

    move-result v3

    if-eqz v3, :cond_20

    :cond_12
    if-ltz p1, :cond_20

    .line 1317
    invoke-direct {p0, p1, p2, v2, v2}, Lcom/etsy/android/grid/ExtendableListView;->makeAndAddView(IIZZ)Landroid/view/View;

    .line 1318
    add-int/lit8 p1, p1, -0x1

    .line 1319
    invoke-virtual {p0, p1}, Lcom/etsy/android/grid/ExtendableListView;->getNextChildUpsBottom(I)I

    move-result p2

    goto :goto_a

    .end local v0    # "end":I
    :cond_1e
    move v0, v2

    .line 1313
    goto :goto_a

    .line 1323
    .restart local v0    # "end":I
    :cond_20
    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    .line 1324
    return-object v1
.end method

.method private findMotionRow(I)I
    .registers 6
    .param p1, "y"    # I

    .prologue
    .line 1080
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getChildCount()I

    move-result v0

    .line 1081
    .local v0, "childCount":I
    if-lez v0, :cond_1a

    .line 1083
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1a

    .line 1084
    invoke-virtual {p0, v1}, Lcom/etsy/android/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1085
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_17

    .line 1086
    iget v3, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1090
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :goto_16
    return v3

    .line 1083
    .restart local v1    # "i":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1090
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1a
    const/4 v3, -0x1

    goto :goto_16
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 1839
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1844
    :goto_a
    return-void

    .line 1842
    :cond_b
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_a
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 1848
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1850
    :cond_a
    return-void
.end method

.method private makeAndAddView(IIZZ)Landroid/view/View;
    .registers 13
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flowDown"    # Z
    .param p4, "selected"    # Z

    .prologue
    .line 1393
    invoke-virtual {p0, p1, p3}, Lcom/etsy/android/grid/ExtendableListView;->onChildCreated(IZ)V

    .line 1395
    iget-boolean v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mDataChanged:Z

    if-nez v0, :cond_1a

    .line 1397
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mRecycleBin:Lcom/etsy/android/grid/ExtendableListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1398
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_1a

    .line 1402
    const/4 v6, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/etsy/android/grid/ExtendableListView;->setupChild(Landroid/view/View;IIZZZ)V

    move-object v7, v1

    .line 1412
    .end local v1    # "child":Landroid/view/View;
    .local v7, "child":Landroid/view/View;
    :goto_19
    return-object v7

    .line 1408
    .end local v7    # "child":Landroid/view/View;
    :cond_1a
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mIsScrap:[Z

    invoke-direct {p0, p1, v0}, Lcom/etsy/android/grid/ExtendableListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1410
    .restart local v1    # "child":Landroid/view/View;
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v6, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/etsy/android/grid/ExtendableListView;->setupChild(Landroid/view/View;IIZZZ)V

    move-object v7, v1

    .line 1412
    .end local v1    # "child":Landroid/view/View;
    .restart local v7    # "child":Landroid/view/View;
    goto :goto_19
.end method

.method private moveTheChildren(II)Z
    .registers 33
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .prologue
    .line 1103
    invoke-virtual/range {p0 .. p0}, Lcom/etsy/android/grid/ExtendableListView;->hasChildren()Z

    move-result v28

    if-nez v28, :cond_9

    const/16 v28, 0x1

    .line 1242
    :goto_8
    return v28

    .line 1105
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/etsy/android/grid/ExtendableListView;->getHighestChildTop()I

    move-result v13

    .line 1106
    .local v13, "firstTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/etsy/android/grid/ExtendableListView;->getLowestChildBottom()I

    move-result v20

    .line 1111
    .local v20, "lastBottom":I
    const/4 v10, 0x0

    .line 1112
    .local v10, "effectivePaddingTop":I
    const/4 v9, 0x0

    .line 1113
    .local v9, "effectivePaddingBottom":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/etsy/android/grid/ExtendableListView;->mClipToPadding:Z

    move/from16 v28, v0

    if-eqz v28, :cond_23

    .line 1114
    invoke-virtual/range {p0 .. p0}, Lcom/etsy/android/grid/ExtendableListView;->getListPaddingTop()I

    move-result v10

    .line 1115
    invoke-virtual/range {p0 .. p0}, Lcom/etsy/android/grid/ExtendableListView;->getListPaddingBottom()I

    move-result v9

    .line 1118
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/etsy/android/grid/ExtendableListView;->getHeight()I

    move-result v15

    .line 1119
    .local v15, "gridHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/etsy/android/grid/ExtendableListView;->getFirstChildTop()I

    move-result v28

    sub-int v24, v10, v28

    .line 1120
    .local v24, "spaceAbove":I
    sub-int v11, v15, v9

    .line 1121
    .local v11, "end":I
    invoke-virtual/range {p0 .. p0}, Lcom/etsy/android/grid/ExtendableListView;->getLastChildBottom()I

    move-result v28

    sub-int v25, v28, v11

    .line 1123
    .local v25, "spaceBelow":I
    invoke-virtual/range {p0 .. p0}, Lcom/etsy/android/grid/ExtendableListView;->getListPaddingBottom()I

    move-result v28

    sub-int v28, v15, v28

    invoke-virtual/range {p0 .. p0}, Lcom/etsy/android/grid/ExtendableListView;->getListPaddingTop()I

    move-result v29

    sub-int v17, v28, v29

    .line 1125
    .local v17, "height":I
    if-gez p2, :cond_8c

    .line 1126
    add-int/lit8 v28, v17, -0x1

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1132
    :goto_52
    move-object/from16 v0, p0

    iget v12, v0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    .line 1134
    .local v12, "firstPosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/etsy/android/grid/ExtendableListView;->getListPaddingTop()I

    move-result v22

    .line 1135
    .local v22, "maxTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/etsy/android/grid/ExtendableListView;->getListPaddingBottom()I

    move-result v28

    sub-int v21, v15, v28

    .line 1136
    .local v21, "maxBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/etsy/android/grid/ExtendableListView;->getChildCount()I

    move-result v7

    .line 1138
    .local v7, "childCount":I
    if-nez v12, :cond_97

    move/from16 v0, v22

    if-lt v13, v0, :cond_97

    if-ltz p2, :cond_97

    const/4 v4, 0x1

    .line 1140
    .local v4, "cannotScrollDown":Z
    :goto_6d
    add-int v28, v12, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/etsy/android/grid/ExtendableListView;->mItemCount:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_99

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_99

    if-gtz p2, :cond_99

    const/4 v5, 0x1

    .line 1154
    .local v5, "cannotScrollUp":Z
    :goto_84
    if-eqz v4, :cond_9f

    .line 1156
    if-eqz p2, :cond_9b

    const/16 v28, 0x1

    goto/16 :goto_8

    .line 1129
    .end local v4    # "cannotScrollDown":Z
    .end local v5    # "cannotScrollUp":Z
    .end local v7    # "childCount":I
    .end local v12    # "firstPosition":I
    .end local v21    # "maxBottom":I
    .end local v22    # "maxTop":I
    :cond_8c
    add-int/lit8 v28, v17, -0x1

    move/from16 v0, v28

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_52

    .line 1138
    .restart local v7    # "childCount":I
    .restart local v12    # "firstPosition":I
    .restart local v21    # "maxBottom":I
    .restart local v22    # "maxTop":I
    :cond_97
    const/4 v4, 0x0

    goto :goto_6d

    .line 1140
    .restart local v4    # "cannotScrollDown":Z
    :cond_99
    const/4 v5, 0x0

    goto :goto_84

    .line 1156
    .restart local v5    # "cannotScrollUp":Z
    :cond_9b
    const/16 v28, 0x0

    goto/16 :goto_8

    .line 1159
    :cond_9f
    if-eqz v5, :cond_ab

    .line 1161
    if-eqz p2, :cond_a7

    const/16 v28, 0x1

    goto/16 :goto_8

    :cond_a7
    const/16 v28, 0x0

    goto/16 :goto_8

    .line 1164
    :cond_ab
    if-gez p2, :cond_152

    const/16 v19, 0x1

    .line 1166
    .local v19, "isDown":Z
    :goto_af
    invoke-virtual/range {p0 .. p0}, Lcom/etsy/android/grid/ExtendableListView;->getHeaderViewsCount()I

    move-result v16

    .line 1167
    .local v16, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/etsy/android/grid/ExtendableListView;->mItemCount:I

    move/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/etsy/android/grid/ExtendableListView;->getFooterViewsCount()I

    move-result v29

    sub-int v14, v28, v29

    .line 1169
    .local v14, "footerViewsStart":I
    const/16 v26, 0x0

    .line 1170
    .local v26, "start":I
    const/4 v8, 0x0

    .line 1172
    .local v8, "count":I
    if-eqz v19, :cond_175

    .line 1173
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v27, v0

    .line 1174
    .local v27, "top":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/etsy/android/grid/ExtendableListView;->mClipToPadding:Z

    move/from16 v28, v0

    if-eqz v28, :cond_d7

    .line 1175
    invoke-virtual/range {p0 .. p0}, Lcom/etsy/android/grid/ExtendableListView;->getListPaddingTop()I

    move-result v28

    add-int v27, v27, v28

    .line 1177
    :cond_d7
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_d9
    move/from16 v0, v18

    if-ge v0, v7, :cond_ef

    .line 1178
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/etsy/android/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1179
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v28

    move/from16 v0, v28

    move/from16 v1, v27

    if-lt v0, v1, :cond_156

    .line 1212
    .end local v6    # "child":Landroid/view/View;
    .end local v27    # "top":I
    :cond_ef
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/etsy/android/grid/ExtendableListView;->mBlockLayoutRequests:Z

    .line 1214
    if-lez v8, :cond_110

    .line 1216
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Lcom/etsy/android/grid/ExtendableListView;->detachViewsFromParent(II)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/etsy/android/grid/ExtendableListView;->mRecycleBin:Lcom/etsy/android/grid/ExtendableListView$RecycleBin;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->removeSkippedScrap()V

    .line 1218
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Lcom/etsy/android/grid/ExtendableListView;->onChildrenDetached(II)V

    .line 1223
    :cond_110
    invoke-virtual/range {p0 .. p0}, Lcom/etsy/android/grid/ExtendableListView;->awakenScrollBars()Z

    move-result v28

    if-nez v28, :cond_119

    .line 1224
    invoke-virtual/range {p0 .. p0}, Lcom/etsy/android/grid/ExtendableListView;->invalidate()V

    .line 1227
    :cond_119
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/etsy/android/grid/ExtendableListView;->offsetChildrenTopAndBottom(I)V

    .line 1229
    if-eqz v19, :cond_130

    .line 1230
    move-object/from16 v0, p0

    iget v0, v0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    move/from16 v28, v0

    add-int v28, v28, v8

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    .line 1233
    :cond_130
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1234
    .local v2, "absIncrementalDeltaY":I
    move/from16 v0, v24

    if-lt v0, v2, :cond_13c

    move/from16 v0, v25

    if-ge v0, v2, :cond_143

    .line 1235
    :cond_13c
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/etsy/android/grid/ExtendableListView;->fillGap(Z)V

    .line 1239
    :cond_143
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/etsy/android/grid/ExtendableListView;->mBlockLayoutRequests:Z

    .line 1240
    invoke-virtual/range {p0 .. p0}, Lcom/etsy/android/grid/ExtendableListView;->invokeOnItemScrollListener()V

    .line 1242
    const/16 v28, 0x0

    goto/16 :goto_8

    .line 1164
    .end local v2    # "absIncrementalDeltaY":I
    .end local v8    # "count":I
    .end local v14    # "footerViewsStart":I
    .end local v16    # "headerViewsCount":I
    .end local v18    # "i":I
    .end local v19    # "isDown":Z
    .end local v26    # "start":I
    :cond_152
    const/16 v19, 0x0

    goto/16 :goto_af

    .line 1183
    .restart local v6    # "child":Landroid/view/View;
    .restart local v8    # "count":I
    .restart local v14    # "footerViewsStart":I
    .restart local v16    # "headerViewsCount":I
    .restart local v18    # "i":I
    .restart local v19    # "isDown":Z
    .restart local v26    # "start":I
    .restart local v27    # "top":I
    :cond_156
    add-int/lit8 v8, v8, 0x1

    .line 1184
    add-int v23, v12, v18

    .line 1185
    .local v23, "position":I
    move/from16 v0, v23

    move/from16 v1, v16

    if-lt v0, v1, :cond_171

    move/from16 v0, v23

    if-ge v0, v14, :cond_171

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/etsy/android/grid/ExtendableListView;->mRecycleBin:Lcom/etsy/android/grid/ExtendableListView$RecycleBin;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1177
    :cond_171
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_d9

    .line 1192
    .end local v6    # "child":Landroid/view/View;
    .end local v18    # "i":I
    .end local v23    # "position":I
    .end local v27    # "top":I
    :cond_175
    sub-int v3, v15, p2

    .line 1193
    .local v3, "bottom":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/etsy/android/grid/ExtendableListView;->mClipToPadding:Z

    move/from16 v28, v0

    if-eqz v28, :cond_185

    .line 1194
    invoke-virtual/range {p0 .. p0}, Lcom/etsy/android/grid/ExtendableListView;->getListPaddingBottom()I

    move-result v28

    sub-int v3, v3, v28

    .line 1196
    :cond_185
    add-int/lit8 v18, v7, -0x1

    .restart local v18    # "i":I
    :goto_187
    if-ltz v18, :cond_ef

    .line 1197
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/etsy/android/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1198
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v28

    move/from16 v0, v28

    if-le v0, v3, :cond_ef

    .line 1202
    move/from16 v26, v18

    .line 1203
    add-int/lit8 v8, v8, 0x1

    .line 1204
    add-int v23, v12, v18

    .line 1205
    .restart local v23    # "position":I
    move/from16 v0, v23

    move/from16 v1, v16

    if-lt v0, v1, :cond_1b6

    move/from16 v0, v23

    if-ge v0, v14, :cond_1b6

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/etsy/android/grid/ExtendableListView;->mRecycleBin:Lcom/etsy/android/grid/ExtendableListView$RecycleBin;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1196
    :cond_1b6
    add-int/lit8 v18, v18, -0x1

    goto :goto_187
.end method

.method private obtainView(I[Z)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    const/4 v3, 0x0

    .line 1565
    aput-boolean v3, p2, v3

    .line 1568
    iget-object v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mRecycleBin:Lcom/etsy/android/grid/ExtendableListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 1571
    .local v1, "scrapView":Landroid/view/View;
    if-eqz v1, :cond_1d

    .line 1573
    iget-object v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1575
    .local v0, "child":Landroid/view/View;
    if-eq v0, v1, :cond_19

    .line 1576
    iget-object v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mRecycleBin:Lcom/etsy/android/grid/ExtendableListView$RecycleBin;

    invoke-virtual {v2, v1, p1}, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1587
    :goto_18
    return-object v0

    .line 1579
    :cond_19
    const/4 v2, 0x1

    aput-boolean v2, p2, v3

    goto :goto_18

    .line 1584
    .end local v0    # "child":Landroid/view/View;
    :cond_1d
    iget-object v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "child":Landroid/view/View;
    goto :goto_18
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 975
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 978
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 979
    .local v1, "pointerId":I
    iget v3, p0, Lcom/etsy/android/grid/ExtendableListView;->mActivePointerId:I

    if-ne v1, v3, :cond_2c

    .line 983
    if-nez v2, :cond_2d

    const/4 v0, 0x1

    .line 984
    .local v0, "newPointerIndex":I
    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/etsy/android/grid/ExtendableListView;->mMotionX:I

    .line 985
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/etsy/android/grid/ExtendableListView;->mMotionY:I

    .line 986
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/etsy/android/grid/ExtendableListView;->mActivePointerId:I

    .line 987
    invoke-direct {p0}, Lcom/etsy/android/grid/ExtendableListView;->recycleVelocityTracker()V

    .line 989
    .end local v0    # "newPointerIndex":I
    :cond_2c
    return-void

    .line 983
    :cond_2d
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private onTouchCancel(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 891
    iput v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mTouchMode:I

    .line 892
    invoke-virtual {p0, v0}, Lcom/etsy/android/grid/ExtendableListView;->setPressed(Z)V

    .line 893
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->invalidate()V

    .line 894
    invoke-direct {p0}, Lcom/etsy/android/grid/ExtendableListView;->recycleVelocityTracker()V

    .line 895
    const/4 v0, -0x1

    iput v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mActivePointerId:I

    .line 896
    const/4 v0, 0x1

    return v0
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 816
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .line 817
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 818
    .local v2, "y":I
    invoke-virtual {p0, v1, v2}, Lcom/etsy/android/grid/ExtendableListView;->pointToPosition(II)I

    move-result v0

    .line 820
    .local v0, "motionPosition":I
    iget-object v5, p0, Lcom/etsy/android/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 821
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v5

    iput v5, p0, Lcom/etsy/android/grid/ExtendableListView;->mActivePointerId:I

    .line 827
    iget v5, p0, Lcom/etsy/android/grid/ExtendableListView;->mTouchMode:I

    if-eq v5, v6, :cond_3c

    iget-boolean v5, p0, Lcom/etsy/android/grid/ExtendableListView;->mDataChanged:Z

    if-nez v5, :cond_3c

    if-ltz v0, :cond_3c

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 832
    const/4 v5, 0x3

    iput v5, p0, Lcom/etsy/android/grid/ExtendableListView;->mTouchMode:I

    .line 836
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v5

    if-eqz v5, :cond_48

    if-gez v0, :cond_48

    .line 854
    :goto_3b
    return v3

    .line 843
    :cond_3c
    iget v5, p0, Lcom/etsy/android/grid/ExtendableListView;->mTouchMode:I

    if-ne v5, v6, :cond_48

    .line 844
    iput v4, p0, Lcom/etsy/android/grid/ExtendableListView;->mTouchMode:I

    .line 845
    iput v3, p0, Lcom/etsy/android/grid/ExtendableListView;->mMotionCorrection:I

    .line 846
    invoke-direct {p0, v2}, Lcom/etsy/android/grid/ExtendableListView;->findMotionRow(I)I

    move-result v0

    .line 849
    :cond_48
    iput v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mMotionX:I

    .line 850
    iput v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mMotionY:I

    .line 851
    iput v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mMotionPosition:I

    .line 852
    const/high16 v3, -0x80000000

    iput v3, p0, Lcom/etsy/android/grid/ExtendableListView;->mLastY:I

    move v3, v4

    .line 854
    goto :goto_3b
.end method

.method private onTouchMove(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 858
    iget v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mActivePointerId:I

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 859
    .local v0, "index":I
    if-gez v0, :cond_34

    .line 860
    const-string/jumbo v2, "ExtendableListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTouchMove could not find pointer with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/etsy/android/grid/ExtendableListView;->mActivePointerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " - did ExtendableListView receive an inconsistent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "event stream?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const/4 v2, 0x0

    .line 886
    :goto_33
    return v2

    .line 865
    :cond_34
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    float-to-int v1, v2

    .line 868
    .local v1, "y":I
    iget-boolean v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mDataChanged:Z

    if-eqz v2, :cond_40

    .line 869
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->layoutChildren()V

    .line 872
    :cond_40
    iget v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_50

    .line 886
    :goto_45
    :pswitch_45
    const/4 v2, 0x1

    goto :goto_33

    .line 878
    :pswitch_47
    invoke-direct {p0, v1}, Lcom/etsy/android/grid/ExtendableListView;->startScrollIfNeeded(I)Z

    goto :goto_45

    .line 882
    :pswitch_4b
    invoke-direct {p0, v1}, Lcom/etsy/android/grid/ExtendableListView;->scrollIfNeeded(I)V

    goto :goto_45

    .line 872
    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_45
        :pswitch_47
        :pswitch_47
        :pswitch_47
    .end packed-switch
.end method

.method private onTouchPointerUp(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 963
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/ExtendableListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 964
    iget v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mMotionX:I

    .line 965
    .local v1, "x":I
    iget v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mMotionY:I

    .line 966
    .local v2, "y":I
    invoke-virtual {p0, v1, v2}, Lcom/etsy/android/grid/ExtendableListView;->pointToPosition(II)I

    move-result v0

    .line 967
    .local v0, "motionPosition":I
    if-ltz v0, :cond_f

    .line 968
    iput v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mMotionPosition:I

    .line 970
    :cond_f
    iput v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mLastY:I

    .line 971
    const/4 v3, 0x1

    return v3
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 900
    iget v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_1e

    .line 910
    :pswitch_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etsy/android/grid/ExtendableListView;->setPressed(Z)V

    .line 911
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->invalidate()V

    .line 912
    invoke-direct {p0}, Lcom/etsy/android/grid/ExtendableListView;->recycleVelocityTracker()V

    .line 913
    const/4 v0, -0x1

    iput v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mActivePointerId:I

    .line 914
    const/4 v0, 0x1

    :goto_13
    return v0

    .line 904
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/ExtendableListView;->onTouchUpTap(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_13

    .line 907
    :pswitch_19
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/ExtendableListView;->onTouchUpScrolling(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_13

    .line 900
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_5
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method private onTouchUpScrolling(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 918
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->hasChildren()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 920
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getFirstChildTop()I

    move-result v2

    .line 921
    .local v2, "top":I
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getLastChildBottom()I

    move-result v1

    .line 922
    .local v1, "bottom":I
    iget v6, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    if-nez v6, :cond_5c

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getListPaddingTop()I

    move-result v6

    if-lt v2, v6, :cond_5c

    iget v6, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mItemCount:I

    if-ge v6, v7, :cond_5c

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getListPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    if-gt v1, v6, :cond_5c

    move v0, v4

    .line 927
    .local v0, "atEdge":Z
    :goto_31
    if-nez v0, :cond_5e

    .line 928
    iget-object v6, p0, Lcom/etsy/android/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    iget v8, p0, Lcom/etsy/android/grid/ExtendableListView;->mMaximumVelocity:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 929
    iget-object v6, p0, Lcom/etsy/android/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mActivePointerId:I

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    .line 931
    .local v3, "velocity":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mFlingVelocity:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5e

    .line 932
    invoke-direct {p0, v3}, Lcom/etsy/android/grid/ExtendableListView;->startFlingRunnable(F)V

    .line 933
    const/4 v6, 0x2

    iput v6, p0, Lcom/etsy/android/grid/ExtendableListView;->mTouchMode:I

    .line 934
    iput v5, p0, Lcom/etsy/android/grid/ExtendableListView;->mMotionY:I

    .line 935
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->invalidate()V

    .line 944
    .end local v0    # "atEdge":Z
    .end local v1    # "bottom":I
    .end local v2    # "top":I
    .end local v3    # "velocity":F
    :goto_5b
    return v4

    .restart local v1    # "bottom":I
    .restart local v2    # "top":I
    :cond_5c
    move v0, v5

    .line 922
    goto :goto_31

    .line 941
    .end local v1    # "bottom":I
    .end local v2    # "top":I
    :cond_5e
    invoke-direct {p0}, Lcom/etsy/android/grid/ExtendableListView;->stopFlingRunnable()V

    .line 942
    invoke-direct {p0}, Lcom/etsy/android/grid/ExtendableListView;->recycleVelocityTracker()V

    .line 943
    iput v5, p0, Lcom/etsy/android/grid/ExtendableListView;->mTouchMode:I

    goto :goto_5b
.end method

.method private onTouchUpTap(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 948
    iget-object v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mPerformClick:Lcom/etsy/android/grid/ExtendableListView$PerformClick;

    if-nez v2, :cond_f

    .line 949
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->invalidate()V

    .line 950
    new-instance v2, Lcom/etsy/android/grid/ExtendableListView$PerformClick;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/etsy/android/grid/ExtendableListView$PerformClick;-><init>(Lcom/etsy/android/grid/ExtendableListView;Lcom/etsy/android/grid/ExtendableListView$1;)V

    iput-object v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mPerformClick:Lcom/etsy/android/grid/ExtendableListView$PerformClick;

    .line 952
    :cond_f
    iget v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mMotionPosition:I

    .line 953
    .local v0, "motionPosition":I
    iget-boolean v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mDataChanged:Z

    if-nez v2, :cond_29

    if-ltz v0, :cond_29

    iget-object v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 954
    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mPerformClick:Lcom/etsy/android/grid/ExtendableListView$PerformClick;

    .line 955
    .local v1, "performClick":Lcom/etsy/android/grid/ExtendableListView$PerformClick;
    iput v0, v1, Lcom/etsy/android/grid/ExtendableListView$PerformClick;->mClickMotionPosition:I

    .line 956
    invoke-virtual {v1}, Lcom/etsy/android/grid/ExtendableListView$PerformClick;->rememberWindowAttachCount()V

    .line 957
    invoke-virtual {v1}, Lcom/etsy/android/grid/ExtendableListView$PerformClick;->run()V

    .line 959
    .end local v1    # "performClick":Lcom/etsy/android/grid/ExtendableListView$PerformClick;
    :cond_29
    const/4 v2, 0x1

    return v2
.end method

.method private postOnAnimate(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1976
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1977
    return-void
.end method

.method private recycleVelocityTracker()V
    .registers 2

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 1854
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1855
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1857
    :cond_c
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 388
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v2, :cond_14

    .line 389
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;

    .line 390
    .local v1, "info":Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;
    iget-object v3, v1, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_15

    .line 391
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 395
    .end local v1    # "info":Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;
    :cond_14
    return-void

    .line 388
    .restart local v1    # "info":Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method static retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 2508
    .local p0, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2509
    .local v1, "size":I
    if-lez v1, :cond_2a

    .line 2511
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_20

    .line 2512
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2513
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;

    iget v3, v3, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;->position:I

    if-ne v3, p1, :cond_1d

    .line 2514
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2521
    .end local v0    # "i":I
    .end local v2    # "view":Landroid/view/View;
    :goto_1c
    return-object v2

    .line 2511
    .restart local v0    # "i":I
    .restart local v2    # "view":Landroid/view/View;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2518
    .end local v2    # "view":Landroid/view/View;
    :cond_20
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    goto :goto_1c

    .line 2521
    .end local v0    # "i":I
    :cond_2a
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method private scrollIfNeeded(I)V
    .registers 12
    .param p1, "y"    # I

    .prologue
    const/4 v9, 0x1

    .line 1033
    iget v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mMotionY:I

    sub-int v6, p1, v7

    .line 1034
    .local v6, "rawDeltaY":I
    iget v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mMotionCorrection:I

    sub-int v1, v6, v7

    .line 1035
    .local v1, "deltaY":I
    iget v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mLastY:I

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_4a

    iget v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mLastY:I

    sub-int v2, p1, v7

    .line 1037
    .local v2, "incrementalDeltaY":I
    :goto_13
    iget v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mTouchMode:I

    if-ne v7, v9, :cond_49

    .line 1039
    iget v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mLastY:I

    if-eq p1, v7, :cond_49

    .line 1041
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/etsy/android/grid/ExtendableListView;->mTouchSlop:I

    if-le v7, v8, :cond_2c

    .line 1042
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 1043
    .local v5, "parent":Landroid/view/ViewParent;
    if-eqz v5, :cond_2c

    .line 1044
    invoke-interface {v5, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1049
    .end local v5    # "parent":Landroid/view/ViewParent;
    :cond_2c
    iget v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mMotionPosition:I

    if-ltz v7, :cond_4c

    .line 1050
    iget v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mMotionPosition:I

    iget v8, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    sub-int v3, v7, v8

    .line 1059
    .local v3, "motionIndex":I
    :goto_36
    const/4 v0, 0x0

    .line 1060
    .local v0, "atEdge":Z
    if-eqz v2, :cond_3d

    .line 1061
    invoke-direct {p0, v1, v2}, Lcom/etsy/android/grid/ExtendableListView;->moveTheChildren(II)Z

    move-result v0

    .line 1065
    :cond_3d
    invoke-virtual {p0, v3}, Lcom/etsy/android/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1066
    .local v4, "motionView":Landroid/view/View;
    if-eqz v4, :cond_47

    .line 1067
    if-eqz v0, :cond_45

    .line 1070
    :cond_45
    iput p1, p0, Lcom/etsy/android/grid/ExtendableListView;->mMotionY:I

    .line 1072
    :cond_47
    iput p1, p0, Lcom/etsy/android/grid/ExtendableListView;->mLastY:I

    .line 1077
    .end local v0    # "atEdge":Z
    .end local v3    # "motionIndex":I
    .end local v4    # "motionView":Landroid/view/View;
    :cond_49
    return-void

    .end local v2    # "incrementalDeltaY":I
    :cond_4a
    move v2, v1

    .line 1035
    goto :goto_13

    .line 1055
    .restart local v2    # "incrementalDeltaY":I
    :cond_4c
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getChildCount()I

    move-result v7

    div-int/lit8 v3, v7, 0x2

    .restart local v3    # "motionIndex":I
    goto :goto_36
.end method

.method private setupChild(Landroid/view/View;IIZZZ)V
    .registers 27
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flowDown"    # Z
    .param p5, "selected"    # Z
    .param p6, "recycled"    # Z

    .prologue
    .line 1430
    const/4 v12, 0x0

    .line 1431
    .local v12, "isSelected":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_9a

    const/16 v18, 0x1

    .line 1432
    .local v18, "updateChildSelected":Z
    :goto_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/etsy/android/grid/ExtendableListView;->mTouchMode:I

    .line 1433
    .local v15, "mode":I
    const/4 v2, 0x3

    if-le v15, v2, :cond_9e

    const/4 v2, 0x1

    if-ge v15, v2, :cond_9e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/etsy/android/grid/ExtendableListView;->mMotionPosition:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_9e

    const/4 v11, 0x1

    .line 1435
    .local v11, "isPressed":Z
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eq v11, v2, :cond_a1

    const/16 v17, 0x1

    .line 1436
    .local v17, "updateChildPressed":Z
    :goto_24
    if-eqz p6, :cond_2e

    if-nez v18, :cond_2e

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_a4

    :cond_2e
    const/16 v16, 0x1

    .line 1438
    .local v16, "needToMeasure":Z
    :goto_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v13

    .line 1441
    .local v13, "itemViewType":I
    const/4 v2, -0x2

    if-ne v13, v2, :cond_a7

    .line 1442
    invoke-virtual/range {p0 .. p1}, Lcom/etsy/android/grid/ExtendableListView;->generateWrapperLayoutParams(Landroid/view/View;)Lcom/etsy/android/grid/ExtendableListView$LayoutParams;

    move-result-object v14

    .line 1448
    .local v14, "layoutParams":Lcom/etsy/android/grid/ExtendableListView$LayoutParams;
    :goto_41
    iput v13, v14, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;->viewType:I

    .line 1449
    move/from16 v0, p2

    iput v0, v14, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;->position:I

    .line 1451
    if-nez p6, :cond_52

    iget-boolean v2, v14, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;->recycledHeaderFooter:Z

    if-eqz v2, :cond_ae

    iget v2, v14, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;->viewType:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_ae

    .line 1454
    :cond_52
    if-eqz p4, :cond_ac

    const/4 v2, -0x1

    :goto_55
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v14}, Lcom/etsy/android/grid/ExtendableListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1464
    :goto_5c
    if-eqz v18, :cond_64

    .line 1465
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1468
    :cond_64
    if-eqz v17, :cond_6b

    .line 1469
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setPressed(Z)V

    .line 1472
    :cond_6b
    if-eqz v16, :cond_c4

    .line 1474
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/etsy/android/grid/ExtendableListView;->onMeasureChild(Landroid/view/View;Lcom/etsy/android/grid/ExtendableListView$LayoutParams;)V

    .line 1481
    :goto_74
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1482
    .local v19, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1483
    .local v10, "h":I
    if-eqz p4, :cond_c8

    move/from16 v7, p3

    .line 1489
    .local v7, "childTop":I
    :goto_80
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/etsy/android/grid/ExtendableListView;->getChildLeft(I)I

    move-result v6

    .line 1491
    .local v6, "childrenLeft":I
    if-eqz v16, :cond_cb

    .line 1492
    add-int v8, v6, v19

    .line 1493
    .local v8, "childRight":I
    add-int v9, v7, v10

    .local v9, "childBottom":I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p4

    .line 1494
    invoke-virtual/range {v2 .. v9}, Lcom/etsy/android/grid/ExtendableListView;->onLayoutChild(Landroid/view/View;IZIIII)V

    .line 1500
    .end local v8    # "childRight":I
    .end local v9    # "childBottom":I
    :goto_99
    return-void

    .line 1431
    .end local v6    # "childrenLeft":I
    .end local v7    # "childTop":I
    .end local v10    # "h":I
    .end local v11    # "isPressed":Z
    .end local v13    # "itemViewType":I
    .end local v14    # "layoutParams":Lcom/etsy/android/grid/ExtendableListView$LayoutParams;
    .end local v15    # "mode":I
    .end local v16    # "needToMeasure":Z
    .end local v17    # "updateChildPressed":Z
    .end local v18    # "updateChildSelected":Z
    .end local v19    # "w":I
    :cond_9a
    const/16 v18, 0x0

    goto/16 :goto_9

    .line 1433
    .restart local v15    # "mode":I
    .restart local v18    # "updateChildSelected":Z
    :cond_9e
    const/4 v11, 0x0

    goto/16 :goto_1c

    .line 1435
    .restart local v11    # "isPressed":Z
    :cond_a1
    const/16 v17, 0x0

    goto :goto_24

    .line 1436
    .restart local v17    # "updateChildPressed":Z
    :cond_a4
    const/16 v16, 0x0

    goto :goto_30

    .line 1445
    .restart local v13    # "itemViewType":I
    .restart local v16    # "needToMeasure":Z
    :cond_a7
    invoke-virtual/range {p0 .. p1}, Lcom/etsy/android/grid/ExtendableListView;->generateChildLayoutParams(Landroid/view/View;)Lcom/etsy/android/grid/ExtendableListView$LayoutParams;

    move-result-object v14

    .restart local v14    # "layoutParams":Lcom/etsy/android/grid/ExtendableListView$LayoutParams;
    goto :goto_41

    .line 1454
    :cond_ac
    const/4 v2, 0x0

    goto :goto_55

    .line 1458
    :cond_ae
    iget v2, v14, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;->viewType:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_b6

    .line 1459
    const/4 v2, 0x1

    iput-boolean v2, v14, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1461
    :cond_b6
    if-eqz p4, :cond_c2

    const/4 v2, -0x1

    :goto_b9
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v14, v3}, Lcom/etsy/android/grid/ExtendableListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_5c

    :cond_c2
    const/4 v2, 0x0

    goto :goto_b9

    .line 1478
    :cond_c4
    invoke-virtual/range {p0 .. p1}, Lcom/etsy/android/grid/ExtendableListView;->cleanupLayoutState(Landroid/view/View;)V

    goto :goto_74

    .line 1483
    .restart local v10    # "h":I
    .restart local v19    # "w":I
    :cond_c8
    sub-int v7, p3, v10

    goto :goto_80

    .restart local v6    # "childrenLeft":I
    .restart local v7    # "childTop":I
    :cond_cb
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p4

    .line 1497
    invoke-virtual/range {v2 .. v7}, Lcom/etsy/android/grid/ExtendableListView;->onOffsetChild(Landroid/view/View;IZII)V

    goto :goto_99
.end method

.method private startFlingRunnable(F)V
    .registers 4
    .param p1, "velocity"    # F

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mFlingRunnable:Lcom/etsy/android/grid/ExtendableListView$FlingRunnable;

    if-nez v0, :cond_b

    .line 1861
    new-instance v0, Lcom/etsy/android/grid/ExtendableListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/etsy/android/grid/ExtendableListView$FlingRunnable;-><init>(Lcom/etsy/android/grid/ExtendableListView;)V

    iput-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mFlingRunnable:Lcom/etsy/android/grid/ExtendableListView$FlingRunnable;

    .line 1863
    :cond_b
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mFlingRunnable:Lcom/etsy/android/grid/ExtendableListView$FlingRunnable;

    neg-float v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/etsy/android/grid/ExtendableListView$FlingRunnable;->start(I)V

    .line 1864
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .registers 11
    .param p1, "y"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1000
    iget v5, p0, Lcom/etsy/android/grid/ExtendableListView;->mMotionY:I

    sub-int v0, p1, v5

    .line 1001
    .local v0, "deltaY":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1004
    .local v1, "distance":I
    const/4 v3, 0x0

    .line 1005
    .local v3, "overscroll":Z
    iget v5, p0, Lcom/etsy/android/grid/ExtendableListView;->mTouchSlop:I

    if-le v1, v5, :cond_3a

    .line 1010
    iput v6, p0, Lcom/etsy/android/grid/ExtendableListView;->mTouchMode:I

    .line 1011
    if-lez v0, :cond_36

    iget v5, p0, Lcom/etsy/android/grid/ExtendableListView;->mTouchSlop:I

    :goto_15
    iput v5, p0, Lcom/etsy/android/grid/ExtendableListView;->mMotionCorrection:I

    .line 1015
    invoke-virtual {p0, v7}, Lcom/etsy/android/grid/ExtendableListView;->setPressed(Z)V

    .line 1016
    iget v5, p0, Lcom/etsy/android/grid/ExtendableListView;->mMotionPosition:I

    iget v8, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    sub-int/2addr v5, v8

    invoke-virtual {p0, v5}, Lcom/etsy/android/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1017
    .local v2, "motionView":Landroid/view/View;
    if-eqz v2, :cond_28

    .line 1018
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1020
    :cond_28
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 1021
    .local v4, "parent":Landroid/view/ViewParent;
    if-eqz v4, :cond_31

    .line 1022
    invoke-interface {v4, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1025
    :cond_31
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/ExtendableListView;->scrollIfNeeded(I)V

    move v5, v6

    .line 1028
    .end local v2    # "motionView":Landroid/view/View;
    .end local v4    # "parent":Landroid/view/ViewParent;
    :goto_35
    return v5

    .line 1011
    :cond_36
    iget v5, p0, Lcom/etsy/android/grid/ExtendableListView;->mTouchSlop:I

    neg-int v5, v5

    goto :goto_15

    :cond_3a
    move v5, v7

    .line 1028
    goto :goto_35
.end method

.method private stopFlingRunnable()V
    .registers 2

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mFlingRunnable:Lcom/etsy/android/grid/ExtendableListView$FlingRunnable;

    if-eqz v0, :cond_9

    .line 1868
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mFlingRunnable:Lcom/etsy/android/grid/ExtendableListView$FlingRunnable;

    # invokes: Lcom/etsy/android/grid/ExtendableListView$FlingRunnable;->endFling()V
    invoke-static {v0}, Lcom/etsy/android/grid/ExtendableListView$FlingRunnable;->access$100(Lcom/etsy/android/grid/ExtendableListView$FlingRunnable;)V

    .line 1870
    :cond_9
    return-void
.end method

.method private updateEmptyStatus()V
    .registers 7

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 2029
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_41

    :cond_13
    const/4 v0, 0x1

    .line 2030
    .local v0, "empty":Z
    :goto_14
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2031
    const/4 v0, 0x0

    .line 2034
    :cond_1b
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    .line 2035
    .local v1, "emptyView":Landroid/view/View;
    if-eqz v0, :cond_47

    .line 2036
    if-eqz v1, :cond_43

    .line 2037
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2038
    invoke-virtual {p0, v4}, Lcom/etsy/android/grid/ExtendableListView;->setVisibility(I)V

    .line 2048
    :goto_29
    iget-boolean v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mDataChanged:Z

    if-eqz v2, :cond_40

    .line 2049
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getBottom()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/etsy/android/grid/ExtendableListView;->layout(IIII)V

    .line 2058
    :cond_40
    :goto_40
    return-void

    .end local v0    # "empty":Z
    .end local v1    # "emptyView":Landroid/view/View;
    :cond_41
    move v0, v2

    .line 2029
    goto :goto_14

    .line 2042
    .restart local v0    # "empty":Z
    .restart local v1    # "emptyView":Landroid/view/View;
    :cond_43
    invoke-virtual {p0, v2}, Lcom/etsy/android/grid/ExtendableListView;->setVisibility(I)V

    goto :goto_29

    .line 2053
    :cond_47
    if-eqz v1, :cond_4c

    .line 2054
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2056
    :cond_4c
    invoke-virtual {p0, v2}, Lcom/etsy/android/grid/ExtendableListView;->setVisibility(I)V

    goto :goto_40
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 440
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/etsy/android/grid/ExtendableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 441
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 417
    new-instance v0, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;-><init>(Lcom/etsy/android/grid/ExtendableListView;)V

    .line 418
    .local v0, "info":Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;
    iput-object p1, v0, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;->view:Landroid/view/View;

    .line 419
    iput-object p2, v0, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 420
    iput-boolean p3, v0, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;->isSelectable:Z

    .line 421
    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mObserver:Lcom/etsy/android/grid/ExtendableListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1d

    .line 426
    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mObserver:Lcom/etsy/android/grid/ExtendableListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/etsy/android/grid/ExtendableListView$AdapterDataSetObserver;->onChanged()V

    .line 428
    :cond_1d
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 357
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/etsy/android/grid/ExtendableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 358
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 327
    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/etsy/android/grid/HeaderViewListAdapter;

    if-nez v1, :cond_13

    .line 328
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    :cond_13
    new-instance v0, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;-><init>(Lcom/etsy/android/grid/ExtendableListView;)V

    .line 333
    .local v0, "info":Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;
    iput-object p1, v0, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;->view:Landroid/view/View;

    .line 334
    iput-object p2, v0, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 335
    iput-boolean p3, v0, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;->isSelectable:Z

    .line 336
    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mObserver:Lcom/etsy/android/grid/ExtendableListView$AdapterDataSetObserver;

    if-eqz v1, :cond_30

    .line 341
    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mObserver:Lcom/etsy/android/grid/ExtendableListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/etsy/android/grid/ExtendableListView$AdapterDataSetObserver;->onChanged()V

    .line 343
    :cond_30
    return-void
.end method

.method protected adjustViewsAfterFillGap(Z)V
    .registers 3
    .param p1, "down"    # Z

    .prologue
    .line 1274
    if-eqz p1, :cond_a

    .line 1275
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/etsy/android/grid/ExtendableListView;->correctTooHigh(I)V

    .line 1280
    :goto_9
    return-void

    .line 1278
    :cond_a
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/etsy/android/grid/ExtendableListView;->correctTooLow(I)V

    goto :goto_9
.end method

.method protected fillGap(Z)V
    .registers 6
    .param p1, "down"    # Z

    .prologue
    .line 1257
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getChildCount()I

    move-result v0

    .line 1258
    .local v0, "count":I
    if-eqz p1, :cond_15

    .line 1260
    iget v3, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    add-int v1, v3, v0

    .line 1261
    .local v1, "position":I
    invoke-virtual {p0, v1}, Lcom/etsy/android/grid/ExtendableListView;->getChildTop(I)I

    move-result v2

    .line 1262
    .local v2, "startOffset":I
    invoke-direct {p0, v1, v2}, Lcom/etsy/android/grid/ExtendableListView;->fillDown(II)Landroid/view/View;

    .line 1270
    :goto_11
    invoke-virtual {p0, p1}, Lcom/etsy/android/grid/ExtendableListView;->adjustViewsAfterFillGap(Z)V

    .line 1271
    return-void

    .line 1266
    .end local v1    # "position":I
    .end local v2    # "startOffset":I
    :cond_15
    iget v3, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    add-int/lit8 v1, v3, -0x1

    .line 1267
    .restart local v1    # "position":I
    invoke-virtual {p0, v1}, Lcom/etsy/android/grid/ExtendableListView;->getChildBottom(I)I

    move-result v2

    .line 1268
    .restart local v2    # "startOffset":I
    invoke-direct {p0, v1, v2}, Lcom/etsy/android/grid/ExtendableListView;->fillUp(II)Landroid/view/View;

    goto :goto_11
.end method

.method protected generateChildLayoutParams(Landroid/view/View;)Lcom/etsy/android/grid/ExtendableListView$LayoutParams;
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1503
    invoke-virtual {p0, p1}, Lcom/etsy/android/grid/ExtendableListView;->generateWrapperLayoutParams(Landroid/view/View;)Lcom/etsy/android/grid/ExtendableListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->generateDefaultLayoutParams()Lcom/etsy/android/grid/ExtendableListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/etsy/android/grid/ExtendableListView$LayoutParams;
    .registers 5

    .prologue
    .line 1544
    new-instance v0, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method protected generateHeaderFooterLayoutParams(Landroid/view/View;)Lcom/etsy/android/grid/ExtendableListView$LayoutParams;
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1549
    new-instance v0, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method protected generateWrapperLayoutParams(Landroid/view/View;)Lcom/etsy/android/grid/ExtendableListView$LayoutParams;
    .registers 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1507
    const/4 v1, 0x0

    .line 1509
    .local v1, "layoutParams":Lcom/etsy/android/grid/ExtendableListView$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1510
    .local v0, "childParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_e

    .line 1511
    instance-of v2, v0, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;

    if-eqz v2, :cond_15

    move-object v1, v0

    .line 1512
    check-cast v1, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;

    .line 1518
    :cond_e
    :goto_e
    if-nez v1, :cond_14

    .line 1519
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->generateDefaultLayoutParams()Lcom/etsy/android/grid/ExtendableListView$LayoutParams;

    move-result-object v1

    .line 1522
    :cond_14
    return-object v1

    .line 1515
    :cond_15
    new-instance v1, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;

    .end local v1    # "layoutParams":Lcom/etsy/android/grid/ExtendableListView$LayoutParams;
    invoke-direct {v1, v0}, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .restart local v1    # "layoutParams":Lcom/etsy/android/grid/ExtendableListView$LayoutParams;
    goto :goto_e
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected getChildBottom(I)I
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 1773
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getChildCount()I

    move-result v0

    .line 1774
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1775
    .local v1, "paddingBottom":I
    iget-boolean v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mClipToPadding:Z

    if-eqz v2, :cond_d

    .line 1776
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getListPaddingBottom()I

    move-result v1

    .line 1778
    :cond_d
    if-lez v0, :cond_19

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/etsy/android/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    :goto_18
    return v2

    :cond_19
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    goto :goto_18
.end method

.method protected getChildLeft(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1750
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getListPaddingLeft()I

    move-result v0

    return v0
.end method

.method protected getChildTop(I)I
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 1759
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getChildCount()I

    move-result v0

    .line 1760
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1761
    .local v1, "paddingTop":I
    iget-boolean v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mClipToPadding:Z

    if-eqz v2, :cond_d

    .line 1762
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getListPaddingTop()I

    move-result v1

    .line 1764
    :cond_d
    if-lez v0, :cond_19

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/etsy/android/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .end local v1    # "paddingTop":I
    :cond_19
    return v1
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 280
    iget v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mItemCount:I

    return v0
.end method

.method protected getFirstChildTop()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1795
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->hasChildren()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, v0}, Lcom/etsy/android/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :cond_f
    return v0
.end method

.method public getFirstVisiblePosition()I
    .registers 4

    .prologue
    .line 1825
    const/4 v0, 0x0

    iget v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getFooterViewsCount()I
    .registers 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getHighestChildTop()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1799
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->hasChildren()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, v0}, Lcom/etsy/android/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :cond_f
    return v0
.end method

.method protected getLastChildBottom()I
    .registers 2

    .prologue
    .line 1803
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/etsy/android/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getLastVisiblePosition()I
    .registers 3

    .prologue
    .line 1830
    iget v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_15
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected getLowestChildBottom()I
    .registers 2

    .prologue
    .line 1807
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/etsy/android/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected getNextChildDownsTop(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1782
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getChildCount()I

    move-result v0

    .line 1783
    .local v0, "count":I
    if-lez v0, :cond_11

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/etsy/android/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method protected getNextChildUpsBottom(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 1787
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getChildCount()I

    move-result v0

    .line 1788
    .local v0, "count":I
    if-nez v0, :cond_8

    .line 1791
    :cond_7
    :goto_7
    return v1

    :cond_8
    if-lez v0, :cond_7

    invoke-virtual {p0, v1}, Lcom/etsy/android/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_7
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 2

    .prologue
    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleDataChanged()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 627
    invoke-super {p0}, Landroid/widget/AbsListView;->handleDataChanged()V

    .line 629
    iget v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mItemCount:I

    .line 631
    .local v0, "count":I
    if-lez v0, :cond_23

    iget-boolean v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mNeedSync:Z

    if-eqz v1, :cond_23

    .line 632
    iput-boolean v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mNeedSync:Z

    .line 633
    iput-object v3, p0, Lcom/etsy/android/grid/ExtendableListView;->mSyncState:Lcom/etsy/android/grid/ExtendableListView$ListSavedState;

    .line 635
    const/4 v1, 0x2

    iput v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mLayoutMode:I

    .line 636
    iget v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mSyncPosition:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mSyncPosition:I

    .line 645
    :goto_22
    return-void

    .line 640
    :cond_23
    const/4 v1, 0x1

    iput v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mLayoutMode:I

    .line 641
    iput-boolean v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mNeedSync:Z

    .line 642
    iput-object v3, p0, Lcom/etsy/android/grid/ExtendableListView;->mSyncState:Lcom/etsy/android/grid/ExtendableListView$ListSavedState;

    goto :goto_22
.end method

.method protected hasChildren()Z
    .registers 2

    .prologue
    .line 1811
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected hasSpaceDown()Z
    .registers 2

    .prologue
    .line 1306
    const/4 v0, 0x0

    return v0
.end method

.method protected hasSpaceUp()Z
    .registers 2

    .prologue
    .line 1331
    const/4 v0, 0x0

    return v0
.end method

.method invokeOnItemScrollListener()V
    .registers 5

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_11

    .line 2019
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/etsy/android/grid/ExtendableListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 2021
    :cond_11
    return-void
.end method

.method protected layoutChildren()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 522
    iget-boolean v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mBlockLayoutRequests:Z

    if-eqz v7, :cond_6

    .line 622
    :goto_5
    return-void

    .line 523
    :cond_6
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mBlockLayoutRequests:Z

    .line 526
    :try_start_9
    invoke-super {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 527
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->invalidate()V

    .line 529
    iget-object v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v7, :cond_1c

    .line 530
    invoke-direct {p0}, Lcom/etsy/android/grid/ExtendableListView;->clearState()V

    .line 531
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->invokeOnItemScrollListener()V
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_91

    .line 620
    iput-boolean v10, p0, Lcom/etsy/android/grid/ExtendableListView;->mBlockLayoutRequests:Z

    goto :goto_5

    .line 535
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getListPaddingTop()I

    move-result v1

    .line 537
    .local v1, "childrenTop":I
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getChildCount()I

    move-result v0

    .line 538
    .local v0, "childCount":I
    const/4 v5, 0x0

    .line 541
    .local v5, "oldFirst":Landroid/view/View;
    iget v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mLayoutMode:I

    if-nez v7, :cond_2e

    .line 542
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/etsy/android/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 545
    :cond_2e
    iget-boolean v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mDataChanged:Z

    .line 546
    .local v2, "dataChanged":Z
    if-eqz v2, :cond_35

    .line 547
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->handleDataChanged()V

    .line 553
    :cond_35
    iget v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mItemCount:I

    if-nez v7, :cond_42

    .line 554
    invoke-direct {p0}, Lcom/etsy/android/grid/ExtendableListView;->clearState()V

    .line 555
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->invokeOnItemScrollListener()V
    :try_end_3f
    .catchall {:try_start_1c .. :try_end_3f} :catchall_91

    .line 620
    iput-boolean v10, p0, Lcom/etsy/android/grid/ExtendableListView;->mBlockLayoutRequests:Z

    goto :goto_5

    .line 558
    :cond_42
    :try_start_42
    iget v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mItemCount:I

    iget-object v8, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    if-eq v7, v8, :cond_95

    .line 559
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "The content of the adapter has changed but ExtendableListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ExtendableListView("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") with Adapter("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_91
    .catchall {:try_start_42 .. :try_end_91} :catchall_91

    .line 620
    .end local v0    # "childCount":I
    .end local v1    # "childrenTop":I
    .end local v2    # "dataChanged":Z
    .end local v5    # "oldFirst":Landroid/view/View;
    :catchall_91
    move-exception v7

    iput-boolean v10, p0, Lcom/etsy/android/grid/ExtendableListView;->mBlockLayoutRequests:Z

    throw v7

    .line 568
    .restart local v0    # "childCount":I
    .restart local v1    # "childrenTop":I
    .restart local v2    # "dataChanged":Z
    .restart local v5    # "oldFirst":Landroid/view/View;
    :cond_95
    :try_start_95
    iget v3, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    .line 569
    .local v3, "firstPosition":I
    iget-object v6, p0, Lcom/etsy/android/grid/ExtendableListView;->mRecycleBin:Lcom/etsy/android/grid/ExtendableListView$RecycleBin;

    .line 571
    .local v6, "recycleBin":Lcom/etsy/android/grid/ExtendableListView$RecycleBin;
    if-eqz v2, :cond_aa

    .line 572
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9c
    if-ge v4, v0, :cond_ad

    .line 573
    invoke-virtual {p0, v4}, Lcom/etsy/android/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v8, v3, v4

    invoke-virtual {v6, v7, v8}, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 572
    add-int/lit8 v4, v4, 0x1

    goto :goto_9c

    .line 577
    .end local v4    # "i":I
    :cond_aa
    invoke-virtual {v6, v0, v3}, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->fillActiveViews(II)V

    .line 581
    :cond_ad
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->detachAllViewsFromParent()V

    .line 582
    invoke-virtual {v6}, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->removeSkippedScrap()V

    .line 584
    iget v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mLayoutMode:I

    packed-switch v7, :pswitch_data_100

    .line 599
    if-nez v0, :cond_e8

    .line 600
    invoke-direct {p0, v1}, Lcom/etsy/android/grid/ExtendableListView;->fillFromTop(I)Landroid/view/View;

    .line 614
    .end local v1    # "childrenTop":I
    :goto_bd
    invoke-virtual {v6}, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->scrapActiveViews()V

    .line 615
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mDataChanged:Z

    .line 616
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mNeedSync:Z

    .line 617
    const/4 v7, 0x0

    iput v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mLayoutMode:I

    .line 618
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->invokeOnItemScrollListener()V
    :try_end_cc
    .catchall {:try_start_95 .. :try_end_cc} :catchall_91

    .line 620
    iput-boolean v10, p0, Lcom/etsy/android/grid/ExtendableListView;->mBlockLayoutRequests:Z

    goto/16 :goto_5

    .line 586
    .restart local v1    # "childrenTop":I
    :pswitch_d0
    const/4 v7, 0x0

    :try_start_d1
    iput v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    .line 587
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->resetToTop()V

    .line 588
    invoke-direct {p0}, Lcom/etsy/android/grid/ExtendableListView;->adjustViewsUpOrDown()V

    .line 589
    invoke-direct {p0, v1}, Lcom/etsy/android/grid/ExtendableListView;->fillFromTop(I)Landroid/view/View;

    .line 590
    invoke-direct {p0}, Lcom/etsy/android/grid/ExtendableListView;->adjustViewsUpOrDown()V

    goto :goto_bd

    .line 594
    :pswitch_e0
    iget v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mSyncPosition:I

    iget v8, p0, Lcom/etsy/android/grid/ExtendableListView;->mSpecificTop:I

    invoke-direct {p0, v7, v8}, Lcom/etsy/android/grid/ExtendableListView;->fillSpecific(II)Landroid/view/View;

    goto :goto_bd

    .line 602
    :cond_e8
    iget v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    iget v8, p0, Lcom/etsy/android/grid/ExtendableListView;->mItemCount:I

    if-ge v7, v8, :cond_fb

    .line 603
    iget v7, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    if-nez v5, :cond_f6

    .end local v1    # "childrenTop":I
    :goto_f2
    invoke-direct {p0, v7, v1}, Lcom/etsy/android/grid/ExtendableListView;->fillSpecific(II)Landroid/view/View;

    goto :goto_bd

    .restart local v1    # "childrenTop":I
    :cond_f6
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_f2

    .line 607
    :cond_fb
    const/4 v7, 0x0

    invoke-direct {p0, v7, v1}, Lcom/etsy/android/grid/ExtendableListView;->fillSpecific(II)Landroid/view/View;
    :try_end_ff
    .catchall {:try_start_d1 .. :try_end_ff} :catchall_91

    goto :goto_bd

    .line 584
    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_d0
        :pswitch_e0
    .end packed-switch
.end method

.method public notifyTouchMode()V
    .registers 2

    .prologue
    .line 1988
    iget v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_16

    .line 1999
    :goto_5
    return-void

    .line 1990
    :pswitch_6
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/etsy/android/grid/ExtendableListView;->reportScrollStateChange(I)V

    goto :goto_5

    .line 1993
    :pswitch_b
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/etsy/android/grid/ExtendableListView;->reportScrollStateChange(I)V

    goto :goto_5

    .line 1996
    :pswitch_10
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etsy/android/grid/ExtendableListView;->reportScrollStateChange(I)V

    goto :goto_5

    .line 1988
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_10
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

.method protected offsetChildrenTopAndBottom(I)V
    .registers 5
    .param p1, "offset"    # I

    .prologue
    .line 1816
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getChildCount()I

    move-result v0

    .line 1817
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 1818
    invoke-virtual {p0, v1}, Lcom/etsy/android/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1819
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1817
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1821
    .end local v2    # "v":Landroid/view/View;
    :cond_11
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 195
    invoke-super {p0}, Landroid/widget/AbsListView;->onAttachedToWindow()V

    .line 197
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_16

    .line 199
    iput-boolean v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mDataChanged:Z

    .line 200
    iget v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mItemCount:I

    iput v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mOldItemCount:I

    .line 201
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mItemCount:I

    .line 203
    :cond_16
    iput-boolean v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mIsAttached:Z

    .line 204
    return-void
.end method

.method protected onChildCreated(IZ)V
    .registers 3
    .param p1, "position"    # I
    .param p2, "flowDown"    # Z

    .prologue
    .line 1724
    return-void
.end method

.method protected onChildrenDetached(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 1247
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 208
    invoke-super {p0}, Landroid/widget/AbsListView;->onDetachedFromWindow()V

    .line 211
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mRecycleBin:Lcom/etsy/android/grid/ExtendableListView$RecycleBin;

    invoke-virtual {v0}, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->clear()V

    .line 213
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mFlingRunnable:Lcom/etsy/android/grid/ExtendableListView$FlingRunnable;

    if-eqz v0, :cond_11

    .line 214
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mFlingRunnable:Lcom/etsy/android/grid/ExtendableListView$FlingRunnable;

    invoke-virtual {p0, v0}, Lcom/etsy/android/grid/ExtendableListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 217
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mIsAttached:Z

    .line 218
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 223
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 727
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 729
    .local v0, "action":I
    iget-boolean v8, p0, Lcom/etsy/android/grid/ExtendableListView;->mIsAttached:Z

    if-nez v8, :cond_d

    .line 804
    :cond_c
    :goto_c
    return v6

    .line 738
    :cond_d
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_80

    :pswitch_12
    goto :goto_c

    .line 740
    :pswitch_13
    iget v3, p0, Lcom/etsy/android/grid/ExtendableListView;->mTouchMode:I

    .line 748
    .local v3, "touchMode":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    .line 749
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    .line 750
    .local v5, "y":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/etsy/android/grid/ExtendableListView;->mActivePointerId:I

    .line 752
    invoke-direct {p0, v5}, Lcom/etsy/android/grid/ExtendableListView;->findMotionRow(I)I

    move-result v1

    .line 753
    .local v1, "motionPosition":I
    if-eq v3, v10, :cond_36

    if-ltz v1, :cond_36

    .line 756
    iput v4, p0, Lcom/etsy/android/grid/ExtendableListView;->mMotionX:I

    .line 757
    iput v5, p0, Lcom/etsy/android/grid/ExtendableListView;->mMotionY:I

    .line 758
    iput v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mMotionPosition:I

    .line 759
    const/4 v8, 0x3

    iput v8, p0, Lcom/etsy/android/grid/ExtendableListView;->mTouchMode:I

    .line 761
    :cond_36
    const/high16 v8, -0x80000000

    iput v8, p0, Lcom/etsy/android/grid/ExtendableListView;->mLastY:I

    .line 762
    invoke-direct {p0}, Lcom/etsy/android/grid/ExtendableListView;->initOrResetVelocityTracker()V

    .line 763
    iget-object v8, p0, Lcom/etsy/android/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 764
    if-ne v3, v10, :cond_c

    move v6, v7

    .line 765
    goto :goto_c

    .line 771
    .end local v1    # "motionPosition":I
    .end local v3    # "touchMode":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :pswitch_46
    iget v8, p0, Lcom/etsy/android/grid/ExtendableListView;->mTouchMode:I

    packed-switch v8, :pswitch_data_92

    goto :goto_c

    .line 773
    :pswitch_4c
    iget v8, p0, Lcom/etsy/android/grid/ExtendableListView;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 774
    .local v2, "pointerIndex":I
    if-ne v2, v9, :cond_5b

    .line 775
    const/4 v2, 0x0

    .line 776
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/etsy/android/grid/ExtendableListView;->mActivePointerId:I

    .line 778
    :cond_5b
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v5, v8

    .line 779
    .restart local v5    # "y":I
    invoke-direct {p0}, Lcom/etsy/android/grid/ExtendableListView;->initVelocityTrackerIfNotExists()V

    .line 780
    iget-object v8, p0, Lcom/etsy/android/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 781
    invoke-direct {p0, v5}, Lcom/etsy/android/grid/ExtendableListView;->startScrollIfNeeded(I)Z

    move-result v8

    if-eqz v8, :cond_c

    move v6, v7

    .line 782
    goto :goto_c

    .line 791
    .end local v2    # "pointerIndex":I
    .end local v5    # "y":I
    :pswitch_70
    iput v6, p0, Lcom/etsy/android/grid/ExtendableListView;->mTouchMode:I

    .line 792
    iput v9, p0, Lcom/etsy/android/grid/ExtendableListView;->mActivePointerId:I

    .line 793
    invoke-direct {p0}, Lcom/etsy/android/grid/ExtendableListView;->recycleVelocityTracker()V

    .line 794
    invoke-virtual {p0, v6}, Lcom/etsy/android/grid/ExtendableListView;->reportScrollStateChange(I)V

    goto :goto_c

    .line 799
    :pswitch_7b
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/ExtendableListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_c

    .line 738
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_13
        :pswitch_70
        :pswitch_46
        :pswitch_70
        :pswitch_12
        :pswitch_12
        :pswitch_7b
    .end packed-switch

    .line 771
    :pswitch_data_92
    .packed-switch 0x3
        :pswitch_4c
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 499
    iget-object v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_5

    .line 515
    :goto_4
    return-void

    .line 503
    :cond_5
    if-eqz p1, :cond_1d

    .line 504
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getChildCount()I

    move-result v0

    .line 505
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_18

    .line 506
    invoke-virtual {p0, v1}, Lcom/etsy/android/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 505
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 508
    :cond_18
    iget-object v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mRecycleBin:Lcom/etsy/android/grid/ExtendableListView$RecycleBin;

    invoke-virtual {v2}, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->markChildrenDirty()V

    .line 512
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_1d
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mInLayout:Z

    .line 513
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->layoutChildren()V

    .line 514
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mInLayout:Z

    goto :goto_4
.end method

.method protected onLayoutChild(Landroid/view/View;IZIIII)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "flowDown"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "childTop"    # I
    .param p6, "childRight"    # I
    .param p7, "childBottom"    # I

    .prologue
    .line 1732
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    .line 1733
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 660
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 661
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 662
    .local v1, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 663
    .local v0, "heightSize":I
    invoke-virtual {p0, v1, v0}, Lcom/etsy/android/grid/ExtendableListView;->setMeasuredDimension(II)V

    .line 664
    iput p1, p0, Lcom/etsy/android/grid/ExtendableListView;->mWidthMeasureSpec:I

    .line 665
    return-void
.end method

.method protected onMeasureChild(Landroid/view/View;Lcom/etsy/android/grid/ExtendableListView$LayoutParams;)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutParams"    # Lcom/etsy/android/grid/ExtendableListView$LayoutParams;

    .prologue
    const/4 v6, 0x0

    .line 1530
    iget v3, p0, Lcom/etsy/android/grid/ExtendableListView;->mWidthMeasureSpec:I

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getListPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getListPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p2, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;->width:I

    invoke-static {v3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1532
    .local v1, "childWidthSpec":I
    iget v2, p2, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;->height:I

    .line 1534
    .local v2, "lpHeight":I
    if-lez v2, :cond_20

    .line 1535
    const/high16 v3, 0x40000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1540
    .local v0, "childHeightSpec":I
    :goto_1c
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1541
    return-void

    .line 1538
    .end local v0    # "childHeightSpec":I
    :cond_20
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_1c
.end method

.method protected onOffsetChild(Landroid/view/View;IZII)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "flowDown"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "childTop"    # I

    .prologue
    .line 1740
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, p4, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1741
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, p5, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1742
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v5, 0x1

    .line 2721
    move-object v0, p1

    check-cast v0, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;

    .line 2722
    .local v0, "ss":Lcom/etsy/android/grid/ExtendableListView$ListSavedState;
    invoke-virtual {v0}, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2723
    iput-boolean v5, p0, Lcom/etsy/android/grid/ExtendableListView;->mDataChanged:Z

    .line 2725
    iget v1, v0, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mSyncHeight:J

    .line 2727
    iget-wide v1, v0, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->firstId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2a

    .line 2728
    iput-boolean v5, p0, Lcom/etsy/android/grid/ExtendableListView;->mNeedSync:Z

    .line 2729
    iput-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mSyncState:Lcom/etsy/android/grid/ExtendableListView$ListSavedState;

    .line 2730
    iget-wide v1, v0, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->firstId:J

    iput-wide v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mSyncRowId:J

    .line 2731
    iget v1, v0, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->position:I

    iput v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mSyncPosition:I

    .line 2732
    iget v1, v0, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->viewTop:I

    iput v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mSpecificTop:I

    .line 2734
    :cond_2a
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->requestLayout()V

    .line 2735
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 2673
    invoke-super {p0}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    .line 2674
    .local v3, "superState":Landroid/os/Parcelable;
    new-instance v2, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;

    invoke-direct {v2, v3}, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2676
    .local v2, "ss":Lcom/etsy/android/grid/ExtendableListView$ListSavedState;
    iget-object v6, p0, Lcom/etsy/android/grid/ExtendableListView;->mSyncState:Lcom/etsy/android/grid/ExtendableListView$ListSavedState;

    if-eqz v6, :cond_2d

    .line 2678
    iget-object v5, p0, Lcom/etsy/android/grid/ExtendableListView;->mSyncState:Lcom/etsy/android/grid/ExtendableListView$ListSavedState;

    iget-wide v5, v5, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->selectedId:J

    iput-wide v5, v2, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->selectedId:J

    .line 2679
    iget-object v5, p0, Lcom/etsy/android/grid/ExtendableListView;->mSyncState:Lcom/etsy/android/grid/ExtendableListView$ListSavedState;

    iget-wide v5, v5, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->firstId:J

    iput-wide v5, v2, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->firstId:J

    .line 2680
    iget-object v5, p0, Lcom/etsy/android/grid/ExtendableListView;->mSyncState:Lcom/etsy/android/grid/ExtendableListView$ListSavedState;

    iget v5, v5, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->viewTop:I

    iput v5, v2, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->viewTop:I

    .line 2681
    iget-object v5, p0, Lcom/etsy/android/grid/ExtendableListView;->mSyncState:Lcom/etsy/android/grid/ExtendableListView$ListSavedState;

    iget v5, v5, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->position:I

    iput v5, v2, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->position:I

    .line 2682
    iget-object v5, p0, Lcom/etsy/android/grid/ExtendableListView;->mSyncState:Lcom/etsy/android/grid/ExtendableListView$ListSavedState;

    iget v5, v5, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->height:I

    iput v5, v2, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->height:I

    .line 2716
    :goto_2c
    return-object v2

    .line 2686
    :cond_2d
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_69

    iget v6, p0, Lcom/etsy/android/grid/ExtendableListView;->mItemCount:I

    if-lez v6, :cond_69

    const/4 v1, 0x1

    .line 2687
    .local v1, "haveChildren":Z
    :goto_38
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getSelectedItemId()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->selectedId:J

    .line 2688
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getHeight()I

    move-result v6

    iput v6, v2, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->height:I

    .line 2691
    if-eqz v1, :cond_6b

    iget v6, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    if-lez v6, :cond_6b

    .line 2701
    invoke-virtual {p0, v5}, Lcom/etsy/android/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2702
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    iput v5, v2, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->viewTop:I

    .line 2703
    iget v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    .line 2704
    .local v0, "firstPos":I
    iget v5, p0, Lcom/etsy/android/grid/ExtendableListView;->mItemCount:I

    if-lt v0, v5, :cond_5e

    .line 2705
    iget v5, p0, Lcom/etsy/android/grid/ExtendableListView;->mItemCount:I

    add-int/lit8 v0, v5, -0x1

    .line 2707
    :cond_5e
    iput v0, v2, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->position:I

    .line 2708
    iget-object v5, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->firstId:J

    goto :goto_2c

    .end local v0    # "firstPos":I
    .end local v1    # "haveChildren":Z
    .end local v4    # "v":Landroid/view/View;
    :cond_69
    move v1, v5

    .line 2686
    goto :goto_38

    .line 2711
    .restart local v1    # "haveChildren":Z
    :cond_6b
    iput v5, v2, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->viewTop:I

    .line 2712
    const-wide/16 v6, -0x1

    iput-wide v6, v2, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->firstId:J

    .line 2713
    iput v5, v2, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->position:I

    goto :goto_2c
.end method

.method protected onSizeChanged(II)V
    .registers 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_14

    .line 237
    invoke-direct {p0}, Lcom/etsy/android/grid/ExtendableListView;->stopFlingRunnable()V

    .line 238
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mRecycleBin:Lcom/etsy/android/grid/ExtendableListView$RecycleBin;

    invoke-virtual {v0}, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->clear()V

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mDataChanged:Z

    .line 240
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->rememberSyncState()V

    .line 242
    :cond_14
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 232
    invoke-virtual {p0, p1, p2}, Lcom/etsy/android/grid/ExtendableListView;->onSizeChanged(II)V

    .line 233
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 680
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_15

    .line 683
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->isClickable()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->isLongClickable()Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_13
    const/4 v2, 0x1

    .line 721
    :cond_14
    :goto_14
    return v2

    .line 686
    :cond_15
    invoke-direct {p0}, Lcom/etsy/android/grid/ExtendableListView;->initVelocityTrackerIfNotExists()V

    .line 687
    iget-object v3, p0, Lcom/etsy/android/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 689
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->hasChildren()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 692
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 693
    .local v0, "action":I
    packed-switch v0, :pswitch_data_4c

    .line 715
    :pswitch_2c
    const/4 v1, 0x0

    .line 719
    .local v1, "handled":Z
    :goto_2d
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->notifyTouchMode()V

    move v2, v1

    .line 721
    goto :goto_14

    .line 695
    .end local v1    # "handled":Z
    :pswitch_32
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/ExtendableListView;->onTouchDown(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 696
    .restart local v1    # "handled":Z
    goto :goto_2d

    .line 699
    .end local v1    # "handled":Z
    :pswitch_37
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/ExtendableListView;->onTouchMove(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 700
    .restart local v1    # "handled":Z
    goto :goto_2d

    .line 703
    .end local v1    # "handled":Z
    :pswitch_3c
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/ExtendableListView;->onTouchCancel(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 704
    .restart local v1    # "handled":Z
    goto :goto_2d

    .line 707
    .end local v1    # "handled":Z
    :pswitch_41
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/ExtendableListView;->onTouchPointerUp(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 708
    .restart local v1    # "handled":Z
    goto :goto_2d

    .line 711
    .end local v1    # "handled":Z
    :pswitch_46
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/ExtendableListView;->onTouchUp(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 712
    .restart local v1    # "handled":Z
    goto :goto_2d

    .line 693
    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_32
        :pswitch_46
        :pswitch_37
        :pswitch_3c
        :pswitch_2c
        :pswitch_2c
        :pswitch_41
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 228
    return-void
.end method

.method rememberSyncState()V
    .registers 5

    .prologue
    .line 2564
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_39

    .line 2565
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mNeedSync:Z

    .line 2566
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getHeight()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mSyncHeight:J

    .line 2568
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/etsy/android/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2569
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2570
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    if-ltz v2, :cond_3a

    iget v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 2571
    iget v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mSyncRowId:J

    .line 2576
    :goto_2d
    if-eqz v1, :cond_35

    .line 2577
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mSpecificTop:I

    .line 2579
    :cond_35
    iget v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    iput v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mSyncPosition:I

    .line 2581
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v1    # "v":Landroid/view/View;
    :cond_39
    return-void

    .line 2574
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v1    # "v":Landroid/view/View;
    :cond_3a
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mSyncRowId:J

    goto :goto_2d
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 454
    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_27

    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, "result":Z
    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/etsy/android/grid/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/etsy/android/grid/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 457
    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mObserver:Lcom/etsy/android/grid/ExtendableListView$AdapterDataSetObserver;

    if-eqz v1, :cond_20

    .line 458
    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mObserver:Lcom/etsy/android/grid/ExtendableListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/etsy/android/grid/ExtendableListView$AdapterDataSetObserver;->onChanged()V

    .line 460
    :cond_20
    const/4 v0, 0x1

    .line 462
    :cond_21
    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/etsy/android/grid/ExtendableListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 465
    .end local v0    # "result":Z
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 372
    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_27

    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, "result":Z
    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/etsy/android/grid/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/etsy/android/grid/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 375
    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mObserver:Lcom/etsy/android/grid/ExtendableListView$AdapterDataSetObserver;

    if-eqz v1, :cond_20

    .line 376
    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mObserver:Lcom/etsy/android/grid/ExtendableListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/etsy/android/grid/ExtendableListView$AdapterDataSetObserver;->onChanged()V

    .line 378
    :cond_20
    const/4 v0, 0x1

    .line 380
    :cond_21
    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/etsy/android/grid/ExtendableListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 383
    .end local v0    # "result":Z
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method reportScrollStateChange(I)V
    .registers 3
    .param p1, "newState"    # I

    .prologue
    .line 2009
    iget v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mScrollState:I

    if-eq p1, v0, :cond_f

    .line 2010
    iput p1, p0, Lcom/etsy/android/grid/ExtendableListView;->mScrollState:I

    .line 2011
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_f

    .line 2012
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 2015
    :cond_f
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 809
    if-eqz p1, :cond_5

    .line 810
    invoke-direct {p0}, Lcom/etsy/android/grid/ExtendableListView;->recycleVelocityTracker()V

    .line 812
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 813
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mInLayout:Z

    if-nez v0, :cond_b

    .line 488
    invoke-super {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 490
    :cond_b
    return-void
.end method

.method public resetToTop()V
    .registers 1

    .prologue
    .line 649
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 59
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/etsy/android/grid/ExtendableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 5
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 256
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mObserver:Lcom/etsy/android/grid/ExtendableListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 260
    :cond_b
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1b

    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4f

    .line 261
    :cond_1b
    new-instance v0, Lcom/etsy/android/grid/HeaderViewListAdapter;

    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/etsy/android/grid/ExtendableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p1}, Lcom/etsy/android/grid/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 267
    :goto_26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mDataChanged:Z

    .line 268
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    :goto_33
    iput v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mItemCount:I

    .line 270
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_4b

    .line 271
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mObserver:Lcom/etsy/android/grid/ExtendableListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 272
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mRecycleBin:Lcom/etsy/android/grid/ExtendableListView$RecycleBin;

    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->setViewTypeCount(I)V

    .line 275
    :cond_4b
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->requestLayout()V

    .line 276
    return-void

    .line 264
    :cond_4f
    iput-object p1, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_26

    .line 268
    :cond_52
    const/4 v0, 0x0

    goto :goto_33
.end method

.method public setClipToPadding(Z)V
    .registers 2
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 474
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setClipToPadding(Z)V

    .line 475
    iput-boolean p1, p0, Lcom/etsy/android/grid/ExtendableListView;->mClipToPadding:Z

    .line 476
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2
    .param p1, "scrollListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 2004
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 2005
    iput-object p1, p0, Lcom/etsy/android/grid/ExtendableListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 2006
    return-void
.end method

.method public setSelection(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 295
    if-ltz p1, :cond_1f

    .line 296
    const/4 v0, 0x2

    iput v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mLayoutMode:I

    .line 297
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->getListPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mSpecificTop:I

    .line 299
    const/4 v0, 0x0

    iput v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mFirstPosition:I

    .line 300
    iget-boolean v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mNeedSync:Z

    if-eqz v0, :cond_1c

    .line 301
    iput p1, p0, Lcom/etsy/android/grid/ExtendableListView;->mSyncPosition:I

    .line 302
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/etsy/android/grid/ExtendableListView;->mSyncRowId:J

    .line 304
    :cond_1c
    invoke-virtual {p0}, Lcom/etsy/android/grid/ExtendableListView;->requestLayout()V

    .line 306
    :cond_1f
    return-void
.end method
