.class Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadRequest;
.super Lcom/airbnb/android/requests/MultipartRequest;
.source "PhotoUploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/services/PhotoUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoUploadRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/MultipartRequest",
        "<",
        "Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final photosKey:Ljava/lang/String; = "photos[]"


# instance fields
.field public mListing:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listing"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/airbnb/android/services/PhotoUploadService;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/services/PhotoUploadService;JLjava/io/File;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 8
    .param p2, "listingId"    # J
    .param p4, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/io/File;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p5, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadRequest;>;"
    iput-object p1, p0, Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadRequest;->this$0:Lcom/airbnb/android/services/PhotoUploadService;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "listings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "photos[]"

    invoke-direct {p0, v0, p5, v1, p4}, Lcom/airbnb/android/requests/MultipartRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;Ljava/lang/String;Ljava/io/File;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/airbnb/android/services/PhotoUploadService;JLjava/util/List;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 8
    .param p2, "listingId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p4, "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadRequest;>;"
    iput-object p1, p0, Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadRequest;->this$0:Lcom/airbnb/android/services/PhotoUploadService;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "listings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Lcom/airbnb/android/requests/MultipartRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 47
    invoke-direct {p0, p4}, Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadRequest;->createEntity(Ljava/util/List;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 48
    return-void
.end method

.method private createEntity(Ljava/util/List;)Lorg/apache/http/HttpEntity;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpEntity;"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->create()Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object v0

    .line 53
    .local v0, "builder":Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 54
    .local v1, "file":Ljava/lang/String;
    const-string/jumbo v3, "photos[]"

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadRequest;->getContentType(Ljava/lang/String;)Lorg/apache/http/entity/ContentType;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5, v1}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addBinaryBody(Ljava/lang/String;Ljava/io/File;Lorg/apache/http/entity/ContentType;Ljava/lang/String;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    goto :goto_8

    .line 57
    .end local v1    # "file":Ljava/lang/String;
    :cond_24
    invoke-virtual {v0}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->build()Lorg/apache/http/HttpEntity;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public isSingleFire()Z
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method
