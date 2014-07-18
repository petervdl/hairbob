.class public Lcom/airbnb/android/requests/ProPhotoRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "ProPhotoRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/requests/ProPhotoRequest$ProPhotographyStatus;,
        Lcom/airbnb/android/requests/ProPhotoRequest$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/ProPhotoRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private mMethodType:I

.field proPhotographyStatus:Lcom/airbnb/android/requests/ProPhotoRequest$ProPhotographyStatus;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "photography"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/android/requests/ProPhotoRequest$Type;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 6
    .param p1, "listingId"    # Ljava/lang/String;
    .param p2, "requestType"    # Lcom/airbnb/android/requests/ProPhotoRequest$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/ProPhotoRequest$Type;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/ProPhotoRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/ProPhotoRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "listings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/photography"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/airbnb/android/requests/ProPhotoRequest;->makeStrap(Lcom/airbnb/android/requests/ProPhotoRequest$Type;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/airbnb/android/requests/ProPhotoRequest;->mMethodType:I

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 5
    .param p1, "listingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/ProPhotoRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/ProPhotoRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "listings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/photography"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/android/requests/ProPhotoRequest;->mMethodType:I

    .line 35
    return-void
.end method

.method private static makeStrap(Lcom/airbnb/android/requests/ProPhotoRequest$Type;)Lcom/airbnb/android/utils/Strap;
    .registers 4
    .param p0, "requestType"    # Lcom/airbnb/android/requests/ProPhotoRequest$Type;

    .prologue
    .line 38
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "status"

    iget-object v2, p0, Lcom/airbnb/android/requests/ProPhotoRequest$Type;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getListingId()J
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/android/requests/ProPhotoRequest;->proPhotographyStatus:Lcom/airbnb/android/requests/ProPhotoRequest$ProPhotographyStatus;

    # getter for: Lcom/airbnb/android/requests/ProPhotoRequest$ProPhotographyStatus;->listingId:J
    invoke-static {v0}, Lcom/airbnb/android/requests/ProPhotoRequest$ProPhotographyStatus;->access$100(Lcom/airbnb/android/requests/ProPhotoRequest$ProPhotographyStatus;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMethod()I
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lcom/airbnb/android/requests/ProPhotoRequest;->mMethodType:I

    return v0
.end method

.method public getProPhotoStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/airbnb/android/requests/ProPhotoRequest;->proPhotographyStatus:Lcom/airbnb/android/requests/ProPhotoRequest$ProPhotographyStatus;

    # getter for: Lcom/airbnb/android/requests/ProPhotoRequest$ProPhotographyStatus;->proPhotoStatus:Ljava/lang/String;
    invoke-static {v0}, Lcom/airbnb/android/requests/ProPhotoRequest$ProPhotographyStatus;->access$000(Lcom/airbnb/android/requests/ProPhotoRequest$ProPhotographyStatus;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
