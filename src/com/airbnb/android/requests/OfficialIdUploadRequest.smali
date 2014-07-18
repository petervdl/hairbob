.class public Lcom/airbnb/android/requests/OfficialIdUploadRequest;
.super Lcom/airbnb/android/requests/MultipartRequest;
.source "OfficialIdUploadRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/MultipartRequest",
        "<",
        "Lcom/airbnb/android/requests/OfficialIdUploadRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final BACK_ID_PARAM:Ljava/lang/String; = "back_image"

.field private static final COUNTRY_PARAM:Ljava/lang/String; = "country"

.field private static final FRONT_ID_PARAM:Ljava/lang/String; = "front_image"

.field private static final ID_TYPE_PARAM:Ljava/lang/String; = "idType"

.field private static final STATUS_SUCCESS:Ljava/lang/String; = "success"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public scanReference:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "scan_reference"
    .end annotation
.end field

.field public status:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/airbnb/android/requests/OfficialIdUploadRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/requests/OfficialIdUploadRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 7
    .param p1, "frontIdFile"    # Ljava/io/File;
    .param p2, "backIdFile"    # Ljava/io/File;
    .param p3, "country"    # Ljava/lang/String;
    .param p4, "idType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/OfficialIdUploadRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p5, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/OfficialIdUploadRequest;>;"
    const-string/jumbo v0, "official_id/upload"

    invoke-direct {p0, v0, p5}, Lcom/airbnb/android/requests/MultipartRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/airbnb/android/requests/OfficialIdUploadRequest;->createEntity(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/OfficialIdUploadRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 24
    return-void
.end method

.method private createEntity(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    .registers 9
    .param p1, "frontIdFile"    # Ljava/io/File;
    .param p2, "backIdFile"    # Ljava/io/File;
    .param p3, "country"    # Ljava/lang/String;
    .param p4, "idType"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->create()Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object v0

    .line 28
    .local v0, "builder":Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    const-string/jumbo v1, "front_image"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/requests/OfficialIdUploadRequest;->getContentType(Ljava/lang/String;)Lorg/apache/http/entity/ContentType;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addBinaryBody(Ljava/lang/String;Ljava/io/File;Lorg/apache/http/entity/ContentType;Ljava/lang/String;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    .line 30
    if-eqz p2, :cond_2a

    .line 31
    const-string/jumbo v1, "back_image"

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/requests/OfficialIdUploadRequest;->getContentType(Ljava/lang/String;)Lorg/apache/http/entity/ContentType;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p2, v2, v3}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addBinaryBody(Ljava/lang/String;Ljava/io/File;Lorg/apache/http/entity/ContentType;Ljava/lang/String;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    .line 34
    :cond_2a
    const-string/jumbo v1, "country"

    invoke-virtual {v0, v1, p3}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addTextBody(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    .line 35
    const-string/jumbo v1, "idType"

    invoke-virtual {v0, v1, p4}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addTextBody(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    .line 37
    invoke-virtual {v0}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->build()Lorg/apache/http/HttpEntity;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public isSuccess()Z
    .registers 3

    .prologue
    .line 46
    const-string/jumbo v0, "success"

    iget-object v1, p0, Lcom/airbnb/android/requests/OfficialIdUploadRequest;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
