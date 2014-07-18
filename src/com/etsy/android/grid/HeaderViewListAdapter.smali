.class public Lcom/etsy/android/grid/HeaderViewListAdapter;
.super Ljava/lang/Object;
.source "HeaderViewListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/WrapperListAdapter;


# static fields
.field static final EMPTY_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/etsy/android/grid/HeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .registers 5
    .param p3, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;>;"
    .local p2, "footerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p3, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 59
    instance-of v0, p3, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mIsFilterable:Z

    .line 61
    if-nez p1, :cond_29

    .line 62
    sget-object v0, Lcom/etsy/android/grid/HeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 67
    :goto_f
    if-nez p2, :cond_2c

    .line 68
    sget-object v0, Lcom/etsy/android/grid/HeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 73
    :goto_15
    iget-object v0, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/etsy/android/grid/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/etsy/android/grid/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    :goto_26
    iput-boolean v0, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 76
    return-void

    .line 64
    :cond_29
    iput-object p1, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    goto :goto_f

    .line 70
    :cond_2c
    iput-object p2, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    goto :goto_15

    .line 73
    :cond_2f
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;>;"
    if-eqz p1, :cond_18

    .line 92
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;

    .line 93
    .local v1, "info":Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;
    iget-boolean v2, v1, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;->isSelectable:Z

    if-nez v2, :cond_6

    .line 94
    const/4 v2, 0x0

    .line 98
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;
    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x1

    goto :goto_17
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 144
    iget-object v1, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_11

    .line 145
    iget-boolean v1, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 147
    :cond_11
    :goto_11
    return v0

    .line 145
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_15

    .line 137
    invoke-virtual {p0}, Lcom/etsy/android/grid/HeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/etsy/android/grid/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :goto_14
    return v0

    :cond_15
    invoke-virtual {p0}, Lcom/etsy/android/grid/HeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/etsy/android/grid/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_14
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_d

    .line 267
    iget-object v0, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 269
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getFootersCount()I
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/etsy/android/grid/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 175
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_11

    .line 176
    iget-object v3, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;

    iget-object v3, v3, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 190
    :goto_10
    return-object v3

    .line 180
    :cond_11
    sub-int v1, p1, v2

    .line 181
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 182
    .local v0, "adapterCount":I
    iget-object v3, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_27

    .line 183
    iget-object v3, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 184
    if-ge v1, v0, :cond_27

    .line 185
    iget-object v3, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_10

    .line 190
    :cond_27
    iget-object v3, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;

    iget-object v3, v3, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;->data:Ljava/lang/Object;

    goto :goto_10
.end method

.method public getItemId(I)J
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/etsy/android/grid/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 195
    .local v2, "numHeaders":I
    iget-object v3, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1b

    if-lt p1, v2, :cond_1b

    .line 196
    sub-int v1, p1, v2

    .line 197
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 198
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_1b

    .line 199
    iget-object v3, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 202
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_1a
    return-wide v3

    :cond_1b
    const-wide/16 v3, -0x1

    goto :goto_1a
.end method

.method public getItemViewType(I)I
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/etsy/android/grid/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 235
    .local v2, "numHeaders":I
    iget-object v3, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1b

    if-lt p1, v2, :cond_1b

    .line 236
    sub-int v1, p1, v2

    .line 237
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 238
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_1b

    .line 239
    iget-object v3, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 243
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_1a
    return v3

    :cond_1b
    const/4 v3, -0x2

    goto :goto_1a
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/etsy/android/grid/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 215
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_11

    .line 216
    iget-object v3, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;

    iget-object v3, v3, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;->view:Landroid/view/View;

    .line 230
    :goto_10
    return-object v3

    .line 220
    :cond_11
    sub-int v1, p1, v2

    .line 221
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 222
    .local v0, "adapterCount":I
    iget-object v3, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_27

    .line 223
    iget-object v3, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 224
    if-ge v1, v0, :cond_27

    .line 225
    iget-object v3, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_10

    .line 230
    :cond_27
    iget-object v3, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;

    iget-object v3, v3, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;->view:Landroid/view/View;

    goto :goto_10
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 248
    iget-object v0, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 250
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 207
    iget-object v0, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 209
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isEnabled(I)Z
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/etsy/android/grid/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 154
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_11

    .line 155
    iget-object v3, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;

    iget-boolean v3, v3, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;->isSelectable:Z

    .line 169
    :goto_10
    return v3

    .line 159
    :cond_11
    sub-int v1, p1, v2

    .line 160
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 161
    .local v0, "adapterCount":I
    iget-object v3, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_27

    .line 162
    iget-object v3, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 163
    if-ge v1, v0, :cond_27

    .line 164
    iget-object v3, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    goto :goto_10

    .line 169
    :cond_27
    iget-object v3, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;

    iget-boolean v3, v3, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;->isSelectable:Z

    goto :goto_10
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    .line 255
    iget-object v0, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 257
    :cond_9
    return-void
.end method

.method public removeFooter(Landroid/view/View;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v4, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_33

    .line 120
    iget-object v4, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;

    .line 121
    .local v1, "info":Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;
    iget-object v4, v1, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_30

    .line 122
    iget-object v4, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 124
    iget-object v4, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/etsy/android/grid/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_2d

    iget-object v4, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/etsy/android/grid/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_2d

    move v2, v3

    :cond_2d
    iput-boolean v2, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 132
    .end local v1    # "info":Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;
    :goto_2f
    return v3

    .line 119
    .restart local v1    # "info":Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v1    # "info":Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;
    :cond_33
    move v3, v2

    .line 132
    goto :goto_2f
.end method

.method public removeHeader(Landroid/view/View;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v4, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_33

    .line 103
    iget-object v4, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;

    .line 104
    .local v1, "info":Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;
    iget-object v4, v1, Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_30

    .line 105
    iget-object v4, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 107
    iget-object v4, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/etsy/android/grid/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_2d

    iget-object v4, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/etsy/android/grid/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_2d

    move v2, v3

    :cond_2d
    iput-boolean v2, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 115
    .end local v1    # "info":Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;
    :goto_2f
    return v3

    .line 102
    .restart local v1    # "info":Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v1    # "info":Lcom/etsy/android/grid/ExtendableListView$FixedViewInfo;
    :cond_33
    move v3, v2

    .line 115
    goto :goto_2f
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    .line 261
    iget-object v0, p0, Lcom/etsy/android/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 263
    :cond_9
    return-void
.end method
