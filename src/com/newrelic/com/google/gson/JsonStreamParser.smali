.class public final Lcom/newrelic/com/google/gson/JsonStreamParser;
.super Ljava/lang/Object;
.source "JsonStreamParser.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/newrelic/com/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final parser:Lcom/newrelic/com/google/gson/stream/JsonReader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/newrelic/com/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/newrelic/com/google/gson/JsonStreamParser;->parser:Lcom/newrelic/com/google/gson/stream/JsonReader;

    .line 70
    iget-object v0, p0, Lcom/newrelic/com/google/gson/JsonStreamParser;->parser:Lcom/newrelic/com/google/gson/stream/JsonReader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/newrelic/com/google/gson/JsonStreamParser;->lock:Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/newrelic/com/google/gson/JsonStreamParser;-><init>(Ljava/io/Reader;)V

    .line 62
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 5

    .prologue
    .line 103
    iget-object v2, p0, Lcom/newrelic/com/google/gson/JsonStreamParser;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 105
    :try_start_3
    iget-object v1, p0, Lcom/newrelic/com/google/gson/JsonStreamParser;->parser:Lcom/newrelic/com/google/gson/stream/JsonReader;

    invoke-virtual {v1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->peek()Lcom/newrelic/com/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v3, Lcom/newrelic/com/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/newrelic/com/google/gson/stream/JsonToken;
    :try_end_b
    .catch Lcom/newrelic/com/google/gson/stream/MalformedJsonException; {:try_start_3 .. :try_end_b} :catch_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_1c
    .catchall {:try_start_3 .. :try_end_b} :catchall_19

    if-eq v1, v3, :cond_10

    const/4 v1, 0x1

    :goto_e
    :try_start_e
    monitor-exit v2

    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_e

    .line 106
    :catch_12
    move-exception v0

    .line 107
    .local v0, "e":Lcom/newrelic/com/google/gson/stream/MalformedJsonException;
    new-instance v1, Lcom/newrelic/com/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/newrelic/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 111
    .end local v0    # "e":Lcom/newrelic/com/google/gson/stream/MalformedJsonException;
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_19

    throw v1

    .line 108
    :catch_1c
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    :try_start_1d
    new-instance v1, Lcom/newrelic/com/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/newrelic/com/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_19
.end method

.method public next()Lcom/newrelic/com/google/gson/JsonElement;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/com/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/newrelic/com/google/gson/JsonStreamParser;->hasNext()Z

    move-result v1

    if-nez v1, :cond_c

    .line 83
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 87
    :cond_c
    :try_start_c
    iget-object v1, p0, Lcom/newrelic/com/google/gson/JsonStreamParser;->parser:Lcom/newrelic/com/google/gson/stream/JsonReader;

    invoke-static {v1}, Lcom/newrelic/com/google/gson/internal/Streams;->parse(Lcom/newrelic/com/google/gson/stream/JsonReader;)Lcom/newrelic/com/google/gson/JsonElement;
    :try_end_11
    .catch Ljava/lang/StackOverflowError; {:try_start_c .. :try_end_11} :catch_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_11} :catch_1d
    .catch Lcom/newrelic/com/google/gson/JsonParseException; {:try_start_c .. :try_end_11} :catch_27

    move-result-object v1

    return-object v1

    .line 88
    :catch_13
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/StackOverflowError;
    new-instance v1, Lcom/newrelic/com/google/gson/JsonParseException;

    const-string/jumbo v2, "Failed parsing JSON source to Json"

    invoke-direct {v1, v2, v0}, Lcom/newrelic/com/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 90
    .end local v0    # "e":Ljava/lang/StackOverflowError;
    :catch_1d
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    new-instance v1, Lcom/newrelic/com/google/gson/JsonParseException;

    const-string/jumbo v2, "Failed parsing JSON source to Json"

    invoke-direct {v1, v2, v0}, Lcom/newrelic/com/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 92
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_27
    move-exception v0

    .line 93
    .local v0, "e":Lcom/newrelic/com/google/gson/JsonParseException;
    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/JsonParseException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/EOFException;

    if-eqz v1, :cond_35

    new-instance v0, Ljava/util/NoSuchElementException;

    .end local v0    # "e":Lcom/newrelic/com/google/gson/JsonParseException;
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    :cond_35
    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/newrelic/com/google/gson/JsonStreamParser;->next()Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
