.class Lcom/newrelic/com/google/gson/TypeAdapter$1;
.super Lcom/newrelic/com/google/gson/TypeAdapter;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newrelic/com/google/gson/TypeAdapter;->nullSafe()Lcom/newrelic/com/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/newrelic/com/google/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newrelic/com/google/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/newrelic/com/google/gson/TypeAdapter;)V
    .registers 2

    .prologue
    .line 186
    .local p0, "this":Lcom/newrelic/com/google/gson/TypeAdapter$1;, "Lcom/newrelic/com/google/gson/TypeAdapter.1;"
    iput-object p1, p0, Lcom/newrelic/com/google/gson/TypeAdapter$1;->this$0:Lcom/newrelic/com/google/gson/TypeAdapter;

    invoke-direct {p0}, Lcom/newrelic/com/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/newrelic/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 4
    .param p1, "reader"    # Lcom/newrelic/com/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/com/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lcom/newrelic/com/google/gson/TypeAdapter$1;, "Lcom/newrelic/com/google/gson/TypeAdapter.1;"
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->peek()Lcom/newrelic/com/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/newrelic/com/google/gson/stream/JsonToken;->NULL:Lcom/newrelic/com/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_d

    .line 196
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->nextNull()V

    .line 197
    const/4 v0, 0x0

    .line 199
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/newrelic/com/google/gson/TypeAdapter$1;->this$0:Lcom/newrelic/com/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/newrelic/com/google/gson/TypeAdapter;->read(Lcom/newrelic/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method

.method public write(Lcom/newrelic/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 4
    .param p1, "out"    # Lcom/newrelic/com/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/com/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lcom/newrelic/com/google/gson/TypeAdapter$1;, "Lcom/newrelic/com/google/gson/TypeAdapter.1;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_6

    .line 189
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->nullValue()Lcom/newrelic/com/google/gson/stream/JsonWriter;

    .line 193
    :goto_5
    return-void

    .line 191
    :cond_6
    iget-object v0, p0, Lcom/newrelic/com/google/gson/TypeAdapter$1;->this$0:Lcom/newrelic/com/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/newrelic/com/google/gson/TypeAdapter;->write(Lcom/newrelic/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_5
.end method
