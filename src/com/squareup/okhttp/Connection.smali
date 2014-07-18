.class public final Lcom/squareup/okhttp/Connection;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final HTTP_11:[B

.field private static final NPN_PROTOCOLS:[B

.field private static final SPDY3:[B


# instance fields
.field private connected:Z

.field private httpMinorVersion:I

.field private idleStartTimeNs:J

.field private in:Ljava/io/InputStream;

.field private out:Ljava/io/OutputStream;

.field private final route:Lcom/squareup/okhttp/Route;

.field private socket:Ljava/net/Socket;

.field private spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/squareup/okhttp/Connection;->NPN_PROTOCOLS:[B

    .line 73
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_28

    sput-object v0, Lcom/squareup/okhttp/Connection;->SPDY3:[B

    .line 76
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_30

    sput-object v0, Lcom/squareup/okhttp/Connection;->HTTP_11:[B

    return-void

    .line 69
    nop

    :array_1c
    .array-data 1
        0x6t
        0x73t
        0x70t
        0x64t
        0x79t
        0x2ft
        0x33t
        0x8t
        0x68t
        0x74t
        0x74t
        0x70t
        0x2ft
        0x31t
        0x2et
        0x31t
    .end array-data

    .line 73
    :array_28
    .array-data 1
        0x73t
        0x70t
        0x64t
        0x79t
        0x2ft
        0x33t
    .end array-data

    .line 76
    nop

    :array_30
    .array-data 1
        0x68t
        0x74t
        0x74t
        0x70t
        0x2ft
        0x31t
        0x2et
        0x31t
    .end array-data
.end method

.method public constructor <init>(Lcom/squareup/okhttp/Route;)V
    .registers 3
    .param p1, "route"    # Lcom/squareup/okhttp/Route;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/okhttp/Connection;->connected:Z

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/Connection;->httpMinorVersion:I

    .line 91
    iput-object p1, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    .line 92
    return-void
.end method

.method private makeTunnel(Lcom/squareup/okhttp/TunnelRequest;)V
    .registers 11
    .param p1, "tunnelRequest"    # Lcom/squareup/okhttp/TunnelRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p1}, Lcom/squareup/okhttp/TunnelRequest;->getRequestHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v3

    .local v3, "requestHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    move-object v7, v3

    .line 307
    .end local v3    # "requestHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    .local v7, "requestHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    :goto_5
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->out:Ljava/io/OutputStream;

    invoke-virtual {v7}, Lcom/squareup/okhttp/internal/http/RawHeaders;->toBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 308
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->fromBytes(Ljava/io/InputStream;)Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v2

    .line 310
    .local v2, "responseHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getResponseCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_6c

    .line 325
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected response code for CONNECT: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getResponseCode()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :sswitch_39
    new-instance v3, Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-direct {v3, v7}, Lcom/squareup/okhttp/internal/http/RawHeaders;-><init>(Lcom/squareup/okhttp/internal/http/RawHeaders;)V

    .line 315
    .end local v7    # "requestHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    .restart local v3    # "requestHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    new-instance v5, Ljava/net/URL;

    const-string/jumbo v0, "https"

    iget-object v1, p1, Lcom/squareup/okhttp/TunnelRequest;->host:Ljava/lang/String;

    iget v4, p1, Lcom/squareup/okhttp/TunnelRequest;->port:I

    const-string/jumbo v8, "/"

    invoke-direct {v5, v0, v1, v4, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 316
    .local v5, "url":Ljava/net/URL;
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v0, v0, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v0, v0, Lcom/squareup/okhttp/Address;->authenticator:Lcom/squareup/okhttp/OkAuthenticator;

    const/16 v1, 0x197

    iget-object v4, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v4, v4, Lcom/squareup/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/http/HttpAuthenticator;->processAuthHeader(Lcom/squareup/okhttp/OkAuthenticator;ILcom/squareup/okhttp/internal/http/RawHeaders;Lcom/squareup/okhttp/internal/http/RawHeaders;Ljava/net/Proxy;Ljava/net/URL;)Z

    move-result v6

    .line 319
    .local v6, "credentialsFound":Z
    if-eqz v6, :cond_61

    move-object v7, v3

    .line 320
    .end local v3    # "requestHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    .restart local v7    # "requestHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    goto :goto_5

    .line 322
    .end local v7    # "requestHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    .restart local v3    # "requestHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    :cond_61
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Failed to authenticate with proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    .end local v3    # "requestHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "credentialsFound":Z
    .restart local v7    # "requestHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    :sswitch_6a
    return-void

    .line 310
    nop

    :sswitch_data_6c
    .sparse-switch
        0xc8 -> :sswitch_6a
        0x197 -> :sswitch_39
    .end sparse-switch
.end method

.method private upgradeToTls(Lcom/squareup/okhttp/TunnelRequest;)V
    .registers 12
    .param p1, "tunnelRequest"    # Lcom/squareup/okhttp/TunnelRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 123
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v0

    .line 126
    .local v0, "platform":Lcom/squareup/okhttp/internal/Platform;
    invoke-virtual {p0}, Lcom/squareup/okhttp/Connection;->requiresTunnel()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 127
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Connection;->makeTunnel(Lcom/squareup/okhttp/TunnelRequest;)V

    .line 131
    :cond_f
    iget-object v6, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v6, v6, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v6, v6, Lcom/squareup/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v7, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    iget-object v8, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v8, v8, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v8, v8, Lcom/squareup/okhttp/Address;->uriHost:Ljava/lang/String;

    iget-object v9, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v9, v9, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget v9, v9, Lcom/squareup/okhttp/Address;->uriPort:I

    invoke-virtual {v6, v7, v8, v9, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v6

    iput-object v6, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    .line 133
    iget-object v2, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    .line 134
    .local v2, "sslSocket":Ljavax/net/ssl/SSLSocket;
    iget-object v6, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-boolean v6, v6, Lcom/squareup/okhttp/Route;->modernTls:Z

    if-eqz v6, :cond_99

    .line 135
    iget-object v6, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v6, v6, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v6, v6, Lcom/squareup/okhttp/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v0, v2, v6}, Lcom/squareup/okhttp/internal/Platform;->enableTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 140
    :goto_3c
    iget-object v6, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-boolean v6, v6, Lcom/squareup/okhttp/Route;->modernTls:Z

    if-eqz v6, :cond_9d

    iget-object v6, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v6, v6, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v6, v6, Lcom/squareup/okhttp/Address;->transports:Ljava/util/List;

    const-string/jumbo v7, "spdy/3"

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9d

    move v3, v4

    .line 141
    .local v3, "useNpn":Z
    :goto_52
    if-eqz v3, :cond_59

    .line 142
    sget-object v6, Lcom/squareup/okhttp/Connection;->NPN_PROTOCOLS:[B

    invoke-virtual {v0, v2, v6}, Lcom/squareup/okhttp/internal/Platform;->setNpnProtocols(Ljavax/net/ssl/SSLSocket;[B)V

    .line 146
    :cond_59
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 149
    iget-object v6, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v6, v6, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v6, v6, Lcom/squareup/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v7, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v7, v7, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v7, v7, Lcom/squareup/okhttp/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v6

    if-nez v6, :cond_9f

    .line 150
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Hostname \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v6, v6, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v6, v6, Lcom/squareup/okhttp/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' was not verified"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    .end local v3    # "useNpn":Z
    :cond_99
    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/internal/Platform;->supportTlsIntolerantServer(Ljavax/net/ssl/SSLSocket;)V

    goto :goto_3c

    :cond_9d
    move v3, v5

    .line 140
    goto :goto_52

    .line 153
    .restart local v3    # "useNpn":Z
    :cond_9f
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/squareup/okhttp/Connection;->out:Ljava/io/OutputStream;

    .line 154
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/squareup/okhttp/Connection;->in:Ljava/io/InputStream;

    .line 157
    if-eqz v3, :cond_da

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/internal/Platform;->getNpnSelectedProtocol(Ljavax/net/ssl/SSLSocket;)[B

    move-result-object v1

    .local v1, "selectedProtocol":[B
    if-eqz v1, :cond_da

    .line 158
    sget-object v6, Lcom/squareup/okhttp/Connection;->SPDY3:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_db

    .line 159
    invoke-virtual {v2, v5}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 160
    new-instance v5, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;

    iget-object v6, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v6, v6, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    invoke-virtual {v6}, Lcom/squareup/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/squareup/okhttp/Connection;->in:Ljava/io/InputStream;

    iget-object v8, p0, Lcom/squareup/okhttp/Connection;->out:Ljava/io/OutputStream;

    invoke-direct {v5, v6, v4, v7, v8}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;-><init>(Ljava/lang/String;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->build()Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .line 162
    iget-object v4, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->sendConnectionHeader()V

    .line 168
    .end local v1    # "selectedProtocol":[B
    :cond_da
    return-void

    .line 163
    .restart local v1    # "selectedProtocol":[B
    :cond_db
    sget-object v4, Lcom/squareup/okhttp/Connection;->HTTP_11:[B

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_da

    .line 164
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected NPN transport "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    const-string/jumbo v7, "ISO-8859-1"

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 177
    return-void
.end method

.method public connect(IILcom/squareup/okhttp/TunnelRequest;)V
    .registers 8
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "tunnelRequest"    # Lcom/squareup/okhttp/TunnelRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-boolean v1, p0, Lcom/squareup/okhttp/Connection;->connected:Z

    if-eqz v1, :cond_d

    .line 97
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "already connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/squareup/okhttp/Connection;->connected:Z

    .line 100
    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v1, v1, Lcom/squareup/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_7d

    new-instance v1, Ljava/net/Socket;

    iget-object v2, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v2, v2, Lcom/squareup/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-direct {v1, v2}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    :goto_25
    iput-object v1, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    .line 101
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    iget-object v3, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v3, v3, Lcom/squareup/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v2, v3, p1}, Lcom/squareup/okhttp/internal/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V

    .line 102
    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 103
    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/Connection;->in:Ljava/io/InputStream;

    .line 104
    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/Connection;->out:Ljava/io/OutputStream;

    .line 106
    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v1, v1, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v1, v1, Lcom/squareup/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_54

    .line 107
    invoke-direct {p0, p3}, Lcom/squareup/okhttp/Connection;->upgradeToTls(Lcom/squareup/okhttp/TunnelRequest;)V

    .line 111
    :cond_54
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/Platform;->getMtu(Ljava/net/Socket;)I

    move-result v0

    .line 112
    .local v0, "mtu":I
    const/16 v1, 0x400

    if-ge v0, v1, :cond_64

    const/16 v0, 0x400

    .line 113
    :cond_64
    const/16 v1, 0x2000

    if-le v0, v1, :cond_6a

    const/16 v0, 0x2000

    .line 114
    :cond_6a
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/squareup/okhttp/Connection;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lcom/squareup/okhttp/Connection;->in:Ljava/io/InputStream;

    .line 115
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/squareup/okhttp/Connection;->out:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v1, p0, Lcom/squareup/okhttp/Connection;->out:Ljava/io/OutputStream;

    .line 116
    return-void

    .line 100
    .end local v0    # "mtu":I
    :cond_7d
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    goto :goto_25
.end method

.method public getHttpMinorVersion()I
    .registers 2

    .prologue
    .line 283
    iget v0, p0, Lcom/squareup/okhttp/Connection;->httpMinorVersion:I

    return v0
.end method

.method public getIdleStartTimeNs()J
    .registers 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    if-nez v0, :cond_7

    iget-wide v0, p0, Lcom/squareup/okhttp/Connection;->idleStartTimeNs:J

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->getIdleStartTimeNs()J

    move-result-wide v0

    goto :goto_6
.end method

.method public getRoute()Lcom/squareup/okhttp/Route;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public isAlive()Z
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/squareup/okhttp/Connection;->connected:Z

    return v0
.end method

.method public isExpired(J)Z
    .registers 7
    .param p1, "keepAliveDurationNs"    # J

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/squareup/okhttp/Connection;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/squareup/okhttp/Connection;->getIdleStartTimeNs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public isIdle()Z
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isReadable()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 203
    iget-object v6, p0, Lcom/squareup/okhttp/Connection;->in:Ljava/io/InputStream;

    instance-of v6, v6, Ljava/io/BufferedInputStream;

    if-nez v6, :cond_9

    .line 226
    :cond_8
    :goto_8
    return v4

    .line 206
    :cond_9
    invoke-virtual {p0}, Lcom/squareup/okhttp/Connection;->isSpdy()Z

    move-result v6

    if-nez v6, :cond_8

    .line 209
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/io/BufferedInputStream;

    .line 211
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    :try_start_13
    iget-object v6, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_18
    .catch Ljava/net/SocketTimeoutException; {:try_start_13 .. :try_end_18} :catch_3a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_43

    move-result v3

    .line 213
    .local v3, "readTimeout":I
    :try_start_19
    iget-object v6, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 214
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 215
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_3c

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_31

    .line 221
    :try_start_2a
    iget-object v6, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v6, v3}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_2f
    .catch Ljava/net/SocketTimeoutException; {:try_start_2a .. :try_end_2f} :catch_3a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2f} :catch_43

    move v4, v5

    goto :goto_8

    .line 218
    :cond_31
    :try_start_31
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    .line 221
    :try_start_34
    iget-object v6, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v6, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_8

    .line 223
    .end local v3    # "readTimeout":I
    :catch_3a
    move-exception v2

    .line 224
    .local v2, "ignored":Ljava/net/SocketTimeoutException;
    goto :goto_8

    .line 221
    .end local v2    # "ignored":Ljava/net/SocketTimeoutException;
    .restart local v3    # "readTimeout":I
    :catchall_3c
    move-exception v6

    iget-object v7, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v7, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v6
    :try_end_43
    .catch Ljava/net/SocketTimeoutException; {:try_start_34 .. :try_end_43} :catch_3a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_43} :catch_43

    .line 225
    .end local v3    # "readTimeout":I
    :catch_43
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move v4, v5

    .line 226
    goto :goto_8
.end method

.method public isSpdy()Z
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public newTransport(Lcom/squareup/okhttp/internal/http/HttpEngine;)Ljava/lang/Object;
    .registers 5
    .param p1, "httpEngine"    # Lcom/squareup/okhttp/internal/http/HttpEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/squareup/okhttp/internal/http/SpdyTransport;

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-direct {v0, p1, v1}, Lcom/squareup/okhttp/internal/http/SpdyTransport;-><init>(Lcom/squareup/okhttp/internal/http/HttpEngine;Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpTransport;

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/squareup/okhttp/Connection;->in:Ljava/io/InputStream;

    invoke-direct {v0, p1, v1, v2}, Lcom/squareup/okhttp/internal/http/HttpTransport;-><init>(Lcom/squareup/okhttp/internal/http/HttpEngine;Ljava/io/OutputStream;Ljava/io/InputStream;)V

    goto :goto_b
.end method

.method public requiresTunnel()Z
    .registers 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v0, v0, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v0, v0, Lcom/squareup/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v0, v0, Lcom/squareup/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public resetIdleStartTime()V
    .registers 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    if-eqz v0, :cond_d

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "spdyConnection != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp/Connection;->idleStartTimeNs:J

    .line 235
    return-void
.end method

.method public setHttpMinorVersion(I)V
    .registers 2
    .param p1, "httpMinorVersion"    # I

    .prologue
    .line 287
    iput p1, p0, Lcom/squareup/okhttp/Connection;->httpMinorVersion:I

    .line 288
    return-void
.end method
