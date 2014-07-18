.class public final Lcom/newrelic/com/google/gson/Gson;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter;
    }
.end annotation


# static fields
.field static final DEFAULT_JSON_NON_EXECUTABLE:Z = false

.field private static final JSON_NON_EXECUTABLE_PREFIX:Ljava/lang/String; = ")]}\'\n"


# instance fields
.field private final calls:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/newrelic/com/google/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final constructorConstructor:Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;

.field final deserializationContext:Lcom/newrelic/com/google/gson/JsonDeserializationContext;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/com/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final generateNonExecutableJson:Z

.field private final htmlSafe:Z

.field private final prettyPrinting:Z

.field final serializationContext:Lcom/newrelic/com/google/gson/JsonSerializationContext;

.field private final serializeNulls:Z

.field private final typeTokenCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/newrelic/com/google/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/newrelic/com/google/gson/TypeAdapter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 13

    .prologue
    const/4 v4, 0x0

    .line 174
    sget-object v1, Lcom/newrelic/com/google/gson/internal/Excluder;->DEFAULT:Lcom/newrelic/com/google/gson/internal/Excluder;

    sget-object v2, Lcom/newrelic/com/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/newrelic/com/google/gson/FieldNamingPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v10, Lcom/newrelic/com/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/newrelic/com/google/gson/LongSerializationPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lcom/newrelic/com/google/gson/Gson;-><init>(Lcom/newrelic/com/google/gson/internal/Excluder;Lcom/newrelic/com/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/newrelic/com/google/gson/LongSerializationPolicy;Ljava/util/List;)V

    .line 178
    return-void
.end method

