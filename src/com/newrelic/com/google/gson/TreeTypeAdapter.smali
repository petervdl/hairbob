.class final Lcom/newrelic/com/google/gson/TreeTypeAdapter;
.super Lcom/newrelic/com/google/gson/TypeAdapter;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/com/google/gson/TreeTypeAdapter$1;,
        Lcom/newrelic/com/google/gson/TreeTypeAdapter$SingleTypeFactory;
    }
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

.field private final deserializer:Lcom/newrelic/com/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/newrelic/com/google/gson/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final gson:Lcom/newrelic/com/google/gson/Gson;

.field private final serializer:Lcom/newrelic/com/google/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/newrelic/com/google/gson/JsonSerializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final skipPast:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

.field private final typeToken:Lcom/newrelic/com/google/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/newrelic/com/google/gson/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/newrelic/com/google/gson/JsonSerializer;Lcom/newrelic/com/google/gson/JsonDeserializer;Lcom/newrelic/com/google/gson/Gson;Lcom/newrelic/com/google/gson/reflect/TypeToken;Lcom/newrelic/com/google/gson/TypeAdapterFactory;)V
    .registers 6
    .param p3, "gson"    # Lcom/newrelic/com/google/gson/Gson;
    .param p5, "skipPast"    # Lcom/newrelic/com/google/gson/TypeAdapterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/com/google/gson/JsonSerializer",
            "<TT;>;",
            "Lcom/newrelic/com/google/gson/JsonDeserializer",
            "<TT;>;",
            "Lcom/newrelic/com/google/gson/Gson;",
            "Lcom/newrelic/com/google/gson/reflect/TypeToken",
            "<TT;>;",
            "Lcom/newrelic/com/google/gson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/newrelic/com/google/gson/TreeTypeAdapter;, "Lcom/newrelic/com/google/gson/TreeTypeAdapter<TT;>;"
    .local p1, "serializer":Lcom/newrelic/com/google/gson/JsonSerializer;, "Lcom/newrelic/com/google/gson/JsonSerializer<TT;>;"
    .local p2, "deserializer":Lcom/newrelic/com/google/gson/JsonDeserializer;, "Lcom/newrelic/com/google/gson/JsonDeserializer<TT;>;"
    .local p4, "typeToken":Lcom/newrelic/com/google/gson/reflect/TypeToken;, "Lcom/newrelic/com/google/gson/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/TypeAdapter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/newrelic/com/google/gson/TreeTypeAdapter;->serializer:Lcom/newrelic/com/google/gson/JsonSerializer;

    .line 44
    iput-object p2, p0, Lcom/newrelic/com/google/gson/TreeTypeAdapter;->deserializer:Lcom/newrelic/com/google/gson/JsonDeserializer;

    .line 45
    iput-object p3, p0, Lcom/newrelic/com/google/gson/TreeTypeAdapter;->gson:Lcom/newrelic/com/google/gson/Gson;

    .line 46
    iput-object p4, p0, Lcom/newrelic/com/google/gson/TreeTypeAdapter;->typeToken:Lcom/newrelic/com/google/gson/reflect/TypeToken;

    .line 47
    iput-object p5, p0, Lcom/newrelic/com/google/gson/TreeTypeAdapter;->skipPast:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/newrelic/com/google/gson/JsonSerializer;Lcom/newrelic/com/google/gson/JsonDeserializer;Lcom/newrelic/com/google/gson/Gson;Lcom/newrelic/com/google/gson/reflect/TypeToken;Lcom/newrelic/com/google/gson/TypeAdapterFactory;Lcom/newrelic/com/google/gson/TreeTypeAdapter$1;)V
    .registers 7
    .param p1, "x0"    # Lcom/newrelic/com/google/gson/JsonSerializer;
    .param p2, "x1"    # Lcom/newrelic/com/google/gson/JsonDeserializer;
    .param p3, "x2"    # Lcom/newrelic/com/google/gson/Gson;
    .param p4, "x3"    # Lcom/newrelic/com/google/gson/reflect/TypeToken;
    .param p5, "x4"    # Lcom/newrelic/com/google/gson/TypeAdapterFactory;
    .param p6, "x5"    # Lcom/newrelic/com/google/gson/TreeTypeAdapter$1;

    .prologue
    .line 31
    .local p0, "this":Lcom/newrelic/com/google/gson/TreeTypeAdapter;, "Lcom/newrelic/com/google/gson/TreeTypeAdapter<TT;>;"
    invoke-direct/range {p0 .. p5}, Lcom/newrelic/com/google/gson/TreeTypeAdapter;-><init>(Lcom/newrelic/com/google/gson/JsonSerializer;Lcom/newrelic/com/google/gson/JsonDeserializer;Lcom/newrelic/com/google/gson/Gson;Lcom/newrelic/com/google/gson/reflect/TypeToken;Lcom/newrelic/com/google/gson/TypeAdapterFactory;)V

    return-void
