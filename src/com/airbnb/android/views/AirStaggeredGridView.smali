.class public Lcom/airbnb/android/views/AirStaggeredGridView;
.super Lcom/etsy/android/grid/StaggeredGridView;
.source "AirStaggeredGridView.java"


# instance fields
.field private columnCountChanged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/views/AirStaggeredGridView;->columnCountChanged:Z

    .line 16
    invoke-direct {p0}, Lcom/airbnb/android/views/AirStaggeredGridView;->initGridView()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/etsy/android/grid/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/views/AirStaggeredGridView;->columnCountChanged:Z

    .line 21
    invoke-direct {p0}, Lcom/airbnb/android/views/AirStaggeredGridView;->initGridView()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/etsy/android/grid/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/views/AirStaggeredGridView;->columnCountChanged:Z

    .line 26
    invoke-direct {p0}, Lcom/airbnb/android/views/AirStaggeredGridView;->initGridView()V

    .line 27
    return-void
.end method

.method private initGridView()V
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/AirStaggeredGridView;->setSaveEnabled(Z)V

    .line 32
    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirStaggeredGridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/etsy/android/grid/StaggeredGridView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 38
    return-void
.end method

.method protected onSizeChanged(II)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/etsy/android/grid/StaggeredGridView;->onSizeChanged(II)V

    .line 48
    iget-boolean v0, p0, Lcom/airbnb/android/views/AirStaggeredGridView;->columnCountChanged:Z

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/airbnb/android/views/AirStaggeredGridView;->getWidth()I

    move-result v0

    if-lez v0, :cond_1e

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/views/AirStaggeredGridView;->columnCountChanged:Z

    .line 50
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirStaggeredGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-super {p0, v0}, Lcom/etsy/android/grid/StaggeredGridView;->setColumnCount(I)V

    .line 52
    :cond_1e
    return-void
.end method

.method public setColumnCount(I)V
    .registers 2
    .param p1, "columnCount"    # I

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/etsy/android/grid/StaggeredGridView;->setColumnCount(I)V

    .line 43
    return-void
.end method
