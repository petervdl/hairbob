.class public Lcom/fasterxml/jackson/databind/util/RootNameLookup;
.super Ljava/lang/Object;
.source "RootNameLookup.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected transient _rootNames:Lcom/fasterxml/jackson/databind/util/LRUMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/LRUMap",
            "<",
            "Lcom/fasterxml/jackson/databind/type/ClassKey;",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/fasterxml/jackson/databind/util/LRUMap;

    const/16 v1, 0x14

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/LRUMap;-><init>(II)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/RootNameLookup;->_rootNames:Lcom/fasterxml/jackson/databind/util/LRUMap;

    .line 23
    return-void
.end method


# virtual methods
.method public findRootName(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/databind/PropertyName;
    .registers 4
    .param p1, "rootType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/PropertyName;"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/util/RootNameLookup;->findRootName(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    return-object v0
.end method

.method public findRootName(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/databind/PropertyName;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/PropertyName;"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "rootType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    new-instance v3, Lcom/fasterxml/jackson/databind/type/ClassKey;

    invoke-direct {v3, p1}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 32
    .local v3, "key":Lcom/fasterxml/jackson/databind/type/ClassKey;
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/util/RootNameLookup;->_rootNames:Lcom/fasterxml/jackson/databind/util/LRUMap;

    invoke-virtual {v6, v3}, Lcom/fasterxml/jackson/databind/util/LRUMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/PropertyName;

    .line 33
    .local v4, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    if-eqz v4, :cond_11

    move-object v5, v4

    .line 46
    .end local v4    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .local v5, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    :goto_10
    return-object v5

    .line 36
    .end local v5    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .restart local v4    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_11
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v1

    .line 37
    .local v1, "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v2

    .line 38
    .local v2, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    .line 39
    .local v0, "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findRootName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v4

    .line 41
    if-eqz v4, :cond_29

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/PropertyName;->hasSimpleName()Z

    move-result v6

    if-nez v6, :cond_32

    .line 43
    :cond_29
    new-instance v4, Lcom/fasterxml/jackson/databind/PropertyName;

    .end local v4    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    .line 45
    .restart local v4    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_32
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/util/RootNameLookup;->_rootNames:Lcom/fasterxml/jackson/databind/util/LRUMap;

    invoke-virtual {v6, v3, v4}, Lcom/fasterxml/jackson/databind/util/LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    .line 46
    .end local v4    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .restart local v5    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    goto :goto_10
.end method
