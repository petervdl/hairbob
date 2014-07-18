.class public abstract Lcom/airbnb/android/adapters/LoopingPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "LoopingPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/view/PagerAdapter;"
    }
.end annotation


# static fields
.field private static final NUM_DUPLICATE_ITEMS:I = 0x4

.field private static final NUM_DUPLICATE_ITEMS_END:I = 0x2

.field public static final NUM_DUPLICATE_ITEMS_START:I = 0x2


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mLoopingEnabled:Z

.field private mPeekEnabled:Z

.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/airbnb/android/adapters/LoopingPagerAdapter;, "Lcom/airbnb/android/adapters/LoopingPagerAdapter<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->mItems:Ljava/util/List;

    .line 24
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->mViews:Landroid/util/SparseArray;

    .line 26
    iget-object v1, p0, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_18

    :goto_15
    iput-boolean v0, p0, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->mLoopingEnabled:Z

    .line 27
    return-void

    .line 26
    :cond_18
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method protected abstract createView(Landroid/view/ViewGroup;I)Landroid/view/View;
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 100
    .local p0, "this":Lcom/airbnb/android/adapters/LoopingPagerAdapter;, "Lcom/airbnb/android/adapters/LoopingPagerAdapter<TT;>;"
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    .line 101
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 102
    return-void
.end method

.method public getAdjustedPosition(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 57
    .local p0, "this":Lcom/airbnb/android/adapters/LoopingPagerAdapter;, "Lcom/airbnb/android/adapters/LoopingPagerAdapter<TT;>;"
    iget-boolean v1, p0, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->mLoopingEnabled:Z

    if-nez v1, :cond_6

    move v0, p1

    .line 88
    .end local p1    # "position":I
    .local v0, "position":I
    :goto_5
    return v0

    .line 62
    .end local v0    # "position":I
    .restart local p1    # "position":I
    :cond_6
    if-nez p1, :cond_15

    .line 63
    iget-object v1, p0, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 p1, v1, -0x2

    .line 82
    :goto_10
    if-gez p1, :cond_38

    .line 83
    const/4 p1, 0x0

    :cond_13
    :goto_13
    move v0, p1

    .line 88
    .end local p1    # "position":I
    .restart local v0    # "position":I
    goto :goto_5

    .line 64
    .end local v0    # "position":I
    .restart local p1    # "position":I
    :cond_15
    const/4 v1, 0x1

    if-ne p1, v1, :cond_21

    .line 65
    iget-object v1, p0, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 p1, v1, -0x1

    goto :goto_10

    .line 69
    :cond_21
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ne p1, v1, :cond_2b

    .line 70
    const/4 p1, 0x0

    goto :goto_10

    .line 71
    :cond_2b
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_35

    .line 72
    const/4 p1, 0x1

    goto :goto_10

    .line 77
    :cond_35
    add-int/lit8 p1, p1, -0x2

    goto :goto_10

    .line 84
    :cond_38
    iget-object v1, p0, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_13

    .line 85
    iget-object v1, p0, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 p1, v1, -0x1

    goto :goto_13
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 33
    .local p0, "this":Lcom/airbnb/android/adapters/LoopingPagerAdapter;, "Lcom/airbnb/android/adapters/LoopingPagerAdapter<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-boolean v0, p0, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->mLoopingEnabled:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    :goto_b
    add-int/2addr v0, v1

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 46
    .local p0, "this":Lcom/airbnb/android/adapters/LoopingPagerAdapter;, "Lcom/airbnb/android/adapters/LoopingPagerAdapter<TT;>;"
    iget-object v1, p0, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 47
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_13

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->createView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    :cond_13
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    return-object v0
.end method

.method public isLoopingEnabled()Z
    .registers 2

    .prologue
    .line 111
    .local p0, "this":Lcom/airbnb/android/adapters/LoopingPagerAdapter;, "Lcom/airbnb/android/adapters/LoopingPagerAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->mLoopingEnabled:Z

    return v0
.end method

.method public isPeekEnabled()Z
    .registers 2

    .prologue
    .line 131
    .local p0, "this":Lcom/airbnb/android/adapters/LoopingPagerAdapter;, "Lcom/airbnb/android/adapters/LoopingPagerAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->mPeekEnabled:Z

    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 38
    .local p0, "this":Lcom/airbnb/android/adapters/LoopingPagerAdapter;, "Lcom/airbnb/android/adapters/LoopingPagerAdapter<TT;>;"
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public itemToPagePosition(I)I
    .registers 3
    .param p1, "actualItemPos"    # I

    .prologue
    .line 95
    .local p0, "this":Lcom/airbnb/android/adapters/LoopingPagerAdapter;, "Lcom/airbnb/android/adapters/LoopingPagerAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->mLoopingEnabled:Z

    if-eqz v0, :cond_6

    add-int/lit8 p1, p1, 0x2

    .end local p1    # "actualItemPos":I
    :cond_6
    return p1
.end method

.method public setPeekEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 122
    .local p0, "this":Lcom/airbnb/android/adapters/LoopingPagerAdapter;, "Lcom/airbnb/android/adapters/LoopingPagerAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->mLoopingEnabled:Z

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->mPeekEnabled:Z

    .line 123
    return-void

    .line 122
    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method
