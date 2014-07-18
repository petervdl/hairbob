.class Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadRequest;
.super Lcom/airbnb/android/requests/MultipartRequest;
.source "GroupPhotoUploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/services/GroupPhotoUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupPhotoUploadRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/MultipartRequest",
        "<",
        "Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public mPhoto:Lcom/airbnb/android/models/Photo;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "photo"
    .end annotation
.end field

.field final synthetic this$0:Lcom/airbnb/android/services/GroupPhotoUploadService;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/services/GroupPhotoUploadService;Ljava/io/File;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 6
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadRequest;>;"
    iput-object p1, p0, Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadRequest;->this$0:Lcom/airbnb/android/services/GroupPhotoUploadService;

    .line 36
    const-string/jumbo v0, "groups/photos"

    const-string/jumbo v1, "image"

    invoke-direct {p0, v0, p3, v1, p2}, Lcom/airbnb/android/requests/MultipartRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;Ljava/lang/String;Ljava/io/File;)V

    .line 37
    return-void
.end method


# virtual methods
.method public isSingleFire()Z
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method
