.class public Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;
.super Ljava/lang/Object;
.source "StickyHeaderOnScrollListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;
    }
.end annotation


# instance fields
.field private mHeaderCount:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderView:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mStickyLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 4
    .param p1, "frameLayout"    # Landroid/widget/FrameLayout;
    .param p2, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderCount:Ljava/util/Stack;

    .line 49
    iput-object p2, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 50
    iput-object p1, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mStickyLayout:Landroid/widget/FrameLayout;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ListView;Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 4
    .param p1, "frameLayout"    # Landroid/widget/FrameLayout;
    .param p2, "listView"    # Landroid/widget/ListView;
    .param p3, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 54
    invoke-direct {p0, p1, p3}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;-><init>(Landroid/widget/FrameLayout;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 55
    iput-object p2, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mListView:Landroid/widget/ListView;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;)Landroid/widget/ListView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method private animate(Landroid/view/View;)V
    .registers 8
    .param p1, "headerItem"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0x0

    .line 219
    iget-object v2, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    if-eqz v2, :cond_2e

    .line 220
    iget-object v2, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v2, :cond_2f

    iget-object v2, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 221
    .local v1, "height":I
    :goto_14
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    if-ge v2, v1, :cond_36

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v0, v2, v1

    .line 223
    .local v0, "dist":I
    iget-object v2, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 228
    .end local v0    # "dist":I
    .end local v1    # "height":I
    :cond_2e
    :goto_2e
    return-void

    .line 220
    :cond_2f
    iget-object v2, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_14

    .line 225
    .restart local v1    # "height":I
    :cond_36
    iget-object v2, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_2e
.end method

