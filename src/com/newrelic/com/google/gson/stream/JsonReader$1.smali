.class final Lcom/newrelic/com/google/gson/stream/JsonReader$1;
.super Lcom/newrelic/com/google/gson/internal/JsonReaderInternalAccess;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/com/google/gson/stream/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1532
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/internal/JsonReaderInternalAccess;-><init>()V

    return-void
.end method


# virtual methods
.method public promoteNameToValue(Lcom/newrelic/com/google/gson/stream/JsonReader;)V
    .registers 6
    .param p1, "reader"    # Lcom/newrelic/com/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1534
    instance-of v1, p1, Lcom/newrelic/com/google/gson/internal/bind/JsonTreeReader;

    if-eqz v1, :cond_a

    .line 1535
    check-cast p1, Lcom/newrelic/com/google/gson/internal/bind/JsonTreeReader;

    .end local p1    # "reader":Lcom/newrelic/com/google/gson/stream/JsonReader;
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/internal/bind/JsonTreeReader;->promoteNameToValue()V

    .line 1552
    :goto_9
    return-void

    .line 1538
    .restart local p1    # "reader":Lcom/newrelic/com/google/gson/stream/JsonReader;
    :cond_a
    # getter for: Lcom/newrelic/com/google/gson/stream/JsonReader;->peeked:I
    invoke-static {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->access$000(Lcom/newrelic/com/google/gson/stream/JsonReader;)I

    move-result v0

    .line 1539
    .local v0, "p":I
    if-nez v0, :cond_14

    .line 1540
    # invokes: Lcom/newrelic/com/google/gson/stream/JsonReader;->doPeek()I
    invoke-static {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->access$100(Lcom/newrelic/com/google/gson/stream/JsonReader;)I

    move-result v0

    .line 1542
    :cond_14
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1e

    .line 1543
    const/16 v1, 0x9

    # setter for: Lcom/newrelic/com/google/gson/stream/JsonReader;->peeked:I
    invoke-static {p1, v1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->access$002(Lcom/newrelic/com/google/gson/stream/JsonReader;I)I

    goto :goto_9

    .line 1544
    :cond_1e
    const/16 v1, 0xc

    if-ne v0, v1, :cond_28

    .line 1545
    const/16 v1, 0x8

    # setter for: Lcom/newrelic/com/google/gson/stream/JsonReader;->peeked:I
    invoke-static {p1, v1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->access$002(Lcom/newrelic/com/google/gson/stream/JsonReader;I)I

    goto :goto_9

    .line 1546
    :cond_28
    const/16 v1, 0xe

    if-ne v0, v1, :cond_32

    .line 1547
    const/16 v1, 0xa

    # setter for: Lcom/newrelic/com/google/gson/stream/JsonReader;->peeked:I
    invoke-static {p1, v1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->access$002(Lcom/newrelic/com/google/gson/stream/JsonReader;I)I

    goto :goto_9

    .line 1549
    :cond_32
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->peek()Lcom/newrelic/com/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # invokes: Lcom/newrelic/com/google/gson/stream/JsonReader;->getLineNumber()I
    invoke-static {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->access$200(Lcom/newrelic/com/google/gson/stream/JsonReader;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # invokes: Lcom/newrelic/com/google/gson/stream/JsonReader;->getColumnNumber()I
    invoke-static {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->access$300(Lcom/newrelic/com/google/gson/stream/JsonReader;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
