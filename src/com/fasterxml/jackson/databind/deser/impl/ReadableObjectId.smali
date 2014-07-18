.class public Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
.super Ljava/lang/Object;
.source "ReadableObjectId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;
    }
.end annotation


# instance fields
.field private final _key:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

.field private _referringProperties:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;",
            ">;"
        }
    .end annotation
.end field

.field private _resolver:Lcom/fasterxml/jackson/annotation/ObjectIdResolver;

.field public final id:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public item:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;)V
    .registers 3
    .param p1, "key"    # Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->_key:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    .line 42
    iget-object v0, p1, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->key:Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->id:Ljava/lang/Object;

    .line 43
    return-void
.end method


# virtual methods
.method public appendReferring(Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;)V
    .registers 3
    .param p1, "currentReferring"    # Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->_referringProperties:Ljava/util/LinkedList;

    if-nez v0, :cond_b

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->_referringProperties:Ljava/util/LinkedList;

    .line 57
    :cond_b
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->_referringProperties:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public bindItem(Ljava/lang/Object;)V
    .registers 5
    .param p1, "ob"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->_resolver:Lcom/fasterxml/jackson/annotation/ObjectIdResolver;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->_key:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    invoke-interface {v1, v2, p1}, Lcom/fasterxml/jackson/annotation/ObjectIdResolver;->bindItem(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;Ljava/lang/Object;)V

    .line 67
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->item:Ljava/lang/Object;

    .line 68
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->_referringProperties:Ljava/util/LinkedList;

    if-eqz v1, :cond_28

    .line 69
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->_referringProperties:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 70
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->_referringProperties:Ljava/util/LinkedList;

    .line 71
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->id:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;->handleResolvedForwardReference(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_16

    .line 75
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;>;"
    :cond_28
    return-void
.end method

.method public getKey()Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->_key:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    return-object v0
.end method

.method public hasReferringProperties()Z
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->_referringProperties:Ljava/util/LinkedList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->_referringProperties:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public referringProperties()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->_referringProperties:Ljava/util/LinkedList;

    if-nez v0, :cond_d

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 89
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->_referringProperties:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_c
.end method

.method public resolve()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->_resolver:Lcom/fasterxml/jackson/annotation/ObjectIdResolver;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->_key:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/annotation/ObjectIdResolver;->resolveId(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public setResolver(Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)V
    .registers 2
    .param p1, "resolver"    # Lcom/fasterxml/jackson/annotation/ObjectIdResolver;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->_resolver:Lcom/fasterxml/jackson/annotation/ObjectIdResolver;

    .line 47
    return-void
.end method
