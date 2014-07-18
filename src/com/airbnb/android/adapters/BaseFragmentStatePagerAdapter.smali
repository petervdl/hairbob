.class public abstract Lcom/airbnb/android/adapters/BaseFragmentStatePagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "BaseFragmentStatePagerAdapter.java"


# instance fields
.field private mFragmentCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .registers 7
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 17
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 18
    .local v0, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/adapters/BaseFragmentStatePagerAdapter;->mFragmentCache:Landroid/util/SparseArray;

    .line 19
    if-eqz v0, :cond_28

    .line 20
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 21
    iget-object v2, p0, Lcom/airbnb/android/adapters/BaseFragmentStatePagerAdapter;->mFragmentCache:Landroid/util/SparseArray;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 24
    .end local v1    # "i":I
    :cond_28
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseFragmentStatePagerAdapter;->mFragmentCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 41
    return-void
.end method

.method public getCachedFragment(I)Landroid/support/v4/app/Fragment;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 44
    iget-object v1, p0, Lcom/airbnb/android/adapters/BaseFragmentStatePagerAdapter;->mFragmentCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 45
    .local v0, "f":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/app/Fragment;>;"
    if-eqz v0, :cond_11

    .line 46
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 49
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    .line 29
    .local v1, "item":Ljava/lang/Object;
    instance-of v2, v1, Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_15

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    move-object v2, v1

    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 31
    .local v0, "f":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/app/Fragment;>;"
    iget-object v2, p0, Lcom/airbnb/android/adapters/BaseFragmentStatePagerAdapter;->mFragmentCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    .end local v0    # "f":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/app/Fragment;>;"
    :cond_15
    return-object v1
.end method
