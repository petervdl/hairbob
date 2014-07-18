.class public final Lcom/newrelic/com/google/gson/internal/bind/ArrayTypeAdapter;
.super Lcom/newrelic/com/google/gson/TypeAdapter;
.source "ArrayTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/newrelic/com/google/gson/TypeAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;


# instance fields
.field private final componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final componentTypeAdapter:Lcom/newrelic/com/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/newrelic/com/google/gson/TypeAdapter",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Lcom/newrelic/com/google/gson/internal/bind/ArrayTypeAdapter$1;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/internal/bind/ArrayTypeAdapter$1;-><init>()V

    sput-object v0, Lcom/newrelic/com/google/gson/internal/bind/ArrayTypeAdapter;->FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    return-void
.end method

.method public constructor <init>(Lcom/newrelic/com/google/gson/Gson;Lcom/newrelic/com/google/gson/TypeAdapter;Ljava/lang/Class;)V
    .registers 5
    .param p1, "context"    # Lcom/newrelic/com/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/com/google/gson/Gson;",
            "Lcom/newrelic/com/google/gson/TypeAdapter",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/bind/ArrayTypeAdapter;, "Lcom/newrelic/com/google/gson/internal/bind/ArrayTypeAdapter<TE;>;"
    .local p2, "componentTypeAdapter":Lcom/newrelic/com/google/gson/TypeAdapter;, "Lcom/newrelic/com/google/gson/TypeAdapter<TE;>;"
    .local p3, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/TypeAdapter;-><init>()V

    .line 58
    new-instance v0, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p1, p2, p3}, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/newrelic/com/google/gson/Gson;Lcom/newrelic/com/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/newrelic/com/google/gson/internal/bind/ArrayTypeAdapter;->componentTypeAdapter:Lcom/newrelic/com/google/gson/TypeAdapter;

    .line 60
    iput-object p3, p0, Lcom/newrelic/com/google/gson/internal/bind/ArrayTypeAdapter;->componentType:Ljava/lang/Class;

    .line 61
    return-void
.end method


# virtual methods
.method public read(Lcom/newrelic/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 8
    .param p1, "in"    # Lcom/newrelic/com/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/bind/ArrayTypeAdapter;, "Lcom/newrelic/com/google/gson/internal/bind/ArrayTypeAdapter<TE;>;"
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->peek()Lcom/newrelic/com/google/gson/stream/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/newrelic/com/google/gson/stream/JsonToken;->NULL:Lcom/newrelic/com/google/gson/stream/JsonToken;

    if-ne v4, v5, :cond_d

    .line 65
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->nextNull()V

    .line 66
    const/4 v0, 0x0

    .line 80
    :cond_c
    return-object v0

    .line 69
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->beginArray()V

    .line 71
    :goto_15
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 72
    iget-object v4, p0, Lcom/newrelic/com/google/gson/internal/bind/ArrayTypeAdapter;->componentTypeAdapter:Lcom/newrelic/com/google/gson/TypeAdapter;

    invoke-virtual {v4, p1}, Lcom/newrelic/com/google/gson/TypeAdapter;->read(Lcom/newrelic/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    .line 73
    .local v2, "instance":Ljava/lang/Object;, "TE;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 75
    .end local v2    # "instance":Ljava/lang/Object;, "TE;"
    :cond_25
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->endArray()V

    .line 76
    iget-object v4, p0, Lcom/newrelic/com/google/gson/internal/bind/ArrayTypeAdapter;->componentType:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 77
    .local v0, "array":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_33
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    .line 78
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v1, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_33
.end method

.method public write(Lcom/newrelic/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 7
    .param p1, "out"    # Lcom/newrelic/com/google/gson/stream/JsonWriter;
    .param p2, "array"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/bind/ArrayTypeAdapter;, "Lcom/newrelic/com/google/gson/internal/bind/ArrayTypeAdapter<TE;>;"
    if-nez p2, :cond_6

    .line 86
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->nullValue()Lcom/newrelic/com/google/gson/stream/JsonWriter;

    .line 96
    :goto_5
    return-void

    .line 90
    :cond_6
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->beginArray()Lcom/newrelic/com/google/gson/stream/JsonWriter;

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .local v1, "length":I
    :goto_e
    if-ge v0, v1, :cond_1c

    .line 92
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 93
    .local v2, "value":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lcom/newrelic/com/google/gson/internal/bind/ArrayTypeAdapter;->componentTypeAdapter:Lcom/newrelic/com/google/gson/TypeAdapter;

    invoke-virtual {v3, p1, v2}, Lcom/newrelic/com/google/gson/TypeAdapter;->write(Lcom/newrelic/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 95
    .end local v2    # "value":Ljava/lang/Object;, "TE;"
    :cond_1c
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->endArray()Lcom/newrelic/com/google/gson/stream/JsonWriter;

    goto :goto_5
.end method
