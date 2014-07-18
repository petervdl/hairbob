.class Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JettyNpnProvider"
.end annotation


# instance fields
.field private final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selected:Ljava/lang/String;

.field private unsupported:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p1, p0, Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;->protocols:Ljava/util/List;

    .line 391
    return-void
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;->unsupported:Z

    return v0
.end method

.method static synthetic access$400(Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;->selected:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 394
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "methodName":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 396
    .local v1, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p3, :cond_f

    .line 397
    sget-object p3, Lcom/squareup/okhttp/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 399
    :cond_f
    const-string/jumbo v3, "supports"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v1, :cond_21

    .line 400
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 418
    :goto_20
    return-object v3

    .line 401
    :cond_21
    const-string/jumbo v3, "unsupported"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v3, v1, :cond_32

    .line 402
    iput-boolean v6, p0, Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;->unsupported:Z

    move-object v3, v4

    .line 403
    goto :goto_20

    .line 404
    :cond_32
    const-string/jumbo v3, "protocols"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    array-length v3, p3

    if-nez v3, :cond_41

    .line 405
    iget-object v3, p0, Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;->protocols:Ljava/util/List;

    goto :goto_20

    .line 406
    :cond_41
    const-string/jumbo v3, "selectProtocol"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    const-class v3, Ljava/lang/String;

    if-ne v3, v1, :cond_6c

    array-length v3, p3

    if-ne v3, v6, :cond_6c

    aget-object v3, p3, v5

    if-eqz v3, :cond_5b

    aget-object v3, p3, v5

    instance-of v3, v3, Ljava/util/List;

    if-eqz v3, :cond_6c

    .line 411
    :cond_5b
    aget-object v2, p3, v5

    check-cast v2, Ljava/util/List;

    .line 412
    .local v2, "serverProtocols":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v3, p0, Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;->protocols:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;->selected:Ljava/lang/String;

    .line 413
    iget-object v3, p0, Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;->selected:Ljava/lang/String;

    goto :goto_20

    .line 414
    .end local v2    # "serverProtocols":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_6c
    const-string/jumbo v3, "protocolSelected"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    array-length v3, p3

    if-ne v3, v6, :cond_80

    .line 415
    aget-object v3, p3, v5

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;->selected:Ljava/lang/String;

    move-object v3, v4

    .line 416
    goto :goto_20

    .line 418
    :cond_80
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_20
.end method
