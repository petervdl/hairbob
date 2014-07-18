.class public Lcom/airbnb/android/requests/ListingAvailabilityRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "ListingAvailabilityRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/requests/ListingAvailabilityRequest$AvailabilityResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/ListingAvailabilityRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private mAvailabilityResult:Lcom/airbnb/android/requests/ListingAvailabilityRequest$AvailabilityResult;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "result"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/util/Date;Ljava/util/Date;ILcom/airbnb/android/requests/RequestListener;)V
    .registers 9
    .param p1, "id"    # J
    .param p3, "checkIn"    # Ljava/util/Date;
    .param p4, "checkOut"    # Ljava/util/Date;
    .param p5, "numGuests"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "I",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/ListingAvailabilityRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p6, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/ListingAvailabilityRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "listings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p4, p5}, Lcom/airbnb/android/requests/ListingAvailabilityRequest;->getProperties(Ljava/util/Date;Ljava/util/Date;I)Ljava/util/Properties;

    move-result-object v1

    invoke-direct {p0, v0, v1, p6}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 13
    return-void
.end method

.method private static getProperties(Ljava/util/Date;Ljava/util/Date;I)Ljava/util/Properties;
    .registers 6
    .param p0, "checkIn"    # Ljava/util/Date;
    .param p1, "checkOut"    # Ljava/util/Date;
    .param p2, "numGuests"    # I

    .prologue
    .line 16
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 17
    .local v0, "p":Ljava/util/Properties;
    const-string/jumbo v1, "checkin"

    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/airbnb/android/AirbnbApi;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string/jumbo v1, "checkout"

    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/airbnb/android/AirbnbApi;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string/jumbo v1, "number_of_guests"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-object v0
.end method


# virtual methods
.method public getResult()Lcom/airbnb/android/requests/ListingAvailabilityRequest$AvailabilityResult;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/android/requests/ListingAvailabilityRequest;->mAvailabilityResult:Lcom/airbnb/android/requests/ListingAvailabilityRequest$AvailabilityResult;

    return-object v0
.end method
