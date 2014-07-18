.class public Lcom/airbnb/android/views/LinearListView;
.super Lcom/airbnb/android/views/IcsLinearLayout;
.source "LinearListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/views/LinearListView$InternalOnClickListener;,
        Lcom/airbnb/android/views/LinearListView$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final LinearListView_dividerThickness:I = 0x1

.field private static final LinearListView_entries:I

.field private static final R_styleable_LinearListView:[I


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAreAllItemsSelectable:Z

.field private mDataObserver:Landroid/database/DataSetObserver;

.field private mEmptyView:Landroid/view/View;

.field private mOnItemClickListener:Lcom/airbnb/android/views/LinearListView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/airbnb/android/views/LinearListView;->R_styleable_LinearListView:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x10100b2
        0x7f01003f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/airbnb/android/views/LinearListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/IcsLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v3, Lcom/airbnb/android/views/LinearListView$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/views/LinearListView$1;-><init>(Lcom/airbnb/android/views/LinearListView;)V

    iput-object v3, p0, Lcom/airbnb/android/views/LinearListView;->mDataObserver:Landroid/database/DataSetObserver;

    .line 53
    sget-object v3, Lcom/airbnb/android/views/LinearListView;->R_styleable_LinearListView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 59
    .local v2, "thickness":I
    if-eqz v2, :cond_1b

    .line 60
    invoke-virtual {p0, v2}, Lcom/airbnb/android/views/LinearListView;->setDividerThickness(I)V

    .line 63
    :cond_1b
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 64
    .local v1, "entries":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_2c

    .line 65
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090003

    invoke-direct {v3, p1, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    :cond_2c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/LinearListView;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/views/LinearListView;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/views/LinearListView;->setupChildren()V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/views/LinearListView;)Lcom/airbnb/android/views/LinearListView$OnItemClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/LinearListView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/airbnb/android/views/LinearListView;->mOnItemClickListener:Lcom/airbnb/android/views/LinearListView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/views/LinearListView;)Landroid/widget/ListAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/LinearListView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/airbnb/android/views/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method private setupChildren()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 231
    invoke-virtual {p0}, Lcom/airbnb/android/views/LinearListView;->removeAllViews()V

    .line 233
    iget-object v2, p0, Lcom/airbnb/android/views/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/airbnb/android/views/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_10
    move v2, v3

    :goto_11
    invoke-direct {p0, v2}, Lcom/airbnb/android/views/LinearListView;->updateEmptyStatus(Z)V

    .line 235
    iget-object v2, p0, Lcom/airbnb/android/views/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1b

    .line 246
    :cond_18
    return-void

    .line 233
    :cond_19
    const/4 v2, 0x0

    goto :goto_11

    .line 239
    :cond_1b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    iget-object v2, p0, Lcom/airbnb/android/views/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 240
    iget-object v2, p0, Lcom/airbnb/android/views/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 241
    .local v0, "child":Landroid/view/View;
    iget-boolean v2, p0, Lcom/airbnb/android/views/LinearListView;->mAreAllItemsSelectable:Z

    if-nez v2, :cond_37

    iget-object v2, p0, Lcom/airbnb/android/views/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 242
    :cond_37
    new-instance v2, Lcom/airbnb/android/views/LinearListView$InternalOnClickListener;

    invoke-direct {v2, p0, v1}, Lcom/airbnb/android/views/LinearListView$InternalOnClickListener;-><init>(Lcom/airbnb/android/views/LinearListView;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    :cond_3f
    const/4 v2, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v0, v2, v4, v3}, Lcom/airbnb/android/views/LinearListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c
.end method

.method private updateEmptyStatus(Z)V
    .registers 5
    .param p1, "empty"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 213
    if-eqz p1, :cond_16

    .line 214
    iget-object v0, p0, Lcom/airbnb/android/views/LinearListView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 215
    iget-object v0, p0, Lcom/airbnb/android/views/LinearListView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    invoke-virtual {p0, v2}, Lcom/airbnb/android/views/LinearListView;->setVisibility(I)V

    .line 227
    :goto_11
    return-void

    .line 220
    :cond_12
    invoke-virtual {p0, v1}, Lcom/airbnb/android/views/LinearListView;->setVisibility(I)V

    goto :goto_11

    .line 223
    :cond_16
    iget-object v0, p0, Lcom/airbnb/android/views/LinearListView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 224
    iget-object v0, p0, Lcom/airbnb/android/views/LinearListView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 225
    :cond_1f
    invoke-virtual {p0, v1}, Lcom/airbnb/android/views/LinearListView;->setVisibility(I)V

    goto :goto_11