.end method

.method private delegate()Lcom/newrelic/com/google/gson/TypeAdapter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/newrelic/com/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/newrelic/com/google/gson/TreeTypeAdapter;, "Lcom/newrelic/com/google/gson/TreeTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/newrelic/com/google/gson/TreeTypeAdapter;->delegate:Lcom/newrelic/com/google/gson/TypeAdapter;

    .line 76
    .local v0, "d":Lcom/newrelic/com/google/gson/TypeAdapter;, "Lcom/newrelic/com/google/gson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_5

    .end local v0    # "d":Lcom/newrelic/com/google/gson/TypeAdapter;, "Lcom/newrelic/com/google/gson/TypeAdapter<TT;>;"
    :goto_4
    return-object v0

    .restart local v0    # "d":Lcom/newrelic/com/google/gson/TypeAdapter;, "Lcom/newrelic/com/google/gson/TypeAdapter<TT;>;"
    :cond_5
    iget-object v1, p0, Lcom/newrelic/com/google/gson/TreeTypeAdapter;->gson:Lcom/newrelic/com/google/gson/Gson;

    iget-object v2, p0, Lcom/newrelic/com/google/gson/TreeTypeAdapter;->skipPast:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    iget-object v3, p0, Lcom/newrelic/com/google/gson/TreeTypeAdapter;->typeToken:Lcom/newrelic/com/google/gson/reflect/TypeToken;

    invoke-virtual {v1, v2, v3}, Lcom/newrelic/com/google/gson/Gson;->getDelegateAdapter(Lcom/newrelic/com/google/gson/TypeAdapterFactory;Lcom/newrelic/com/google/gson/reflect/TypeToken;)Lcom/newrelic/com/google/gson/TypeAdapter;

    move-result-object v0

    .end local v0    # "d":Lcom/newrelic/com/google/gson/TypeAdapter;, "Lcom/newrelic/com/google/gson/TypeAdapter<TT;>;"
    iput-object v0, p0, Lcom/newrelic/com/google/gson/TreeTypeAdapter;->delegate:Lcom/newrelic/com/google/gson/TypeAdapter;

    goto :goto_4
.end method

.method public static newFactory(Lcom/newrelic/com/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/newrelic/com/google/gson/TypeAdapterFactory;
    .registers 8
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/com/google/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/newrelic/com/google/gson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .local p0, "exactType":Lcom/newrelic/com/google/gson/reflect/TypeToken;, "Lcom/newrelic/com/google/gson/reflect/TypeToken<*>;"
    const/4 v4, 0x0

    .line 85
    new-instance v0, Lcom/newrelic/com/google/gson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/newrelic/com/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/newrelic/com/google/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/newrelic/com/google/gson/TreeTypeAdapter$1;)V

    return-object v0
.end method

.method public static newFactoryWithMatchRawType(Lcom/newrelic/com/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/newrelic/com/google/gson/TypeAdapterFactory;
    .registers 8
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/com/google/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/newrelic/com/google/gson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .local p0, "exactType":Lcom/newrelic/com/google/gson/reflect/TypeToken;, "Lcom/newrelic/com/google/gson/reflect/TypeToken<*>;"
    const/4 v4, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/newrelic/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/newrelic/com/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_15

    const/4 v3, 0x1

    .line 96
    .local v3, "matchRawType":Z
    :goto_c
    new-instance v0, Lcom/newrelic/com/google/gson/TreeTypeAdapter$SingleTypeFactory;

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/newrelic/com/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/newrelic/com/google/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/newrelic/com/google/gson/TreeTypeAdapter$1;)V

    return-object v0

    .line 95
    .end local v3    # "matchRawType":Z
    :cond_15
    const/4 v3, 0x0

    goto :goto_c
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/newrelic/com/google/gson/TypeAdapterFactory;
    .registers 8
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/newrelic/com/google/gson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .local p0, "hierarchyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/newrelic/com/google/gson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/newrelic/com/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/newrelic/com/google/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/newrelic/com/google/gson/TreeTypeAdapter$1;)V

    return-object v0
