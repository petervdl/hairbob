.class public Lorg/apache/http/config/SocketConfig$Builder;
.super Ljava/lang/Object;
.source "SocketConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/config/SocketConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private soKeepAlive:Z

.field private soLinger:I

.field private soReuseAddress:Z

.field private soTimeout:I

.field private tcpNoDelay:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/http/config/SocketConfig$Builder;->soLinger:I

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/config/SocketConfig$Builder;->tcpNoDelay:Z

    .line 164
    return-void
.end method


# virtual methods
.method public build()Lorg/apache/http/config/SocketConfig;
    .registers 7

    .prologue
    .line 192
    new-instance v0, Lorg/apache/http/config/SocketConfig;

    iget v1, p0, Lorg/apache/http/config/SocketConfig$Builder;->soTimeout:I

    iget-boolean v2, p0, Lorg/apache/http/config/SocketConfig$Builder;->soReuseAddress:Z

    iget v3, p0, Lorg/apache/http/config/SocketConfig$Builder;->soLinger:I

    iget-boolean v4, p0, Lorg/apache/http/config/SocketConfig$Builder;->soKeepAlive:Z

    iget-boolean v5, p0, Lorg/apache/http/config/SocketConfig$Builder;->tcpNoDelay:Z

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/config/SocketConfig;-><init>(IZIZZ)V

    return-object v0
.end method
