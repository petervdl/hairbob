.class Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;


# direct methods
.method constructor <init>(Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;)V
    .registers 2

    .prologue
    .line 557
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$EntrySet;, "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 588
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$EntrySet;, "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->clear()V

    .line 589
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 571
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$EntrySet;, "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 563
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$EntrySet;, "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    new-instance v0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$EntrySet$1;

    invoke-direct {v0, p0}, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$EntrySet$1;-><init>(Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$EntrySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$EntrySet;, "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 575
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_7

    .line 584
    .end local p1    # "o":Ljava/lang/Object;
    :cond_6
    :goto_6
    return v1

    .line 579
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_7
    iget-object v3, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {v3, p1}, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    .line 580
    .local v0, "node":Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;, "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_6

    .line 583
    iget-object v1, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v1, v0, v2}, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->removeInternal(Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;Z)V

    move v1, v2

    .line 584
    goto :goto_6
.end method

.method public size()I
    .registers 2

    .prologue
    .line 559
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$EntrySet;, "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    iget v0, v0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->size:I

    return v0
.end method
