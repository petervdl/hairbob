.class public Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;
.source "DateDeserializers.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# instance fields
.field protected final _calendarClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 196
    const-class v0, Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;-><init>(Ljava/lang/Class;)V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->_calendarClass:Ljava/lang/Class;

    .line 198
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;Ljava/text/DateFormat;Ljava/lang/String;)V
    .registers 5
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;
    .param p2, "df"    # Ljava/text/DateFormat;
    .param p3, "formatString"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;Ljava/text/DateFormat;Ljava/lang/String;)V

    .line 207
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->_calendarClass:Ljava/lang/Class;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->_calendarClass:Ljava/lang/Class;

    .line 208
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Calendar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "cc":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Calendar;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;-><init>(Ljava/lang/Class;)V

    .line 202
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->_calendarClass:Ljava/lang/Class;

    .line 203
    return-void
.end method


# virtual methods
.method public bridge synthetic createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .registers 4
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "x1"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-super {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "x1"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Calendar;
    .registers 9
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->_parseDate(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Date;

    move-result-object v1

    .line 219
    .local v1, "d":Ljava/util/Date;
    if-nez v1, :cond_8

    .line 220
    const/4 v0, 0x0

    .line 232
    :cond_7
    :goto_7
    return-object v0

    .line 222
    :cond_8
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->_calendarClass:Ljava/lang/Class;

    if-nez v4, :cond_11

    .line 223
    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructCalendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_7

    .line 226
    :cond_11
    :try_start_11
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->_calendarClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 227
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 228
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 229
    .local v3, "tz":Ljava/util/TimeZone;
    if-eqz v3, :cond_7

    .line 230
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_29} :catch_2a

    goto :goto_7

    .line 233
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v3    # "tz":Ljava/util/TimeZone;
    :catch_2a
    move-exception v2

    .line 234
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->_calendarClass:Ljava/lang/Class;

    invoke-virtual {p2, v4, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v4

    throw v4
.end method

.method protected withDateFormat(Ljava/text/DateFormat;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;
    .registers 4
    .param p1, "df"    # Ljava/text/DateFormat;
    .param p2, "formatString"    # Ljava/lang/String;

    .prologue
    .line 212
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;Ljava/text/DateFormat;Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic withDateFormat(Ljava/text/DateFormat;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;
    .registers 4
    .param p1, "x0"    # Ljava/text/DateFormat;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->withDateFormat(Ljava/text/DateFormat;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;

    move-result-object v0

    return-object v0
.end method
