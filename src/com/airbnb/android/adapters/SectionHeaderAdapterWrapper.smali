.class public abstract Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "SectionHeaderAdapterWrapper.java"

# interfaces
.implements Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    if-nez p1, :cond_e

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Adapter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_e
    iput-object p1, p0, Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;->mAdapter:Landroid/widget/BaseAdapter;

    .line 27
    iget-object v0, p0, Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;->mAdapter:Landroid/widget/BaseAdapter;

    new-instance v1, Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper$1;-><init>(Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;)V

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 38
    return-void
.end method

.method private getPositionOffset(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 110
    add-int/lit8 v0, p1, -0x1

    return v0
.end method


# virtual methods
.method public getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 47
    iget-object v1, p0, Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 48
    .local v0, "adapterCount":I
    if-lez v0, :cond_b

    const/4 v1, 0x1

    :goto_9
    add-int/2addr v1, v0

    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public getHeaderItemIndex(I)I
    .registers 3
    .param p1, "nthHeader"    # I

    .prologue
    .line 87
    if-nez p1, :cond_4

    .line 88
    const/4 v0, 0x0

    .line 91
    :goto_3
    return v0

    :cond_4
    const/4 v0, -0x1

    goto :goto_3
.end method

.method public abstract getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;->getPositionOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 73
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 58
    if-nez p1, :cond_4

    .line 59
    const/4 v0, 0x0

    .line 62
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;->getPositionOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 78
    if-nez p1, :cond_7

    .line 79
    invoke-virtual {p0, p2, p3}, Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;->getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 81
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;->getPositionOffset(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_6
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 97
    if-nez p1, :cond_4

    .line 98
    const/4 v0, 0x0

    .line 100
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/SectionHeaderAdapterWrapper;->getPositionOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_3
.end method

.method public isHeaderItem(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 106
    if-nez p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
