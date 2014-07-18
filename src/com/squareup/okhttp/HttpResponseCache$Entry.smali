.class final Lcom/squareup/okhttp/HttpResponseCache$Entry;
.super Ljava/lang/Object;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/HttpResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field private final cipherSuite:Ljava/lang/String;

.field private final localCertificates:[Ljava/security/cert/Certificate;

.field private final peerCertificates:[Ljava/security/cert/Certificate;

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

.field private final uri:Ljava/lang/String;

.field private final varyHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 10
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    :try_start_3
    new-instance v2, Lcom/squareup/okhttp/internal/StrictLineReader;

    sget-object v5, Lcom/squareup/okhttp/internal/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v5}, Lcom/squareup/okhttp/internal/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 514
    .local v2, "reader":Lcom/squareup/okhttp/internal/StrictLineReader;
    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    .line 515
    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    .line 516
    new-instance v5, Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-direct {v5}, Lcom/squareup/okhttp/internal/http/RawHeaders;-><init>()V

    iput-object v5, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->varyHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    .line 517
    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/StrictLineReader;->readInt()I

    move-result v4

    .line 518
    .local v4, "varyRequestHeaderLineCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    if-ge v1, v4, :cond_30

    .line 519
    iget-object v5, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->varyHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/internal/http/RawHeaders;->addLine(Ljava/lang/String;)V

    .line 518
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 522
    :cond_30
    new-instance v5, Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-direct {v5}, Lcom/squareup/okhttp/internal/http/RawHeaders;-><init>()V

    iput-object v5, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->responseHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    .line 523
    iget-object v5, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->responseHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/internal/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/StrictLineReader;->readInt()I

    move-result v3

    .line 525
    .local v3, "responseHeaderLineCount":I
    const/4 v1, 0x0

    :goto_45
    if-ge v1, v3, :cond_53

    .line 526
    iget-object v5, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->responseHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/internal/http/RawHeaders;->addLine(Ljava/lang/String;)V

    .line 525
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 529
    :cond_53
    invoke-direct {p0}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->isHttps()Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 530
    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "blank":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_89

    .line 532
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "expected \"\" but was \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_84
    .catchall {:try_start_3 .. :try_end_84} :catchall_84

    .line 543
    .end local v0    # "blank":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "reader":Lcom/squareup/okhttp/internal/StrictLineReader;
    .end local v3    # "responseHeaderLineCount":I
    .end local v4    # "varyRequestHeaderLineCount":I
    :catchall_84
    move-exception v5

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v5

    .line 534
    .restart local v0    # "blank":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "reader":Lcom/squareup/okhttp/internal/StrictLineReader;
    .restart local v3    # "responseHeaderLineCount":I
    .restart local v4    # "varyRequestHeaderLineCount":I
    :cond_89
    :try_start_89
    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    .line 535
    invoke-direct {p0, v2}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->readCertArray(Lcom/squareup/okhttp/internal/StrictLineReader;)[Ljava/security/cert/Certificate;

    move-result-object v5

    iput-object v5, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 536
    invoke-direct {p0, v2}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->readCertArray(Lcom/squareup/okhttp/internal/StrictLineReader;)[Ljava/security/cert/Certificate;

    move-result-object v5

    iput-object v5, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    :try_end_9b
    .catchall {:try_start_89 .. :try_end_9b} :catchall_84

    .line 543
    .end local v0    # "blank":Ljava/lang/String;
    :goto_9b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 545
    return-void

    .line 538
    :cond_9f
    const/4 v5, 0x0

    :try_start_a0
    iput-object v5, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    .line 539
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 540
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    :try_end_a8
    .catchall {:try_start_a0 .. :try_end_a8} :catchall_84

    goto :goto_9b
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/squareup/okhttp/internal/http/RawHeaders;Ljava/net/HttpURLConnection;)V
    .registers 9
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "varyHeaders"    # Lcom/squareup/okhttp/internal/http/RawHeaders;
    .param p3, "httpConnection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    .line 550
    iput-object p2, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->varyHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    .line 551
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    .line 552
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/http/RawHeaders;->fromMultimap(Ljava/util/Map;Z)Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->responseHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    .line 554
    invoke-direct {p0, p3}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->getSslSocket(Ljava/net/HttpURLConnection;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    .line 555
    .local v1, "sslSocket":Ljavax/net/ssl/SSLSocket;
    if-eqz v1, :cond_43

    .line 556
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    .line 557
    const/4 v0, 0x0

    .line 559
    .local v0, "peerCertificatesNonFinal":[Ljava/security/cert/Certificate;
    :try_start_2e
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;
    :try_end_35
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2e .. :try_end_35} :catch_4a

    move-result-object v0

    .line 562
    :goto_36
    iput-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 563
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    .line 569
    .end local v0    # "peerCertificatesNonFinal":[Ljava/security/cert/Certificate;
    :goto_42
    return-void

    .line 565
    :cond_43
    iput-object v4, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    .line 566
    iput-object v4, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 567
    iput-object v4, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    goto :goto_42

    .line 560
    .restart local v0    # "peerCertificatesNonFinal":[Ljava/security/cert/Certificate;
    :catch_4a
    move-exception v2

    goto :goto_36
.end method

.method static synthetic access$1100(Lcom/squareup/okhttp/HttpResponseCache$Entry;)Lcom/squareup/okhttp/internal/http/RawHeaders;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/HttpResponseCache$Entry;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->responseHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/squareup/okhttp/HttpResponseCache$Entry;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/HttpResponseCache$Entry;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/squareup/okhttp/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/HttpResponseCache$Entry;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/squareup/okhttp/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/HttpResponseCache$Entry;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method static synthetic access$400(Lcom/squareup/okhttp/HttpResponseCache$Entry;)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/HttpResponseCache$Entry;

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->isHttps()Z

    move-result v0

    return v0
.end method

.method private getSslSocket(Ljava/net/HttpURLConnection;)Ljavax/net/ssl/SSLSocket;
    .registers 4
    .param p1, "httpConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 579
    instance-of v1, p1, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;

    if-eqz v1, :cond_15

    check-cast p1, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;

    .end local p1    # "httpConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->getHttpEngine()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v0

    .line 582
    .local v0, "engine":Lcom/squareup/okhttp/internal/http/HttpEngine;
    :goto_a
    instance-of v1, v0, Lcom/squareup/okhttp/internal/http/HttpsEngine;

    if-eqz v1, :cond_1c

    check-cast v0, Lcom/squareup/okhttp/internal/http/HttpsEngine;

    .end local v0    # "engine":Lcom/squareup/okhttp/internal/http/HttpEngine;
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsEngine;->getSslSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    :goto_14
    return-object v1

    .line 579
    .restart local p1    # "httpConnection":Ljava/net/HttpURLConnection;
    :cond_15
    check-cast p1, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    .end local p1    # "httpConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getHttpEngine()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v0

    goto :goto_a

    .line 582
    .restart local v0    # "engine":Lcom/squareup/okhttp/internal/http/HttpEngine;
    :cond_1c
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private isHttps()Z
    .registers 3

    .prologue
    .line 614
    iget-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertArray(Lcom/squareup/okhttp/internal/StrictLineReader;)[Ljava/security/cert/Certificate;
    .registers 11
    .param p1, "reader"    # Lcom/squareup/okhttp/internal/StrictLineReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/StrictLineReader;->readInt()I

    move-result v4

    .line 619
    .local v4, "length":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_9

    .line 620
    const/4 v6, 0x0

    .line 630
    :cond_8
    return-object v6

    .line 623
    :cond_9
    :try_start_9
    const-string/jumbo v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 624
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-array v6, v4, [Ljava/security/cert/Certificate;

    .line 625
    .local v6, "result":[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    array-length v7, v6

    if-ge v3, v7, :cond_8

    .line 626
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 627
    .local v5, "line":Ljava/lang/String;
    const-string/jumbo v7, "US-ASCII"

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/squareup/okhttp/internal/Base64;->decode([B)[B

    move-result-object v0

    .line 628
    .local v0, "bytes":[B
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    aput-object v7, v6, v3
    :try_end_30
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_30} :catch_33

    .line 625
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 631
    .end local v0    # "bytes":[B
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "i":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "result":[Ljava/security/cert/Certificate;
    :catch_33
    move-exception v2

    .line 632
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V
    .registers 12
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "certificates"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 637
    if-nez p2, :cond_9

    .line 638
    const-string/jumbo v7, "-1\n"

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 651
    :cond_8
    return-void

    .line 642
    :cond_9
    :try_start_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    array-length v8, p2

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 643
    move-object v0, p2

    .local v0, "arr$":[Ljava/security/cert/Certificate;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_27
    if-ge v4, v5, :cond_8

    aget-object v2, v0, v4

    .line 644
    .local v2, "certificate":Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    .line 645
    .local v1, "bytes":[B
    invoke-static {v1}, Lcom/squareup/okhttp/internal/Base64;->encode([B)Ljava/lang/String;

    move-result-object v6

    .line 646
    .local v6, "line":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_9 .. :try_end_49} :catch_4c

    .line 643
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 648
    .end local v0    # "arr$":[Ljava/security/cert/Certificate;
    .end local v1    # "bytes":[B
    .end local v2    # "certificate":Ljava/security/cert/Certificate;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "line":Ljava/lang/String;
    :catch_4c
    move-exception v3

    .line 649
    .local v3, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public matches(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Z
    .registers 7
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 655
    iget-object v1, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    new-instance v1, Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    iget-object v2, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->responseHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-direct {v1, p1, v2}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/squareup/okhttp/internal/http/RawHeaders;)V

    iget-object v2, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->varyHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->varyMatches(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v0, 0x1

    :cond_29
    return v0
.end method

.method public writeTo(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
    .registers 8
    .param p1, "editor"    # Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 588
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v1

    .line 589
    .local v1, "out":Ljava/io/OutputStream;
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Lcom/squareup/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 591
    .local v2, "writer":Ljava/io/Writer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 592
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 593
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->varyHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/RawHeaders;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 594
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5e
    iget-object v3, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->varyHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/RawHeaders;->length()I

    move-result v3

    if-ge v0, v3, :cond_94

    .line 595
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->varyHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->varyHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 594
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 598
    :cond_94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->responseHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 599
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->responseHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/RawHeaders;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 600
    const/4 v0, 0x0

    :goto_cd
    iget-object v3, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->responseHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/RawHeaders;->length()I

    move-result v3

    if-ge v0, v3, :cond_103

    .line 601
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->responseHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->responseHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 600
    add-int/lit8 v0, v0, 0x1

    goto :goto_cd

    .line 604
    :cond_103
    invoke-direct {p0}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->isHttps()Z

    move-result v3

    if-eqz v3, :cond_12c

    .line 605
    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(I)V

    .line 606
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 607
    iget-object v3, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v2, v3}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 608
    iget-object v3, p0, Lcom/squareup/okhttp/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v2, v3}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 610
    :cond_12c
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 611
    return-void
.end method
