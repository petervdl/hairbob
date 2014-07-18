.class public Lcom/airbnb/android/views/SortBySelectorView;
.super Landroid/widget/FrameLayout;
.source "SortBySelectorView.java"


# static fields
.field private static mViewIdToSortTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/airbnb/android/models/SearchInfo$SortType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSelectedSortType:Lcom/airbnb/android/models/SearchInfo$SortType;

.field mSortByBestMatch:Landroid/widget/TextView;

.field mSortByDistance:Landroid/widget/TextView;

.field mSortByPrice:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/airbnb/android/views/SortBySelectorView;->mViewIdToSortTypeMap:Ljava/util/HashMap;

    .line 32
    sget-object v0, Lcom/airbnb/android/views/SortBySelectorView;->mViewIdToSortTypeMap:Ljava/util/HashMap;

    const v1, 0x7f0803ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/models/SearchInfo$SortType;->Points:Lcom/airbnb/android/models/SearchInfo$SortType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/airbnb/android/views/SortBySelectorView;->mViewIdToSortTypeMap:Ljava/util/HashMap;

    const v1, 0x7f080401

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/models/SearchInfo$SortType;->Distance:Lcom/airbnb/android/models/SearchInfo$SortType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/airbnb/android/views/SortBySelectorView;->mViewIdToSortTypeMap:Ljava/util/HashMap;

    const v1, 0x7f080400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/models/SearchInfo$SortType;->Price:Lcom/airbnb/android/models/SearchInfo$SortType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/SortBySelectorView;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/SortBySelectorView;->init(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/SortBySelectorView;->init(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method static synthetic access$002(Lcom/airbnb/android/views/SortBySelectorView;Lcom/airbnb/android/models/SearchInfo$SortType;)Lcom/airbnb/android/models/SearchInfo$SortType;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/SortBySelectorView;
    .param p1, "x1"    # Lcom/airbnb/android/models/SearchInfo$SortType;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/airbnb/android/views/SortBySelectorView;->mSelectedSortType:Lcom/airbnb/android/models/SearchInfo$SortType;

    return-object p1
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/airbnb/android/views/SortBySelectorView;->mViewIdToSortTypeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/views/SortBySelectorView;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/views/SortBySelectorView;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/airbnb/android/views/SortBySelectorView;->updateViewSelection()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030181

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "content":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 56
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v1

    .line 58
    .local v1, "searchInfo":Lcom/airbnb/android/models/SearchInfo;
    invoke-virtual {v1}, Lcom/airbnb/android/models/SearchInfo;->getSortType()Lcom/airbnb/android/models/SearchInfo$SortType;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/views/SortBySelectorView;->mSelectedSortType:Lcom/airbnb/android/models/SearchInfo$SortType;

    .line 59
    iget-object v3, p0, Lcom/airbnb/android/views/SortBySelectorView;->mSelectedSortType:Lcom/airbnb/android/models/SearchInfo$SortType;

    if-nez v3, :cond_2a

    .line 60
    sget-object v3, Lcom/airbnb/android/models/SearchInfo$SortType;->Points:Lcom/airbnb/android/models/SearchInfo$SortType;

    iput-object v3, p0, Lcom/airbnb/android/views/SortBySelectorView;->mSelectedSortType:Lcom/airbnb/android/models/SearchInfo$SortType;

    .line 61
    iget-object v3, p0, Lcom/airbnb/android/views/SortBySelectorView;->mSelectedSortType:Lcom/airbnb/android/models/SearchInfo$SortType;

    invoke-virtual {v1, v3}, Lcom/airbnb/android/models/SearchInfo;->setSortType(Lcom/airbnb/android/models/SearchInfo$SortType;)V

    .line 64
    :cond_2a
    invoke-direct {p0}, Lcom/airbnb/android/views/SortBySelectorView;->updateViewSelection()V

    .line 66
    new-instance v2, Lcom/airbnb/android/views/SortBySelectorView$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/views/SortBySelectorView$1;-><init>(Lcom/airbnb/android/views/SortBySelectorView;)V

    .line 74
    .local v2, "sortByClickListener":Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/airbnb/android/views/SortBySelectorView;->mSortByBestMatch:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v3, p0, Lcom/airbnb/android/views/SortBySelectorView;->mSortByPrice:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v3, p0, Lcom/airbnb/android/views/SortBySelectorView;->mSortByDistance:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method

.method private updateViewSelection()V
    .registers 6

    .prologue
    .line 80
    sget-object v2, Lcom/airbnb/android/views/SortBySelectorView;->mViewIdToSortTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/airbnb/android/models/SearchInfo$SortType;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/airbnb/android/views/SortBySelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/views/SortBySelectorView;->mSelectedSortType:Lcom/airbnb/android/models/SearchInfo$SortType;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/models/SearchInfo$SortType;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_a

    .line 83
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/airbnb/android/models/SearchInfo$SortType;>;"
    :cond_32
    return-void
.end method


# virtual methods
.method public getSortType()Lcom/airbnb/android/models/SearchInfo$SortType;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/airbnb/android/views/SortBySelectorView;->mSelectedSortType:Lcom/airbnb/android/models/SearchInfo$SortType;

    return-object v0
.end method

.method public setDistanceSortEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 86
    iget-object v0, p0, Lcom/airbnb/android/views/SortBySelectorView;->mSortByDistance:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 87
    iget-object v0, p0, Lcom/airbnb/android/views/SortBySelectorView;->mSortByDistance:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 90
    if-nez p1, :cond_1d

    iget-object v0, p0, Lcom/airbnb/android/views/SortBySelectorView;->mSelectedSortType:Lcom/airbnb/android/models/SearchInfo$SortType;

    sget-object v1, Lcom/airbnb/android/models/SearchInfo$SortType;->Distance:Lcom/airbnb/android/models/SearchInfo$SortType;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/SearchInfo$SortType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 91
    sget-object v0, Lcom/airbnb/android/models/SearchInfo$SortType;->Points:Lcom/airbnb/android/models/SearchInfo$SortType;

    iput-object v0, p0, Lcom/airbnb/android/views/SortBySelectorView;->mSelectedSortType:Lcom/airbnb/android/models/SearchInfo$SortType;

    .line 92
    invoke-direct {p0}, Lcom/airbnb/android/views/SortBySelectorView;->updateViewSelection()V

    .line 94
    :cond_1d
    return-void
.end method
