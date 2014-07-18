.class public Lcom/airbnb/android/requests/ListingRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "ListingRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/ListingRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public listing:Lcom/airbnb/android/models/Listing;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listing"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JZLcom/airbnb/android/requests/RequestListener;)V
    .registers 7
    .param p1, "listingId"    # J
    .param p3, "useSearchInfo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/ListingRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p4, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/ListingRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "listings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lcom/airbnb/android/requests/ListingRequest;->getStrap(Z)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 18
    return-void
.end method

.method private static getStrap(Z)Lcom/airbnb/android/utils/Strap;
    .registers 8
    .param p0, "useSearchInfo"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v4, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v4}, Lcom/airbnb/android/utils/Strap;-><init>()V

    .line 24
    .local v4, "strap":Lcom/airbnb/android/utils/Strap;
    if-eqz p0, :cond_5e

    .line 25
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v2

    .line 26
    .local v2, "searchInfo":Lcom/airbnb/android/models/SearchInfo;
    invoke-virtual {v2}, Lcom/airbnb/android/models/SearchInfo;->getCheckinDate()Ljava/util/Calendar;

    move-result-object v5

    if-nez v5, :cond_68

    const/4 v3, 0x0

    .line 27
    .local v3, "startDate":Ljava/util/Date;
    :goto_16
    invoke-virtual {v2}, Lcom/airbnb/android/models/SearchInfo;->getNights()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 28
    .local v1, "nights":Ljava/lang/Integer;
    invoke-virtual {v2}, Lcom/airbnb/android/models/SearchInfo;->getGuestCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 30
    .local v0, "guests":Ljava/lang/Integer;
    if-eqz v3, :cond_48

    if-eqz v1, :cond_48

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_48

    .line 31
    const-string/jumbo v5, "checkin"

    invoke-static {v3}, Lcom/airbnb/android/utils/DateHelper;->getStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string/jumbo v5, "nights"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_48
    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_5e

    .line 35
    const-string/jumbo v5, "number_of_guests"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .end local v0    # "guests":Ljava/lang/Integer;
    .end local v1    # "nights":Ljava/lang/Integer;
    .end local v2    # "searchInfo":Lcom/airbnb/android/models/SearchInfo;
    .end local v3    # "startDate":Ljava/util/Date;
    :cond_5e
    const-string/jumbo v5, "ib_add_photo_flow"

    const-string/jumbo v6, "true"

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-object v4

    .line 26
    .restart local v2    # "searchInfo":Lcom/airbnb/android/models/SearchInfo;
    :cond_68
    invoke-virtual {v2}, Lcom/airbnb/android/models/SearchInfo;->getCheckinDate()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    goto :goto_16
.end method


# virtual methods
.method public getReturnStrategy()Lcom/android/volley/Request$ReturnStrategy;
    .registers 2

    .prologue
    .line 50
    sget-object v0, Lcom/android/volley/Request$ReturnStrategy;->NETWORK_IF_NO_CACHE:Lcom/android/volley/Request$ReturnStrategy;

    return-object v0
.end method

.method public getTTL()J
    .registers 3

    .prologue
    .line 55
    const-wide/32 v0, 0x36ee80

    return-wide v0
.end method
