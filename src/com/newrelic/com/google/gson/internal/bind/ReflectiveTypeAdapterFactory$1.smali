.class Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;
.super Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->createBoundField(Lcom/newrelic/com/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/newrelic/com/google/gson/reflect/TypeToken;ZZ)Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;

.field final typeAdapter:Lcom/newrelic/com/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/newrelic/com/google/gson/TypeAdapter",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic val$context:Lcom/newrelic/com/google/gson/Gson;

.field final synthetic val$field:Ljava/lang/reflect/Field;

.field final synthetic val$fieldType:Lcom/newrelic/com/google/gson/reflect/TypeToken;

.field final synthetic val$isPrimitive:Z


# direct methods
.method constructor <init>(Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLcom/newrelic/com/google/gson/Gson;Lcom/newrelic/com/google/gson/reflect/TypeToken;Ljava/lang/reflect/Field;Z)V
    .registers 11
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Z
    .param p4, "x2"    # Z

    .prologue
    .line 81
    iput-object p1, p0, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->this$0:Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iput-object p5, p0, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcom/newrelic/com/google/gson/Gson;

    iput-object p6, p0, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcom/newrelic/com/google/gson/reflect/TypeToken;

    iput-object p7, p0, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    iput-boolean p8, p0, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isPrimitive:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;-><init>(Ljava/lang/String;ZZ)V

    .line 82
    iget-object v0, p0, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcom/newrelic/com/google/gson/Gson;

    iget-object v1, p0, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcom/newrelic/com/google/gson/reflect/TypeToken;

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/Gson;->getAdapter(Lcom/newrelic/com/google/gson/reflect/TypeToken;)Lcom/newrelic/com/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->typeAdapter:Lcom/newrelic/com/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method read(Lcom/newrelic/com/google/gson/stream/JsonReader;Ljava/lang/Object;)V
    .registers 5
    .param p1, "reader"    # Lcom/newrelic/com/google/gson/stream/JsonReader;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v1, p0, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->typeAdapter:Lcom/newrelic/com/google/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lcom/newrelic/com/google/gson/TypeAdapter;->read(Lcom/newrelic/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    .local v0, "fieldValue":Ljava/lang/Object;
    if-nez v0, :cond_c

    iget-boolean v1, p0, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isPrimitive:Z

    if-nez v1, :cond_11

    .line 95
    :cond_c
    iget-object v1, p0, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    :cond_11
    return-void
.end method

.method write(Lcom/newrelic/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 8
    .param p1, "writer"    # Lcom/newrelic/com/google/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v2, p0, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, "fieldValue":Ljava/lang/Object;
    new-instance v1, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    iget-object v2, p0, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcom/newrelic/com/google/gson/Gson;

    iget-object v3, p0, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->typeAdapter:Lcom/newrelic/com/google/gson/TypeAdapter;

    iget-object v4, p0, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcom/newrelic/com/google/gson/reflect/TypeToken;

    invoke-virtual {v4}, Lcom/newrelic/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/newrelic/com/google/gson/Gson;Lcom/newrelic/com/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    .line 89
    .local v1, "t":Lcom/newrelic/com/google/gson/TypeAdapter;
    invoke-virtual {v1, p1, v0}, Lcom/newrelic/com/google/gson/TypeAdapter;->write(Lcom/newrelic/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 90
    return-void
.end method