.method constructor <init>(Lcom/newrelic/com/google/gson/internal/Excluder;Lcom/newrelic/com/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/newrelic/com/google/gson/LongSerializationPolicy;Ljava/util/List;)V
    .registers 16
    .param p1, "excluder"    # Lcom/newrelic/com/google/gson/internal/Excluder;
    .param p2, "fieldNamingPolicy"    # Lcom/newrelic/com/google/gson/FieldNamingStrategy;
    .param p4, "serializeNulls"    # Z
    .param p5, "complexMapKeySerialization"    # Z
    .param p6, "generateNonExecutableGson"    # Z
    .param p7, "htmlSafe"    # Z
    .param p8, "prettyPrinting"    # Z
    .param p9, "serializeSpecialFloatingPointValues"    # Z
    .param p10, "longSerializationPolicy"    # Lcom/newrelic/com/google/gson/LongSerializationPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/com/google/gson/internal/Excluder;",
            "Lcom/newrelic/com/google/gson/FieldNamingStrategy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/newrelic/com/google/gson/InstanceCreator",
            "<*>;>;ZZZZZZ",
            "Lcom/newrelic/com/google/gson/LongSerializationPolicy;",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/com/google/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p3, "instanceCreators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/newrelic/com/google/gson/InstanceCreator<*>;>;"
    .local p11, "typeAdapterFactories":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/com/google/gson/TypeAdapterFactory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, p0, Lcom/newrelic/com/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/newrelic/com/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    .line 123
    new-instance v1, Lcom/newrelic/com/google/gson/Gson$1;

    invoke-direct {v1, p0}, Lcom/newrelic/com/google/gson/Gson$1;-><init>(Lcom/newrelic/com/google/gson/Gson;)V

    iput-object v1, p0, Lcom/newrelic/com/google/gson/Gson;->deserializationContext:Lcom/newrelic/com/google/gson/JsonDeserializationContext;

    .line 130
    new-instance v1, Lcom/newrelic/com/google/gson/Gson$2;

    invoke-direct {v1, p0}, Lcom/newrelic/com/google/gson/Gson$2;-><init>(Lcom/newrelic/com/google/gson/Gson;)V

    iput-object v1, p0, Lcom/newrelic/com/google/gson/Gson;->serializationContext:Lcom/newrelic/com/google/gson/JsonSerializationContext;

    .line 186
    new-instance v1, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;

    invoke-direct {v1, p3}, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/newrelic/com/google/gson/Gson;->constructorConstructor:Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;

    .line 187
    iput-boolean p4, p0, Lcom/newrelic/com/google/gson/Gson;->serializeNulls:Z

    .line 188
    iput-boolean p6, p0, Lcom/newrelic/com/google/gson/Gson;->generateNonExecutableJson:Z

    .line 189
    iput-boolean p7, p0, Lcom/newrelic/com/google/gson/Gson;->htmlSafe:Z

    .line 190
    iput-boolean p8, p0, Lcom/newrelic/com/google/gson/Gson;->prettyPrinting:Z

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v0, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/com/google/gson/TypeAdapterFactory;>;"
    sget-object v1, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT_FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v1, Lcom/newrelic/com/google/gson/internal/bind/ObjectTypeAdapter;->FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v0, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 205
    sget-object v1, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->STRING_FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v1, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->INTEGER_FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v1, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->BOOLEAN_FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v1, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->BYTE_FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v1, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->SHORT_FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-direct {p0, p10}, Lcom/newrelic/com/google/gson/Gson;->longAdapter(Lcom/newrelic/com/google/gson/LongSerializationPolicy;)Lcom/newrelic/com/google/gson/TypeAdapter;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/newrelic/com/google/gson/TypeAdapter;)Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-direct {p0, p9}, Lcom/newrelic/com/google/gson/Gson;->doubleAdapter(Z)Lcom/newrelic/com/google/gson/TypeAdapter;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/newrelic/com/google/gson/TypeAdapter;)Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-direct {p0, p9}, Lcom/newrelic/com/google/gson/Gson;->floatAdapter(Z)Lcom/newrelic/com/google/gson/TypeAdapter;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/newrelic/com/google/gson/TypeAdapter;)Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v1, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->NUMBER_FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v1, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->CHARACTER_FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v1, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->STRING_BUILDER_FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v1, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->STRING_BUFFER_FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->BIG_DECIMAL:Lcom/newrelic/com/google/gson/TypeAdapter;

    invoke-static {v1, v2}, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/newrelic/com/google/gson/TypeAdapter;)Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->BIG_INTEGER:Lcom/newrelic/com/google/gson/TypeAdapter;

    invoke-static {v1, v2}, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/newrelic/com/google/gson/TypeAdapter;)Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v1, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->URL_FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v1, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->URI_FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v1, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->UUID_FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v1, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->LOCALE_FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v1, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->INET_ADDRESS_FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v1, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->BIT_SET_FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v1, Lcom/newrelic/com/google/gson/internal/bind/DateTypeAdapter;->FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v1, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->CALENDAR_FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v1, Lcom/newrelic/com/google/gson/internal/bind/TimeTypeAdapter;->FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v1, Lcom/newrelic/com/google/gson/internal/bind/SqlDateTypeAdapter;->FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v1, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->TIMESTAMP_FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v1, Lcom/newrelic/com/google/gson/internal/bind/ArrayTypeAdapter;->FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v1, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->ENUM_FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v1, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->CLASS_FACTORY:Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v1, Lcom/newrelic/com/google/gson/internal/bind/CollectionTypeAdapterFactory;

    iget-object v2, p0, Lcom/newrelic/com/google/gson/Gson;->constructorConstructor:Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/internal/bind/CollectionTypeAdapterFactory;-><init>(Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v1, Lcom/newrelic/com/google/gson/internal/bind/MapTypeAdapterFactory;

    iget-object v2, p0, Lcom/newrelic/com/google/gson/Gson;->constructorConstructor:Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;

    invoke-direct {v1, v2, p5}, Lcom/newrelic/com/google/gson/internal/bind/MapTypeAdapterFactory;-><init>(Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v1, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iget-object v2, p0, Lcom/newrelic/com/google/gson/Gson;->constructorConstructor:Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;

    invoke-direct {v1, v2, p2, p1}, Lcom/newrelic/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;-><init>(Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;Lcom/newrelic/com/google/gson/FieldNamingStrategy;Lcom/newrelic/com/google/gson/internal/Excluder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/newrelic/com/google/gson/Gson;->factories:Ljava/util/List;

    .line 244
    return-void
.end method

.method static synthetic access$000(Lcom/newrelic/com/google/gson/Gson;D)V
    .registers 3
    .param p0, "x0"    # Lcom/newrelic/com/google/gson/Gson;
    .param p1, "x1"    # D

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/newrelic/com/google/gson/Gson;->checkValidFloatingPoint(D)V

    return-void
.end method

.method private static assertFullConsumption(Ljava/lang/Object;Lcom/newrelic/com/google/gson/stream/JsonReader;)V
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "reader"    # Lcom/newrelic/com/google/gson/stream/JsonReader;

    .prologue
    .line 775
    if-eqz p0, :cond_21

    :try_start_2
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->peek()Lcom/newrelic/com/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/newrelic/com/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/newrelic/com/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_21

    .line 776
    new-instance v1, Lcom/newrelic/com/google/gson/JsonIOException;

    const-string/jumbo v2, "JSON document was not fully consumed."

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_13
    .catch Lcom/newrelic/com/google/gson/stream/MalformedJsonException; {:try_start_2 .. :try_end_13} :catch_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_1a

    .line 778
    :catch_13
    move-exception v0

    .line 779
    .local v0, "e":Lcom/newrelic/com/google/gson/stream/MalformedJsonException;
    new-instance v1, Lcom/newrelic/com/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/newrelic/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 780
    .end local v0    # "e":Lcom/newrelic/com/google/gson/stream/MalformedJsonException;
    :catch_1a
    move-exception v0

    .line 781
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/newrelic/com/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/newrelic/com/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 783
    .end local v0    # "e":Ljava/io/IOException;
    :cond_21
    return-void
.end method

.method private checkValidFloatingPoint(D)V
    .registers 6
    .param p1, "value"    # D

    .prologue
    .line 295
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 296
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_2d
    return-void
.end method

.method private doubleAdapter(Z)Lcom/newrelic/com/google/gson/TypeAdapter;
    .registers 3
    .param p1, "serializeSpecialFloatingPointValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/newrelic/com/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    if-eqz p1, :cond_5

    .line 248
    sget-object v0, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->DOUBLE:Lcom/newrelic/com/google/gson/TypeAdapter;

    .line 250
    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/newrelic/com/google/gson/Gson$3;

    invoke-direct {v0, p0}, Lcom/newrelic/com/google/gson/Gson$3;-><init>(Lcom/newrelic/com/google/gson/Gson;)V

    goto :goto_4
.end method

.method private floatAdapter(Z)Lcom/newrelic/com/google/gson/TypeAdapter;
    .registers 3
    .param p1, "serializeSpecialFloatingPointValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/newrelic/com/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    if-eqz p1, :cond_5

    .line 272
    sget-object v0, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->FLOAT:Lcom/newrelic/com/google/gson/TypeAdapter;

    .line 274
    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/newrelic/com/google/gson/Gson$4;

    invoke-direct {v0, p0}, Lcom/newrelic/com/google/gson/Gson$4;-><init>(Lcom/newrelic/com/google/gson/Gson;)V

    goto :goto_4
.end method

.method private longAdapter(Lcom/newrelic/com/google/gson/LongSerializationPolicy;)Lcom/newrelic/com/google/gson/TypeAdapter;
    .registers 3
    .param p1, "longSerializationPolicy"    # Lcom/newrelic/com/google/gson/LongSerializationPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/com/google/gson/LongSerializationPolicy;",
            ")",
            "Lcom/newrelic/com/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    sget-object v0, Lcom/newrelic/com/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/newrelic/com/google/gson/LongSerializationPolicy;

    if-ne p1, v0, :cond_7

    .line 304
    sget-object v0, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->LONG:Lcom/newrelic/com/google/gson/TypeAdapter;

    .line 306
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Lcom/newrelic/com/google/gson/Gson$5;

    invoke-direct {v0, p0}, Lcom/newrelic/com/google/gson/Gson$5;-><init>(Lcom/newrelic/com/google/gson/Gson;)V

    goto :goto_6
.end method

.method private newJsonWriter(Ljava/io/Writer;)Lcom/newrelic/com/google/gson/stream/JsonWriter;
    .registers 4
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 638
    iget-boolean v1, p0, Lcom/newrelic/com/google/gson/Gson;->generateNonExecutableJson:Z

    if-eqz v1, :cond_a

    .line 639
    const-string/jumbo v1, ")]}\'\n"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 641
    :cond_a
    new-instance v0, Lcom/newrelic/com/google/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lcom/newrelic/com/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 642
    .local v0, "jsonWriter":Lcom/newrelic/com/google/gson/stream/JsonWriter;
    iget-boolean v1, p0, Lcom/newrelic/com/google/gson/Gson;->prettyPrinting:Z

    if-eqz v1, :cond_19

    .line 643
    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 645
    :cond_19
    iget-boolean v1, p0, Lcom/newrelic/com/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 646
    return-object v0
.end method


# virtual methods
.method public fromJson(Lcom/newrelic/com/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .param p1, "json"    # Lcom/newrelic/com/google/gson/JsonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/newrelic/com/google/gson/JsonElement;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 841
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/newrelic/com/google/gson/Gson;->fromJson(Lcom/newrelic/com/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 842
    .local v0, "object":Ljava/lang/Object;
    invoke-static {p2}, Lcom/newrelic/com/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public fromJson(Lcom/newrelic/com/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .param p1, "json"    # Lcom/newrelic/com/google/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/newrelic/com/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 865
    if-nez p1, :cond_4

    .line 866
    const/4 v0, 0x0

    .line 868
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/newrelic/com/google/gson/internal/bind/JsonTreeReader;

    invoke-direct {v0, p1}, Lcom/newrelic/com/google/gson/internal/bind/JsonTreeReader;-><init>(Lcom/newrelic/com/google/gson/JsonElement;)V

    invoke-virtual {p0, v0, p2}, Lcom/newrelic/com/google/gson/Gson;->fromJson(Lcom/newrelic/com/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public fromJson(Lcom/newrelic/com/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 10
    .param p1, "reader"    # Lcom/newrelic/com/google/gson/stream/JsonReader;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/newrelic/com/google/gson/stream/JsonReader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/com/google/gson/JsonIOException;,
            Lcom/newrelic/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 795
    const/4 v1, 0x1

    .line 796
    .local v1, "isEmpty":Z
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->isLenient()Z

    move-result v3

    .line 797
    .local v3, "oldLenient":Z
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lcom/newrelic/com/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 799
    :try_start_9
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;->peek()Lcom/newrelic/com/google/gson/stream/JsonToken;

    .line 800
    const/4 v1, 0x0

    .line 801
    invoke-static {p2}, Lcom/newrelic/com/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/newrelic/com/google/gson/reflect/TypeToken;

    move-result-object v5

    .line 802
    .local v5, "typeToken":Lcom/newrelic/com/google/gson/reflect/TypeToken;, "Lcom/newrelic/com/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p0, v5}, Lcom/newrelic/com/google/gson/Gson;->getAdapter(Lcom/newrelic/com/google/gson/reflect/TypeToken;)Lcom/newrelic/com/google/gson/TypeAdapter;

    move-result-object v4

    .line 803
    .local v4, "typeAdapter":Lcom/newrelic/com/google/gson/TypeAdapter;, "Lcom/newrelic/com/google/gson/TypeAdapter<TT;>;"
    invoke-virtual {v4, p1}, Lcom/newrelic/com/google/gson/TypeAdapter;->read(Lcom/newrelic/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_18} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_18} :catch_30
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_18} :catch_37
    .catchall {:try_start_9 .. :try_end_18} :catchall_2b

    move-result-object v2

    .line 820
    .local v2, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, v3}, Lcom/newrelic/com/google/gson/stream/JsonReader;->setLenient(Z)V

    .end local v2    # "object":Ljava/lang/Object;, "TT;"
    .end local v4    # "typeAdapter":Lcom/newrelic/com/google/gson/TypeAdapter;, "Lcom/newrelic/com/google/gson/TypeAdapter<TT;>;"
    .end local v5    # "typeToken":Lcom/newrelic/com/google/gson/reflect/TypeToken;, "Lcom/newrelic/com/google/gson/reflect/TypeToken<TT;>;"
    :goto_1c
    return-object v2

    .line 805
    :catch_1d
    move-exception v0

    .line 810
    .local v0, "e":Ljava/io/EOFException;
    if-eqz v1, :cond_25

    .line 811
    const/4 v2, 0x0

    .line 820
    invoke-virtual {p1, v3}, Lcom/newrelic/com/google/gson/stream/JsonReader;->setLenient(Z)V

    goto :goto_1c

    .line 813
    :cond_25
    :try_start_25
    new-instance v6, Lcom/newrelic/com/google/gson/JsonSyntaxException;

    invoke-direct {v6, v0}, Lcom/newrelic/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_2b

    .line 820
    .end local v0    # "e":Ljava/io/EOFException;
    :catchall_2b
    move-exception v6

    invoke-virtual {p1, v3}, Lcom/newrelic/com/google/gson/stream/JsonReader;->setLenient(Z)V

    throw v6

    .line 814
    :catch_30
    move-exception v0

    .line 815
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_31
    new-instance v6, Lcom/newrelic/com/google/gson/JsonSyntaxException;

    invoke-direct {v6, v0}, Lcom/newrelic/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 816
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_37
    move-exception v0

    .line 818
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Lcom/newrelic/com/google/gson/JsonSyntaxException;

    invoke-direct {v6, v0}, Lcom/newrelic/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_3e
    .catchall {:try_start_31 .. :try_end_3e} :catchall_2b
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .param p1, "json"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/com/google/gson/JsonSyntaxException;,
            Lcom/newrelic/com/google/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 740
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/newrelic/com/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 741
    .local v0, "jsonReader":Lcom/newrelic/com/google/gson/stream/JsonReader;
    invoke-virtual {p0, v0, p2}, Lcom/newrelic/com/google/gson/Gson;->fromJson(Lcom/newrelic/com/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 742
    .local v1, "object":Ljava/lang/Object;
    invoke-static {v1, v0}, Lcom/newrelic/com/google/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/newrelic/com/google/gson/stream/JsonReader;)V

    .line 743
    invoke-static {p2}, Lcom/newrelic/com/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 5
    .param p1, "json"    # Ljava/io/Reader;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/com/google/gson/JsonIOException;,
            Lcom/newrelic/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 767
    new-instance v0, Lcom/newrelic/com/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/newrelic/com/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 768
    .local v0, "jsonReader":Lcom/newrelic/com/google/gson/stream/JsonReader;
    invoke-virtual {p0, v0, p2}, Lcom/newrelic/com/google/gson/Gson;->fromJson(Lcom/newrelic/com/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 769
    .local v1, "object":Ljava/lang/Object;, "TT;"
    invoke-static {v1, v0}, Lcom/newrelic/com/google/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/newrelic/com/google/gson/stream/JsonReader;)V

    .line 770
    return-object v1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 689
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/newrelic/com/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 690
    .local v0, "object":Ljava/lang/Object;
    invoke-static {p2}, Lcom/newrelic/com/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 5
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 713
    if-nez p1, :cond_4

    .line 714
    const/4 v1, 0x0

    .line 718
    :goto_3
    return-object v1

    .line 716
    :cond_4
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 717
    .local v0, "reader":Ljava/io/StringReader;
    invoke-virtual {p0, v0, p2}, Lcom/newrelic/com/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 718
    .local v1, "target":Ljava/lang/Object;, "TT;"
    goto :goto_3
.end method

.method public getAdapter(Lcom/newrelic/com/google/gson/reflect/TypeToken;)Lcom/newrelic/com/google/gson/TypeAdapter;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/newrelic/com/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/newrelic/com/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "type":Lcom/newrelic/com/google/gson/reflect/TypeToken;, "Lcom/newrelic/com/google/gson/reflect/TypeToken<TT;>;"
    iget-object v8, p0, Lcom/newrelic/com/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/com/google/gson/TypeAdapter;

    .line 333
    .local v0, "cached":Lcom/newrelic/com/google/gson/TypeAdapter;, "Lcom/newrelic/com/google/gson/TypeAdapter<*>;"
    if-eqz v0, :cond_b

    .line 368
    .end local v0    # "cached":Lcom/newrelic/com/google/gson/TypeAdapter;, "Lcom/newrelic/com/google/gson/TypeAdapter<*>;"
    :goto_a
    return-object v0

    .line 337
    .restart local v0    # "cached":Lcom/newrelic/com/google/gson/TypeAdapter;, "Lcom/newrelic/com/google/gson/TypeAdapter<*>;"
    :cond_b
    iget-object v8, p0, Lcom/newrelic/com/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 338
    .local v7, "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/newrelic/com/google/gson/reflect/TypeToken<*>;Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter<*>;>;"
    const/4 v6, 0x0

    .line 339
    .local v6, "requiresThreadLocalCleanup":Z
    if-nez v7, :cond_21

    .line 340
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/newrelic/com/google/gson/reflect/TypeToken<*>;Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter<*>;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 341
    .restart local v7    # "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/newrelic/com/google/gson/reflect/TypeToken<*>;Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter<*>;>;"
    iget-object v8, p0, Lcom/newrelic/com/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v8, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 342
    const/4 v6, 0x1

    .line 346
    :cond_21
    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter;

    .line 347
    .local v5, "ongoingCall":Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter;, "Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter<TT;>;"
    if-eqz v5, :cond_2b

    move-object v0, v5

    .line 348
    goto :goto_a

    .line 352
    :cond_2b
    :try_start_2b
    new-instance v1, Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter;

    invoke-direct {v1}, Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter;-><init>()V

    .line 353
    .local v1, "call":Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter;, "Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter<TT;>;"
    invoke-interface {v7, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v8, p0, Lcom/newrelic/com/google/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    .line 356
    .local v3, "factory":Lcom/newrelic/com/google/gson/TypeAdapterFactory;
    invoke-interface {v3, p0, p1}, Lcom/newrelic/com/google/gson/TypeAdapterFactory;->create(Lcom/newrelic/com/google/gson/Gson;Lcom/newrelic/com/google/gson/reflect/TypeToken;)Lcom/newrelic/com/google/gson/TypeAdapter;

    move-result-object v2

    .line 357
    .local v2, "candidate":Lcom/newrelic/com/google/gson/TypeAdapter;, "Lcom/newrelic/com/google/gson/TypeAdapter<TT;>;"
    if-eqz v2, :cond_39

    .line 358
    invoke-virtual {v1, v2}, Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter;->setDelegate(Lcom/newrelic/com/google/gson/TypeAdapter;)V

    .line 359
    iget-object v8, p0, Lcom/newrelic/com/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v8, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_2b .. :try_end_53} :catchall_79

    .line 365
    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    if-eqz v6, :cond_5d

    .line 368
    iget-object v8, p0, Lcom/newrelic/com/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5d
    move-object v0, v2

    goto :goto_a

    .line 363
    .end local v2    # "candidate":Lcom/newrelic/com/google/gson/TypeAdapter;, "Lcom/newrelic/com/google/gson/TypeAdapter<TT;>;"
    .end local v3    # "factory":Lcom/newrelic/com/google/gson/TypeAdapterFactory;
    :cond_5f
    :try_start_5f
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "GSON cannot handle "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_79
    .catchall {:try_start_5f .. :try_end_79} :catchall_79

    .line 365
    .end local v1    # "call":Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter;, "Lcom/newrelic/com/google/gson/Gson$FutureTypeAdapter<TT;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_79
    move-exception v8

    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    if-eqz v6, :cond_84

    .line 368
    iget-object v9, p0, Lcom/newrelic/com/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v9}, Ljava/lang/ThreadLocal;->remove()V

    :cond_84
    throw v8
.end method

.method public getAdapter(Ljava/lang/Class;)Lcom/newrelic/com/google/gson/TypeAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/newrelic/com/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 445
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/newrelic/com/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/newrelic/com/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/gson/Gson;->getAdapter(Lcom/newrelic/com/google/gson/reflect/TypeToken;)Lcom/newrelic/com/google/gson/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getDelegateAdapter(Lcom/newrelic/com/google/gson/TypeAdapterFactory;Lcom/newrelic/com/google/gson/reflect/TypeToken;)Lcom/newrelic/com/google/gson/TypeAdapter;
    .registers 10
    .param p1, "skipPast"    # Lcom/newrelic/com/google/gson/TypeAdapterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/newrelic/com/google/gson/TypeAdapterFactory;",
            "Lcom/newrelic/com/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/newrelic/com/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 420
    .local p2, "type":Lcom/newrelic/com/google/gson/reflect/TypeToken;, "Lcom/newrelic/com/google/gson/reflect/TypeToken<TT;>;"
    const/4 v3, 0x0

    .line 422
    .local v3, "skipPastFound":Z
    iget-object v4, p0, Lcom/newrelic/com/google/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/com/google/gson/TypeAdapterFactory;

    .line 423
    .local v1, "factory":Lcom/newrelic/com/google/gson/TypeAdapterFactory;
    if-nez v3, :cond_19

    .line 424
    if-ne v1, p1, :cond_7

    .line 425
    const/4 v3, 0x1

    goto :goto_7

    .line 430
    :cond_19
    invoke-interface {v1, p0, p2}, Lcom/newrelic/com/google/gson/TypeAdapterFactory;->create(Lcom/newrelic/com/google/gson/Gson;Lcom/newrelic/com/google/gson/reflect/TypeToken;)Lcom/newrelic/com/google/gson/TypeAdapter;

    move-result-object v0

    .line 431
    .local v0, "candidate":Lcom/newrelic/com/google/gson/TypeAdapter;, "Lcom/newrelic/com/google/gson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_7

    .line 432
    return-object v0

    .line 435
    .end local v0    # "candidate":Lcom/newrelic/com/google/gson/TypeAdapter;, "Lcom/newrelic/com/google/gson/TypeAdapter<TT;>;"
    .end local v1    # "factory":Lcom/newrelic/com/google/gson/TypeAdapterFactory;
    :cond_20
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "GSON cannot serialize "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public toJson(Lcom/newrelic/com/google/gson/JsonElement;)Ljava/lang/String;
    .registers 4
    .param p1, "jsonElement"    # Lcom/newrelic/com/google/gson/JsonElement;

    .prologue
    .line 611
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 612
    .local v0, "writer":Ljava/io/StringWriter;
    invoke-virtual {p0, p1, v0}, Lcom/newrelic/com/google/gson/Gson;->toJson(Lcom/newrelic/com/google/gson/JsonElement;Ljava/lang/Appendable;)V

    .line 613
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "src"    # Ljava/lang/Object;

    .prologue
    .line 504
    if-nez p1, :cond_9

    .line 505
    sget-object v0, Lcom/newrelic/com/google/gson/JsonNull;->INSTANCE:Lcom/newrelic/com/google/gson/JsonNull;

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/gson/Gson;->toJson(Lcom/newrelic/com/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    .line 507
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/newrelic/com/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 5
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;

    .prologue
    .line 526
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 527
    .local v0, "writer":Ljava/io/StringWriter;
    invoke-virtual {p0, p1, p2, v0}, Lcom/newrelic/com/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 528
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Lcom/newrelic/com/google/gson/JsonElement;Lcom/newrelic/com/google/gson/stream/JsonWriter;)V
    .registers 8
    .param p1, "jsonElement"    # Lcom/newrelic/com/google/gson/JsonElement;
    .param p2, "writer"    # Lcom/newrelic/com/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/com/google/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 654
    invoke-virtual {p2}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->isLenient()Z

    move-result v2

    .line 655
    .local v2, "oldLenient":Z
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 656
    invoke-virtual {p2}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v1

    .line 657
    .local v1, "oldHtmlSafe":Z
    iget-boolean v4, p0, Lcom/newrelic/com/google/gson/Gson;->htmlSafe:Z

    invoke-virtual {p2, v4}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 658
    invoke-virtual {p2}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v3

    .line 659
    .local v3, "oldSerializeNulls":Z
    iget-boolean v4, p0, Lcom/newrelic/com/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {p2, v4}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 661
    :try_start_1a
    invoke-static {p1, p2}, Lcom/newrelic/com/google/gson/internal/Streams;->write(Lcom/newrelic/com/google/gson/JsonElement;Lcom/newrelic/com/google/gson/stream/JsonWriter;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_27
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2e

    .line 665
    invoke-virtual {p2, v2}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 666
    invoke-virtual {p2, v1}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 667
    invoke-virtual {p2, v3}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 669
    return-void

    .line 662
    :catch_27
    move-exception v0

    .line 663
    .local v0, "e":Ljava/io/IOException;
    :try_start_28
    new-instance v4, Lcom/newrelic/com/google/gson/JsonIOException;

    invoke-direct {v4, v0}, Lcom/newrelic/com/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_2e

    .line 665
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2e
    move-exception v4

    invoke-virtual {p2, v2}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 666
    invoke-virtual {p2, v1}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 667
    invoke-virtual {p2, v3}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v4
.end method

.method public toJson(Lcom/newrelic/com/google/gson/JsonElement;Ljava/lang/Appendable;)V
    .registers 6
    .param p1, "jsonElement"    # Lcom/newrelic/com/google/gson/JsonElement;
    .param p2, "writer"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/com/google/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 626
    :try_start_0
    invoke-static {p2}, Lcom/newrelic/com/google/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/newrelic/com/google/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/newrelic/com/google/gson/stream/JsonWriter;

    move-result-object v1

    .line 627
    .local v1, "jsonWriter":Lcom/newrelic/com/google/gson/stream/JsonWriter;
    invoke-virtual {p0, p1, v1}, Lcom/newrelic/com/google/gson/Gson;->toJson(Lcom/newrelic/com/google/gson/JsonElement;Lcom/newrelic/com/google/gson/stream/JsonWriter;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 631
    return-void

    .line 628
    .end local v1    # "jsonWriter":Lcom/newrelic/com/google/gson/stream/JsonWriter;
    :catch_c
    move-exception v0

    .line 629
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .registers 4
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "writer"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/com/google/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 546
    if-eqz p1, :cond_a

    .line 547
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/newrelic/com/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 551
    :goto_9
    return-void

    .line 549
    :cond_a
    sget-object v0, Lcom/newrelic/com/google/gson/JsonNull;->INSTANCE:Lcom/newrelic/com/google/gson/JsonNull;

    invoke-virtual {p0, v0, p2}, Lcom/newrelic/com/google/gson/Gson;->toJson(Lcom/newrelic/com/google/gson/JsonElement;Ljava/lang/Appendable;)V

    goto :goto_9
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/newrelic/com/google/gson/stream/JsonWriter;)V
    .registers 10
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "writer"    # Lcom/newrelic/com/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/com/google/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 585
    invoke-static {p2}, Lcom/newrelic/com/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/newrelic/com/google/gson/reflect/TypeToken;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/newrelic/com/google/gson/Gson;->getAdapter(Lcom/newrelic/com/google/gson/reflect/TypeToken;)Lcom/newrelic/com/google/gson/TypeAdapter;

    move-result-object v0

    .line 586
    .local v0, "adapter":Lcom/newrelic/com/google/gson/TypeAdapter;, "Lcom/newrelic/com/google/gson/TypeAdapter<*>;"
    invoke-virtual {p3}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->isLenient()Z

    move-result v3

    .line 587
    .local v3, "oldLenient":Z
    const/4 v5, 0x1

    invoke-virtual {p3, v5}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 588
    invoke-virtual {p3}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v2

    .line 589
    .local v2, "oldHtmlSafe":Z
    iget-boolean v5, p0, Lcom/newrelic/com/google/gson/Gson;->htmlSafe:Z

    invoke-virtual {p3, v5}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 590
    invoke-virtual {p3}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v4

    .line 591
    .local v4, "oldSerializeNulls":Z
    iget-boolean v5, p0, Lcom/newrelic/com/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {p3, v5}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 593
    :try_start_22
    invoke-virtual {v0, p3, p1}, Lcom/newrelic/com/google/gson/TypeAdapter;->write(Lcom/newrelic/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_2f
    .catchall {:try_start_22 .. :try_end_25} :catchall_36

    .line 597
    invoke-virtual {p3, v3}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 598
    invoke-virtual {p3, v2}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 599
    invoke-virtual {p3, v4}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 601
    return-void

    .line 594
    :catch_2f
    move-exception v1

    .line 595
    .local v1, "e":Ljava/io/IOException;
    :try_start_30
    new-instance v5, Lcom/newrelic/com/google/gson/JsonIOException;

    invoke-direct {v5, v1}, Lcom/newrelic/com/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_36

    .line 597
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_36
    move-exception v5

    invoke-virtual {p3, v3}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 598
    invoke-virtual {p3, v2}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 599
    invoke-virtual {p3, v4}, Lcom/newrelic/com/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v5
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .registers 7
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "writer"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/com/google/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 571
    :try_start_0
    invoke-static {p3}, Lcom/newrelic/com/google/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/newrelic/com/google/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/newrelic/com/google/gson/stream/JsonWriter;

    move-result-object v1

    .line 572
    .local v1, "jsonWriter":Lcom/newrelic/com/google/gson/stream/JsonWriter;
    invoke-virtual {p0, p1, p2, v1}, Lcom/newrelic/com/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/newrelic/com/google/gson/stream/JsonWriter;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 576
    return-void

    .line 573
    .end local v1    # "jsonWriter":Lcom/newrelic/com/google/gson/stream/JsonWriter;
    :catch_c
    move-exception v0

    .line 574
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/newrelic/com/google/gson/JsonIOException;

    invoke-direct {v2, v0}, Lcom/newrelic/com/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toJsonTree(Ljava/lang/Object;)Lcom/newrelic/com/google/gson/JsonElement;
    .registers 3
    .param p1, "src"    # Ljava/lang/Object;

    .prologue
    .line 462
    if-nez p1, :cond_5

    .line 463
    sget-object v0, Lcom/newrelic/com/google/gson/JsonNull;->INSTANCE:Lcom/newrelic/com/google/gson/JsonNull;

    .line 465
    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/newrelic/com/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v0

    goto :goto_4
.end method

.method public toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/newrelic/com/google/gson/JsonElement;
    .registers 5
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;

    .prologue
    .line 485
    new-instance v0, Lcom/newrelic/com/google/gson/internal/bind/JsonTreeWriter;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/internal/bind/JsonTreeWriter;-><init>()V

    .line 486
    .local v0, "writer":Lcom/newrelic/com/google/gson/internal/bind/JsonTreeWriter;
    invoke-virtual {p0, p1, p2, v0}, Lcom/newrelic/com/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/newrelic/com/google/gson/stream/JsonWriter;)V

    .line 487
    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/internal/bind/JsonTreeWriter;->get()Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/newrelic/com/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/com/google/gson/Gson;->factories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/com/google/gson/Gson;->constructorConstructor:Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