.method private getHeaderView(ILandroid/view/ViewGroup;Landroid/widget/Adapter;)Landroid/view/View;
    .registers 6
    .param p1, "viewIndex"    # I
    .param p2, "view"    # Landroid/view/ViewGroup;
    .param p3, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 122
    const/4 v1, 0x0

    invoke-interface {p3, p1, v1, p2}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "header":Landroid/view/View;
    iget-object v1, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_11

    .line 124
    new-instance v1, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$1;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$1;-><init>(Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    :cond_11
    return-object v0
.end method

.method private handleRemoval(Landroid/widget/AbsListView;Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;Landroid/widget/Adapter;I)V
    .registers 10
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "stickyHeaderAdapter"    # Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;
    .param p3, "adapter"    # Landroid/widget/Adapter;
    .param p4, "item"    # I

    .prologue
    const/4 v4, 0x0

    .line 186
    iget-object v2, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    if-eqz v2, :cond_60

    .line 187
    iget-object v2, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderCount:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_61

    const/4 v1, -0x1

    .line 189
    .local v1, "topIndex":I
    :goto_e
    if-ne p4, v1, :cond_60

    .line 190
    iget-object v2, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderCount:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 191
    iget-object v2, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mStickyLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 192
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    .line 194
    iget-object v2, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderCount:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_60

    .line 195
    iget-object v2, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderCount:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p2, v2}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;->getHeaderItemIndex(I)I

    move-result v0

    .line 196
    .local v0, "index":I
    if-ltz v0, :cond_60

    .line 197
    invoke-direct {p0, v0, p1, p3}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->getHeaderView(ILandroid/view/ViewGroup;Landroid/widget/Adapter;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    .line 198
    iget-object v2, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v4, v4}, Landroid/view/View;->measure(II)V

    .line 199
    iget-object v2, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v2, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mStickyLayout:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$2;-><init>(Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 210
    iget-object v2, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 211
    iget-object v2, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mStickyLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 216
    .end local v0    # "index":I
    .end local v1    # "topIndex":I
    :cond_60
    return-void

    .line 187
    :cond_61
    iget-object v2, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderCount:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_e
.end method


# virtual methods
.method public addHeaderView(Landroid/widget/Adapter;I)V
    .registers 5
    .param p1, "adapter"    # Landroid/widget/Adapter;
    .param p2, "item"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 232
    iget-object v0, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mStickyLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 234
    :cond_b
    iget-object v0, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderCount:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderCount:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p2, :cond_2a

    .line 235
    :cond_21
    iget-object v0, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderCount:Ljava/util/Stack;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_2a
    iget-object v0, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mStickyLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, p2, v0, p1}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->getHeaderView(ILandroid/view/ViewGroup;Landroid/widget/Adapter;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    .line 238
    iget-object v0, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mStickyLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 239
    return-void
.end method

.method public getHeaderView()Landroid/view/View;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getScrollListener()Landroid/widget/AbsListView$OnScrollListener;
    .registers 1

    .prologue
    .line 59
    return-object p0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 12
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v5

    instance-of v5, v5, Lcom/airbnb/android/utils/InfiniteAdapter;

    if-eqz v5, :cond_3c

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/utils/InfiniteAdapter;

    invoke-virtual {v5}, Lcom/airbnb/android/utils/InfiniteAdapter;->getWrappedAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 142
    .local v0, "adapter":Landroid/widget/Adapter;
    :goto_12
    instance-of v5, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v5, :cond_1c

    .line 143
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_1c
    move-object v4, v0

    .line 146
    check-cast v4, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;

    .line 147
    .local v4, "stickyHeaderAdapter":Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;
    move v2, p2

    .local v2, "i":I
    :goto_20
    add-int v5, p2, p3

    if-ge v2, v5, :cond_4d

    .line 148
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    long-to-int v3, v5

    .line 149
    .local v3, "item":I
    if-ltz v3, :cond_39

    .line 150
    invoke-interface {v4, v3}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;->isHeaderItem(I)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 151
    sub-int v5, v2, p2

    invoke-virtual {p1, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 153
    .local v1, "headerItem":Landroid/view/View;
    if-nez v1, :cond_44

    .line 147
    .end local v1    # "headerItem":Landroid/view/View;
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 140
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v2    # "i":I
    .end local v3    # "item":I
    .end local v4    # "stickyHeaderAdapter":Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;
    :cond_3c
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v5

    check-cast v5, Landroid/widget/ListAdapter;

    move-object v0, v5

    goto :goto_12

    .line 157
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    .restart local v1    # "headerItem":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v3    # "item":I
    .restart local v4    # "stickyHeaderAdapter":Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;
    :cond_44
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    if-gtz v5, :cond_60

    .line 158
    invoke-virtual {p0, v0, v3}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->addHeaderView(Landroid/widget/Adapter;I)V

    .line 172
    .end local v1    # "headerItem":Landroid/view/View;
    .end local v3    # "item":I
    :cond_4d
    :goto_4d
    iget-object v5, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    if-nez v5, :cond_7b

    .line 173
    const/4 v2, 0x0

    :goto_52
    if-ge v2, p2, :cond_7b

    .line 174
    invoke-interface {v4, v2}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;->isHeaderItem(I)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 175
    invoke-virtual {p0, v0, v2}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->addHeaderView(Landroid/widget/Adapter;I)V

    .line 173
    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 159
    .restart local v1    # "headerItem":Landroid/view/View;
    .restart local v3    # "item":I
    :cond_60
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    if-lez v5, :cond_71

    sub-int v5, v2, p2

    if-lez v5, :cond_71

    .line 161
    invoke-direct {p0, p1, v4, v0, v3}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->handleRemoval(Landroid/widget/AbsListView;Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;Landroid/widget/Adapter;I)V

    .line 162
    invoke-direct {p0, v1}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->animate(Landroid/view/View;)V

    goto :goto_4d

    .line 163
    :cond_71
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    if-lez v5, :cond_4d

    .line 164
    invoke-direct {p0, v1}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->animate(Landroid/view/View;)V

    goto :goto_4d

    .line 180
    .end local v1    # "headerItem":Landroid/view/View;
    .end local v3    # "item":I
    :cond_7b
    iget-object v5, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v5, :cond_84

    .line 181
    iget-object v5, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v5, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 183
    :cond_84
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 12
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 64
    if-nez p2, :cond_b0

    .line 66
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v7

    instance-of v7, v7, Lcom/airbnb/android/utils/InfiniteAdapter;

    if-eqz v7, :cond_45

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v7

    check-cast v7, Lcom/airbnb/android/utils/InfiniteAdapter;

    invoke-virtual {v7}, Lcom/airbnb/android/utils/InfiniteAdapter;->getWrappedAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 68
    .local v0, "adapter":Landroid/widget/Adapter;
    :goto_14
    instance-of v7, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v7, :cond_1e

    .line 69
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_1e
    move-object v5, v0

    .line 72
    check-cast v5, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;

    .line 73
    .local v5, "stickyHeaderAdapter":Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    .line 74
    .local v1, "firstItem":I
    const/4 v4, -0x1

    .line 75
    .local v4, "oldIndex":I
    iget-object v7, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderCount:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v7

    invoke-interface {v5, v7}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;->getHeaderItemIndex(I)I

    move-result v2

    .line 76
    .local v2, "index":I
    :goto_30
    if-ltz v2, :cond_4d

    if-eq v2, v4, :cond_4d

    if-ge v2, v1, :cond_4d

    .line 77
    invoke-virtual {p0, v0, v2}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->addHeaderView(Landroid/widget/Adapter;I)V

    .line 79
    move v4, v2

    .line 80
    iget-object v7, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderCount:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v7

    invoke-interface {v5, v7}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;->getHeaderItemIndex(I)I

    move-result v2

    goto :goto_30

    .line 66
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v1    # "firstItem":I
    .end local v2    # "index":I
    .end local v4    # "oldIndex":I
    .end local v5    # "stickyHeaderAdapter":Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;
    :cond_45
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v7

    check-cast v7, Landroid/widget/ListAdapter;

    move-object v0, v7

    goto :goto_14

    .line 83
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    .restart local v1    # "firstItem":I
    .restart local v2    # "index":I
    .restart local v4    # "oldIndex":I
    .restart local v5    # "stickyHeaderAdapter":Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;
    :cond_4d
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    .line 84
    .local v3, "lastItem":I
    iget-object v7, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderCount:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v7

    if-lez v7, :cond_b0

    .line 85
    iget-object v7, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderCount:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v5, v7}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;->getHeaderItemIndex(I)I

    move-result v2

    .line 86
    :goto_65
    if-lez v2, :cond_b0

    if-eq v2, v4, :cond_b0

    if-le v2, v3, :cond_b0

    .line 87
    iget-object v7, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderCount:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 88
    iget-object v7, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mStickyLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 89
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    .line 91
    const/4 v6, -0x1

    .line 92
    .local v6, "viewIndex":I
    iget-object v7, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderCount:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a7

    .line 93
    iget-object v7, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderCount:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v5, v7}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;->getHeaderItemIndex(I)I

    move-result v6

    .line 94
    if-ltz v6, :cond_a7

    .line 95
    invoke-direct {p0, v6, p1, v0}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->getHeaderView(ILandroid/view/ViewGroup;Landroid/widget/Adapter;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    .line 97
    iget-object v7, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 98
    iget-object v7, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mStickyLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 102
    :cond_a7
    move v4, v2

    .line 103
    iget-object v7, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderCount:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v7

    if-nez v7, :cond_ba

    .line 112
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v1    # "firstItem":I
    .end local v2    # "index":I
    .end local v3    # "lastItem":I
    .end local v4    # "oldIndex":I
    .end local v5    # "stickyHeaderAdapter":Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;
    .end local v6    # "viewIndex":I
    :cond_b0
    iget-object v7, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v7, :cond_b9

    .line 113
    iget-object v7, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v7, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 115
    :cond_b9
    return-void

    .line 107
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    .restart local v1    # "firstItem":I
    .restart local v2    # "index":I
    .restart local v3    # "lastItem":I
    .restart local v4    # "oldIndex":I
    .restart local v5    # "stickyHeaderAdapter":Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;
    .restart local v6    # "viewIndex":I
    :cond_ba
    move v2, v6

    .line 108
    goto :goto_65
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 246
    iget-object v0, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mStickyLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 248
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderView:Landroid/view/View;

    .line 249
    iget-object v0, p0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;->mHeaderCount:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 250
    return-void
.end method
