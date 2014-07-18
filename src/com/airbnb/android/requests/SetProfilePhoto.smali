.class public Lcom/airbnb/android/requests/SetProfilePhoto;
.super Lcom/airbnb/android/requests/MultipartRequest;
.source "SetProfilePhoto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/MultipartRequest",
        "<",
        "Lcom/airbnb/android/requests/SetProfilePhoto;",
        ">;"
    }
.end annotation


# instance fields
.field private mUserWrapper:Lcom/airbnb/android/requests/Wrappers$UserWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user"
    .end annotation
.end field

.field public user:Lcom/airbnb/android/models/User;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/SetProfilePhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/SetProfilePhoto;>;"
    const-string/jumbo v0, "account/update"

    const-string/jumbo v1, "user[photo]"

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/airbnb/android/requests/MultipartRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;Ljava/lang/String;Ljava/io/File;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected preProcess()V
    .registers 5

    .prologue
    .line 24
    iget-object v1, p0, Lcom/airbnb/android/requests/SetProfilePhoto;->mUserWrapper:Lcom/airbnb/android/requests/Wrappers$UserWrapper;

    iget-object v0, v1, Lcom/airbnb/android/requests/Wrappers$UserWrapper;->user:Lcom/airbnb/android/models/User;

    .line 25
    .local v0, "responseUser":Lcom/airbnb/android/models/User;
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/requests/SetProfilePhoto;->user:Lcom/airbnb/android/models/User;

    .line 29
    iget-object v1, p0, Lcom/airbnb/android/requests/SetProfilePhoto;->user:Lcom/airbnb/android/models/User;

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getPictureUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/models/User;->setPictureUrl(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/airbnb/android/requests/SetProfilePhoto;->user:Lcom/airbnb/android/models/User;

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/models/User;->setThumbnailUrl(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/airbnb/android/requests/SetProfilePhoto;->user:Lcom/airbnb/android/models/User;

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getPictureUrlLarge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/models/User;->setPictureUrlLarge(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/requests/SetProfilePhoto;->user:Lcom/airbnb/android/models/User;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/AirbnbApi;->setCurrentUser(Lcom/airbnb/android/models/User;Z)V

    .line 34
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v2, Lcom/airbnb/android/events/ProfilePhotoUpdatedEvent;

    invoke-direct {v2}, Lcom/airbnb/android/events/ProfilePhotoUpdatedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 35
    return-void
.end method
