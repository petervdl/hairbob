.class abstract Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;
.super Ljava/lang/Object;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LinkedTreeMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field lastReturned:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field next:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;


# direct methods
.method private constructor <init>(Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;)V
    .registers 3

    .prologue
    .line 526
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;, "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap<TK;TV;>.LinkedTreeMapIterator<TT;>;"
    iput-object p1, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iget-object v0, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    iget-object v0, v0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->header:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;

    iget-object v0, v0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;

    iput-object v0, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;

    .line 529
    iget-object v0, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    iget v0, v0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->modCount:I

    iput v0, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;
    .param p2, "x1"    # Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$1;

    .prologue
    .line 526
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;, "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap<TK;TV;>.LinkedTreeMapIterator<TT;>;"
    invoke-direct {p0, p1}, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;-><init>(Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    .prologue
    .line 532
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;, "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap<TK;TV;>.LinkedTreeMapIterator<TT;>;"
    iget-object v0, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;

    iget-object v1, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    iget-object v1, v1, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->header:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method final nextNode()Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 536
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;, "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap<TK;TV;>.LinkedTreeMapIterator<TT;>;"
    iget-object v0, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;

    .line 537
    .local v0, "e":Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;, "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v1, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    iget-object v1, v1, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->header:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;

    if-ne v0, v1, :cond_e

    .line 538
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 540
    :cond_e
    iget-object v1, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    iget v1, v1, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->modCount:I

    iget v2, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    if-eq v1, v2, :cond_1c

    .line 541
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 543
    :cond_1c
    iget-object v1, v0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;

    iput-object v1, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;

    .line 544
    iput-object v0, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;

    return-object v0
.end method

.method public final remove()V
    .registers 4

    .prologue
    .line 548
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;, "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap<TK;TV;>.LinkedTreeMapIterator<TT;>;"
    iget-object v0, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;

    if-nez v0, :cond_a

    .line 549
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 551
    :cond_a
    iget-object v0, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    iget-object v1, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->removeInternal(Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;Z)V

    .line 552
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;

    .line 553
    iget-object v0, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    iget v0, v0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->modCount:I

    iput v0, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    .line 554
    return-void
.end method
