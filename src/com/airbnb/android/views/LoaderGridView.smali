.class public Lcom/airbnb/android/views/LoaderGridView;
.super Lcom/airbnb/android/views/LoaderListView;
.source "LoaderGridView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/LoaderListView;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/LoaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/views/LoaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    return-void
.end method


# virtual methods
.method public getGridView()Landroid/widget/GridView;
    .registers 3

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/airbnb/android/views/LoaderGridView;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v0

    .line 38
    .local v0, "absListView":Landroid/widget/AbsListView;
    instance-of v1, v0, Landroid/widget/GridView;

    if-eqz v1, :cond_b

    .line 39
    check-cast v0, Landroid/widget/GridView;

    .line 41
    .end local v0    # "absListView":Landroid/widget/AbsListView;
    :goto_a
    return-object v0

    .restart local v0    # "absListView":Landroid/widget/AbsListView;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected init()V
    .registers 2

    .prologue
    .line 27
    const v0, 0x7f030183

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/LoaderGridView;->init(I)V

    .line 28
    return-void
.end method

.method protected init(I)V
    .registers 5
    .param p1, "resourceId"    # I

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/airbnb/android/views/LoaderListView;->init(I)V

    .line 33
    invoke-virtual {p0}, Lcom/airbnb/android/views/LoaderGridView;->getGridView()Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/views/LoaderGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 34
    return-void
.end method
