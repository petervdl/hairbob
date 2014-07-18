.class public Lcom/airbnb/android/requests/ListingUnavailabilityRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "ListingUnavailabilityRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/requests/ListingUnavailabilityRequest$UnavailabilityResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/ListingUnavailabilityRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public mUnavailabilityResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private result:Lcom/airbnb/android/requests/ListingUnavailabilityRequest$UnavailabilityResult;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "result"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLcom/airbnb/android/requests/RequestListener;)V
    .registers 6
    .param p1, "listingId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/ListingUnavailabilityRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/ListingUnavailabilityRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "listings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/unavailabilities"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/airbnb/android/requests/ListingUnavailabilityRequest;->makeProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 21
    return-void
.end method

.method private static makeProperties()Ljava/util/Properties;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 39
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 40
    .local v1, "props":Ljava/util/Properties;
    const-string/jumbo v2, "start_date"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/airbnb/android/utils/DateHelper;->getStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 42
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, v4, v4}, Ljava/util/Calendar;->add(II)V

    .line 43
    const-string/jumbo v2, "end_date"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/utils/DateHelper;->getStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-object v1
.end method


# virtual methods
.method protected preProcess()V
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airbnb/android/requests/ListingUnavailabilityRequest;->result:Lcom/airbnb/android/requests/ListingUnavailabilityRequest$UnavailabilityResult;

    # getter for: Lcom/airbnb/android/requests/ListingUnavailabilityRequest$UnavailabilityResult;->unavailability:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/airbnb/android/requests/ListingUnavailabilityRequest$UnavailabilityResult;->access$000(Lcom/airbnb/android/requests/ListingUnavailabilityRequest$UnavailabilityResult;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/requests/ListingUnavailabilityRequest;->mUnavailabilityResult:Ljava/util/ArrayList;

    .line 34
    return-void
.end method
