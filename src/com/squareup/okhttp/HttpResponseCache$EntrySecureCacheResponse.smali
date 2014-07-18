.class Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;
.super Ljava/net/SecureCacheResponse;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/HttpResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntrySecureCacheResponse"
.end annotation


# instance fields
.field private final entry:Lcom/squareup/okhttp/HttpResponseCache$Entry;

.field private final in:Ljava/io/InputStream;

.field private final snapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/HttpResponseCache$Entry;Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)V
    .registers 4
    .param p1, "entry"    # Lcom/squareup/okhttp/HttpResponseCache$Entry;
    .param p2, "snapshot"    # Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    .prologue
    .line 700
    invoke-direct {p0}, Ljava/net/SecureCacheResponse;-><init>()V

    .line 701
    iput-object p1, p0, Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/HttpResponseCache$Entry;

    .line 702
    iput-object p2, p0, Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;->snapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    .line 703
    # invokes: Lcom/squareup/okhttp/HttpResponseCache;->newBodyInputStream(Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)Ljava/io/InputStream;
    invoke-static {p2}, Lcom/squareup/okhttp/HttpResponseCache;->access$1000(Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;->in:Ljava/io/InputStream;

    .line 704
    return-void
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/HttpResponseCache$Entry;

    # getter for: Lcom/squareup/okhttp/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;
    invoke-static {v0}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->access$1200(Lcom/squareup/okhttp/HttpResponseCache$Entry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 707
    iget-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/HttpResponseCache$Entry;

    # getter for: Lcom/squareup/okhttp/HttpResponseCache$Entry;->responseHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;
    invoke-static {v0}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->access$1100(Lcom/squareup/okhttp/HttpResponseCache$Entry;)Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLocalCertificateChain()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 734
    iget-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/HttpResponseCache$Entry;

    # getter for: Lcom/squareup/okhttp/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->access$1400(Lcom/squareup/okhttp/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/HttpResponseCache$Entry;

    # getter for: Lcom/squareup/okhttp/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->access$1400(Lcom/squareup/okhttp/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_13

    .line 735
    :cond_11
    const/4 v0, 0x0

    .line 737
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/HttpResponseCache$Entry;

    # getter for: Lcom/squareup/okhttp/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->access$1400(Lcom/squareup/okhttp/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_12
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .registers 3

    .prologue
    .line 741
    iget-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/HttpResponseCache$Entry;

    # getter for: Lcom/squareup/okhttp/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->access$1400(Lcom/squareup/okhttp/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/HttpResponseCache$Entry;

    # getter for: Lcom/squareup/okhttp/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->access$1400(Lcom/squareup/okhttp/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_13

    .line 742
    :cond_11
    const/4 v0, 0x0

    .line 744
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/HttpResponseCache$Entry;

    # getter for: Lcom/squareup/okhttp/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->access$1400(Lcom/squareup/okhttp/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_12
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 727
    iget-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/HttpResponseCache$Entry;

    # getter for: Lcom/squareup/okhttp/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->access$1300(Lcom/squareup/okhttp/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/HttpResponseCache$Entry;

    # getter for: Lcom/squareup/okhttp/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->access$1300(Lcom/squareup/okhttp/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_18

    .line 728
    :cond_11
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_18
    iget-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/HttpResponseCache$Entry;

    # getter for: Lcom/squareup/okhttp/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->access$1300(Lcom/squareup/okhttp/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificateChain()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 720
    iget-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/HttpResponseCache$Entry;

    # getter for: Lcom/squareup/okhttp/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->access$1300(Lcom/squareup/okhttp/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/HttpResponseCache$Entry;

    # getter for: Lcom/squareup/okhttp/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->access$1300(Lcom/squareup/okhttp/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_18

    .line 721
    :cond_11
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_18
    iget-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/squareup/okhttp/HttpResponseCache$Entry;

    # getter for: Lcom/squareup/okhttp/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->access$1300(Lcom/squareup/okhttp/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
