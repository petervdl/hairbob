.class public abstract Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.super Lcom/fasterxml/jackson/databind/JsonDeserializer;
.source "StdDeserializer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/JsonDeserializer",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field protected final _valueClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;)V
    .registers 3
    .param p1, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 38
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V

    .line 39
    if-nez p1, :cond_9

    const/4 v0, 0x0

    :goto_6
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    .line 40
    return-void

    .line 39
    :cond_9
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_6
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    .local p1, "vc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    .line 36
    return-void
.end method

.method protected static final parseDouble(Ljava/lang/String;)D
    .registers 3
    .param p0, "numStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 766
    const-string/jumbo v0, "2.2250738585072012e-308"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 767
    const-wide/16 v0, 0x1

    .line 769
    :goto_b
    return-wide v0

    :cond_c
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_b
.end method


# virtual methods
.method protected _hasTextualNull(Ljava/lang/String;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 810
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    const-string/jumbo v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final _isNaN(Ljava/lang/String;)Z
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 821
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    const-string/jumbo v0, "NaN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final _isNegInf(Ljava/lang/String;)Z
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 814
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    const-string/jumbo v0, "-Infinity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "-INF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method protected final _isPosInf(Ljava/lang/String;)Z
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 818
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    const-string/jumbo v0, "Infinity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "INF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method protected final _parseBoolean(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Boolean;
    .registers 8
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 157
    .local v1, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_b

    .line 158
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 201
    :goto_a
    return-object v3

    .line 160
    :cond_b
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_12

    .line 161
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    .line 164
    :cond_12
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_33

    .line 166
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne v3, v4, :cond_2a

    .line 167
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v3

    if-nez v3, :cond_27

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_27
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a

    .line 169
    :cond_2a
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseBooleanFromNumber(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_a

    .line 171
    :cond_33
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_3e

    .line 172
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    goto :goto_a

    .line 175
    :cond_3e
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_99

    .line 176
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "text":Ljava/lang/String;
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    const-string/jumbo v3, "True"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 179
    :cond_5c
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a

    .line 181
    :cond_5f
    const-string/jumbo v3, "false"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    const-string/jumbo v3, "False"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 182
    :cond_71
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    .line 184
    :cond_74
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_81

    .line 185
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    goto :goto_a

    .line 187
    :cond_81
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 188
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    goto/16 :goto_a

    .line 190
    :cond_8f
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string/jumbo v4, "only \"true\" or \"false\" recognized"

    invoke-virtual {p2, v2, v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v3

    throw v3

    .line 193
    .end local v2    # "text":Ljava/lang/String;
    :cond_99
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_c1

    sget-object v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 194
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 195
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseBoolean(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Boolean;

    move-result-object v0

    .line 196
    .local v0, "parsed":Ljava/lang/Boolean;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 197
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_be

    .line 198
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    const-string/jumbo v4, "Attempted to unwrap single value array for single \'Boolean\' value but there was more than a single value in the array"

    invoke-virtual {p2, p1, v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v3

    throw v3

    :cond_be
    move-object v3, v0

    .line 201
    goto/16 :goto_a

    .line 204
    .end local v0    # "parsed":Ljava/lang/Boolean;
    :cond_c1
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v3, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v3

    throw v3
.end method

.method protected final _parseBooleanFromNumber(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Z
    .registers 8
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne v1, v2, :cond_1c

    .line 211
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_19

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_14
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 218
    :goto_18
    return v1

    .line 211
    :cond_19
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_14

    .line 214
    :cond_1c
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "0.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string/jumbo v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 216
    :cond_32
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_18

    .line 218
    :cond_39
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_18
.end method

.method protected final _parseBooleanPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Z
    .registers 10
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 110
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 111
    .local v1, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v5, :cond_c

    move v4, v3

    .line 147
    :cond_b
    :goto_b
    return v4

    .line 112
    :cond_c
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v5, :cond_b

    .line 113
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v5, :cond_b

    .line 116
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v5, :cond_2f

    .line 118
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne v5, v6, :cond_2a

    .line 119
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v5

    if-eqz v5, :cond_28

    :goto_26
    move v4, v3

    goto :goto_b

    :cond_28
    move v3, v4

    goto :goto_26

    .line 121
    :cond_2a
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseBooleanFromNumber(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Z

    move-result v4

    goto :goto_b

    .line 124
    :cond_2f
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v5, :cond_77

    .line 125
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "text":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    const-string/jumbo v5, "True"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    :cond_4d
    move v4, v3

    .line 128
    goto :goto_b

    .line 130
    :cond_4f
    const-string/jumbo v3, "false"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string/jumbo v3, "False"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_b

    .line 133
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 136
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string/jumbo v4, "only \"true\" or \"false\" recognized"

    invoke-virtual {p2, v2, v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v3

    throw v3

    .line 139
    .end local v2    # "text":Ljava/lang/String;
    :cond_77
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_9f

    sget-object v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 140
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseBooleanPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Z

    move-result v0

    .line 142
    .local v0, "parsed":Z
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 143
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_9c

    .line 144
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    const-string/jumbo v4, "Attempted to unwrap single value array for single \'boolean\' value but there was more than a single value in the array"

    invoke-virtual {p2, p1, v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v3

    throw v3

    :cond_9c
    move v4, v0

    .line 147
    goto/16 :goto_b

    .line 150
    .end local v0    # "parsed":Z
    :cond_9f
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v3, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v3

    throw v3
.end method

.method protected _parseByte(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Byte;
    .registers 11
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 225
    .local v3, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v6, :cond_c

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v6, :cond_15

    .line 226
    :cond_c
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getByteValue()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    .line 262
    :goto_14
    return-object v6

    .line 228
    :cond_15
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v6, :cond_62

    .line 229
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 231
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    goto :goto_14

    .line 235
    :cond_2e
    :try_start_2e
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 236
    .local v1, "len":I
    if-nez v1, :cond_3b

    .line 237
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    goto :goto_14

    .line 239
    :cond_3b
    invoke-static {v4}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt(Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_3e} :catch_51

    move-result v5

    .line 245
    .local v5, "value":I
    const/16 v6, -0x80

    if-lt v5, v6, :cond_47

    const/16 v6, 0xff

    if-le v5, v6, :cond_5c

    .line 246
    :cond_47
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string/jumbo v7, "overflow, value can not be represented as 8-bit value"

    invoke-virtual {p2, v4, v6, v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v6

    throw v6

    .line 240
    .end local v1    # "len":I
    .end local v5    # "value":I
    :catch_51
    move-exception v0

    .line 241
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string/jumbo v7, "not a valid Byte value"

    invoke-virtual {p2, v4, v6, v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v6

    throw v6

    .line 248
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "len":I
    .restart local v5    # "value":I
    :cond_5c
    int-to-byte v6, v5

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    goto :goto_14

    .line 250
    .end local v1    # "len":I
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "value":I
    :cond_62
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v6, :cond_6d

    .line 251
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    goto :goto_14

    .line 254
    :cond_6d
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v6, :cond_94

    sget-object v6, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v6}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 255
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 256
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseByte(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Byte;

    move-result-object v2

    .line 257
    .local v2, "parsed":Ljava/lang/Byte;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 258
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v6, :cond_92

    .line 259
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    const-string/jumbo v7, "Attempted to unwrap single value array for single \'Byte\' value but there was more than a single value in the array"

    invoke-virtual {p2, p1, v6, v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v6

    throw v6

    :cond_92
    move-object v6, v2

    .line 262
    goto :goto_14

    .line 264
    .end local v2    # "parsed":Ljava/lang/Byte;
    :cond_94
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v6, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v6

    throw v6
.end method

.method protected _parseDate(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Date;
    .registers 10
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 720
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 721
    .local v2, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v4, :cond_12

    .line 722
    new-instance v4, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 753
    :goto_11
    return-object v4

    .line 724
    :cond_12
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v4, :cond_1d

    .line 725
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    goto :goto_11

    .line 727
    :cond_1d
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v4, :cond_70

    .line 728
    const/4 v3, 0x0

    .line 731
    .local v3, "value":Ljava/lang/String;
    :try_start_22
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 732
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_37

    .line 733
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    goto :goto_11

    .line 735
    :cond_37
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 736
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    goto :goto_11

    .line 738
    :cond_44
    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_47} :catch_49

    move-result-object v4

    goto :goto_11

    .line 739
    :catch_49
    move-exception v0

    .line 740
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not a valid representation (error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v3, v4, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v4

    throw v4

    .line 745
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v3    # "value":Ljava/lang/String;
    :cond_70
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v4, :cond_98

    sget-object v4, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 746
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 747
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseDate(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Date;

    move-result-object v1

    .line 748
    .local v1, "parsed":Ljava/util/Date;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 749
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v4, :cond_95

    .line 750
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    const-string/jumbo v5, "Attempted to unwrap single value array for single \'java.util.Date\' value but there was more than a single value in the array"

    invoke-virtual {p2, p1, v4, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v4

    throw v4

    :cond_95
    move-object v4, v1

    .line 753
    goto/16 :goto_11

    .line 755
    .end local v1    # "parsed":Ljava/util/Date;
    :cond_98
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v4, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v4

    throw v4
.end method

.method protected final _parseDouble(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Double;
    .registers 8
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 609
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 611
    .local v1, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_c

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_15

    .line 612
    :cond_c
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 656
    :goto_14
    return-object v3

    .line 614
    :cond_15
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_7e

    .line 615
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2e

    .line 617
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    goto :goto_14

    .line 619
    :cond_2e
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 620
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    goto :goto_14

    .line 622
    :cond_3b
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_b8

    .line 640
    :cond_43
    :try_start_43
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_43 .. :try_end_4a} :catch_73

    move-result-object v3

    goto :goto_14

    .line 624
    :sswitch_4c
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isPosInf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 625
    const-wide/high16 v3, 0x7ff0000000000000L

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_14

    .line 629
    :sswitch_59
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isNaN(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 630
    const-wide/high16 v3, 0x7ff8000000000000L

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_14

    .line 634
    :sswitch_66
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isNegInf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 635
    const-wide/high16 v3, -0x10000000000000L

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_14

    .line 641
    :catch_73
    move-exception v3

    .line 642
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string/jumbo v4, "not a valid Double value"

    invoke-virtual {p2, v2, v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v3

    throw v3

    .line 644
    .end local v2    # "text":Ljava/lang/String;
    :cond_7e
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_89

    .line 645
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    goto :goto_14

    .line 648
    :cond_89
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_b1

    sget-object v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 649
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 650
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseDouble(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Double;

    move-result-object v0

    .line 651
    .local v0, "parsed":Ljava/lang/Double;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 652
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_ae

    .line 653
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    const-string/jumbo v4, "Attempted to unwrap single value array for single \'Double\' value but there was more than a single value in the array"

    invoke-virtual {p2, p1, v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v3

    throw v3

    :cond_ae
    move-object v3, v0

    .line 656
    goto/16 :goto_14

    .line 659
    .end local v0    # "parsed":Ljava/lang/Double;
    :cond_b1
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v3, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v3

    throw v3

    .line 622
    :sswitch_data_b8
    .sparse-switch
        0x2d -> :sswitch_66
        0x49 -> :sswitch_4c
        0x4e -> :sswitch_59
    .end sparse-switch
.end method

.method protected final _parseDoublePrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)D
    .registers 9
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    const-wide/16 v0, 0x0

    .line 666
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 668
    .local v2, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v4, :cond_e

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v4, :cond_13

    .line 669
    :cond_e
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D

    move-result-wide v0

    .line 711
    :cond_12
    :goto_12
    return-wide v0

    .line 672
    :cond_13
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v4, :cond_5e

    .line 673
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 674
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 677
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_8e

    .line 695
    :cond_33
    :try_start_33
    invoke-static {v3}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->parseDouble(Ljava/lang/String;)D
    :try_end_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33 .. :try_end_36} :catch_53

    move-result-wide v0

    goto :goto_12

    .line 679
    :sswitch_38
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isPosInf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 680
    const-wide/high16 v0, 0x7ff0000000000000L

    goto :goto_12

    .line 684
    :sswitch_41
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isNaN(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 685
    const-wide/high16 v0, 0x7ff8000000000000L

    goto :goto_12

    .line 689
    :sswitch_4a
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isNegInf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 690
    const-wide/high16 v0, -0x10000000000000L

    goto :goto_12

    .line 696
    :catch_53
    move-exception v4

    .line 697
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string/jumbo v5, "not a valid double value"

    invoke-virtual {p2, v3, v4, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v4

    throw v4

    .line 699
    .end local v3    # "text":Ljava/lang/String;
    :cond_5e
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v4, :cond_12

    .line 703
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v4, :cond_87

    sget-object v4, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 704
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 705
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseDoublePrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)D

    move-result-wide v0

    .line 706
    .local v0, "parsed":D
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 707
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v4, :cond_12

    .line 708
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    const-string/jumbo v5, "Attempted to unwrap single value array for single \'Byte\' value but there was more than a single value in the array"

    invoke-virtual {p2, p1, v4, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v4

    throw v4

    .line 714
    .end local v0    # "parsed":D
    :cond_87
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v4, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v4

    throw v4

    .line 677
    :sswitch_data_8e
    .sparse-switch
        0x2d -> :sswitch_4a
        0x49 -> :sswitch_38
        0x4e -> :sswitch_41
    .end sparse-switch
.end method

.method protected final _parseFloat(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Float;
    .registers 8
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 503
    .local v1, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_c

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_15

    .line 504
    :cond_c
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getFloatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 549
    :goto_14
    return-object v3

    .line 507
    :cond_15
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_7e

    .line 508
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 509
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2e

    .line 510
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    goto :goto_14

    .line 512
    :cond_2e
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 513
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    goto :goto_14

    .line 515
    :cond_3b
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_b8

    .line 533
    :cond_43
    :try_start_43
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_43 .. :try_end_4a} :catch_73

    move-result-object v3

    goto :goto_14

    .line 517
    :sswitch_4c
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isPosInf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 518
    const/high16 v3, 0x7f800000

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_14

    .line 522
    :sswitch_59
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isNaN(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 523
    const/high16 v3, 0x7fc00000

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_14

    .line 527
    :sswitch_66
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isNegInf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 528
    const/high16 v3, -0x800000

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_14

    .line 534
    :catch_73
    move-exception v3

    .line 535
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string/jumbo v4, "not a valid Float value"

    invoke-virtual {p2, v2, v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v3

    throw v3

    .line 537
    .end local v2    # "text":Ljava/lang/String;
    :cond_7e
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_89

    .line 538
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    goto :goto_14

    .line 541
    :cond_89
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_b1

    sget-object v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 542
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 543
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseFloat(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Float;

    move-result-object v0

    .line 544
    .local v0, "parsed":Ljava/lang/Float;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 545
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_ae

    .line 546
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    const-string/jumbo v4, "Attempted to unwrap single value array for single \'Byte\' value but there was more than a single value in the array"

    invoke-virtual {p2, p1, v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v3

    throw v3

    :cond_ae
    move-object v3, v0

    .line 549
    goto/16 :goto_14

    .line 552
    .end local v0    # "parsed":Ljava/lang/Float;
    :cond_b1
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v3, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v3

    throw v3

    .line 515
    :sswitch_data_b8
    .sparse-switch
        0x2d -> :sswitch_66
        0x49 -> :sswitch_4c
        0x4e -> :sswitch_59
    .end sparse-switch
.end method

.method protected final _parseFloatPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)F
    .registers 8
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    const/4 v0, 0x0

    .line 558
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 560
    .local v1, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_d

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_12

    .line 561
    :cond_d
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getFloatValue()F

    move-result v0

    .line 600
    :cond_11
    :goto_11
    return v0

    .line 563
    :cond_12
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_5d

    .line 564
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 565
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 568
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_8e

    .line 584
    :cond_32
    :try_start_32
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_35} :catch_52

    move-result v0

    goto :goto_11

    .line 570
    :sswitch_37
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isPosInf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 571
    const/high16 v0, 0x7f800000

    goto :goto_11

    .line 575
    :sswitch_40
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isNaN(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    const/high16 v0, 0x7fc00000

    goto :goto_11

    .line 578
    :sswitch_49
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isNegInf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 579
    const/high16 v0, -0x800000

    goto :goto_11

    .line 585
    :catch_52
    move-exception v3

    .line 586
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string/jumbo v4, "not a valid float value"

    invoke-virtual {p2, v2, v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v3

    throw v3

    .line 588
    .end local v2    # "text":Ljava/lang/String;
    :cond_5d
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_11

    .line 592
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_86

    sget-object v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 593
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 594
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseFloatPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)F

    move-result v0

    .line 595
    .local v0, "parsed":F
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 596
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_11

    .line 597
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    const-string/jumbo v4, "Attempted to unwrap single value array for single \'float\' value but there was more than a single value in the array"

    invoke-virtual {p2, p1, v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v3

    throw v3

    .line 603
    .end local v0    # "parsed":F
    :cond_86
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v3, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v3

    throw v3

    .line 568
    nop

    :sswitch_data_8e
    .sparse-switch
        0x2d -> :sswitch_49
        0x49 -> :sswitch_37
        0x4e -> :sswitch_40
    .end sparse-switch
.end method

.method protected final _parseIntPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)I
    .registers 13
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    const/4 v4, 0x0

    .line 327
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    .line 330
    .local v5, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v5, v7, :cond_d

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v7, :cond_12

    .line 331
    :cond_d
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v4

    .line 368
    :cond_11
    :goto_11
    return v4

    .line 333
    :cond_12
    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v7, :cond_8f

    .line 334
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 335
    .local v6, "text":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 339
    :try_start_24
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 340
    .local v3, "len":I
    const/16 v7, 0x9

    if-le v3, v7, :cond_88

    .line 341
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 342
    .local v1, "l":J
    const-wide/32 v7, -0x80000000

    cmp-long v7, v1, v7

    if-ltz v7, :cond_3e

    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v1, v7

    if-lez v7, :cond_86

    .line 343
    :cond_3e
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Overflow: numeric value ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") out of range of int ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/high16 v9, -0x80000000

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7fffffff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v6, v7, v8}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v7

    throw v7
    :try_end_7b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_7b} :catch_7b

    .line 352
    .end local v1    # "l":J
    .end local v3    # "len":I
    :catch_7b
    move-exception v0

    .line 353
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string/jumbo v8, "not a valid int value"

    invoke-virtual {p2, v6, v7, v8}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v7

    throw v7

    .line 346
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "l":J
    .restart local v3    # "len":I
    :cond_86
    long-to-int v4, v1

    goto :goto_11

    .line 348
    .end local v1    # "l":J
    :cond_88
    if-eqz v3, :cond_11

    .line 351
    :try_start_8a
    invoke-static {v6}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt(Ljava/lang/String;)I
    :try_end_8d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8a .. :try_end_8d} :catch_7b

    move-result v4

    goto :goto_11

    .line 356
    .end local v3    # "len":I
    .end local v6    # "text":Ljava/lang/String;
    :cond_8f
    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v5, v7, :cond_11

    .line 360
    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v7, :cond_b8

    sget-object v7, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v7

    if-eqz v7, :cond_b8

    .line 361
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 362
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseIntPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result v4

    .line 363
    .local v4, "parsed":I
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    .line 364
    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v5, v7, :cond_11

    .line 365
    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    const-string/jumbo v8, "Attempted to unwrap single value array for single \'int\' value but there was more than a single value in the array"

    invoke-virtual {p2, p1, v7, v8}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v7

    throw v7

    .line 371
    .end local v4    # "parsed":I
    :cond_b8
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v7, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v7

    throw v7
.end method

.method protected final _parseInteger(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Integer;
    .registers 13
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    .line 378
    .local v5, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v5, v7, :cond_c

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v7, :cond_15

    .line 379
    :cond_c
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 416
    :goto_14
    return-object v7

    .line 381
    :cond_15
    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v7, :cond_ab

    .line 382
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 384
    .local v6, "text":Ljava/lang/String;
    :try_start_21
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 385
    .local v3, "len":I
    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 386
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    goto :goto_14

    .line 388
    :cond_32
    const/16 v7, 0x9

    if-le v3, v7, :cond_97

    .line 389
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 390
    .local v1, "l":J
    const-wide/32 v7, -0x80000000

    cmp-long v7, v1, v7

    if-ltz v7, :cond_48

    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v1, v7

    if-lez v7, :cond_90

    .line 391
    :cond_48
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Overflow: numeric value ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") out of range of Integer ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/high16 v9, -0x80000000

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7fffffff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v6, v7, v8}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v7

    throw v7
    :try_end_85
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_85} :catch_85

    .line 400
    .end local v1    # "l":J
    .end local v3    # "len":I
    :catch_85
    move-exception v0

    .line 401
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string/jumbo v8, "not a valid Integer value"

    invoke-virtual {p2, v6, v7, v8}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v7

    throw v7

    .line 394
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "l":J
    .restart local v3    # "len":I
    :cond_90
    long-to-int v7, v1

    :try_start_91
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto/16 :goto_14

    .line 396
    .end local v1    # "l":J
    :cond_97
    if-nez v3, :cond_a1

    .line 397
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    goto/16 :goto_14

    .line 399
    :cond_a1
    invoke-static {v6}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_a8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_91 .. :try_end_a8} :catch_85

    move-result-object v7

    goto/16 :goto_14

    .line 404
    .end local v3    # "len":I
    .end local v6    # "text":Ljava/lang/String;
    :cond_ab
    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v7, :cond_b7

    .line 405
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    goto/16 :goto_14

    .line 408
    :cond_b7
    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v7, :cond_df

    sget-object v7, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v7

    if-eqz v7, :cond_df

    .line 409
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 410
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseInteger(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Integer;

    move-result-object v4

    .line 411
    .local v4, "parsed":Ljava/lang/Integer;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    .line 412
    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v5, v7, :cond_dc

    .line 413
    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    const-string/jumbo v8, "Attempted to unwrap single value array for single \'Integer\' value but there was more than a single value in the array"

    invoke-virtual {p2, p1, v7, v8}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v7

    throw v7

    :cond_dc
    move-object v7, v4

    .line 416
    goto/16 :goto_14

    .line 419
    .end local v4    # "parsed":Ljava/lang/Integer;
    :cond_df
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v7, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v7

    throw v7
.end method

.method protected final _parseLong(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Long;
    .registers 8
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 427
    .local v1, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_c

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_15

    .line 428
    :cond_c
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 457
    :goto_14
    return-object v3

    .line 431
    :cond_15
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_4f

    .line 433
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2e

    .line 435
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    goto :goto_14

    .line 437
    :cond_2e
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 438
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    goto :goto_14

    .line 441
    :cond_3b
    :try_start_3b
    invoke-static {v2}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_42} :catch_44

    move-result-object v3

    goto :goto_14

    .line 442
    :catch_44
    move-exception v3

    .line 443
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string/jumbo v4, "not a valid Long value"

    invoke-virtual {p2, v2, v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v3

    throw v3

    .line 445
    .end local v2    # "text":Ljava/lang/String;
    :cond_4f
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_5a

    .line 446
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    goto :goto_14

    .line 449
    :cond_5a
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_81

    sget-object v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 450
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 451
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseLong(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Long;

    move-result-object v0

    .line 452
    .local v0, "parsed":Ljava/lang/Long;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 453
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_7f

    .line 454
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    const-string/jumbo v4, "Attempted to unwrap single value array for single \'Long\' value but there was more than a single value in the array"

    invoke-virtual {p2, p1, v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v3

    throw v3

    :cond_7f
    move-object v3, v0

    .line 457
    goto :goto_14

    .line 460
    .end local v0    # "parsed":Ljava/lang/Long;
    :cond_81
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v3, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v3

    throw v3
.end method

.method protected final _parseLongPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)J
    .registers 9
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    const-wide/16 v0, 0x0

    .line 466
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 467
    .local v2, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v4, :cond_e

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v4, :cond_13

    .line 468
    :cond_e
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v0

    .line 492
    :cond_12
    :goto_12
    return-wide v0

    .line 470
    :cond_13
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v4, :cond_3b

    .line 471
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 472
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 476
    :try_start_2b
    invoke-static {v3}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseLong(Ljava/lang/String;)J
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_2e} :catch_30

    move-result-wide v0

    goto :goto_12

    .line 477
    :catch_30
    move-exception v4

    .line 478
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string/jumbo v5, "not a valid long value"

    invoke-virtual {p2, v3, v4, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v4

    throw v4

    .line 480
    .end local v3    # "text":Ljava/lang/String;
    :cond_3b
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v4, :cond_12

    .line 484
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v4, :cond_64

    sget-object v4, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 485
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 486
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseLongPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)J

    move-result-wide v0

    .line 487
    .local v0, "parsed":J
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 488
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v4, :cond_12

    .line 489
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    const-string/jumbo v5, "Attempted to unwrap single value array for single \'long\' value but there was more than a single value in the array"

    invoke-virtual {p2, p1, v4, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v4

    throw v4

    .line 494
    .end local v0    # "parsed":J
    :cond_64
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v4, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v4

    throw v4
.end method

.method protected _parseShort(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Short;
    .registers 11
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 271
    .local v3, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v6, :cond_c

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v6, :cond_15

    .line 272
    :cond_c
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getShortValue()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    .line 307
    :goto_14
    return-object v6

    .line 274
    :cond_15
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v6, :cond_62

    .line 275
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, "text":Ljava/lang/String;
    :try_start_21
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 279
    .local v1, "len":I
    if-nez v1, :cond_2e

    .line 280
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    goto :goto_14

    .line 282
    :cond_2e
    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 283
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    goto :goto_14

    .line 285
    :cond_3b
    invoke-static {v4}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt(Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_3e} :catch_51

    move-result v5

    .line 290
    .local v5, "value":I
    const/16 v6, -0x8000

    if-lt v5, v6, :cond_47

    const/16 v6, 0x7fff

    if-le v5, v6, :cond_5c

    .line 291
    :cond_47
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string/jumbo v7, "overflow, value can not be represented as 16-bit value"

    invoke-virtual {p2, v4, v6, v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v6

    throw v6

    .line 286
    .end local v1    # "len":I
    .end local v5    # "value":I
    :catch_51
    move-exception v0

    .line 287
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string/jumbo v7, "not a valid Short value"

    invoke-virtual {p2, v4, v6, v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v6

    throw v6

    .line 293
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "len":I
    .restart local v5    # "value":I
    :cond_5c
    int-to-short v6, v5

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    goto :goto_14

    .line 295
    .end local v1    # "len":I
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "value":I
    :cond_62
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v6, :cond_6d

    .line 296
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    goto :goto_14

    .line 299
    :cond_6d
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v6, :cond_94

    sget-object v6, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v6}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 300
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseShort(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Short;

    move-result-object v2

    .line 302
    .local v2, "parsed":Ljava/lang/Short;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 303
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v6, :cond_92

    .line 304
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    const-string/jumbo v7, "Attempted to unwrap single value array for single \'Short\' value but there was more than a single value in the array"

    invoke-virtual {p2, p1, v6, v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v6

    throw v6

    :cond_92
    move-object v6, v2

    .line 307
    goto :goto_14

    .line 309
    .end local v2    # "parsed":Ljava/lang/Short;
    :cond_94
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v6, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v6

    throw v6
.end method

.method protected final _parseShortPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)S
    .registers 7
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseIntPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result v0

    .line 317
    .local v0, "value":I
    const/16 v1, -0x8000

    if-lt v0, v1, :cond_c

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_1a

    .line 318
    :cond_c
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string/jumbo v3, "overflow, value can not be represented as 16-bit value"

    invoke-virtual {p2, v1, v2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v1

    throw v1

    .line 321
    :cond_1a
    int-to-short v1, v0

    return v1
.end method

.method protected final _parseString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/String;
    .registers 8
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 780
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 781
    .local v1, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_d

    .line 782
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 797
    :cond_c
    :goto_c
    return-object v0

    .line 786
    :cond_d
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_32

    sget-object v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 787
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 788
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, "parsed":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_c

    .line 790
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    const-string/jumbo v4, "Attempted to unwrap single value array for single \'String\' value but there was more than a single value in the array"

    invoke-virtual {p2, p1, v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v3

    throw v3

    .line 795
    .end local v0    # "parsed":Ljava/lang/String;
    :cond_32
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v2

    .line 796
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_3a

    move-object v0, v2

    .line 797
    goto :goto_c

    .line 799
    :cond_3a
    const-class v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v3

    throw v3
.end method

.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    .registers 5
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "typeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromAny(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected findConvertingContentDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .registers 9
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "prop"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 865
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    .local p3, "existingDeserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v3

    .line 866
    .local v3, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-eqz v3, :cond_2e

    if-eqz p2, :cond_2e

    .line 867
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationContentConverter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v1

    .line 868
    .local v1, "convDef":Ljava/lang/Object;
    if-eqz v1, :cond_2e

    .line 869
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v4

    invoke-virtual {p1, v4, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->converterInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/Converter;

    move-result-object v0

    .line 870
    .local v0, "conv":Lcom/fasterxml/jackson/databind/util/Converter;, "Lcom/fasterxml/jackson/databind/util/Converter<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/fasterxml/jackson/databind/util/Converter;->getInputType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 871
    .local v2, "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez p3, :cond_28

    .line 872
    invoke-virtual {p1, v2, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p3

    .line 874
    :cond_28
    new-instance v4, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    invoke-direct {v4, v0, v2, p3}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    .line 877
    .end local v0    # "conv":Lcom/fasterxml/jackson/databind/util/Converter;, "Lcom/fasterxml/jackson/databind/util/Converter<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v1    # "convDef":Ljava/lang/Object;
    .end local v2    # "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_2d
    return-object v4

    :cond_2e
    move-object v4, p3

    goto :goto_2d
.end method

.method protected findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .registers 5
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 842
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    return-object v0
.end method

.method protected handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "instanceOrClass"    # Ljava/lang/Object;
    .param p4, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 907
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    if-nez p3, :cond_6

    .line 908
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handledType()Ljava/lang/Class;

    move-result-object p3

    .line 911
    .end local p3    # "instanceOrClass":Ljava/lang/Object;
    :cond_6
    invoke-virtual {p2, p1, p0, p3, p4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 921
    :goto_c
    return-void

    .line 915
    :cond_d
    invoke-virtual {p2, p3, p4, p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportUnknownProperty(Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    .line 920
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_c
.end method

.method public handledType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    return-object v0
.end method

.method protected isDefaultDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    .local p1, "deserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJacksonStdImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isDefaultKeyDeserializer(Lcom/fasterxml/jackson/databind/KeyDeserializer;)Z
    .registers 3
    .param p1, "keyDeser"    # Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .prologue
    .line 81
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<TT;>;"
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJacksonStdImpl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
