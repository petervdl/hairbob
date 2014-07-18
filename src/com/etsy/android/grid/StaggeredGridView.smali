.class public Lcom/etsy/android/grid/StaggeredGridView;
.super Lcom/etsy/android/grid/ExtendableListView;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/etsy/android/grid/StaggeredGridView$1;,
        Lcom/etsy/android/grid/StaggeredGridView$GridListSavedState;,
        Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;,
        Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_COLUMNS_LANDSCAPE:I = 0x3

.field private static final DEFAULT_COLUMNS_PORTRAIT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "StaggeredGridView"


# instance fields
.field private mColumnBottoms:[I

.field private mColumnCount:I

.field private mColumnCountLandscape:I

.field private mColumnCountPortrait:I

.field private mColumnLefts:[I

.field private mColumnTops:[I

.field private mColumnWidth:I

.field private mDistanceToTop:I

.field private mGridPaddingBottom:I

.field private mGridPaddingLeft:I

.field private mGridPaddingRight:I

.field private mGridPaddingTop:I

.field private mItemMargin:I

.field private mNeedSync:Z

.field private mPositionData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/etsy/android/grid/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/etsy/android/grid/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/etsy/android/grid/ExtendableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    iput v3, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCountPortrait:I

    .line 53
    iput v4, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCountLandscape:I

    .line 152
    if-eqz p2, :cond_49

    .line 154
    sget-object v1, Lcom/airbnb/android/R$styleable;->StaggeredGridView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 156
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    .line 159
    iget v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    if-lez v1, :cond_5f

    .line 160
    iget v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    iput v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCountPortrait:I

    .line 161
    iget v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    iput v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCountLandscape:I

    .line 172
    :goto_24
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mItemMargin:I

    .line 174
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mGridPaddingLeft:I

    .line 176
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mGridPaddingRight:I

    .line 178
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mGridPaddingTop:I

    .line 180
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mGridPaddingBottom:I

    .line 183
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 186
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    :cond_49
    iput v2, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    .line 188
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    .line 189
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    .line 190
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnLefts:[I

    .line 191
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    .line 192
    return-void

    .line 164
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    :cond_5f
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCountPortrait:I

    .line 167
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCountLandscape:I

    goto :goto_24
.end method

.method private alignTops()V
    .registers 9

    .prologue
    .line 742
    iget v6, p0, Lcom/etsy/android/grid/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getHeaderViewsCount()I

    move-result v7

    if-ne v6, v7, :cond_2a

    .line 744
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getHighestNonHeaderTops()[I

    move-result-object v4

    .line 747
    .local v4, "nonHeaderTops":[I
    const/4 v3, 0x1

    .line 748
    .local v3, "isAligned":Z
    const/4 v0, -0x1

    .line 749
    .local v0, "highestColumn":I
    const v1, 0x7fffffff

    .line 750
    .local v1, "highestTop":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    array-length v6, v4

    if-ge v2, v6, :cond_28

    .line 752
    if-eqz v3, :cond_1e

    if-lez v2, :cond_1e

    aget v6, v4, v2

    if-eq v6, v1, :cond_1e

    .line 753
    const/4 v3, 0x0

    .line 756
    :cond_1e
    aget v6, v4, v2

    if-ge v6, v1, :cond_25

    .line 757
    aget v1, v4, v2

    .line 758
    move v0, v2

    .line 750
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 763
    :cond_28
    if-eqz v3, :cond_2b

    .line 775
    .end local v0    # "highestColumn":I
    .end local v1    # "highestTop":I
    .end local v2    # "i":I
    .end local v3    # "isAligned":Z
    .end local v4    # "nonHeaderTops":[I
    :cond_2a
    :goto_2a
    return-void

    .line 766
    .restart local v0    # "highestColumn":I
    .restart local v1    # "highestTop":I
    .restart local v2    # "i":I
    .restart local v3    # "isAligned":Z
    .restart local v4    # "nonHeaderTops":[I
    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    array-length v6, v4

    if-ge v2, v6, :cond_3b

    .line 767
    if-eq v2, v0, :cond_38

    .line 769
    aget v6, v4, v2

    sub-int v5, v1, v6

    .line 770
    .local v5, "offset":I
    invoke-virtual {p0, v5, v2}, Lcom/etsy/android/grid/StaggeredGridView;->offsetChildrenTopAndBottom(II)V

    .line 766
    .end local v5    # "offset":I
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 773
    :cond_3b
    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->invalidate()V

    goto :goto_2a
.end method

.method private calculateColumnLeft(I)I
    .registers 5
    .param p1, "colIndex"    # I

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getRowPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mItemMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mItemMargin:I

    iget v2, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnWidth:I

    add-int/2addr v1, v2

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method private calculateColumnWidth(I)I
    .registers 6
    .param p1, "gridWidth"    # I

    .prologue
    .line 891
    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getRowPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getRowPaddingRight()I

    move-result v2

    add-int v0, v1, v2

    .line 892
    .local v0, "listPadding":I
    sub-int v1, p1, v0

    iget v2, p0, Lcom/etsy/android/grid/StaggeredGridView;->mItemMargin:I

    iget v3, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    div-int/2addr v1, v2

    return v1
.end method

.method private getChildBottomMargin()I
    .registers 2

    .prologue
    .line 546
    iget v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mItemMargin:I

    return v0
.end method

.method private getChildColumn(IZ)I
    .registers 5
    .param p1, "position"    # I
    .param p2, "flowDown"    # Z

    .prologue
    .line 1039
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->getPositionColumn(I)I

    move-result v0

    .line 1041
    .local v0, "column":I
    iget v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    .line 1042
    .local v1, "columnCount":I
    if-ltz v0, :cond_a

    if-lt v0, v1, :cond_10

    .line 1046
    :cond_a
    if-eqz p2, :cond_11

    .line 1047
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getHighestPositionedBottomColumn()I

    move-result v0

    .line 1054
    :cond_10
    :goto_10
    return v0

    .line 1050
    :cond_11
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getLowestPositionedTopColumn()I

    move-result v0

    goto :goto_10
.end method

.method private getChildHeight(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 537
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method private getChildTopMargin(I)I
    .registers 6
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 541
    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getHeaderViewsCount()I

    move-result v2

    iget v3, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_10

    const/4 v0, 0x1

    .line 542
    .local v0, "isFirstRow":Z
    :goto_b
    if-eqz v0, :cond_f

    iget v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mItemMargin:I

    :cond_f
    return v1

    .end local v0    # "isFirstRow":Z
    :cond_10
    move v0, v1

    .line 541
    goto :goto_b
.end method

.method private getHighestNonHeaderTops()[I
    .registers 8

    .prologue
    .line 778
    iget v5, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    new-array v4, v5, [I

    .line 779
    .local v4, "nonHeaderTops":[I
    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getChildCount()I

    move-result v1

    .line 780
    .local v1, "childCount":I
    if-lez v1, :cond_41

    .line 781
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_41

    .line 782
    invoke-virtual {p0, v2}, Lcom/etsy/android/grid/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 783
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_3e

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;

    if-eqz v5, :cond_3e

    .line 787
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;

    .line 789
    .local v3, "lp":Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;
    iget v5, v3, Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;->viewType:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_3e

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, v3, Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;->column:I

    aget v6, v4, v6

    if-ge v5, v6, :cond_3e

    .line 791
    iget v5, v3, Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;->column:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    aput v6, v4, v5

    .line 781
    .end local v3    # "lp":Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 796
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_41
    return-object v4
.end method

.method private getHighestPositionedBottom()I
    .registers 3

    .prologue
    .line 1082
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getHighestPositionedBottomColumn()I

    move-result v0

    .line 1083
    .local v0, "column":I
    iget-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v1, v1, v0

    return v1
.end method

.method private getHighestPositionedBottomColumn()I
    .registers 6

    .prologue
    .line 1087
    const/4 v1, 0x0

    .line 1088
    .local v1, "columnFound":I
    const v2, 0x7fffffff

    .line 1090
    .local v2, "highestPositionedBottom":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    iget v4, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    if-ge v3, v4, :cond_14

    .line 1091
    iget-object v4, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v0, v4, v3

    .line 1092
    .local v0, "bottom":I
    if-ge v0, v2, :cond_11

    .line 1093
    move v2, v0

    .line 1094
    move v1, v3

    .line 1090
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1097
    .end local v0    # "bottom":I
    :cond_14
    return v1
.end method

.method private getHighestPositionedTop()I
    .registers 3

    .prologue
    .line 1145
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getHighestPositionedTopColumn()I

    move-result v0

    .line 1146
    .local v0, "column":I
    iget-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    aget v1, v1, v0

    return v1
.end method

.method private getHighestPositionedTopColumn()I
    .registers 6

    .prologue
    .line 1150
    const/4 v0, 0x0

    .line 1151
    .local v0, "columnFound":I
    const v1, 0x7fffffff

    .line 1153
    .local v1, "highestPositionedTop":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    iget v4, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    if-ge v2, v4, :cond_14

    .line 1154
    iget-object v4, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    aget v3, v4, v2

    .line 1155
    .local v3, "top":I
    if-ge v3, v1, :cond_11

    .line 1156
    move v1, v3

    .line 1157
    move v0, v2

    .line 1153
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1160
    .end local v3    # "top":I
    :cond_14
    return v0
.end method

.method private getLowestPositionedBottom()I
    .registers 3

    .prologue
    .line 1101
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getLowestPositionedBottomColumn()I

    move-result v0

    .line 1102
    .local v0, "column":I
    iget-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v1, v1, v0

    return v1
.end method

.method private getLowestPositionedBottomColumn()I
    .registers 6

    .prologue
    .line 1106
    const/4 v1, 0x0

    .line 1107
    .local v1, "columnFound":I
    const/high16 v3, -0x80000000

    .line 1109
    .local v3, "lowestPositionedBottom":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    iget v4, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    if-ge v2, v4, :cond_13

    .line 1110
    iget-object v4, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v0, v4, v2

    .line 1111
    .local v0, "bottom":I
    if-le v0, v3, :cond_10

    .line 1112
    move v3, v0

    .line 1113
    move v1, v2

    .line 1109
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1116
    .end local v0    # "bottom":I
    :cond_13
    return v1
.end method

.method private getLowestPositionedTop()I
    .registers 3

    .prologue
    .line 1124
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getLowestPositionedTopColumn()I

    move-result v0

    .line 1125
    .local v0, "column":I
    iget-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    aget v1, v1, v0

    return v1
.end method

.method private getLowestPositionedTopColumn()I
    .registers 6

    .prologue
    .line 1129
    const/4 v0, 0x0

    .line 1132
    .local v0, "columnFound":I
    const/high16 v2, -0x80000000

    .line 1134
    .local v2, "lowestPositionedTop":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget v4, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    if-ge v1, v4, :cond_13

    .line 1135
    iget-object v4, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    aget v3, v4, v1

    .line 1136
    .local v3, "top":I
    if-le v3, v2, :cond_10

    .line 1137
    move v2, v3

    .line 1138
    move v0, v1

    .line 1134
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1141
    .end local v3    # "top":I
    :cond_13
    return v0
.end method

.method private getOrCreateRecord(I)Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 1013
    iget-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;

    .line 1014
    .local v0, "rec":Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;
    if-nez v0, :cond_15

    .line 1015
    new-instance v0, Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;

    .end local v0    # "rec":Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;
    invoke-direct {v0}, Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;-><init>()V

    .line 1016
    .restart local v0    # "rec":Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;
    iget-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1018
    :cond_15
    return-object v0
.end method

.method private getPositionColumn(I)I
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 1022
    iget-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;

    .line 1023
    .local v0, "rec":Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;
    if-eqz v0, :cond_e

    iget v1, v0, Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;->column:I

    :goto_d
    return v1

    :cond_e
    const/4 v1, -0x1

    goto :goto_d
.end method

.method private initColumnBottoms()V
    .registers 4

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/etsy/android/grid/StaggeredGridView;->mGridPaddingTop:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1068
    return-void
.end method

.method private initColumnLefts()V
    .registers 4

    .prologue
    .line 1071
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    if-ge v0, v1, :cond_10

    .line 1072
    iget-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnLefts:[I

    invoke-direct {p0, v0}, Lcom/etsy/android/grid/StaggeredGridView;->calculateColumnLeft(I)I

    move-result v2

    aput v2, v1, v0

    .line 1071
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1074
    :cond_10
    return-void
.end method

.method private initColumnTops()V
    .registers 4

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/etsy/android/grid/StaggeredGridView;->mGridPaddingTop:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1064
    return-void
.end method

.method private initColumnTopsAndBottoms()V
    .registers 1

    .prologue
    .line 1058
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->initColumnTops()V

    .line 1059
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->initColumnBottoms()V

    .line 1060
    return-void
.end method

.method private isHeaderOrFooter(I)Z
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1032
    iget-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 1033
    .local v0, "viewType":I
    const/4 v1, -0x2

    if-ne v0, v1, :cond_b

    const/4 v1, 0x1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private layoutGridChild(Landroid/view/View;IZII)V
    .registers 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "flowDown"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "childRight"    # I

    .prologue
    .line 424
    invoke-direct {p0, p2}, Lcom/etsy/android/grid/StaggeredGridView;->getPositionColumn(I)I

    move-result v2

    .line 429
    .local v2, "column":I
    invoke-direct {p0, p2}, Lcom/etsy/android/grid/StaggeredGridView;->getChildTopMargin(I)I

    move-result v1

    .line 430
    .local v1, "childTopMargin":I
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getChildBottomMargin()I

    move-result v0

    .line 431
    .local v0, "childBottomMargin":I
    add-int v6, v1, v0

    .line 433
    .local v6, "verticalMargins":I
    if-eqz p3, :cond_2f

    .line 434
    iget-object v7, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v4, v7, v2

    .line 435
    .local v4, "gridChildTop":I
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v6

    add-int v3, v4, v7

    .line 449
    .local v3, "gridChildBottom":I
    :goto_1b
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;

    .line 450
    .local v5, "layoutParams":Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;
    iput v2, v5, Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;->column:I

    .line 452
    invoke-direct {p0, v2, v3}, Lcom/etsy/android/grid/StaggeredGridView;->updateColumnBottomIfNeeded(II)V

    .line 453
    invoke-direct {p0, v2, v4}, Lcom/etsy/android/grid/StaggeredGridView;->updateColumnTopIfNeeded(II)V

    .line 456
    add-int/2addr v4, v1

    .line 457
    sub-int/2addr v3, v0

    .line 459
    invoke-virtual {p1, p4, v4, p5, v3}, Landroid/view/View;->layout(IIII)V

    .line 460
    return-void

    .line 438
    .end local v3    # "gridChildBottom":I
    .end local v4    # "gridChildTop":I
    .end local v5    # "layoutParams":Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;
    :cond_2f
    iget-object v7, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    aget v3, v7, v2

    .line 439
    .restart local v3    # "gridChildBottom":I
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v6

    sub-int v4, v3, v7

    .restart local v4    # "gridChildTop":I
    goto :goto_1b
.end method

.method private layoutGridHeaderFooter(Landroid/view/View;IZIIII)V
    .registers 17
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "flowDown"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "childTop"    # I
    .param p6, "childRight"    # I
    .param p7, "childBottom"    # I

    .prologue
    .line 402
    if-eqz p3, :cond_1a

    .line 403
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getLowestPositionedBottom()I

    move-result v5

    .line 404
    .local v5, "gridChildTop":I
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v0

    add-int v7, v5, v0

    .line 411
    .local v7, "gridChildBottom":I
    :goto_c
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_d
    iget v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    if-ge v8, v0, :cond_25

    .line 412
    invoke-direct {p0, v8, v5}, Lcom/etsy/android/grid/StaggeredGridView;->updateColumnTopIfNeeded(II)V

    .line 413
    invoke-direct {p0, v8, v7}, Lcom/etsy/android/grid/StaggeredGridView;->updateColumnBottomIfNeeded(II)V

    .line 411
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 407
    .end local v5    # "gridChildTop":I
    .end local v7    # "gridChildBottom":I
    .end local v8    # "i":I
    :cond_1a
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getHighestPositionedTop()I

    move-result v7

    .line 408
    .restart local v7    # "gridChildBottom":I
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v0

    sub-int v5, v7, v0

    .restart local v5    # "gridChildTop":I
    goto :goto_c

    .restart local v8    # "i":I
    :cond_25
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    .line 416
    invoke-super/range {v0 .. v7}, Lcom/etsy/android/grid/ExtendableListView;->onLayoutChild(Landroid/view/View;IZIIII)V

    .line 418
    return-void
.end method

.method private offsetAllColumnsTopAndBottom(I)V
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 717
    if-eqz p1, :cond_d

    .line 718
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    if-ge v0, v1, :cond_d

    .line 719
    invoke-direct {p0, p1, v0}, Lcom/etsy/android/grid/StaggeredGridView;->offsetColumnTopAndBottom(II)V

    .line 718
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 722
    .end local v0    # "i":I
    :cond_d
    return-void
.end method

.method private offsetColumnTopAndBottom(II)V
    .registers 5
    .param p1, "offset"    # I
    .param p2, "column"    # I

    .prologue
    .line 725
    if-eqz p1, :cond_10

    .line 726
    iget-object v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    aget v1, v0, p2

    add-int/2addr v1, p1

    aput v1, v0, p2

    .line 727
    iget-object v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v1, v0, p2

    add-int/2addr v1, p1

    aput v1, v0, p2

    .line 729
    :cond_10
    return-void
.end method

.method private offsetDistanceToTop(I)V
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 708
    iget v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mDistanceToTop:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mDistanceToTop:I

    .line 710
    return-void
.end method

.method private offsetGridChild(Landroid/view/View;IZII)V
    .registers 19
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "flowDown"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "childTop"    # I

    .prologue
    .line 501
    invoke-direct {p0, p2}, Lcom/etsy/android/grid/StaggeredGridView;->getPositionColumn(I)I

    move-result v8

    .line 506
    .local v8, "column":I
    invoke-direct {p0, p2}, Lcom/etsy/android/grid/StaggeredGridView;->getChildTopMargin(I)I

    move-result v7

    .line 507
    .local v7, "childTopMargin":I
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getChildBottomMargin()I

    move-result v6

    .line 508
    .local v6, "childBottomMargin":I
    add-int v12, v7, v6

    .line 510
    .local v12, "verticalMargins":I
    if-eqz p3, :cond_36

    .line 511
    iget-object v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v10, v0, v8

    .line 512
    .local v10, "gridChildTop":I
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v12

    add-int v9, v10, v0

    .line 527
    .local v9, "gridChildBottom":I
    :goto_1b
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;

    .line 528
    .local v11, "layoutParams":Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;
    iput v8, v11, Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;->column:I

    .line 530
    invoke-direct {p0, v8, v9}, Lcom/etsy/android/grid/StaggeredGridView;->updateColumnBottomIfNeeded(II)V

    .line 531
    invoke-direct {p0, v8, v10}, Lcom/etsy/android/grid/StaggeredGridView;->updateColumnTopIfNeeded(II)V

    .line 533
    add-int v5, v10, v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-super/range {v0 .. v5}, Lcom/etsy/android/grid/ExtendableListView;->onOffsetChild(Landroid/view/View;IZII)V

    .line 534
    return-void

    .line 515
    .end local v9    # "gridChildBottom":I
    .end local v10    # "gridChildTop":I
    .end local v11    # "layoutParams":Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;
    :cond_36
    iget-object v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    aget v9, v0, v8

    .line 516
    .restart local v9    # "gridChildBottom":I
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v12

    sub-int v10, v9, v0

    .restart local v10    # "gridChildTop":I
    goto :goto_1b
.end method

.method private offsetGridHeaderFooter(Landroid/view/View;IZII)V
    .registers 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "flowDown"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "childTop"    # I

    .prologue
    .line 482
    if-eqz p3, :cond_1a

    .line 483
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getLowestPositionedBottom()I

    move-result v5

    .line 484
    .local v5, "gridChildTop":I
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v0

    add-int v6, v5, v0

    .line 491
    .local v6, "gridChildBottom":I
    :goto_c
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_d
    iget v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    if-ge v7, v0, :cond_25

    .line 492
    invoke-direct {p0, v7, v5}, Lcom/etsy/android/grid/StaggeredGridView;->updateColumnTopIfNeeded(II)V

    .line 493
    invoke-direct {p0, v7, v6}, Lcom/etsy/android/grid/StaggeredGridView;->updateColumnBottomIfNeeded(II)V

    .line 491
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 487
    .end local v5    # "gridChildTop":I
    .end local v6    # "gridChildBottom":I
    .end local v7    # "i":I
    :cond_1a
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getHighestPositionedTop()I

    move-result v6

    .line 488
    .restart local v6    # "gridChildBottom":I
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v0

    sub-int v5, v6, v0

    .restart local v5    # "gridChildTop":I
    goto :goto_c

    .restart local v7    # "i":I
    :cond_25
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 496
    invoke-super/range {v0 .. v5}, Lcom/etsy/android/grid/ExtendableListView;->onOffsetChild(Landroid/view/View;IZII)V

    .line 497
    return-void
.end method

.method private onColumnSync()V
    .registers 21

    .prologue
    .line 906
    move-object/from16 v0, p0

    iget v15, v0, Lcom/etsy/android/grid/StaggeredGridView;->mSyncPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/etsy/android/grid/StaggeredGridView;->getCount()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 908
    .local v12, "syncPosition":I
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9, v12}, Landroid/util/SparseArray;-><init>(I)V

    .line 909
    .local v9, "positionHeightRatios":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Double;>;"
    const/4 v8, 0x0

    .local v8, "pos":I
    :goto_14
    if-ge v8, v12, :cond_22

    .line 911
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/etsy/android/grid/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;

    .line 912
    .local v10, "rec":Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;
    if-nez v10, :cond_6e

    .line 918
    .end local v10    # "rec":Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;
    :cond_22
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/etsy/android/grid/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V

    .line 925
    const/4 v8, 0x0

    :goto_2a
    if-ge v8, v12, :cond_34

    .line 927
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    .line 928
    .local v5, "heightRatio":Ljava/lang/Double;
    if-nez v5, :cond_a6

    .line 971
    .end local v5    # "heightRatio":Ljava/lang/Double;
    :cond_34
    invoke-direct/range {p0 .. p0}, Lcom/etsy/android/grid/StaggeredGridView;->getHighestPositionedBottomColumn()I

    move-result v11

    .line 972
    .local v11, "syncColumn":I
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/etsy/android/grid/StaggeredGridView;->setPositionColumn(II)V

    .line 976
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v13, v15, v11

    .line 977
    .local v13, "syncToBottom":I
    neg-int v15, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/etsy/android/grid/StaggeredGridView;->mSpecificTop:I

    move/from16 v16, v0

    add-int v7, v15, v16

    .line 979
    .local v7, "offset":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/etsy/android/grid/StaggeredGridView;->offsetAllColumnsTopAndBottom(I)V

    .line 982
    neg-int v15, v13

    move-object/from16 v0, p0

    iput v15, v0, Lcom/etsy/android/grid/StaggeredGridView;->mDistanceToTop:I

    .line 985
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    move/from16 v19, v0

    invoke-static/range {v15 .. v19}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 986
    return-void

    .line 914
    .end local v7    # "offset":I
    .end local v11    # "syncColumn":I
    .end local v13    # "syncToBottom":I
    .restart local v10    # "rec":Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;
    :cond_6e
    const-string/jumbo v15, "StaggeredGridView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "onColumnSync:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " ratio:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-wide v0, v10, Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;->heightRatio:D

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-wide v15, v10, Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;->heightRatio:D

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v9, v8, v15}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 909
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_14

    .line 932
    .end local v10    # "rec":Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;
    .restart local v5    # "heightRatio":Ljava/lang/Double;
    :cond_a6
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/etsy/android/grid/StaggeredGridView;->getOrCreateRecord(I)Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;

    move-result-object v10

    .line 933
    .restart local v10    # "rec":Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnWidth:I

    int-to-double v15, v15

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    mul-double v15, v15, v17

    double-to-int v4, v15

    .line 934
    .local v4, "height":I
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    iput-wide v15, v10, Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;->heightRatio:D

    .line 939
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/etsy/android/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v15

    if-eqz v15, :cond_e2

    .line 941
    invoke-direct/range {p0 .. p0}, Lcom/etsy/android/grid/StaggeredGridView;->getLowestPositionedBottom()I

    move-result v14

    .line 942
    .local v14, "top":I
    add-int v2, v14, v4

    .line 944
    .local v2, "bottom":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_cd
    move-object/from16 v0, p0

    iget v15, v0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    if-ge v6, v15, :cond_10a

    .line 945
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    aput v14, v15, v6

    .line 946
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    aput v2, v15, v6

    .line 944
    add-int/lit8 v6, v6, 0x1

    goto :goto_cd

    .line 951
    .end local v2    # "bottom":I
    .end local v6    # "i":I
    .end local v14    # "top":I
    :cond_e2
    invoke-direct/range {p0 .. p0}, Lcom/etsy/android/grid/StaggeredGridView;->getHighestPositionedBottomColumn()I

    move-result v3

    .line 953
    .local v3, "column":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v14, v15, v3

    .line 954
    .restart local v14    # "top":I
    add-int v15, v14, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/etsy/android/grid/StaggeredGridView;->getChildTopMargin(I)I

    move-result v16

    add-int v15, v15, v16

    invoke-direct/range {p0 .. p0}, Lcom/etsy/android/grid/StaggeredGridView;->getChildBottomMargin()I

    move-result v16

    add-int v2, v15, v16

    .line 956
    .restart local v2    # "bottom":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    aput v14, v15, v3

    .line 957
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    aput v2, v15, v3

    .line 959
    iput v3, v10, Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;->column:I

    .line 925
    .end local v3    # "column":I
    :cond_10a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2a
.end method

.method private preLayoutChildren()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 364
    iget-boolean v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mNeedSync:Z

    if-nez v0, :cond_14

    .line 365
    iget-object v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 373
    :goto_a
    iget-object v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    iget-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    iget v2, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    return-void

    .line 368
    :cond_14
    iput-boolean v3, p0, Lcom/etsy/android/grid/StaggeredGridView;->mNeedSync:Z

    goto :goto_a
.end method

.method private requestLayoutChildren()V
    .registers 4

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getChildCount()I

    move-result v0

    .line 350
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_13

    .line 351
    invoke-virtual {p0, v1}, Lcom/etsy/android/grid/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 352
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 350
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 354
    .end local v2    # "v":Landroid/view/View;
    :cond_13
    return-void
.end method

.method private setPositionColumn(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "column"    # I

    .prologue
    .line 994
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->getOrCreateRecord(I)Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;

    move-result-object v0

    .line 995
    .local v0, "rec":Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;
    iput p2, v0, Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;->column:I

    .line 996
    return-void
.end method

.method private setPositionHeightRatio(II)V
    .registers 8
    .param p1, "position"    # I
    .param p2, "height"    # I

    .prologue
    .line 999
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->getOrCreateRecord(I)Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;

    move-result-object v0

    .line 1000
    .local v0, "rec":Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;
    int-to-double v1, p2

    iget v3, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnWidth:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    iput-wide v1, v0, Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;->heightRatio:D

    .line 1005
    return-void
.end method

.method private setPositionIsHeaderFooter(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1008
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->getOrCreateRecord(I)Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;

    move-result-object v0

    .line 1009
    .local v0, "rec":Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/etsy/android/grid/StaggeredGridView$GridItemRecord;->isHeaderFooter:Z

    .line 1010
    return-void
.end method

.method private updateColumnBottomIfNeeded(II)V
    .registers 4
    .param p1, "column"    # I
    .param p2, "childBottom"    # I

    .prologue
    .line 577
    iget-object v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v0, v0, p1

    if-le p2, v0, :cond_a

    .line 578
    iget-object v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    aput p2, v0, p1

    .line 580
    :cond_a
    return-void
.end method

.method private updateColumnTopIfNeeded(II)V
    .registers 4
    .param p1, "column"    # I
    .param p2, "childTop"    # I

    .prologue
    .line 571
    iget-object v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    aget v0, v0, p1

    if-ge p2, v0, :cond_a

    .line 572
    iget-object v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    aput p2, v0, p1

    .line 574
    :cond_a
    return-void
.end method


# virtual methods
.method protected adjustViewsAfterFillGap(Z)V
    .registers 2
    .param p1, "down"    # Z

    .prologue
    .line 733
    invoke-super {p0, p1}, Lcom/etsy/android/grid/ExtendableListView;->adjustViewsAfterFillGap(Z)V

    .line 736
    if-nez p1, :cond_8

    .line 737
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->alignTops()V

    .line 739
    :cond_8
    return-void
.end method

.method protected generateChildLayoutParams(Landroid/view/View;)Lcom/etsy/android/grid/ExtendableListView$LayoutParams;
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 551
    const/4 v1, 0x0

    .line 553
    .local v1, "layoutParams":Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 554
    .local v0, "childParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_e

    .line 555
    instance-of v2, v0, Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;

    if-eqz v2, :cond_19

    move-object v1, v0

    .line 556
    check-cast v1, Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;

    .line 562
    :cond_e
    :goto_e
    if-nez v1, :cond_18

    .line 563
    new-instance v1, Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;

    .end local v1    # "layoutParams":Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;
    iget v2, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnWidth:I

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;-><init>(II)V

    .line 567
    .restart local v1    # "layoutParams":Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;
    :cond_18
    return-object v1

    .line 559
    :cond_19
    new-instance v1, Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;

    .end local v1    # "layoutParams":Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;
    invoke-direct {v1, v0}, Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .restart local v1    # "layoutParams":Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;
    goto :goto_e
.end method

.method protected getChildBottom(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 624
    invoke-super {p0, p1}, Lcom/etsy/android/grid/ExtendableListView;->getChildBottom(I)I

    move-result v1

    .line 631
    :goto_a
    return v1

    .line 627
    :cond_b
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->getPositionColumn(I)I

    move-result v0

    .line 628
    .local v0, "column":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 629
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getLowestPositionedTop()I

    move-result v1

    goto :goto_a

    .line 631
    :cond_17
    iget-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    aget v1, v1, v0

    goto :goto_a
.end method

.method protected getChildLeft(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 584
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 585
    invoke-super {p0, p1}, Lcom/etsy/android/grid/ExtendableListView;->getChildLeft(I)I

    move-result v1

    .line 589
    :goto_a
    return v1

    .line 588
    :cond_b
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->getPositionColumn(I)I

    move-result v0

    .line 589
    .local v0, "column":I
    iget-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnLefts:[I

    aget v1, v1, v0

    goto :goto_a
.end method

.method protected getChildTop(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 595
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 596
    invoke-super {p0, p1}, Lcom/etsy/android/grid/ExtendableListView;->getChildTop(I)I

    move-result v1

    .line 603
    :goto_a
    return v1

    .line 599
    :cond_b
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->getPositionColumn(I)I

    move-result v0

    .line 600
    .local v0, "column":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 601
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getHighestPositionedBottom()I

    move-result v1

    goto :goto_a

    .line 603
    :cond_17
    iget-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v1, v1, v0

    goto :goto_a
.end method

.method public getColumnWidth()I
    .registers 2

    .prologue
    .line 308
    iget v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnWidth:I

    return v0
.end method

.method public getDistanceToTop()I
    .registers 2

    .prologue
    .line 713
    iget v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mDistanceToTop:I

    return v0
.end method

.method protected getFirstChildTop()I
    .registers 2

    .prologue
    .line 660
    iget v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mFirstPosition:I

    invoke-direct {p0, v0}, Lcom/etsy/android/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 661
    invoke-super {p0}, Lcom/etsy/android/grid/ExtendableListView;->getFirstChildTop()I

    move-result v0

    .line 663
    :goto_c
    return v0

    :cond_d
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getLowestPositionedTop()I

    move-result v0

    goto :goto_c
.end method

.method protected getHighestChildTop()I
    .registers 2

    .prologue
    .line 668
    iget v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mFirstPosition:I

    invoke-direct {p0, v0}, Lcom/etsy/android/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 669
    invoke-super {p0}, Lcom/etsy/android/grid/ExtendableListView;->getHighestChildTop()I

    move-result v0

    .line 671
    :goto_c
    return v0

    :cond_d
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getHighestPositionedTop()I

    move-result v0

    goto :goto_c
.end method

.method protected getLastChildBottom()I
    .registers 4

    .prologue
    .line 651
    iget v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int v0, v1, v2

    .line 652
    .local v0, "lastPosition":I
    invoke-direct {p0, v0}, Lcom/etsy/android/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 653
    invoke-super {p0}, Lcom/etsy/android/grid/ExtendableListView;->getLastChildBottom()I

    move-result v1

    .line 655
    :goto_14
    return v1

    :cond_15
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getHighestPositionedBottom()I

    move-result v1

    goto :goto_14
.end method

.method protected getLowestChildBottom()I
    .registers 4

    .prologue
    .line 676
    iget v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int v0, v1, v2

    .line 677
    .local v0, "lastPosition":I
    invoke-direct {p0, v0}, Lcom/etsy/android/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 678
    invoke-super {p0}, Lcom/etsy/android/grid/ExtendableListView;->getLowestChildBottom()I

    move-result v1

    .line 680
    :goto_14
    return v1

    :cond_15
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getLowestPositionedBottom()I

    move-result v1

    goto :goto_14
.end method

.method protected getNextChildDownsTop(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 613
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 614
    invoke-super {p0, p1}, Lcom/etsy/android/grid/ExtendableListView;->getNextChildDownsTop(I)I

    move-result v0

    .line 617
    :goto_a
    return v0

    :cond_b
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getHighestPositionedBottom()I

    move-result v0

    goto :goto_a
.end method

.method protected getNextChildUpsBottom(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 642
    invoke-super {p0, p1}, Lcom/etsy/android/grid/ExtendableListView;->getNextChildUpsBottom(I)I

    move-result v0

    .line 645
    :goto_a
    return v0

    :cond_b
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getLowestPositionedTop()I

    move-result v0

    goto :goto_a
.end method

.method public getRowPaddingBottom()I
    .registers 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getListPaddingBottom()I

    move-result v0

    iget v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mGridPaddingBottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getRowPaddingLeft()I
    .registers 3

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getListPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mGridPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getRowPaddingRight()I
    .registers 3

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getListPaddingRight()I

    move-result v0

    iget v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mGridPaddingRight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getRowPaddingTop()I
    .registers 3

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getListPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mGridPaddingTop:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected hasSpaceUp()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 847
    iget-boolean v2, p0, Lcom/etsy/android/grid/StaggeredGridView;->mClipToPadding:Z

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getRowPaddingTop()I

    move-result v0

    .line 848
    .local v0, "end":I
    :goto_9
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getLowestPositionedTop()I

    move-result v2

    if-le v2, v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1

    .end local v0    # "end":I
    :cond_11
    move v0, v1

    .line 847
    goto :goto_9
.end method

.method protected layoutChildren()V
    .registers 1

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->preLayoutChildren()V

    .line 359
    invoke-super {p0}, Lcom/etsy/android/grid/ExtendableListView;->layoutChildren()V

    .line 360
    return-void
.end method

.method protected offsetChildrenTopAndBottom(I)V
    .registers 2
    .param p1, "offset"    # I

    .prologue
    .line 685
    invoke-super {p0, p1}, Lcom/etsy/android/grid/ExtendableListView;->offsetChildrenTopAndBottom(I)V

    .line 686
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->offsetAllColumnsTopAndBottom(I)V

    .line 687
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->offsetDistanceToTop(I)V

    .line 688
    return-void
.end method

.method protected offsetChildrenTopAndBottom(II)V
    .registers 8
    .param p1, "offset"    # I
    .param p2, "column"    # I

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getChildCount()I

    move-result v0

    .line 693
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_2b

    .line 694
    invoke-virtual {p0, v1}, Lcom/etsy/android/grid/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 695
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_28

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_28

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;

    if-eqz v4, :cond_28

    .line 698
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;

    .line 699
    .local v2, "lp":Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;
    iget v4, v2, Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;->column:I

    if-ne v4, p2, :cond_28

    .line 700
    invoke-virtual {v3, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 693
    .end local v2    # "lp":Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 704
    .end local v3    # "v":Landroid/view/View;
    :cond_2b
    invoke-direct {p0, p1, p2}, Lcom/etsy/android/grid/StaggeredGridView;->offsetColumnTopAndBottom(II)V

    .line 705
    return-void
.end method

.method protected onChildCreated(IZ)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "flowDown"    # Z

    .prologue
    .line 335
    invoke-super {p0, p1, p2}, Lcom/etsy/android/grid/ExtendableListView;->onChildCreated(IZ)V

    .line 336
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 338
    invoke-direct {p0, p1, p2}, Lcom/etsy/android/grid/StaggeredGridView;->getChildColumn(IZ)I

    move-result v0

    .line 339
    .local v0, "column":I
    invoke-direct {p0, p1, v0}, Lcom/etsy/android/grid/StaggeredGridView;->setPositionColumn(II)V

    .line 346
    .end local v0    # "column":I
    :goto_10
    return-void

    .line 344
    :cond_11
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->setPositionIsHeaderFooter(I)V

    goto :goto_10
.end method

.method protected onChildrenDetached(II)V
    .registers 14
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 801
    invoke-super {p0, p1, p2}, Lcom/etsy/android/grid/ExtendableListView;->onChildrenDetached(II)V

    .line 805
    iget-object v9, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    const v10, 0x7fffffff

    invoke-static {v9, v10}, Ljava/util/Arrays;->fill([II)V

    .line 806
    iget-object v9, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/util/Arrays;->fill([II)V

    .line 808
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_12
    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getChildCount()I

    move-result v9

    if-ge v6, v9, :cond_82

    .line 809
    invoke-virtual {p0, v6}, Lcom/etsy/android/grid/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 810
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_5b

    .line 811
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;

    .line 812
    .local v2, "childParams":Lcom/etsy/android/grid/ExtendableListView$LayoutParams;
    iget v9, v2, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;->viewType:I

    const/4 v10, -0x2

    if-eq v9, v10, :cond_5e

    instance-of v9, v2, Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;

    if-eqz v9, :cond_5e

    move-object v7, v2

    .line 814
    check-cast v7, Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;

    .line 815
    .local v7, "layoutParams":Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;
    iget v5, v7, Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;->column:I

    .line 816
    .local v5, "column":I
    iget v8, v7, Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;->position:I

    .line 817
    .local v8, "position":I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 818
    .local v3, "childTop":I
    iget-object v9, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    aget v9, v9, v5

    if-ge v3, v9, :cond_48

    .line 819
    iget-object v9, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    invoke-direct {p0, v8}, Lcom/etsy/android/grid/StaggeredGridView;->getChildTopMargin(I)I

    move-result v10

    sub-int v10, v3, v10

    aput v10, v9, v5

    .line 821
    :cond_48
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 822
    .local v1, "childBottom":I
    iget-object v9, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v9, v9, v5

    if-le v1, v9, :cond_5b

    .line 823
    iget-object v9, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getChildBottomMargin()I

    move-result v10

    add-int/2addr v10, v1

    aput v10, v9, v5

    .line 808
    .end local v1    # "childBottom":I
    .end local v2    # "childParams":Lcom/etsy/android/grid/ExtendableListView$LayoutParams;
    .end local v3    # "childTop":I
    .end local v5    # "column":I
    .end local v7    # "layoutParams":Lcom/etsy/android/grid/StaggeredGridView$GridLayoutParams;
    .end local v8    # "position":I
    :cond_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 828
    .restart local v2    # "childParams":Lcom/etsy/android/grid/ExtendableListView$LayoutParams;
    :cond_5e
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 829
    .restart local v3    # "childTop":I
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 831
    .restart local v1    # "childBottom":I
    const/4 v4, 0x0

    .local v4, "col":I
    :goto_67
    iget v9, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    if-ge v4, v9, :cond_5b

    .line 832
    iget-object v9, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    aget v9, v9, v4

    if-ge v3, v9, :cond_75

    .line 833
    iget-object v9, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    aput v3, v9, v4

    .line 835
    :cond_75
    iget-object v9, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v9, v9, v4

    if-le v1, v9, :cond_7f

    .line 836
    iget-object v9, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    aput v1, v9, v4

    .line 831
    :cond_7f
    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    .line 843
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBottom":I
    .end local v2    # "childParams":Lcom/etsy/android/grid/ExtendableListView$LayoutParams;
    .end local v3    # "childTop":I
    .end local v4    # "col":I
    :cond_82
    return-void
.end method

.method protected onLayoutChild(Landroid/view/View;IZIIII)V
    .registers 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "flowDown"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "childTop"    # I
    .param p6, "childRight"    # I
    .param p7, "childBottom"    # I

    .prologue
    .line 388
    invoke-direct {p0, p2}, Lcom/etsy/android/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 389
    invoke-direct/range {p0 .. p7}, Lcom/etsy/android/grid/StaggeredGridView;->layoutGridHeaderFooter(Landroid/view/View;IZIIII)V

    .line 394
    :goto_9
    return-void

    :cond_a
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    .line 392
    invoke-direct/range {v0 .. v5}, Lcom/etsy/android/grid/StaggeredGridView;->layoutGridChild(Landroid/view/View;IZII)V

    goto :goto_9
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 248
    invoke-super {p0, p1, p2}, Lcom/etsy/android/grid/ExtendableListView;->onMeasure(II)V

    .line 250
    iget v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    if-gtz v1, :cond_18

    .line 251
    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getMeasuredHeight()I

    move-result v2

    if-le v1, v2, :cond_5f

    const/4 v0, 0x1

    .line 252
    .local v0, "isLandscape":Z
    :goto_12
    if-eqz v0, :cond_61

    iget v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCountLandscape:I

    :goto_16
    iput v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    .line 259
    .end local v0    # "isLandscape":Z
    :cond_18
    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/etsy/android/grid/StaggeredGridView;->calculateColumnWidth(I)I

    move-result v1

    iput v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnWidth:I

    .line 261
    iget-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    array-length v1, v1

    iget v2, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    if-eq v1, v2, :cond_36

    .line 262
    :cond_2d
    iget v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    .line 263
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->initColumnTops()V

    .line 265
    :cond_36
    iget-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    array-length v1, v1

    iget v2, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    if-eq v1, v2, :cond_4a

    .line 266
    :cond_41
    iget v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    .line 267
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->initColumnBottoms()V

    .line 269
    :cond_4a
    iget-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnLefts:[I

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnLefts:[I

    array-length v1, v1

    iget v2, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    if-eq v1, v2, :cond_5e

    .line 270
    :cond_55
    iget v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnLefts:[I

    .line 271
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->initColumnLefts()V

    .line 273
    :cond_5e
    return-void

    .line 251
    :cond_5f
    const/4 v0, 0x0

    goto :goto_12

    .line 252
    .restart local v0    # "isLandscape":Z
    :cond_61
    iget v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCountPortrait:I

    goto :goto_16
.end method

.method protected onMeasureChild(Landroid/view/View;Lcom/etsy/android/grid/ExtendableListView$LayoutParams;)V
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutParams"    # Lcom/etsy/android/grid/ExtendableListView$LayoutParams;

    .prologue
    const/high16 v7, 0x40000000

    const/4 v6, -0x2

    .line 277
    iget v4, p2, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;->viewType:I

    .line 278
    .local v4, "viewType":I
    iget v3, p2, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;->position:I

    .line 280
    .local v3, "position":I
    if-eq v4, v6, :cond_c

    const/4 v5, -0x1

    if-ne v4, v5, :cond_17

    .line 283
    :cond_c
    invoke-super {p0, p1, p2}, Lcom/etsy/android/grid/ExtendableListView;->onMeasureChild(Landroid/view/View;Lcom/etsy/android/grid/ExtendableListView$LayoutParams;)V

    .line 300
    :goto_f
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v0

    .line 301
    .local v0, "childHeight":I
    invoke-direct {p0, v3, v0}, Lcom/etsy/android/grid/StaggeredGridView;->setPositionHeightRatio(II)V

    .line 305
    return-void

    .line 289
    .end local v0    # "childHeight":I
    :cond_17
    iget v5, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnWidth:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 291
    .local v2, "childWidthSpec":I
    iget v5, p2, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;->height:I

    if-lez v5, :cond_2b

    .line 292
    iget v5, p2, Lcom/etsy/android/grid/ExtendableListView$LayoutParams;->height:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 297
    .local v1, "childHeightSpec":I
    :goto_27
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_f

    .line 295
    .end local v1    # "childHeightSpec":I
    :cond_2b
    const/4 v5, 0x0

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childHeightSpec":I
    goto :goto_27
.end method

.method protected onOffsetChild(Landroid/view/View;IZII)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "flowDown"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "childTop"    # I

    .prologue
    .line 467
    invoke-direct {p0, p2}, Lcom/etsy/android/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 469
    invoke-direct/range {p0 .. p5}, Lcom/etsy/android/grid/StaggeredGridView;->offsetGridHeaderFooter(Landroid/view/View;IZII)V

    .line 474
    :goto_9
    return-void

    .line 472
    :cond_a
    invoke-direct/range {p0 .. p5}, Lcom/etsy/android/grid/StaggeredGridView;->offsetGridChild(Landroid/view/View;IZII)V

    goto :goto_9
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1293
    move-object v0, p1

    check-cast v0, Lcom/etsy/android/grid/StaggeredGridView$GridListSavedState;

    .line 1295
    .local v0, "ss":Lcom/etsy/android/grid/StaggeredGridView$GridListSavedState;
    iget v1, v0, Lcom/etsy/android/grid/StaggeredGridView$GridListSavedState;->columnCount:I

    iput v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    .line 1296
    iget-object v1, v0, Lcom/etsy/android/grid/StaggeredGridView$GridListSavedState;->columnTops:[I

    iput-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    .line 1297
    iget v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    .line 1298
    iget-object v1, v0, Lcom/etsy/android/grid/StaggeredGridView$GridListSavedState;->positionData:Landroid/util/SparseArray;

    if-eqz v1, :cond_19

    .line 1299
    iget-object v1, v0, Lcom/etsy/android/grid/StaggeredGridView$GridListSavedState;->positionData:Landroid/util/SparseArray;

    iput-object v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    .line 1301
    :cond_19
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mNeedSync:Z

    .line 1302
    invoke-super {p0, v0}, Lcom/etsy/android/grid/ExtendableListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1303
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1263
    invoke-super {p0}, Lcom/etsy/android/grid/ExtendableListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;

    .line 1264
    .local v1, "listState":Lcom/etsy/android/grid/ExtendableListView$ListSavedState;
    new-instance v2, Lcom/etsy/android/grid/StaggeredGridView$GridListSavedState;

    invoke-virtual {v1}, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/etsy/android/grid/StaggeredGridView$GridListSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1267
    .local v2, "ss":Lcom/etsy/android/grid/StaggeredGridView$GridListSavedState;
    iget-wide v4, v1, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->selectedId:J

    iput-wide v4, v2, Lcom/etsy/android/grid/StaggeredGridView$GridListSavedState;->selectedId:J

    .line 1268
    iget-wide v4, v1, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->firstId:J

    iput-wide v4, v2, Lcom/etsy/android/grid/StaggeredGridView$GridListSavedState;->firstId:J

    .line 1269
    iget v4, v1, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->viewTop:I

    iput v4, v2, Lcom/etsy/android/grid/StaggeredGridView$GridListSavedState;->viewTop:I

    .line 1270
    iget v4, v1, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->position:I

    iput v4, v2, Lcom/etsy/android/grid/StaggeredGridView$GridListSavedState;->position:I

    .line 1271
    iget v4, v1, Lcom/etsy/android/grid/ExtendableListView$ListSavedState;->height:I

    iput v4, v2, Lcom/etsy/android/grid/StaggeredGridView$GridListSavedState;->height:I

    .line 1275
    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_44

    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getCount()I

    move-result v4

    if-lez v4, :cond_44

    const/4 v0, 0x1

    .line 1277
    .local v0, "haveChildren":Z
    :goto_31
    if-eqz v0, :cond_46

    iget v4, p0, Lcom/etsy/android/grid/StaggeredGridView;->mFirstPosition:I

    if-lez v4, :cond_46

    .line 1278
    iget v3, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    iput v3, v2, Lcom/etsy/android/grid/StaggeredGridView$GridListSavedState;->columnCount:I

    .line 1279
    iget-object v3, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    iput-object v3, v2, Lcom/etsy/android/grid/StaggeredGridView$GridListSavedState;->columnTops:[I

    .line 1280
    iget-object v3, p0, Lcom/etsy/android/grid/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    iput-object v3, v2, Lcom/etsy/android/grid/StaggeredGridView$GridListSavedState;->positionData:Landroid/util/SparseArray;

    .line 1288
    :goto_43
    return-object v2

    .end local v0    # "haveChildren":Z
    :cond_44
    move v0, v3

    .line 1275
    goto :goto_31

    .line 1283
    .restart local v0    # "haveChildren":Z
    :cond_46
    iget v4, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    if-ltz v4, :cond_4c

    iget v3, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    :cond_4c
    iput v3, v2, Lcom/etsy/android/grid/StaggeredGridView$GridListSavedState;->columnCount:I

    .line 1284
    iget v3, v2, Lcom/etsy/android/grid/StaggeredGridView$GridListSavedState;->columnCount:I

    new-array v3, v3, [I

    iput-object v3, v2, Lcom/etsy/android/grid/StaggeredGridView$GridListSavedState;->columnTops:[I

    .line 1285
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v2, Lcom/etsy/android/grid/StaggeredGridView$GridListSavedState;->positionData:Landroid/util/SparseArray;

    goto :goto_43
.end method

.method protected onSizeChanged(II)V
    .registers 7
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v2, 0x0

    .line 863
    invoke-super {p0, p1, p2}, Lcom/etsy/android/grid/ExtendableListView;->onSizeChanged(II)V

    .line 864
    if-le p1, p2, :cond_46

    const/4 v0, 0x1

    .line 865
    .local v0, "isLandscape":Z
    :goto_7
    if-eqz v0, :cond_48

    iget v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCountLandscape:I

    .line 866
    .local v1, "newColumnCount":I
    :goto_b
    iget v3, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    if-eq v3, v1, :cond_45

    .line 867
    iput v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    .line 869
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->calculateColumnWidth(I)I

    move-result v3

    iput v3, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnWidth:I

    .line 871
    iget v3, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    .line 872
    iget v3, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    .line 873
    iget v3, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnLefts:[I

    .line 875
    iput v2, p0, Lcom/etsy/android/grid/StaggeredGridView;->mDistanceToTop:I

    .line 878
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->initColumnTopsAndBottoms()V

    .line 879
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->initColumnLefts()V

    .line 882
    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getCount()I

    move-result v2

    if-lez v2, :cond_42

    iget-object v2, p0, Lcom/etsy/android/grid/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_42

    .line 883
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->onColumnSync()V

    .line 886
    :cond_42
    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->requestLayout()V

    .line 888
    :cond_45
    return-void

    .end local v0    # "isLandscape":Z
    .end local v1    # "newColumnCount":I
    :cond_46
    move v0, v2

    .line 864
    goto :goto_7

    .line 865
    .restart local v0    # "isLandscape":Z
    :cond_48
    iget v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCountPortrait:I

    goto :goto_b
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 857
    invoke-super {p0, p1, p2, p3, p4}, Lcom/etsy/android/grid/ExtendableListView;->onSizeChanged(IIII)V

    .line 858
    invoke-virtual {p0, p1, p2}, Lcom/etsy/android/grid/StaggeredGridView;->onSizeChanged(II)V

    .line 859
    return-void
.end method

.method public resetToTop()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 312
    iget v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    if-lez v0, :cond_28

    .line 314
    iget-object v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    if-nez v0, :cond_f

    .line 315
    iget v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnTops:[I

    .line 317
    :cond_f
    iget-object v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    if-nez v0, :cond_19

    .line 318
    iget v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnBottoms:[I

    .line 320
    :cond_19
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->initColumnTopsAndBottoms()V

    .line 322
    iget-object v0, p0, Lcom/etsy/android/grid/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 323
    iput-boolean v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mNeedSync:Z

    .line 324
    iput v1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mDistanceToTop:I

    .line 325
    invoke-virtual {p0, v1}, Lcom/etsy/android/grid/StaggeredGridView;->setSelection(I)V

    .line 327
    :cond_28
    return-void
.end method

.method public setColumnCount(I)V
    .registers 4
    .param p1, "columnCount"    # I

    .prologue
    .line 235
    iput p1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCountPortrait:I

    .line 236
    iput p1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCountLandscape:I

    .line 238
    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/etsy/android/grid/StaggeredGridView;->onSizeChanged(II)V

    .line 239
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->requestLayoutChildren()V

    .line 240
    return-void
.end method

.method public setColumnCountLandscape(I)V
    .registers 4
    .param p1, "columnCountLandscape"    # I

    .prologue
    .line 229
    iput p1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCountLandscape:I

    .line 230
    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/etsy/android/grid/StaggeredGridView;->onSizeChanged(II)V

    .line 231
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->requestLayoutChildren()V

    .line 232
    return-void
.end method

.method public setColumnCountPortrait(I)V
    .registers 4
    .param p1, "columnCountPortrait"    # I

    .prologue
    .line 223
    iput p1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mColumnCountPortrait:I

    .line 224
    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/etsy/android/grid/StaggeredGridView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/etsy/android/grid/StaggeredGridView;->onSizeChanged(II)V

    .line 225
    invoke-direct {p0}, Lcom/etsy/android/grid/StaggeredGridView;->requestLayoutChildren()V

    .line 226
    return-void
.end method

.method public setGridPadding(IIII)V
    .registers 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 216
    iput p1, p0, Lcom/etsy/android/grid/StaggeredGridView;->mGridPaddingLeft:I

    .line 217
    iput p2, p0, Lcom/etsy/android/grid/StaggeredGridView;->mGridPaddingTop:I

    .line 218
    iput p3, p0, Lcom/etsy/android/grid/StaggeredGridView;->mGridPaddingRight:I

    .line 219
    iput p4, p0, Lcom/etsy/android/grid/StaggeredGridView;->mGridPaddingBottom:I

    .line 220
    return-void
.end method
