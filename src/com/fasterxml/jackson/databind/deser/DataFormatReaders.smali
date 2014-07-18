.class public Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
.super Ljava/lang/Object;
.source "DataFormatReaders.java"


# instance fields
.field protected final _maxInputLookahead:I

.field protected final _minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

.field protected final _optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

.field protected final _readers:[Lcom/fasterxml/jackson/databind/ObjectReader;


# direct methods
.method private constructor <init>([Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V
    .registers 5
    .param p1, "detectors"    # [Lcom/fasterxml/jackson/databind/ObjectReader;
    .param p2, "optMatch"    # Lcom/fasterxml/jackson/core/format/MatchStrength;
    .param p3, "minMatch"    # Lcom/fasterxml/jackson/core/format/MatchStrength;
    .param p4, "maxInputLookahead"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 78
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    .line 79
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    .line 80
    iput p4, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    .line 81
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    array-length v1, v3

    .line 198
    .local v1, "len":I
    if-lez v1, :cond_3a

    .line 199
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ObjectReader;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_20
    if-ge v0, v1, :cond_3a

    .line 201
    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ObjectReader;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 205
    .end local v0    # "i":I
    :cond_3a
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public with(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
    .registers 9
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .prologue
    .line 123
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    array-length v1, v3

    .line 124
    .local v1, "len":I
    new-array v2, v1, [Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 125
    .local v2, "r":[Lcom/fasterxml/jackson/databind/ObjectReader;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v1, :cond_15

    .line 126
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->with(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v3

    aput-object v3, v2, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 128
    :cond_15
    new-instance v3, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget v6, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V

    return-object v3
.end method
