.class public final Lcom/newrelic/com/google/gson/JsonObject;
.super Lcom/newrelic/com/google/gson/JsonElement;
.source "JsonObject.java"


# instance fields
.field private final members:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/newrelic/com/google/gson/internal/LinkedTreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/newrelic/com/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/newrelic/com/google/gson/JsonElement;-><init>()V

    .line 33
    new-instance v0, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;-><init>()V

    iput-object v0, p0, Lcom/newrelic/com/google/gson/JsonObject;->members:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    return-void
.end method

.method private createJsonElement(Ljava/lang/Object;)Lcom/newrelic/com/google/gson/JsonElement;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 122
    if-nez p1, :cond_5

    sget-object v0, Lcom/newrelic/com/google/gson/JsonNull;->INSTANCE:Lcom/newrelic/com/google/gson/JsonNull;

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/newrelic/com/google/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Object;)V

    goto :goto_4
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V
    .registers 4
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/newrelic/com/google/gson/JsonElement;

    .prologue
    .line 54
    if-nez p2, :cond_4

    .line 55
    sget-object p2, Lcom/newrelic/com/google/gson/JsonNull;->INSTANCE:Lcom/newrelic/com/google/gson/JsonNull;

    .line 57
    :cond_4
    iget-object v0, p0, Lcom/newrelic/com/google/gson/JsonObject;->members:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1, p2}, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 101
    invoke-direct {p0, p2}, Lcom/newrelic/com/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 102
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Character;)V
    .registers 4
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Character;

    .prologue
    .line 112
    invoke-direct {p0, p2}, Lcom/newrelic/com/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 113
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Number;)V
    .registers 4
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .prologue
    .line 90
    invoke-direct {p0, p2}, Lcom/newrelic/com/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 91
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p2}, Lcom/newrelic/com/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 80
    return-void
.end method

.method bridge synthetic deepCopy()Lcom/newrelic/com/google/gson/JsonElement;
    .registers 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/newrelic/com/google/gson/JsonObject;->deepCopy()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method deepCopy()Lcom/newrelic/com/google/gson/JsonObject;
    .registers 6

    .prologue
    .line 38
    new-instance v2, Lcom/newrelic/com/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/newrelic/com/google/gson/JsonObject;-><init>()V

    .line 39
    .local v2, "result":Lcom/newrelic/com/google/gson/JsonObject;
    iget-object v3, p0, Lcom/newrelic/com/google/gson/JsonObject;->members:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v3}, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 40
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/newrelic/com/google/gson/JsonElement;

    invoke-virtual {v4}, Lcom/newrelic/com/google/gson/JsonElement;->deepCopy()Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    goto :goto_f

    .line 42
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;>;"
    :cond_2f
    return-object v2
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/newrelic/com/google/gson/JsonElement;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/newrelic/com/google/gson/JsonObject;->members:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 187
    if-eq p1, p0, :cond_12

    instance-of v0, p1, Lcom/newrelic/com/google/gson/JsonObject;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/newrelic/com/google/gson/JsonObject;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/newrelic/com/google/gson/JsonObject;->members:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    iget-object v1, p0, Lcom/newrelic/com/google/gson/JsonObject;->members:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;
    .registers 3
    .param p1, "memberName"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/newrelic/com/google/gson/JsonObject;->members:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/com/google/gson/JsonElement;

    return-object v0
.end method

.method public getAsJsonArray(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonArray;
    .registers 3
    .param p1, "memberName"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/newrelic/com/google/gson/JsonObject;->members:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/com/google/gson/JsonArray;

    return-object v0
.end method

.method public getAsJsonObject(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonObject;
    .registers 3
    .param p1, "memberName"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/newrelic/com/google/gson/JsonObject;->members:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/com/google/gson/JsonObject;

    return-object v0
.end method

.method public getAsJsonPrimitive(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonPrimitive;
    .registers 3
    .param p1, "memberName"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/newrelic/com/google/gson/JsonObject;->members:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/com/google/gson/JsonPrimitive;

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3
    .param p1, "memberName"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/newrelic/com/google/gson/JsonObject;->members:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/newrelic/com/google/gson/JsonObject;->members:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;
    .registers 3
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/newrelic/com/google/gson/JsonObject;->members:Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/newrelic/com/google/gson/internal/LinkedTreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/com/google/gson/JsonElement;

    return-object v0
.end method