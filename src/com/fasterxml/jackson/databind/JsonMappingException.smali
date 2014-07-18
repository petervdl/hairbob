.class public Lcom/fasterxml/jackson/databind/JsonMappingException;
.super Lcom/fasterxml/jackson/core/JsonProcessingException;
.source "JsonMappingException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;
    }
.end annotation


# instance fields
.field protected _path:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "loc"    # Lcom/fasterxml/jackson/core/JsonLocation;

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "loc"    # Lcom/fasterxml/jackson/core/JsonLocation;
    .param p3, "rootCause"    # Ljava/lang/Throwable;

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "rootCause"    # Ljava/lang/Throwable;

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    return-void
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .registers 4
    .param p0, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v1, Lcom/fasterxml/jackson/databind/JsonMappingException;

    if-nez p0, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-direct {v1, p1, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    return-object v1

    :cond_9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    goto :goto_5
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .registers 5
    .param p0, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "problem"    # Ljava/lang/Throwable;

    .prologue
    .line 170
    new-instance v1, Lcom/fasterxml/jackson/databind/JsonMappingException;

    if-nez p0, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-direct {v1, p1, v0, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V

    return-object v1

    :cond_9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    goto :goto_5
.end method

.method public static wrapWithPath(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .registers 6
    .param p0, "src"    # Ljava/lang/Throwable;
    .param p1, "ref"    # Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;

    .prologue
    .line 222
    instance-of v2, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    if-eqz v2, :cond_b

    move-object v0, p0

    .line 223
    check-cast v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    .line 234
    .local v0, "jme":Lcom/fasterxml/jackson/databind/JsonMappingException;
    :goto_7
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->prependPath(Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)V

    .line 235
    return-object v0

    .line 225
    .end local v0    # "jme":Lcom/fasterxml/jackson/databind/JsonMappingException;
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "msg":Ljava/lang/String;
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3a

    .line 230
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    :cond_3a
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V

    .restart local v0    # "jme":Lcom/fasterxml/jackson/databind/JsonMappingException;
    goto :goto_7
.end method

.method public static wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .registers 4
    .param p0, "src"    # Ljava/lang/Throwable;
    .param p1, "refFrom"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 211
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public static wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .registers 4
    .param p0, "src"    # Ljava/lang/Throwable;
    .param p1, "refFrom"    # Ljava/lang/Object;
    .param p2, "refFieldName"    # Ljava/lang/String;

    .prologue
    .line 197
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected _appendPathDesc(Ljava/lang/StringBuilder;)V
    .registers 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 359
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_path:Ljava/util/LinkedList;

    if-nez v1, :cond_5

    .line 369
    :cond_4
    return-void

    .line 362
    :cond_5
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_path:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 363
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;>;"
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 364
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 366
    const-string/jumbo v1, "->"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b
.end method

.method protected _buildMessage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 329
    invoke-super {p0}, Lcom/fasterxml/jackson/core/JsonProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_path:Ljava/util/LinkedList;

    if-nez v2, :cond_9

    .line 342
    .end local v0    # "msg":Ljava/lang/String;
    :goto_8
    return-object v0

    .line 333
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_9
    if-nez v0, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_10
    const-string/jumbo v2, " (through reference chain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->getPathReference(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 341
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 333
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->_buildMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->_buildMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathReference(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->_appendPathDesc(Ljava/lang/StringBuilder;)V

    .line 268
    return-object p1
.end method

.method public prependPath(Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)V
    .registers 4
    .param p1, "r"    # Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_path:Ljava/util/LinkedList;

    if-nez v0, :cond_b

    .line 293
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_path:Ljava/util/LinkedList;

    .line 299
    :cond_b
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_path:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_1a

    .line 300
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_path:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 302
    :cond_1a
    return-void
.end method

.method public prependPath(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .param p1, "referrer"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 277
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    .local v0, "ref":Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->prependPath(Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)V

    .line 279
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
