.class Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter;
.super Lcom/newrelic/com/google/gson/TypeAdapter;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/com/google/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FutureTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/newrelic/com/google/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/newrelic/com/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/newrelic/com/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 871
    .local p0, "this":Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter;, "Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter<TT;>;"
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/newrelic/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .param p1, "in"    # Lcom/newrelic/com/google/gson/stream/JsonReader;
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
    .line 882
    .local p0, "this":Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter;, "Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/newrelic/com/google/gson/TypeAdapter;

    if-nez v0, :cond_a

    .line 883
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 885
    :cond_a
    iget-object v0, p0, Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/newrelic/com/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/newrelic/com/google/gson/TypeAdapter;->read(Lcom/newrelic/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setDelegate(Lcom/newrelic/com/google/gson/TypeAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/com/google/gson/TypeAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 875
    .local p0, "this":Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter;, "Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter<TT;>;"
    .local p1, "typeAdapter":Lcom/newrelic/com/google/gson/TypeAdapter;, "Lcom/newrelic/com/google/gson/TypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/newrelic/com/google/gson/TypeAdapter;

    if-eqz v0, :cond_a

    .line 876
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 878
    :cond_a
    iput-object p1, p0, Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/newrelic/com/google/gson/TypeAdapter;

    .line 879
    return-void
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
    .line 889
    .local p0, "this":Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter;, "Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/newrelic/com/google/gson/TypeAdapter;

    if-nez v0, :cond_a

    .line 890
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 892
    :cond_a
    iget-object v0, p0, Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/newrelic/com/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/newrelic/com/google/gson/TypeAdapter;->write(Lcom/newrelic/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 893
    return-void
.end method
