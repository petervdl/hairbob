.class public abstract Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;
.source "DateDeserializers.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "DateBasedDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer",
        "<TT;>;",
        "Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;"
    }
.end annotation


# instance fields
.field protected final _customFormat:Ljava/text/DateFormat;

.field protected final _formatString:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;Ljava/text/DateFormat;Ljava/lang/String;)V
    .registers 5
    .param p2, "format"    # Ljava/text/DateFormat;
    .param p3, "formatStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer",
            "<TT;>;",
            "Ljava/text/DateFormat;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer<TT;>;"
    .local p1, "base":Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer<TT;>;"
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    .line 97
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_customFormat:Ljava/text/DateFormat;

    .line 98
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_formatString:Ljava/lang/String;

    .line 99
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer<TT;>;"
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    .line 90
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_customFormat:Ljava/text/DateFormat;

    .line 91
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_formatString:Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method protected _parseDate(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Date;
    .registers 11
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer<TT;>;"
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_customFormat:Ljava/text/DateFormat;

    if-eqz v4, :cond_8d

    .line 149
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 150
    .local v3, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_66

    .line 151
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_21

    .line 153
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    .line 176
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :goto_20
    return-object v4

    .line 155
    .restart local v2    # "str":Ljava/lang/String;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_21
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_customFormat:Ljava/text/DateFormat;

    monitor-enter v5

    .line 157
    :try_start_24
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_customFormat:Ljava/text/DateFormat;

    invoke-virtual {v4, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_29
    .catch Ljava/text/ParseException; {:try_start_24 .. :try_end_29} :catch_2f
    .catchall {:try_start_24 .. :try_end_29} :catchall_2c

    move-result-object v4

    :try_start_2a
    monitor-exit v5

    goto :goto_20

    .line 162
    :catchall_2c
    move-exception v4

    monitor-exit v5
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw v4

    .line 158
    :catch_2f
    move-exception v0

    .line 159
    .local v0, "e":Ljava/text/ParseException;
    :try_start_30
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to parse Date value \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' (format: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_formatString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\"): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_66
    .catchall {:try_start_30 .. :try_end_66} :catchall_2c

    .line 165
    .end local v0    # "e":Ljava/text/ParseException;
    .end local v2    # "str":Ljava/lang/String;
    :cond_66
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_8d

    sget-object v4, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 166
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_parseDate(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Date;

    move-result-object v1

    .line 168
    .local v1, "parsed":Ljava/util/Date;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 169
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_8b

    .line 170
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    const-string/jumbo v5, "Attempted to unwrap single value array for single \'java.util.Date\' value but there was more than a single value in the array"

    invoke-virtual {p2, p1, v4, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v4

    throw v4

    :cond_8b
    move-object v4, v1

    .line 173
    goto :goto_20

    .line 176
    .end local v1    # "parsed":Ljava/util/Date;
    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_8d
    invoke-super {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;->_parseDate(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Date;

    move-result-object v4

    goto :goto_20
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .registers 11
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
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
    .line 107
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer<TT;>;"
    if-eqz p2, :cond_3a

    .line 108
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v6

    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFormat(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v1

    .line 109
    .local v1, "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    if-eqz v1, :cond_3a

    .line 110
    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    .line 112
    .local v5, "tz":Ljava/util/TimeZone;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->hasPattern()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 113
    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getPattern()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "pattern":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->hasLocale()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 115
    .local v2, "loc":Ljava/util/Locale;
    :goto_28
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 116
    .local v0, "df":Ljava/text/SimpleDateFormat;
    if-nez v5, :cond_33

    .line 117
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    .line 119
    :cond_33
    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 120
    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->withDateFormat(Ljava/text/DateFormat;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;

    move-result-object p0

    .line 141
    .end local v0    # "df":Ljava/text/SimpleDateFormat;
    .end local v1    # "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .end local v2    # "loc":Ljava/util/Locale;
    .end local v3    # "pattern":Ljava/lang/String;
    .end local v5    # "tz":Ljava/util/TimeZone;
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer<TT;>;"
    :cond_3a
    :goto_3a
    return-object p0

    .line 114
    .restart local v1    # "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .restart local v3    # "pattern":Ljava/lang/String;
    .restart local v5    # "tz":Ljava/util/TimeZone;
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer<TT;>;"
    :cond_3b
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getLocale()Ljava/util/Locale;

    move-result-object v2

    goto :goto_28

    .line 123
    .end local v3    # "pattern":Ljava/lang/String;
    :cond_40
    if-eqz v5, :cond_3a

    .line 124
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 126
    .local v0, "df":Ljava/text/DateFormat;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    if-ne v6, v7, :cond_74

    .line 127
    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->hasLocale()Z

    move-result v6

    if-eqz v6, :cond_6f

    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .restart local v2    # "loc":Ljava/util/Locale;
    :goto_5c
    move-object v4, v0

    .line 128
    check-cast v4, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    .line 129
    .local v4, "std":Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->withTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    move-result-object v4

    .line 130
    invoke-virtual {v4, v2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->withLocale(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    move-result-object v4

    .line 131
    move-object v0, v4

    .line 137
    .end local v2    # "loc":Ljava/util/Locale;
    .end local v4    # "std":Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    :goto_68
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_formatString:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->withDateFormat(Ljava/text/DateFormat;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;

    move-result-object p0

    goto :goto_3a

    .line 127
    :cond_6f
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getLocale()Ljava/util/Locale;

    move-result-object v2

    goto :goto_5c

    .line 134
    :cond_74
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "df":Ljava/text/DateFormat;
    check-cast v0, Ljava/text/DateFormat;

    .line 135
    .restart local v0    # "df":Ljava/text/DateFormat;
    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_68
.end method

.method protected abstract withDateFormat(Ljava/text/DateFormat;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/DateFormat;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer",
            "<TT;>;"
        }
    .end annotation
.end method
