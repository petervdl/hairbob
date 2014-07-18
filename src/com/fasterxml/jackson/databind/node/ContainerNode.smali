.class public abstract Lcom/fasterxml/jackson/databind/node/ContainerNode;
.super Lcom/fasterxml/jackson/databind/node/BaseJsonNode;
.source "ContainerNode.java"


# instance fields
.field protected final _nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V
    .registers 2
    .param p1, "nc"    # Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .prologue
    .line 26
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 28
    return-void
.end method


# virtual methods
.method public asText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;
    .registers 2

    .prologue
    .line 76
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    return-object v0
.end method
