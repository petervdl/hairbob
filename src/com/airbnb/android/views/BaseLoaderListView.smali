.class public abstract Lcom/airbnb/android/views/BaseLoaderListView;
.super Landroid/widget/FrameLayout;
.source "BaseLoaderListView.java"


# instance fields
.field private mEmptyResults:Lcom/airbnb/android/views/EmptyResults;

.field private mEmptyResultsSubtitle:Ljava/lang/String;

.field private mEmptyResultsTitle:Ljava/lang/String;

.field private mListView:Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

.field private mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0}, Lcom/airbnb/android/views/BaseLoaderListView;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/BaseLoaderListView;->getEmptyResultsAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-virtual {p0}, Lcom/airbnb/android/views/BaseLoaderListView;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/BaseLoaderListView;->getEmptyResultsAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-virtual {p0}, Lcom/airbnb/android/views/BaseLoaderListView;->init()V

    .line 28
    return-void
.end method

.method private getEmptyResultsAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 58
    sget-object v1, Lcom/airbnb/android/R$styleable;->BaseLoaderListView:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/views/BaseLoaderListView;->mEmptyResultsTitle:Ljava/lang/String;

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/views/BaseLoaderListView;->mEmptyResultsSubtitle:Ljava/lang/String;

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    return-void
.end method


# virtual methods
.method public finishLoader()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/airbnb/android/views/BaseLoaderListView;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 103
    return-void
.end method

.method public finishLoaderImmediate()V
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/airbnb/android/views/BaseLoaderListView;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LoaderFrame;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/airbnb/android/views/BaseLoaderListView;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 111
    return-void
.end method

.method public getAbsListView()Landroid/widget/AbsListView;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/airbnb/android/views/BaseLoaderListView;->mListView:Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/ViewPagerAbsListView;->getListView()Landroid/widget/AbsListView;

    move-result-object v0

    return-object v0
.end method

.method public getEmptyResults()Lcom/airbnb/android/views/EmptyResults;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/airbnb/android/views/BaseLoaderListView;->mEmptyResults:Lcom/airbnb/android/views/EmptyResults;

    return-object v0
.end method

.method public getViewPagerListView()Lcom/airbnb/android/interfaces/ViewPagerAbsListView;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/android/views/BaseLoaderListView;->mListView:Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

    return-object v0
.end method

.method protected abstract init()V
.end method

.method protected init(I)V
    .registers 4
    .param p1, "resourceId"    # I

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/airbnb/android/views/BaseLoaderListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    const v0, 0x7f080404

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/BaseLoaderListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

    iput-object v0, p0, Lcom/airbnb/android/views/BaseLoaderListView;->mListView:Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

    .line 46
    const v0, 0x7f080054

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/BaseLoaderListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/LoaderFrame;

    iput-object v0, p0, Lcom/airbnb/android/views/BaseLoaderListView;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    .line 47
    iget-object v0, p0, Lcom/airbnb/android/views/BaseLoaderListView;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->startAnimation()V

    .line 48
    const v0, 0x7f080107

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/BaseLoaderListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/EmptyResults;

    iput-object v0, p0, Lcom/airbnb/android/views/BaseLoaderListView;->mEmptyResults:Lcom/airbnb/android/views/EmptyResults;

    .line 50
    iget-object v0, p0, Lcom/airbnb/android/views/BaseLoaderListView;->mEmptyResultsTitle:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/http/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/airbnb/android/views/BaseLoaderListView;->mEmptyResultsSubtitle:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/http/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 51
    :cond_41
    iget-object v0, p0, Lcom/airbnb/android/views/BaseLoaderListView;->mEmptyResults:Lcom/airbnb/android/views/EmptyResults;

    iget-object v1, p0, Lcom/airbnb/android/views/BaseLoaderListView;->mEmptyResultsTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/EmptyResults;->setTitle(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/airbnb/android/views/BaseLoaderListView;->mEmptyResults:Lcom/airbnb/android/views/EmptyResults;

    iget-object v1, p0, Lcom/airbnb/android/views/BaseLoaderListView;->mEmptyResultsSubtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/EmptyResults;->setSubTitle(Ljava/lang/String;)V

    .line 55
    :cond_4f
    return-void
.end method

.method public setEmptyResultsTitle(Ljava/lang/String;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/airbnb/android/views/BaseLoaderListView;->mEmptyResultsTitle:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/airbnb/android/views/BaseLoaderListView;->mEmptyResults:Lcom/airbnb/android/views/EmptyResults;

    iget-object v1, p0, Lcom/airbnb/android/views/BaseLoaderListView;->mEmptyResultsTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/EmptyResults;->setTitle(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public showEmptyResults(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .prologue
    .line 77
    iget-object v1, p0, Lcom/airbnb/android/views/BaseLoaderListView;->mEmptyResults:Lcom/airbnb/android/views/EmptyResults;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/EmptyResults;->setVisibility(I)V

    .line 78
    return-void

    .line 77
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method public startLoader()V
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/airbnb/android/views/BaseLoaderListView;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->startAnimation()V

    .line 96
    return-void
.end method
