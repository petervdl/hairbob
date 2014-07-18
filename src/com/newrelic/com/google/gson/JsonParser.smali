.class public final Lcom/newrelic/com/google/gson/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/newrelic/com/google/gson/stream/JsonReader;)Lcom/newrelic/com/google/gson/JsonElement;
    .registers 7
    .param p1, "json"    # Lcom/newrelic/com/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/com/google/gson/JsonIOException;,
            Lcom/newrelic/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->isLenient()Z

    move-result v1

    .line 82
    .local v1, "lenient":Z
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/newrelic/com/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 84
    :try_start_8
    invoke-static {p1}, Lcom/newrelic/com/google/gson/internal/Streams;->parse(Lcom/newrelic/com/google/gson/stream/JsonReader;)Lcom/newrelic/com/google/gson/JsonElement;
    :try_end_b
    .catch Ljava/lang/StackOverflowError; {:try_start_8 .. :try_end_b} :catch_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_b} :catch_37
    .catchall {:try_start_8 .. :try_end_b} :catchall_32

    move-result-object v2

    .line 90
    invoke-virtual {p1, v1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->setLenient(Z)V

    return-object v2

    .line 85
    :catch_10
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/StackOverflowError;
    :try_start_11
    new-instance v2, Lcom/newrelic/com/google/gson/JsonParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed parsing JSON source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to Json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/newrelic/com/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_32

    .line 90
    .end local v0    # "e":Ljava/lang/StackOverflowError;
    :catchall_32
    move-exception v2

    invoke-virtual {p1, v1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->setLenient(Z)V

    throw v2

    .line 87
    :catch_37
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_38
    new-instance v2, Lcom/newrelic/com/google/gson/JsonParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed parsing JSON source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to Json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/newrelic/com/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_59
    .catchall {:try_start_38 .. :try_end_59} :catchall_32
.end method

.method public parse(Ljava/io/Reader;)Lcom/newrelic/com/google/gson/JsonElement;
    .registers 7
    .param p1, "json"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/com/google/gson/JsonIOException;,
            Lcom/newrelic/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 58
    :try_start_0
    new-instance v2, Lcom/newrelic/com/google/gson/stream/JsonReader;

    invoke-direct {v2, p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 59
    .local v2, "jsonReader":Lcom/newrelic/com/google/gson/stream/JsonReader;
    invoke-virtual {p0, v2}, Lcom/newrelic/com/google/gson/JsonParser;->parse(Lcom/newrelic/com/google/gson/stream/JsonReader;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v1

    .line 60
    .local v1, "element":Lcom/newrelic/com/google/gson/JsonElement;
    invoke-virtual {v1}, Lcom/newrelic/com/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-nez v3, :cond_35

    invoke-virtual {v2}, Lcom/newrelic/com/google/gson/stream/JsonReader;->peek()Lcom/newrelic/com/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/newrelic/com/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/newrelic/com/google/gson/stream/JsonToken;

    if-eq v3, v4, :cond_35

    .line 61
    new-instance v3, Lcom/newrelic/com/google/gson/JsonSyntaxException;

    const-string/jumbo v4, "Did not consume the entire document."

    invoke-direct {v3, v4}, Lcom/newrelic/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_20
    .catch Lcom/newrelic/com/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_20} :catch_20
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_20} :catch_27
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_20} :catch_2e

    .line 64
    .end local v1    # "element":Lcom/newrelic/com/google/gson/JsonElement;
    .end local v2    # "jsonReader":Lcom/newrelic/com/google/gson/stream/JsonReader;
    :catch_20
    move-exception v0

    .line 65
    .local v0, "e":Lcom/newrelic/com/google/gson/stream/MalformedJsonException;
    new-instance v3, Lcom/newrelic/com/google/gson/JsonSyntaxException;

    invoke-direct {v3, v0}, Lcom/newrelic/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 66
    .end local v0    # "e":Lcom/newrelic/com/google/gson/stream/MalformedJsonException;
    :catch_27
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lcom/newrelic/com/google/gson/JsonIOException;

    invoke-direct {v3, v0}, Lcom/newrelic/com/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 68
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2e
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/newrelic/com/google/gson/JsonSyntaxException;

    invoke-direct {v3, v0}, Lcom/newrelic/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 63
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "element":Lcom/newrelic/com/google/gson/JsonElement;
    .restart local v2    # "jsonReader":Lcom/newrelic/com/google/gson/stream/JsonReader;
    :cond_35
    return-object v1
.end method

.method public parse(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;
    .registers 3
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/gson/JsonParser;->parse(Ljava/io/Reader;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
