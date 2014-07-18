.class public Lcom/airbnb/android/adapters/SectionedAdapter;
.super Landroid/widget/BaseAdapter;
.source "SectionedAdapter.java"

# interfaces
.implements Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;


# instance fields
.field private mAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/BaseAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/adapters/SectionedAdapter;->mAdapters:Ljava/util/List;

    .line 25
    return-void
.end method

.method private getAdapterForPosition(I)Landroid/widget/BaseAdapter;
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 135
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/airbnb/android/adapters/SectionedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 136
    iget-object v2, p0, Lcom/airbnb/android/adapters/SectionedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 137
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    sub-int/2addr p1, v2

    .line 139
    if-gez p1, :cond_19

    .line 143
    .end local v0    # "adapter":Landroid/widget/BaseAdapter;
    :goto_18
    return-object v0

    .line 135
    .restart local v0    # "adapter":Landroid/widget/BaseAdapter;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    .end local v0    # "adapter":Landroid/widget/BaseAdapter;
    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private getPositionOffset(Landroid/widget/BaseAdapter;I)I
    .registers 6
    .param p1, "currentAdapter"    # Landroid/widget/BaseAdapter;
    .param p2, "position"    # I

    .prologue
    .line 147
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/airbnb/android/adapters/SectionedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 148
    iget-object v2, p0, Lcom/airbnb/android/adapters/SectionedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 149
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 155
    .end local v0    # "adapter":Landroid/widget/BaseAdapter;
    .end local p2    # "position":I
    :goto_17
    return p2

    .line 152
    .restart local v0    # "adapter":Landroid/widget/BaseAdapter;
    .restart local p2    # "position":I
    :cond_18
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    sub-int/2addr p2, v2

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 155
    .end local v0    # "adapter":Landroid/widget/BaseAdapter;
    :cond_20
    const/4 p2, -0x1

    goto :goto_17
.end method


# virtual methods
.method public addAdapter(Landroid/widget/BaseAdapter;)V
    .registers 3
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/adapters/SectionedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v0, Lcom/airbnb/android/adapters/SectionedAdapter$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/adapters/SectionedAdapter$1;-><init>(Lcom/airbnb/android/adapters/SectionedAdapter;)V

    invoke-virtual {p1, v0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 41
    return-void
.end method

.method public getCount()I
    .registers 5

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, "count":I
    iget-object v3, p0, Lcom/airbnb/android/adapters/SectionedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 77
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    add-int/2addr v1, v3

    .line 78
    goto :goto_7

    .line 80
    .end local v0    # "adapter":Landroid/widget/BaseAdapter;
    :cond_19
    return v1
.end method

.method public getHeaderItemIndex(I)I
    .registers 8
    .param p1, "headerNum"    # I

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v5, p0, Lcom/airbnb/android/adapters/SectionedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2a

    .line 105
    iget-object v5, p0, Lcom/airbnb/android/adapters/SectionedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 106
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    instance-of v5, v0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;

    if-eqz v5, :cond_22

    move-object v4, v0

    .line 107
    check-cast v4, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;

    .line 108
    .local v4, "stickyAdapter":Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;
    invoke-interface {v4, p1}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;->getHeaderItemIndex(I)I

    move-result v2

    .line 109
    .local v2, "headerIndex":I
    if-ltz v2, :cond_22

    .line 110
    add-int v5, v2, v1

    .line 115
    .end local v0    # "adapter":Landroid/widget/BaseAdapter;
    .end local v2    # "headerIndex":I
    .end local v4    # "stickyAdapter":Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;
    :goto_21
    return v5

    .line 113
    .restart local v0    # "adapter":Landroid/widget/BaseAdapter;
    :cond_22
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v5

    add-int/2addr v1, v5

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 115
    .end local v0    # "adapter":Landroid/widget/BaseAdapter;
    :cond_2a
    const/4 v5, -0x1

    goto :goto_21
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/SectionedAdapter;->getAdapterForPosition(I)Landroid/widget/BaseAdapter;

    move-result-object v0

    .line 86
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    invoke-direct {p0, v0, p1}, Lcom/airbnb/android/adapters/SectionedAdapter;->getPositionOffset(Landroid/widget/BaseAdapter;I)I

    move-result v1

    .line 87
    .local v1, "positionOffset":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_10

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    :goto_f
    return-object v2

    :cond_10
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 92
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 59
    const/4 v3, 0x0

    .line 60
    .local v3, "viewTypeOffset":I
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/SectionedAdapter;->getAdapterForPosition(I)Landroid/widget/BaseAdapter;

    move-result-object v2

    .line 62
    .local v2, "viewTypeAdapter":Landroid/widget/BaseAdapter;
    iget-object v4, p0, Lcom/airbnb/android/adapters/SectionedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 63
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 64
    invoke-direct {p0, v0, p1}, Lcom/airbnb/android/adapters/SectionedAdapter;->getPositionOffset(Landroid/widget/BaseAdapter;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v4

    add-int/2addr v4, v3

    .line 70
    .end local v0    # "adapter":Landroid/widget/BaseAdapter;
    :goto_26
    return v4

    .line 67
    .restart local v0    # "adapter":Landroid/widget/BaseAdapter;
    :cond_27
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v4

    add-int/2addr v3, v4

    .line 68
    goto :goto_b

    .line 70
    .end local v0    # "adapter":Landroid/widget/BaseAdapter;
    :cond_2d
    const/4 v4, -0x1

    goto :goto_26
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/SectionedAdapter;->getAdapterForPosition(I)Landroid/widget/BaseAdapter;

    move-result-object v0

    .line 98
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    invoke-direct {p0, v0, p1}, Lcom/airbnb/android/adapters/SectionedAdapter;->getPositionOffset(Landroid/widget/BaseAdapter;I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getViewTypeCount()I
    .registers 5

    .prologue
    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, "count":I
    iget-object v3, p0, Lcom/airbnb/android/adapters/SectionedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 51
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v3

    add-int/2addr v1, v3

    .line 52
    goto :goto_7

    .line 54
    .end local v0    # "adapter":Landroid/widget/BaseAdapter;
    :cond_19
    return v1
.end method

.method public isEnabled(I)Z
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/SectionedAdapter;->getAdapterForPosition(I)Landroid/widget/BaseAdapter;

    move-result-object v0

    .line 131
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    invoke-direct {p0, v0, p1}, Lcom/airbnb/android/adapters/SectionedAdapter;->getPositionOffset(Landroid/widget/BaseAdapter;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v1

    return v1
.end method

.method public isHeaderItem(I)Z
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/SectionedAdapter;->getAdapterForPosition(I)Landroid/widget/BaseAdapter;

    move-result-object v0

    .line 121
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    instance-of v1, v0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;

    if-eqz v1, :cond_14

    move-object v1, v0

    .line 122
    check-cast v1, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;

    invoke-direct {p0, v0, p1}, Lcom/airbnb/android/adapters/SectionedAdapter;->getPositionOffset(Landroid/widget/BaseAdapter;I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener$StickyHeaderAdapter;->isHeaderItem(I)Z

    move-result v1

    .line 124
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public removeAdapter(Landroid/widget/BaseAdapter;)V
    .registers 3
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/airbnb/android/adapters/SectionedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method
