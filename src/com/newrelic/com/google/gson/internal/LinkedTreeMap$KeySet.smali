.class Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet;
.super Ljava/util/AbstractSet;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;


# direct methods
.method constructor <init>(Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;)V
    .registers 2

    .prologue
    .line 592
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet;, "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap<TK;TV;>.KeySet;"
    iput-object p1, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet;->this$0:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 614
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet;, "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet;->this$0:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->clear()V

    .line 615
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 606
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet;, "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet;->this$0:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 598
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet;, "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap<TK;TV;>.KeySet;"
    new-instance v0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet$1;

    invoke-direct {v0, p0}, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet$1;-><init>(Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 610
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet;, "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet;->this$0:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public size()I
    .registers 2

    .prologue
    .line 594
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet;, "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet;->this$0:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    iget v0, v0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->size:I

    return v0
.end method
