.class public final Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;
.super Lcom/newrelic/com/google/gson/TypeAdapter;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Adapter"
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
.field private final boundFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation
.end field

.field private final constructor:Lcom/newrelic/com/google/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/newrelic/com/google/gson/internal/ObjectConstructor",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/newrelic/com/google/gson/internal/ObjectConstructor;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/com/google/gson/internal/ObjectConstructor",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;, "Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter<TT;>;"
    .local p1, "constructor":Lcom/newrelic/com/google/gson/internal/ObjectConstructor;, "Lcom/newrelic/com/google/gson/internal/ObjectConstructor<TT;>;"
    .local p2, "boundFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;>;"
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/TypeAdapter;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->constructor:Lcom/newrelic/com/google/gson/internal/ObjectConstructor;

    .line 153
    iput-object p2, p0, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    .line 154
    return-void
.end method

.method synthetic constructor <init>(Lcom/newrelic/com/google/gson/internal/ObjectConstructor;Ljava/util/Map;Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/newrelic/com/google/gson/internal/ObjectConstructor;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    .prologue
    .line 147
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;, "Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Lcom/newrelic/com/google/gson/internal/ObjectConstructor;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public read(Lcom/newrelic/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 8
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
    .line 157
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;, "Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter<TT;>;"
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->peek()Lcom/newrelic/com/google/gson/stream/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/newrelic/com/google/gson/stream/JsonToken;->NULL:Lcom/newrelic/com/google/gson/stream/JsonToken;

    if-ne v4, v5, :cond_d

    .line 158
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->nextNull()V

    .line 159
    const/4 v2, 0x0

    .line 181
    :goto_c
    return-object v2

    .line 162
    :cond_d
    iget-object v4, p0, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->constructor:Lcom/newrelic/com/google/gson/internal/ObjectConstructor;

    invoke-interface {v4}, Lcom/newrelic/com/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v2

    .line 165
    .local v2, "instance":Ljava/lang/Object;, "TT;"
    :try_start_13
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->beginObject()V

    .line 166
    :goto_16
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 167
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 169
    .local v1, "field":Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    if-eqz v1, :cond_2e

    iget-boolean v4, v1, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->deserialized:Z

    if-nez v4, :cond_39

    .line 170
    :cond_2e
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->skipValue()V
    :try_end_31
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_31} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_31} :catch_3d

    goto :goto_16

    .line 175
    .end local v1    # "field":Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .end local v3    # "name":Ljava/lang/String;
    :catch_32
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v4, Lcom/newrelic/com/google/gson/JsonSyntaxException;

    invoke-direct {v4, v0}, Lcom/newrelic/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 172
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "field":Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .restart local v3    # "name":Ljava/lang/String;
    :cond_39
    :try_start_39
    invoke-virtual {v1, p1, v2}, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->read(Lcom/newrelic/com/google/gson/stream/JsonReader;Ljava/lang/Object;)V
    :try_end_3c
    .catch Ljava/lang/IllegalStateException; {:try_start_39 .. :try_end_3c} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_16

    .line 177
    .end local v1    # "field":Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .end local v3    # "name":Ljava/lang/String;
    :catch_3d
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 180
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_44
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->endObject()V

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
    .line 185
    .local p0, "this":Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;, "Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_6

    .line 186
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->nullValue()Lcom/newrelic/com/google/gson/stream/JsonWriter;

    .line 202
    :goto_5
    return-void

    .line 190
    :cond_6
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->beginObject()Lcom/newrelic/com/google/gson/stream/JsonWriter;

    .line 192
    :try_start_9
    iget-object v3, p0, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 193
    .local v0, "boundField":Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    iget-boolean v3, v0, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->serialized:Z

    if-eqz v3, :cond_13

    .line 194
    iget-object v3, v0, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/newrelic/com/google/gson/stream/JsonWriter;

    .line 195
    invoke-virtual {v0, p1, p2}, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->write(Lcom/newrelic/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_2b} :catch_2c

    goto :goto_13

    .line 198
    .end local v0    # "boundField":Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_2c
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 201
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_33
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->endObject()Lcom/newrelic/com/google/gson/stream/JsonWriter;

    goto :goto_5
.end method
