.class Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet$1;
.super Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap",
        "<TK;TV;>.",
        "LinkedTreeMapIterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet;


# direct methods
.method constructor <init>(Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet;)V
    .registers 4

    .prologue
    .line 598
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet$1;, "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet.1;"
    iput-object p1, p0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet$1;->this$1:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet;

    iget-object v0, p1, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet;->this$0:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;-><init>(Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$1;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 600
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet$1;, "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet.1;"
    invoke-virtual {p0}, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$KeySet$1;->nextNode()Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    iget-object v0, v0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method