.end method


# virtual methods
.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/airbnb/android/views/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getEmptyView()Landroid/view/View;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/airbnb/android/views/LinearListView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public final getOnItemClickListener()Lcom/airbnb/android/views/LinearListView$OnItemClickListener;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/airbnb/android/views/LinearListView;->mOnItemClickListener:Lcom/airbnb/android/views/LinearListView$OnItemClickListener;

    return-object v0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v0, 0x0

    .line 178
    iget-object v1, p0, Lcom/airbnb/android/views/LinearListView;->mOnItemClickListener:Lcom/airbnb/android/views/LinearListView$OnItemClickListener;

    if-eqz v1, :cond_12

    .line 179
    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/LinearListView;->playSoundEffect(I)V

    .line 180
    iget-object v0, p0, Lcom/airbnb/android/views/LinearListView;->mOnItemClickListener:Lcom/airbnb/android/views/LinearListView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/airbnb/android/views/LinearListView$OnItemClickListener;->onItemClick(Lcom/airbnb/android/views/LinearListView;Landroid/view/View;IJ)V

    .line 181
    const/4 v0, 0x1

    .line 184
    :cond_12
    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/airbnb/android/views/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 113
    iget-object v0, p0, Lcom/airbnb/android/views/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/airbnb/android/views/LinearListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 116
    :cond_b
    iput-object p1, p0, Lcom/airbnb/android/views/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 118
    iget-object v0, p0, Lcom/airbnb/android/views/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_20

    .line 119
    iget-object v0, p0, Lcom/airbnb/android/views/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/airbnb/android/views/LinearListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 120
    iget-object v0, p0, Lcom/airbnb/android/views/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/views/LinearListView;->mAreAllItemsSelectable:Z

    .line 123
    :cond_20
    invoke-direct {p0}, Lcom/airbnb/android/views/LinearListView;->setupChildren()V

    .line 125
    return-void
.end method

.method public setDividerThickness(I)V
    .registers 4
    .param p1, "thickness"    # I

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/airbnb/android/views/LinearListView;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 91
    iput p1, p0, Lcom/airbnb/android/views/LinearListView;->mDividerHeight:I

    .line 95
    :goto_9
    invoke-virtual {p0}, Lcom/airbnb/android/views/LinearListView;->requestLayout()V

    .line 96
    return-void

    .line 93
    :cond_d
    iput p1, p0, Lcom/airbnb/android/views/LinearListView;->mDividerWidth:I

    goto :goto_9
.end method

.method public setEmptyView(Landroid/view/View;)V
    .registers 5
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/airbnb/android/views/LinearListView;->mEmptyView:Landroid/view/View;

    .line 193
    invoke-virtual {p0}, Lcom/airbnb/android/views/LinearListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 194
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_e
    const/4 v1, 0x1

    .line 195
    .local v1, "empty":Z
    :goto_f
    invoke-direct {p0, v1}, Lcom/airbnb/android/views/LinearListView;->updateEmptyStatus(Z)V

    .line 196
    return-void

    .line 194
    .end local v1    # "empty":Z
    :cond_13
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public setOnItemClickListener(Lcom/airbnb/android/views/LinearListView$OnItemClickListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/views/LinearListView$OnItemClickListener;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/airbnb/android/views/LinearListView;->mOnItemClickListener:Lcom/airbnb/android/views/LinearListView$OnItemClickListener;

    .line 157
    return-void
.end method

.method public setOrientation(I)V
    .registers 4
    .param p1, "orientation"    # I

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/airbnb/android/views/LinearListView;->getOrientation()I

    move-result v1

    if-eq p1, v1, :cond_e

    .line 75
    iget v0, p0, Lcom/airbnb/android/views/LinearListView;->mDividerHeight:I

    .line 76
    .local v0, "tmp":I
    iget v1, p0, Lcom/airbnb/android/views/LinearListView;->mDividerWidth:I

    iput v1, p0, Lcom/airbnb/android/views/LinearListView;->mDividerHeight:I

    .line 77
    iput v0, p0, Lcom/airbnb/android/views/LinearListView;->mDividerWidth:I

    .line 79
    .end local v0    # "tmp":I
    :cond_e
    invoke-super {p0, p1}, Lcom/airbnb/android/views/IcsLinearLayout;->setOrientation(I)V

    .line 80
    return-void
.end method
