.class public Lorg/apache/http/config/ConnectionConfig$Builder;
.super Ljava/lang/Object;
.source "ConnectionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/config/ConnectionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bufferSize:I

.field private charset:Ljava/nio/charset/Charset;

.field private fragmentSizeHint:I

.field private malformedInputAction:Ljava/nio/charset/CodingErrorAction;

.field private messageConstraints:Lorg/apache/http/config/MessageConstraints;

.field private unmappableInputAction:Ljava/nio/charset/CodingErrorAction;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->fragmentSizeHint:I

    .line 136
    return-void
.end method


# virtual methods
.method public build()Lorg/apache/http/config/ConnectionConfig;
    .registers 8

    .prologue
    .line 175
    iget-object v3, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->charset:Ljava/nio/charset/Charset;

    .line 176
    .local v3, "cs":Ljava/nio/charset/Charset;
    if-nez v3, :cond_e

    iget-object v0, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->unmappableInputAction:Ljava/nio/charset/CodingErrorAction;

    if-eqz v0, :cond_e

    .line 177
    :cond_c
    sget-object v3, Lorg/apache/http/Consts;->ASCII:Ljava/nio/charset/Charset;

    .line 179
    :cond_e
    iget v0, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->bufferSize:I

    if-lez v0, :cond_26

    iget v1, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->bufferSize:I

    .line 180
    .local v1, "bufSize":I
    :goto_14
    iget v0, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->fragmentSizeHint:I

    if-ltz v0, :cond_29

    iget v2, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->fragmentSizeHint:I

    .line 181
    .local v2, "fragmentHintSize":I
    :goto_1a
    new-instance v0, Lorg/apache/http/config/ConnectionConfig;

    iget-object v4, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    iget-object v5, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->unmappableInputAction:Ljava/nio/charset/CodingErrorAction;

    iget-object v6, p0, Lorg/apache/http/config/ConnectionConfig$Builder;->messageConstraints:Lorg/apache/http/config/MessageConstraints;

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/config/ConnectionConfig;-><init>(IILjava/nio/charset/Charset;Ljava/nio/charset/CodingErrorAction;Ljava/nio/charset/CodingErrorAction;Lorg/apache/http/config/MessageConstraints;)V

    return-object v0

    .line 179
    .end local v1    # "bufSize":I
    .end local v2    # "fragmentHintSize":I
    :cond_26
    const/16 v1, 0x2000

    goto :goto_14

    .restart local v1    # "bufSize":I
    :cond_29
    move v2, v1

    .line 180
    goto :goto_1a
.end method
