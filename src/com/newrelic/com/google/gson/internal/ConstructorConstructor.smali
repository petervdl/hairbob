.class public final Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"


# instance fields
.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/newrelic/com/google/gson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/newrelic/com/google/gson/InstanceCreator",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "instanceCreators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/newrelic/com/google/gson/InstanceCreator<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    .line 49
    return-void
.end method

.method private newDefaultConstructor(Ljava/lang/Class;)Lcom/newrelic/com/google/gson/internal/ObjectConstructor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/newrelic/com/google/gson/internal/ObjectConstructor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 96
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<-TT;>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_11

    .line 97
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 99
    :cond_11
    new-instance v2, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$3;

    invoke-direct {v2, p0, v0}, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$3;-><init>(Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Constructor;)V
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_16} :catch_17

    .line 119
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<-TT;>;"
    :goto_16
    return-object v2

    .line 118
    :catch_17
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const/4 v2, 0x0

    goto :goto_16
.end method

.method private newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/newrelic/com/google/gson/internal/ObjectConstructor;
    .registers 6
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/newrelic/com/google/gson/internal/ObjectConstructor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 131
    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 132
    new-instance v0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$4;

    invoke-direct {v0, p0}, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$4;-><init>(Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;)V

    .line 197
    .end local p1    # "type":Ljava/lang/reflect/Type;
    :goto_15
    return-object v0

    .line 137
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_16
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 138
    new-instance v0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$5;

    invoke-direct {v0, p0, p1}, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$5;-><init>(Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Type;)V

    goto :goto_15

    .line 153
    :cond_24
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 154
    new-instance v0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$6;

    invoke-direct {v0, p0}, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$6;-><init>(Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;)V

    goto :goto_15

    .line 159
    :cond_32
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 160
    new-instance v0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$7;

    invoke-direct {v0, p0}, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$7;-><init>(Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;)V

    goto :goto_15

    .line 166
    :cond_40
    new-instance v0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$8;

    invoke-direct {v0, p0}, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$8;-><init>(Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;)V

    goto :goto_15

    .line 174
    :cond_46
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 175
    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 176
    new-instance v0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$9;

    invoke-direct {v0, p0}, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$9;-><init>(Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;)V

    goto :goto_15

    .line 181
    :cond_5c
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_7f

    const-class v0, Ljava/lang/String;

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/newrelic/com/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/newrelic/com/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/com/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 183
    new-instance v0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$10;

    invoke-direct {v0, p0}, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$10;-><init>(Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;)V

    goto :goto_15

    .line 189
    :cond_7f
    new-instance v0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$11;

    invoke-direct {v0, p0}, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$11;-><init>(Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;)V

    goto :goto_15

    .line 197
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_85
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/newrelic/com/google/gson/internal/ObjectConstructor;
    .registers 4
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/newrelic/com/google/gson/internal/ObjectConstructor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 202
    .local p2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    new-instance v0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$12;

    invoke-direct {v0, p0, p2, p1}, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$12;-><init>(Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public get(Lcom/newrelic/com/google/gson/reflect/TypeToken;)Lcom/newrelic/com/google/gson/internal/ObjectConstructor;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/newrelic/com/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/newrelic/com/google/gson/internal/ObjectConstructor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "typeToken":Lcom/newrelic/com/google/gson/reflect/TypeToken;, "Lcom/newrelic/com/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 53
    .local v4, "type":Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v2

    .line 58
    .local v2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    iget-object v6, p0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/newrelic/com/google/gson/InstanceCreator;

    .line 59
    .local v5, "typeCreator":Lcom/newrelic/com/google/gson/InstanceCreator;, "Lcom/newrelic/com/google/gson/InstanceCreator<TT;>;"
    if-eqz v5, :cond_18

    .line 60
    new-instance v0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$1;

    invoke-direct {v0, p0, v5, v4}, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$1;-><init>(Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;Lcom/newrelic/com/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V

    .line 90
    :cond_17
    :goto_17
    return-object v0

    .line 69
    :cond_18
    iget-object v6, p0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newrelic/com/google/gson/InstanceCreator;

    .line 71
    .local v3, "rawTypeCreator":Lcom/newrelic/com/google/gson/InstanceCreator;, "Lcom/newrelic/com/google/gson/InstanceCreator<TT;>;"
    if-eqz v3, :cond_28

    .line 72
    new-instance v0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$2;

    invoke-direct {v0, p0, v3, v4}, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor$2;-><init>(Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;Lcom/newrelic/com/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V

    goto :goto_17

    .line 79
    :cond_28
    invoke-direct {p0, v2}, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;->newDefaultConstructor(Ljava/lang/Class;)Lcom/newrelic/com/google/gson/internal/ObjectConstructor;

    move-result-object v0

    .line 80
    .local v0, "defaultConstructor":Lcom/newrelic/com/google/gson/internal/ObjectConstructor;, "Lcom/newrelic/com/google/gson/internal/ObjectConstructor<TT;>;"
    if-nez v0, :cond_17

    .line 84
    invoke-direct {p0, v4, v2}, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/newrelic/com/google/gson/internal/ObjectConstructor;

    move-result-object v1

    .line 85
    .local v1, "defaultImplementation":Lcom/newrelic/com/google/gson/internal/ObjectConstructor;, "Lcom/newrelic/com/google/gson/internal/ObjectConstructor<TT;>;"
    if-eqz v1, :cond_36

    move-object v0, v1

    .line 86
    goto :goto_17

    .line 90
    :cond_36
    invoke-direct {p0, v4, v2}, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;->newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/newrelic/com/google/gson/internal/ObjectConstructor;

    move-result-object v0

    goto :goto_17
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/newrelic/com/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
