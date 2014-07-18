.class public Lcom/fasterxml/jackson/databind/node/DoubleNode;
.super Lcom/fasterxml/jackson/databind/node/NumericNode;
.source "DoubleNode.java"


# instance fields
.field protected final _value:D


# direct methods
.method public constructor <init>(D)V
    .registers 3
    .param p1, "v"    # D

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;-><init>()V

    iput-wide p1, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D

    return-void
.end method

.method public static valueOf(D)Lcom/fasterxml/jackson/databind/node/DoubleNode;
    .registers 3
    .param p0, "v"    # D

    .prologue
    .line 29
    new-instance v0, Lcom/fasterxml/jackson/databind/node/DoubleNode;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/node/DoubleNode;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public asText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 104
    if-ne p1, p0, :cond_5

    .line 112
    .end local p1    # "o":Ljava/lang/Object;
    :cond_4
    :goto_4
    return v2

    .line 105
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_5
    if-nez p1, :cond_9

    move v2, v3

    goto :goto_4

    .line 106
    :cond_9
    instance-of v4, p1, Lcom/fasterxml/jackson/databind/node/DoubleNode;

    if-eqz v4, :cond_1b

    .line 109
    check-cast p1, Lcom/fasterxml/jackson/databind/node/DoubleNode;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v0, p1, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D

    .line 110
    .local v0, "otherValue":D
    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    goto :goto_4

    .end local v0    # "otherValue":D
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1b
    move v2, v3

    .line 112
    goto :goto_4
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 119
    iget-wide v2, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 120
    .local v0, "l":J
    long-to-int v2, v0

    const/16 v3, 0x20

    shr-long v3, v0, v3

    long-to-int v3, v3

    xor-int/2addr v2, v3

    return v2
.end method

.method public final serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 5
    .param p1, "jg"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V

    .line 99
    return-void
.end method
