.class Lcom/etsy/android/grid/ExtendableListView$RecycleBin;
.super Ljava/lang/Object;
.source "ExtendableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etsy/android/grid/ExtendableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSkippedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Lcom/etsy/android/grid/ExtendableListView;


# direct methods
.method constructor <init>(Lcom/etsy/android/grid/ExtendableListView;)V
    .registers 3

    .prologue
    .line 2163
    iput-object p1, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->this$0:Lcom/etsy/android/grid/ExtendableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2176
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method private pruneScrapViews()V
    .registers 14

    .prologue
    .line 2448
    iget-object v10, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v3, v10

    .line 2449
    .local v3, "maxViews":I
    iget v9, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mViewTypeCount:I

    .line 2450
    .local v9, "viewTypeCount":I
    iget-object v5, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 2451
    .local v5, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v9, :cond_2d

    .line 2452
    aget-object v4, v5, v1

    .line 2453
    .local v4, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2454
    .local v6, "size":I
    sub-int v0, v6, v3

    .line 2455
    .local v0, "extras":I
    add-int/lit8 v6, v6, -0x1

    .line 2456
    const/4 v2, 0x0

    .local v2, "j":I
    move v7, v6

    .end local v6    # "size":I
    .local v7, "size":I
    :goto_16
    if-ge v2, v0, :cond_2a

    .line 2457
    iget-object v11, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->this$0:Lcom/etsy/android/grid/ExtendableListView;

    add-int/lit8 v6, v7, -0x1

    .end local v7    # "size":I
    .restart local v6    # "size":I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    const/4 v12, 0x0

    # invokes: Lcom/etsy/android/grid/ExtendableListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v11, v10, v12}, Lcom/etsy/android/grid/ExtendableListView;->access$1500(Lcom/etsy/android/grid/ExtendableListView;Landroid/view/View;Z)V

    .line 2456
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6    # "size":I
    .restart local v7    # "size":I
    goto :goto_16

    .line 2451
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2461
    .end local v0    # "extras":I
    .end local v2    # "j":I
    .end local v4    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "size":I
    :cond_2d
    iget-object v10, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v10, :cond_52

    .line 2462
    const/4 v1, 0x0

    :goto_32
    iget-object v10, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v10}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v10

    if-ge v1, v10, :cond_52

    .line 2463
    iget-object v10, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v10, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 2464
    .local v8, "v":Landroid/view/View;
    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_4f

    .line 2465
    iget-object v10, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v10, v1}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 2466
    add-int/lit8 v1, v1, -0x1

    .line 2462
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 2470
    .end local v8    # "v":Landroid/view/View;
    :cond_52
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;I)V
    .registers 8
    .param p1, "scrap"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 2351
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;

    .line 2352
    .local v0, "lp":Lcom/etsy/android/grid/ExtendableListView$LayoutParams;
    if-nez v0, :cond_9

    .line 2384
    :cond_8
    :goto_8
    return-void

    .line 2356
    :cond_9
    iput p2, v0, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;->position:I

    .line 2360
    iget v2, v0, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;->viewType:I

    .line 2361
    .local v2, "viewType":I
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v1

    .line 2362
    .local v1, "scrapHasTransientState":Z
    invoke-virtual {p0, v2}, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v3

    if-eqz v3, :cond_19

    if-eqz v1, :cond_41

    .line 2363
    :cond_19
    const/4 v3, -0x2

    if-ne v2, v3, :cond_1e

    if-eqz v1, :cond_2e

    .line 2364
    :cond_1e
    iget-object v3, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v3, :cond_29

    .line 2365
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    .line 2367
    :cond_29
    iget-object v3, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2369
    :cond_2e
    if-eqz v1, :cond_8

    .line 2370
    iget-object v3, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v3, :cond_3b

    .line 2371
    new-instance v3, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v3}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v3, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    .line 2373
    :cond_3b
    iget-object v3, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, p2, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto :goto_8

    .line 2378
    :cond_41
    iget v3, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mViewTypeCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4c

    .line 2379
    iget-object v3, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 2382
    :cond_4c
    iget-object v3, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method clear()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 2239
    iget v5, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mViewTypeCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_20

    .line 2240
    iget-object v2, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 2241
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2242
    .local v3, "scrapCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v3, :cond_44

    .line 2243
    iget-object v6, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->this$0:Lcom/etsy/android/grid/ExtendableListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    # invokes: Lcom/etsy/android/grid/ExtendableListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Lcom/etsy/android/grid/ExtendableListView;->access$1100(Lcom/etsy/android/grid/ExtendableListView;Landroid/view/View;Z)V

    .line 2242
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2247
    .end local v0    # "i":I
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    :cond_20
    iget v4, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mViewTypeCount:I

    .line 2248
    .local v4, "typeCount":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_23
    if-ge v0, v4, :cond_44

    .line 2249
    iget-object v5, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 2250
    .restart local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2251
    .restart local v3    # "scrapCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2e
    if-ge v1, v3, :cond_41

    .line 2252
    iget-object v6, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->this$0:Lcom/etsy/android/grid/ExtendableListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    # invokes: Lcom/etsy/android/grid/ExtendableListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Lcom/etsy/android/grid/ExtendableListView;->access$1200(Lcom/etsy/android/grid/ExtendableListView;Landroid/view/View;Z)V

    .line 2251
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 2248
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 2256
    .end local v1    # "j":I
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    .end local v4    # "typeCount":I
    :cond_44
    iget-object v5, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v5, :cond_4d

    .line 2257
    iget-object v5, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v5}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 2259
    :cond_4d
    return-void
