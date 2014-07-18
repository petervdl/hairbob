.class Lcom/squareup/okhttp/internal/Platform$JdkWithJettyNpnPlatform;
.super Lcom/squareup/okhttp/internal/Platform$Java6;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JdkWithJettyNpnPlatform"
.end annotation


# instance fields
.field private final clientProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final getMethod:Ljava/lang/reflect/Method;

.field private final putMethod:Ljava/lang/reflect/Method;

.field private final serverProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 7
    .param p1, "getMtu"    # Ljava/lang/reflect/Method;
    .param p2, "putMethod"    # Ljava/lang/reflect/Method;
    .param p3, "getMethod"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p4, "clientProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "serverProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/squareup/okhttp/internal/Platform$Java6;-><init>(Ljava/lang/reflect/Method;Lcom/squareup/okhttp/internal/Platform$1;)V

    .line 332
    iput-object p2, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyNpnPlatform;->putMethod:Ljava/lang/reflect/Method;

    .line 333
    iput-object p3, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyNpnPlatform;->getMethod:Ljava/lang/reflect/Method;

    .line 334
    iput-object p4, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyNpnPlatform;->clientProviderClass:Ljava/lang/Class;

    .line 335
    iput-object p5, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyNpnPlatform;->serverProviderClass:Ljava/lang/Class;

    .line 336
    return-void
.end method


# virtual methods
.method public getNpnSelectedProtocol(Ljavax/net/ssl/SSLSocket;)[B
    .registers 10
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    const/4 v3, 0x0

    .line 361
    :try_start_1
    iget-object v4, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyNpnPlatform;->getMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v2

    check-cast v2, Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;

    .line 363
    .local v2, "provider":Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;
    # getter for: Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;->unsupported:Z
    invoke-static {v2}, Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;->access$300(Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;)Z

    move-result v4

    if-nez v4, :cond_30

    # getter for: Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;->selected:Ljava/lang/String;
    invoke-static {v2}, Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;->access$400(Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_30

    .line 364
    const-string/jumbo v4, "com.squareup.okhttp.OkHttpClient"

    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    .line 365
    .local v1, "logger":Ljava/util/logging/Logger;
    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string/jumbo v5, "NPN callback dropped so SPDY is disabled. Is npn-boot on the boot class path?"

    invoke-virtual {v1, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 369
    .end local v1    # "logger":Ljava/util/logging/Logger;
    :cond_2f
    :goto_2f
    return-object v3

    :cond_30
    # getter for: Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;->unsupported:Z
    invoke-static {v2}, Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;->access$300(Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;)Z

    move-result v4

    if-nez v4, :cond_2f

    # getter for: Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;->selected:Ljava/lang/String;
    invoke-static {v2}, Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;->access$400(Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "US-ASCII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_40
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_40} :catch_42
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_40} :catch_49
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_40} :catch_50

    move-result-object v3

    goto :goto_2f

    .line 370
    .end local v2    # "provider":Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;
    :catch_42
    move-exception v0

    .line 371
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 372
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_49
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 374
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_50
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method public setNpnProtocols(Ljavax/net/ssl/SSLSocket;[B)V
    .registers 13
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "npnProtocols"    # [B

    .prologue
    .line 340
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v5, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_7
    array-length v6, p2

    if-ge v2, v6, :cond_1c

    .line 342
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v3, p2, v2

    .line 343
    .local v3, "length":I
    new-instance v6, Ljava/lang/String;

    const-string/jumbo v7, "US-ASCII"

    invoke-direct {v6, p2, v1, v3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    add-int/2addr v1, v3

    move v2, v1

    .line 345
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_7

    .line 346
    .end local v3    # "length":I
    :cond_1c
    const-class v6, Lcom/squareup/okhttp/internal/Platform;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyNpnPlatform;->clientProviderClass:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyNpnPlatform;->serverProviderClass:Ljava/lang/Class;

    aput-object v9, v7, v8

    new-instance v8, Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;

    invoke-direct {v8, v5}, Lcom/squareup/okhttp/internal/Platform$JettyNpnProvider;-><init>(Ljava/util/List;)V

    invoke-static {v6, v7, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    .line 349
    .local v4, "provider":Ljava/lang/Object;
    iget-object v6, p0, Lcom/squareup/okhttp/internal/Platform$JdkWithJettyNpnPlatform;->putMethod:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_47} :catch_48
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_47} :catch_4f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_47} :catch_56

    .line 357
    return-void

    .line 350
    .end local v2    # "i":I
    .end local v4    # "provider":Ljava/lang/Object;
    .end local v5    # "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_48
    move-exception v0

    .line 351
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 352
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_4f
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 354
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_56
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
.end method
