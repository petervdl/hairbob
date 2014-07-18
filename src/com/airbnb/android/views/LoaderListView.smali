.class public Lcom/airbnb/android/views/LoaderListView;
.super Lcom/airbnb/android/views/BaseLoaderListView;
.source "LoaderListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/BaseLoaderListView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/BaseLoaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/views/BaseLoaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    return-void
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/airbnb/android/views/LoaderListView;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v0

    .line 30
    .local v0, "absListView":Landroid/widget/AbsListView;
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_b

    .line 31
    check-cast v0, Landroid/widget/ListView;

    .line 33
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
    .line 25
    const v0, 0x7f030184

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/LoaderListView;->init(I)V

    .line 26
    return-void
.end method