.end method

.method clearTransientStateViews()V
    .registers 2

    .prologue
    .line 2322
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_9

    .line 2323
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 2325
    :cond_9
    return-void
.end method

.method fillActiveViews(II)V
    .registers 9
    .param p1, "childCount"    # I
    .param p2, "firstActivePosition"    # I

    .prologue
    .line 2269
    iget-object v4, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_9

    .line 2270
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 2272
    :cond_9
    iput p2, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mFirstActivePosition:I

    .line 2274
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 2275
    .local v0, "activeViews":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, p1, :cond_28

    .line 2276
    iget-object v4, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->this$0:Lcom/etsy/android/grid/ExtendableListView;

    invoke-virtual {v4, v2}, Lcom/etsy/android/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2277
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;

    .line 2279
    .local v3, "lp":Lcom/etsy/android/grid/ExtendableListView$LayoutParams;
    if-eqz v3, :cond_25

    iget v4, v3, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_25

    .line 2282
    aput-object v1, v0, v2

    .line 2275
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2285
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/etsy/android/grid/ExtendableListView$LayoutParams;
    :cond_28
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 2295
    iget v4, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v4

    .line 2296
    .local v1, "index":I
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 2297
    .local v0, "activeViews":[Landroid/view/View;
    if-ltz v1, :cond_11

    array-length v4, v0

    if-ge v1, v4, :cond_11

    .line 2298
    aget-object v2, v0, v1

    .line 2299
    .local v2, "match":Landroid/view/View;
    aput-object v3, v0, v1

    .line 2302
    .end local v2    # "match":Landroid/view/View;
    :goto_10
    return-object v2

    :cond_11
    move-object v2, v3

    goto :goto_10
.end method

.method getScrapView(I)Landroid/view/View;
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 2331
    iget v1, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 2332
    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/etsy/android/grid/ExtendableListView;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    .line 2340
    :goto_b
    return-object v1

    .line 2335
    :cond_c
    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->this$0:Lcom/etsy/android/grid/ExtendableListView;

    iget-object v1, v1, Lcom/etsy/android/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 2336
    .local v0, "whichScrap":I
    if-ltz v0, :cond_24

    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_24

    .line 2337
    iget-object v1, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lcom/etsy/android/grid/ExtendableListView;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    goto :goto_b

    .line 2340
    :cond_24
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public markChildrenDirty()V
    .registers 9

    .prologue
    .line 2206
    iget v6, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mViewTypeCount:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1a

    .line 2207
    iget-object v3, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 2208
    .local v3, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2209
    .local v4, "scrapCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v4, :cond_39

    .line 2210
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 2209
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 2214
    .end local v1    # "i":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    :cond_1a
    iget v5, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mViewTypeCount:I

    .line 2215
    .local v5, "typeCount":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1d
    if-ge v1, v5, :cond_39

    .line 2216
    iget-object v6, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v6, v1

    .line 2217
    .restart local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2218
    .restart local v4    # "scrapCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_28
    if-ge v2, v4, :cond_36

    .line 2219
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 2218
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 2215
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 2223
    .end local v2    # "j":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    .end local v5    # "typeCount":I
    :cond_39
    iget-object v6, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v6, :cond_54

    .line 2224
    iget-object v6, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v6}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    .line 2225
    .local v0, "count":I
    const/4 v1, 0x0

    :goto_44
    if-ge v1, v0, :cond_54

    .line 2226
    iget-object v6, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v6, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 2225
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 2229
    .end local v0    # "count":I
    :cond_54
    return-void
.end method