.end method


# virtual methods
.method public read(Lcom/newrelic/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 6
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
    .line 51
    .local p0, "this":Lcom/newrelic/com/google/gson/TreeTypeAdapter;, "Lcom/newrelic/com/google/gson/TreeTypeAdapter<TT;>;"
    iget-object v1, p0, Lcom/newrelic/com/google/gson/TreeTypeAdapter;->deserializer:Lcom/newrelic/com/google/gson/JsonDeserializer;

    if-nez v1, :cond_d

    .line 52
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/TreeTypeAdapter;->delegate()Lcom/newrelic/com/google/gson/TypeAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/newrelic/com/google/gson/TypeAdapter;->read(Lcom/newrelic/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    .line 58
    :goto_c
    return-object v1

    .line 54
    :cond_d
    invoke-static {p1}, Lcom/newrelic/com/google/gson/internal/Streams;->parse(Lcom/newrelic/com/google/gson/stream/JsonReader;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v0

    .line 55
    .local v0, "value":Lcom/newrelic/com/google/gson/JsonElement;
    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 56
    const/4 v1, 0x0

    goto :goto_c

    .line 58
    :cond_19
    iget-object v1, p0, Lcom/newrelic/com/google/gson/TreeTypeAdapter;->deserializer:Lcom/newrelic/com/google/gson/JsonDeserializer;

    iget-object v2, p0, Lcom/newrelic/com/google/gson/TreeTypeAdapter;->typeToken:Lcom/newrelic/com/google/gson/reflect/TypeToken;

    invoke-virtual {v2}, Lcom/newrelic/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/newrelic/com/google/gson/TreeTypeAdapter;->gson:Lcom/newrelic/com/google/gson/Gson;

    iget-object v3, v3, Lcom/newrelic/com/google/gson/Gson;->deserializationContext:Lcom/newrelic/com/google/gson/JsonDeserializationContext;

    invoke-interface {v1, v0, v2, v3}, Lcom/newrelic/com/google/gson/JsonDeserializer;->deserialize(Lcom/newrelic/com/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/newrelic/com/google/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_c
.end method

.method public write(Lcom/newrelic/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 7
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
    .line 62
    .local p0, "this":Lcom/newrelic/com/google/gson/TreeTypeAdapter;, "Lcom/newrelic/com/google/gson/TreeTypeAdapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/newrelic/com/google/gson/TreeTypeAdapter;->serializer:Lcom/newrelic/com/google/gson/JsonSerializer;

    if-nez v1, :cond_c

    .line 63
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/TreeTypeAdapter;->delegate()Lcom/newrelic/com/google/gson/TypeAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/newrelic/com/google/gson/TypeAdapter;->write(Lcom/newrelic/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 72
    :goto_b
    return-void

    .line 66
    :cond_c
    if-nez p2, :cond_12

    .line 67
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->nullValue()Lcom/newrelic/com/google/gson/stream/JsonWriter;

    goto :goto_b

    .line 70
    :cond_12
    iget-object v1, p0, Lcom/newrelic/com/google/gson/TreeTypeAdapter;->serializer:Lcom/newrelic/com/google/gson/JsonSerializer;

    iget-object v2, p0, Lcom/newrelic/com/google/gson/TreeTypeAdapter;->typeToken:Lcom/newrelic/com/google/gson/reflect/TypeToken;

    invoke-virtual {v2}, Lcom/newrelic/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/newrelic/com/google/gson/TreeTypeAdapter;->gson:Lcom/newrelic/com/google/gson/Gson;

    iget-object v3, v3, Lcom/newrelic/com/google/gson/Gson;->serializationContext:Lcom/newrelic/com/google/gson/JsonSerializationContext;

    invoke-interface {v1, p2, v2, v3}, Lcom/newrelic/com/google/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/newrelic/com/google/gson/JsonSerializationContext;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v0

    .line 71
    .local v0, "tree":Lcom/newrelic/com/google/gson/JsonElement;
    invoke-static {v0, p1}, Lcom/newrelic/com/google/gson/internal/Streams;->write(Lcom/newrelic/com/google/gson/JsonElement;Lcom/newrelic/com/google/gson/stream/JsonWriter;)V

    goto :goto_b
.end method
