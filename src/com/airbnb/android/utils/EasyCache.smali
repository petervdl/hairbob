.class public abstract Lcom/airbnb/android/utils/EasyCache;
.super Ljava/lang/Object;
.source "EasyCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<From:",
        "Ljava/lang/Object;",
        "To:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mBackingSparse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<TTo;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    .local p0, "this":Lcom/airbnb/android/utils/EasyCache;, "Lcom/airbnb/android/utils/EasyCache<TFrom;TTo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/utils/EasyCache;->mBackingSparse:Landroid/util/SparseArray;

    .line 22
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 35
    .local p0, "this":Lcom/airbnb/android/utils/EasyCache;, "Lcom/airbnb/android/utils/EasyCache<TFrom;TTo;>;"
    iget-object v0, p0, Lcom/airbnb/android/utils/EasyCache;->mBackingSparse:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 36
    return-void
.end method

.method public getEntry(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFrom;)TTo;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/airbnb/android/utils/EasyCache;, "Lcom/airbnb/android/utils/EasyCache<TFrom;TTo;>;"
    .local p2, "item":Ljava/lang/Object;, "TFrom;"
    iget-object v1, p0, Lcom/airbnb/android/utils/EasyCache;->mBackingSparse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_12

    .line 26
    invoke-virtual {p0, p2}, Lcom/airbnb/android/utils/EasyCache;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    .local v0, "result":Ljava/lang/Object;, "TTo;"
    iget-object v1, p0, Lcom/airbnb/android/utils/EasyCache;->mBackingSparse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 30
    .end local v0    # "result":Ljava/lang/Object;, "TTo;"
    :goto_11
    return-object v0

    :cond_12
    iget-object v1, p0, Lcom/airbnb/android/utils/EasyCache;->mBackingSparse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_11
.end method

.method public getValues()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TTo;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/airbnb/android/utils/EasyCache;, "Lcom/airbnb/android/utils/EasyCache<TFrom;TTo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<TTo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v2, p0, Lcom/airbnb/android/utils/EasyCache;->mBackingSparse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 41
    iget-object v2, p0, Lcom/airbnb/android/utils/EasyCache;->mBackingSparse:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 43
    :cond_1a
    return-object v1
.end method

.method public abstract transform(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFrom;)TTo;"
        }
    .end annotation
.end method