.method removeSkippedScrap()V
    .registers 6

    .prologue
    .line 2390
    iget-object v2, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    .line 2398
    :goto_4
    return-void

    .line 2393
    :cond_5
    iget-object v2, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2394
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_1f

    .line 2395
    iget-object v3, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->this$0:Lcom/etsy/android/grid/ExtendableListView;

    iget-object v2, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v4, 0x0

    # invokes: Lcom/etsy/android/grid/ExtendableListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v3, v2, v4}, Lcom/etsy/android/grid/ExtendableListView;->access$1300(Lcom/etsy/android/grid/ExtendableListView;Landroid/view/View;Z)V

    .line 2394
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 2397
    :cond_1f
    iget-object v2, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_4
.end method

.method scrapActiveViews()V
    .registers 13

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 2404
    iget-object v0, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 2405
    .local v0, "activeViews":[Landroid/view/View;
    iget v10, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mViewTypeCount:I

    if-le v10, v4, :cond_4c

    .line 2407
    .local v4, "multipleScraps":Z
    :goto_8
    iget-object v6, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 2408
    .local v6, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 2409
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_d
    if-ltz v2, :cond_5d

    .line 2410
    aget-object v7, v0, v2

    .line 2411
    .local v7, "victim":Landroid/view/View;
    if-eqz v7, :cond_49

    .line 2412
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;

    .line 2413
    .local v3, "lp":Lcom/etsy/android/grid/ExtendableListView$LayoutParams;
    const/4 v10, 0x0

    aput-object v10, v0, v2

    .line 2415
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v5

    .line 2416
    .local v5, "scrapHasTransientState":Z
    iget v8, v3, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;->viewType:I

    .line 2418
    .local v8, "viewType":I
    invoke-virtual {p0, v8}, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_2a

    if-eqz v5, :cond_4e

    .line 2420
    :cond_2a
    const/4 v10, -0x2

    if-ne v8, v10, :cond_2f

    if-eqz v5, :cond_34

    .line 2421
    :cond_2f
    iget-object v10, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->this$0:Lcom/etsy/android/grid/ExtendableListView;

    # invokes: Lcom/etsy/android/grid/ExtendableListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v10, v7, v9}, Lcom/etsy/android/grid/ExtendableListView;->access$1400(Lcom/etsy/android/grid/ExtendableListView;Landroid/view/View;Z)V

    .line 2423
    :cond_34
    if-eqz v5, :cond_49

    .line 2424
    iget-object v10, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v10, :cond_41

    .line 2425
    new-instance v10, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v10}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v10, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    .line 2427
    :cond_41
    iget-object v10, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    iget v11, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v11, v2

    invoke-virtual {v10, v11, v7}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 2409
    .end local v3    # "lp":Lcom/etsy/android/grid/ExtendableListView$LayoutParams;
    .end local v5    # "scrapHasTransientState":Z
    .end local v8    # "viewType":I
    :cond_49
    :goto_49
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v4    # "multipleScraps":Z
    .end local v6    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "victim":Landroid/view/View;
    :cond_4c
    move v4, v9

    .line 2405
    goto :goto_8

    .line 2432
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "lp":Lcom/etsy/android/grid/ExtendableListView$LayoutParams;
    .restart local v4    # "multipleScraps":Z
    .restart local v5    # "scrapHasTransientState":Z
    .restart local v6    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v7    # "victim":Landroid/view/View;
    .restart local v8    # "viewType":I
    :cond_4e
    if-eqz v4, :cond_54

    .line 2433
    iget-object v10, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v6, v10, v8

    .line 2435
    :cond_54
    iget v10, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v10, v2

    iput v10, v3, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;->position:I

    .line 2436
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 2440
    .end local v3    # "lp":Lcom/etsy/android/grid/ExtendableListView$LayoutParams;
    .end local v5    # "scrapHasTransientState":Z
    .end local v7    # "victim":Landroid/view/View;
    .end local v8    # "viewType":I
    :cond_5d
    invoke-direct {p0}, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->pruneScrapViews()V

    .line 2441
    return-void
.end method

.method public setViewTypeCount(I)V
    .registers 6
    .param p1, "viewTypeCount"    # I

    .prologue
    .line 2192
    const/4 v2, 0x1

    if-ge p1, v2, :cond_c

    .line 2193
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2196
    :cond_c
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 2197
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, p1, :cond_1b

    .line 2198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 2197
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 2200
    :cond_1b
    iput p1, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mViewTypeCount:I

    .line 2201
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 2202
    iput-object v1, p0, Lcom/etsy/android/grid/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 2203
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .registers 3
    .param p1, "viewType"    # I

    .prologue
    .line 2232
    if-ltz p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
