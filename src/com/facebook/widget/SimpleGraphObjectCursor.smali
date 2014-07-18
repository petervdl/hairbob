.class Lcom/facebook/widget/SimpleGraphObjectCursor;
.super Ljava/lang/Object;
.source "SimpleGraphObjectCursor.java"

# interfaces
.implements Lcom/facebook/widget/GraphObjectCursor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/model/GraphObject;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/widget/GraphObjectCursor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private closed:Z

.field private fromCache:Z

.field private graphObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private moreObjectsAvailable:Z

.field private pos:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    .line 27
    iput-boolean v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->closed:Z

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    .line 29
    iput-boolean v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->moreObjectsAvailable:Z

    .line 30
    iput-boolean v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    .line 33
    return-void
.end method

.method constructor <init>(Lcom/facebook/widget/SimpleGraphObjectCursor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/SimpleGraphObjectCursor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    .local p1, "other":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    .line 27
    iput-boolean v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->closed:Z

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    .line 29
    iput-boolean v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->moreObjectsAvailable:Z

    .line 30
    iput-boolean v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    .line 36
    iget v0, p1, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    iput v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    .line 37
    iget-boolean v0, p1, Lcom/facebook/widget/SimpleGraphObjectCursor;->closed:Z

    iput-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->closed:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    .line 39
    iget-object v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 40
    iget-boolean v0, p1, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    iput-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    .line 43
    return-void
.end method


# virtual methods
.method public addGraphObjects(Ljava/util/Collection;Z)V
    .registers 4
    .param p2, "fromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    .local p1, "graphObjects":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    iget-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    .line 49
    return-void
.end method

.method public areMoreObjectsAvailable()Z
    .registers 2

    .prologue
    .line 60
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->moreObjectsAvailable:Z

    return v0
.end method

.method public close()V
    .registers 2

    .prologue
    .line 154
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->closed:Z

    .line 155
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 69
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGraphObject()Lcom/facebook/model/GraphObject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    if-gez v0, :cond_d

    .line 144
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string/jumbo v1, "Before first object."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_d
    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    iget-object v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_20

    .line 147
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string/jumbo v1, "After last object."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_20
    iget-object v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    iget v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphObject;

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 74
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    return v0
.end method

.method public isAfterLast()Z
    .registers 3

    .prologue
    .line 137
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->getCount()I

    move-result v0

    .line 138
    .local v0, "count":I
    if-eqz v0, :cond_a

    iget v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    if-ne v1, v0, :cond_c

    :cond_a
    const/4 v1, 0x1

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public isBeforeFirst()Z
    .registers 3

    .prologue
    .line 132
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 159
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->closed:Z

    return v0
.end method

.method public isFirst()Z
    .registers 2

    .prologue
    .line 121
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isFromCache()Z
    .registers 2

    .prologue
    .line 52
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    return v0
.end method

.method public isLast()Z
    .registers 4

    .prologue
    .line 126
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->getCount()I

    move-result v0

    .line 127
    .local v0, "count":I
    iget v1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_e

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public move(I)Z
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 79
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .registers 2

    .prologue
    .line 101
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .registers 2

    .prologue
    .line 106
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .registers 2

    .prologue
    .line 111
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .registers 5
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->getCount()I

    move-result v0

    .line 85
    .local v0, "count":I
    if-lt p1, v0, :cond_a

    .line 86
    iput v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    .line 96
    :goto_9
    return v1

    .line 90
    :cond_a
    if-gez p1, :cond_10

    .line 91
    const/4 v2, -0x1

    iput v2, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    goto :goto_9

    .line 95
    :cond_10
    iput p1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    .line 96
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public moveToPrevious()Z
    .registers 2

    .prologue
    .line 116
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iget v0, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->pos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public setFromCache(Z)V
    .registers 2
    .param p1, "fromCache"    # Z

    .prologue
    .line 56
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iput-boolean p1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->fromCache:Z

    .line 57
    return-void
.end method

.method public setMoreObjectsAvailable(Z)V
    .registers 2
    .param p1, "moreObjectsAvailable"    # Z

    .prologue
    .line 64
    .local p0, "this":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iput-boolean p1, p0, Lcom/facebook/widget/SimpleGraphObjectCursor;->moreObjectsAvailable:Z

    .line 65
    return-void
.end method
