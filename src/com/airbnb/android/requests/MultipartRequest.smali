.class public Lcom/airbnb/android/requests/MultipartRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "MultipartRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/airbnb/android/requests/MultipartRequest",
        "<TT;>;>",
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mEntity:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/airbnb/android/requests/MultipartRequest;, "Lcom/airbnb/android/requests/MultipartRequest<TT;>;"
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/airbnb/android/requests/MultipartRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;Ljava/util/HashMap;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;Ljava/lang/String;Ljava/io/File;)V
    .registers 8
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/airbnb/android/requests/MultipartRequest;, "Lcom/airbnb/android/requests/MultipartRequest<TT;>;"
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 18
    invoke-static {}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->create()Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object v0

    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/requests/MultipartRequest;->getContentType(Ljava/lang/String;)Lorg/apache/http/entity/ContentType;

    move-result-object v1

    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p3, p4, v1, v2}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addBinaryBody(Ljava/lang/String;Ljava/io/File;Lorg/apache/http/entity/ContentType;Ljava/lang/String;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->build()Lorg/apache/http/HttpEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/requests/MultipartRequest;->mEntity:Lorg/apache/http/HttpEntity;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;Ljava/util/HashMap;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<TT;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/airbnb/android/requests/MultipartRequest;, "Lcom/airbnb/android/requests/MultipartRequest<TT;>;"
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<TT;>;"
    .local p3, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/File;>;"
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 24
    if-eqz p3, :cond_8

    .line 25
    invoke-direct {p0, p3}, Lcom/airbnb/android/requests/MultipartRequest;->buildMultipartEntity(Ljava/util/HashMap;)V

    .line 27
    :cond_8
    return-void
.end method

.method private buildMultipartEntity(Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/airbnb/android/requests/MultipartRequest;, "Lcom/airbnb/android/requests/MultipartRequest<TT;>;"
    .local p1, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/File;>;"
    invoke-static {}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->create()Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object v0

    .line 55
    .local v0, "builder":Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 56
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 57
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/requests/MultipartRequest;->getContentType(Ljava/lang/String;)Lorg/apache/http/entity/ContentType;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v1, v4, v5}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addBinaryBody(Ljava/lang/String;Ljava/io/File;Lorg/apache/http/entity/ContentType;Ljava/lang/String;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    goto :goto_c

    .line 60
    .end local v1    # "f":Ljava/io/File;
    .end local v3    # "key":Ljava/lang/String;
    :cond_2e
    invoke-virtual {v0}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->build()Lorg/apache/http/HttpEntity;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/requests/MultipartRequest;->mEntity:Lorg/apache/http/HttpEntity;

    .line 61
    return-void
.end method

.method public static getContentType(Ljava/lang/String;)Lorg/apache/http/entity/ContentType;
    .registers 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v2, 0x0

    .line 35
    .local v2, "type":Ljava/lang/String;
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "extension":Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 37
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    .line 38
    .local v1, "mime":Landroid/webkit/MimeTypeMap;
    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .end local v1    # "mime":Landroid/webkit/MimeTypeMap;
    :cond_f
    invoke-static {v2}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;)Lorg/apache/http/entity/ContentType;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getBodyContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    .local p0, "this":Lcom/airbnb/android/requests/MultipartRequest;, "Lcom/airbnb/android/requests/MultipartRequest<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/requests/MultipartRequest;->mEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .registers 2

    .prologue
    .line 70
    .local p0, "this":Lcom/airbnb/android/requests/MultipartRequest;, "Lcom/airbnb/android/requests/MultipartRequest<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/requests/MultipartRequest;->mEntity:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method public getMethod()I
    .registers 2

    .prologue
    .line 49
    .local p0, "this":Lcom/airbnb/android/requests/MultipartRequest;, "Lcom/airbnb/android/requests/MultipartRequest<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .registers 2
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 44
    .local p0, "this":Lcom/airbnb/android/requests/MultipartRequest;, "Lcom/airbnb/android/requests/MultipartRequest<TT;>;"
    iput-object p1, p0, Lcom/airbnb/android/requests/MultipartRequest;->mEntity:Lorg/apache/http/HttpEntity;

    .line 45
    return-void
.end method
