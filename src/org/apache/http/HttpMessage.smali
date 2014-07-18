.class public interface abstract Lorg/apache/http/HttpMessage;
.super Ljava/lang/Object;
.source "HttpMessage.java"


# virtual methods
.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getAllHeaders()[Lorg/apache/http/Header;
.end method

.method public abstract getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
.end method

.method public abstract getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method
