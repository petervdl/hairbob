.class final Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters$24;
.super Lcom/newrelic/com/google/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/newrelic/com/google/gson/TypeAdapter",
        "<",
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/newrelic/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Lcom/newrelic/com/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 605
    invoke-virtual {p0, p1}, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters$24;->read(Lcom/newrelic/com/google/gson/stream/JsonReader;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/newrelic/com/google/gson/stream/JsonReader;)Ljava/util/Locale;
    .registers 9
    .param p1, "in"    # Lcom/newrelic/com/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 608
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->peek()Lcom/newrelic/com/google/gson/stream/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/newrelic/com/google/gson/stream/JsonToken;->NULL:Lcom/newrelic/com/google/gson/stream/JsonToken;

    if-ne v5, v6, :cond_d

    .line 609
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->nextNull()V

    .line 610
    const/4 v5, 0x0

    .line 631
    :goto_c
    return-object v5

    .line 612
    :cond_d
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 613
    .local v2, "locale":Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v5, "_"

    invoke-direct {v3, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .line 615
    .local v1, "language":Ljava/lang/String;
    const/4 v0, 0x0

    .line 616
    .local v0, "country":Ljava/lang/String;
    const/4 v4, 0x0

    .line 617
    .local v4, "variant":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 618
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 620
    :cond_26
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 621
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 623
    :cond_30
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 624
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 626
    :cond_3a
    if-nez v0, :cond_44

    if-nez v4, :cond_44

    .line 627
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_c

    .line 628
    :cond_44
    if-nez v4, :cond_4c

    .line 629
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 631
    :cond_4c
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v1, v0, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public bridge synthetic write(Lcom/newrelic/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Lcom/newrelic/com/google/gson/stream/JsonWriter;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 605
    check-cast p2, Ljava/util/Locale;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters$24;->write(Lcom/newrelic/com/google/gson/stream/JsonWriter;Ljava/util/Locale;)V

    return-void
.end method

.method public write(Lcom/newrelic/com/google/gson/stream/JsonWriter;Ljava/util/Locale;)V
    .registers 4
    .param p1, "out"    # Lcom/newrelic/com/google/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 636
    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/newrelic/com/google/gson/stream/JsonWriter;

    .line 637
    return-void

    .line 636
    :cond_7
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
