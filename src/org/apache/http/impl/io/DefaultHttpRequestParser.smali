.class public Lorg/apache/http/impl/io/DefaultHttpRequestParser;
.super Lorg/apache/http/impl/io/AbstractMessageParser;
.source "DefaultHttpRequestParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/http/impl/io/AbstractMessageParser",
        "<",
        "Lorg/apache/http/HttpRequest;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final lineBuf:Lorg/apache/http/util/CharArrayBuffer;

.field private final requestFactory:Lorg/apache/http/HttpRequestFactory;


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpRequestFactory;Lorg/apache/http/config/MessageConstraints;)V
    .registers 7
    .param p1, "buffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "lineParser"    # Lorg/apache/http/message/LineParser;
    .param p3, "requestFactory"    # Lorg/apache/http/HttpRequestFactory;
    .param p4, "constraints"    # Lorg/apache/http/config/MessageConstraints;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p4}, Lorg/apache/http/impl/io/AbstractMessageParser;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/config/MessageConstraints;)V

    .line 104
    if-eqz p3, :cond_11

    .end local p3    # "requestFactory":Lorg/apache/http/HttpRequestFactory;
    :goto_5
    iput-object p3, p0, Lorg/apache/http/impl/io/DefaultHttpRequestParser;->requestFactory:Lorg/apache/http/HttpRequestFactory;

    .line 106
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/impl/io/DefaultHttpRequestParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    .line 107
    return-void

    .line 104
    .restart local p3    # "requestFactory":Lorg/apache/http/HttpRequestFactory;
    :cond_11
    sget-object p3, Lorg/apache/http/impl/DefaultHttpRequestFactory;->INSTANCE:Lorg/apache/http/impl/DefaultHttpRequestFactory;

    goto :goto_5
.end method
