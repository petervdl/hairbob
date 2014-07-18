.class public Lorg/apache/http/config/SocketConfig;
.super Ljava/lang/Object;
.source "SocketConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/config/SocketConfig$Builder;
    }
.end annotation

.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/http/config/SocketConfig;


# instance fields
.field private final soKeepAlive:Z

.field private final soLinger:I

.field private final soReuseAddress:Z

.field private final soTimeout:I

.field private final tcpNoDelay:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    new-instance v0, Lorg/apache/http/config/SocketConfig$Builder;

    invoke-direct {v0}, Lorg/apache/http/config/SocketConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/http/config/SocketConfig$Builder;->build()Lorg/apache/http/config/SocketConfig;

    move-result-object v0

    sput-object v0, Lorg/apache/http/config/SocketConfig;->DEFAULT:Lorg/apache/http/config/SocketConfig;

    return-void
.end method

.method constructor <init>(IZIZZ)V
    .registers 6
    .param p1, "soTimeout"    # I
    .param p2, "soReuseAddress"    # Z
    .param p3, "soLinger"    # I
    .param p4, "soKeepAlive"    # Z
    .param p5, "tcpNoDelay"    # Z

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lorg/apache/http/config/SocketConfig;->soTimeout:I

    .line 57
    iput-boolean p2, p0, Lorg/apache/http/config/SocketConfig;->soReuseAddress:Z

    .line 58
    iput p3, p0, Lorg/apache/http/config/SocketConfig;->soLinger:I

    .line 59
    iput-boolean p4, p0, Lorg/apache/http/config/SocketConfig;->soKeepAlive:Z

    .line 60
    iput-boolean p5, p0, Lorg/apache/http/config/SocketConfig;->tcpNoDelay:Z

    .line 61
    return-void
.end method


# virtual methods
.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Lorg/apache/http/config/SocketConfig;->clone()Lorg/apache/http/config/SocketConfig;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Lorg/apache/http/config/SocketConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/config/SocketConfig;

    return-object v0
.end method

.method public getSoLinger()I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Lorg/apache/http/config/SocketConfig;->soLinger:I

    return v0
.end method

.method public getSoTimeout()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lorg/apache/http/config/SocketConfig;->soTimeout:I

    return v0
.end method

.method public isSoKeepAlive()Z
    .registers 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/apache/http/config/SocketConfig;->soKeepAlive:Z

    return v0
.end method

.method public isTcpNoDelay()Z
    .registers 2

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/apache/http/config/SocketConfig;->tcpNoDelay:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[soTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/http/config/SocketConfig;->soTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", soReuseAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/http/config/SocketConfig;->soReuseAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", soLinger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/http/config/SocketConfig;->soLinger:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", soKeepAlive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/http/config/SocketConfig;->soKeepAlive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", tcpNoDelay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/http/config/SocketConfig;->tcpNoDelay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
