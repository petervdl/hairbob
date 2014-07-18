.class public Lcom/airbnb/android/requests/CalendarRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "CalendarRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/requests/CalendarRequest$CalendarWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/CalendarRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private mCalendar:Lcom/airbnb/android/requests/CalendarRequest$CalendarWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "calendar"
    .end annotation
.end field

.field mEndDate:Ljava/lang/String;

.field mListingId:Ljava/lang/Long;

.field public mReservations:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reservations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Reservation;",
            ">;"
        }
    .end annotation
.end field

.field mSquares:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/CalendarSquare;",
            ">;"
        }
    .end annotation
.end field

.field public mSquaresMap:Lcom/airbnb/android/models/SquareMap;

.field mStartDate:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "start_date"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLcom/airbnb/android/requests/RequestListener;)V
    .registers 8
    .param p1, "listingId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/CalendarRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/CalendarRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "listings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/calendar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/airbnb/android/requests/CalendarRequest;->yearStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "include_reservations"

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 20
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 10
    .param p1, "listingId"    # J
    .param p3, "startDate"    # Ljava/lang/String;
    .param p4, "endDate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/CalendarRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p5, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/CalendarRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "listings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/calendar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "start_date"

    invoke-virtual {v1, v2, p3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "end_date"

    invoke-virtual {v1, v2, p4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "include_reservations"

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {p0, v0, v1, p5}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 25
    return-void
.end method

.method private static yearStrap()Lcom/airbnb/android/utils/Strap;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 56
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 57
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 58
    .local v1, "now":Ljava/util/Date;
    invoke-virtual {v0, v4, v4}, Ljava/util/Calendar;->add(II)V

    .line 62
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 63
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 64
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 65
    .local v2, "yearFromNow":Ljava/util/Date;
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "start_date"

    invoke-static {v1}, Lcom/airbnb/android/utils/DateHelper;->getStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "end_date"

    invoke-static {v2}, Lcom/airbnb/android/utils/DateHelper;->getStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method protected preProcess()V
    .registers 8

    .prologue
    .line 33
    iget-object v5, p0, Lcom/airbnb/android/requests/CalendarRequest;->mCalendar:Lcom/airbnb/android/requests/CalendarRequest$CalendarWrapper;

    iget-object v5, v5, Lcom/airbnb/android/requests/CalendarRequest$CalendarWrapper;->mSquares:Ljava/util/List;

    iput-object v5, p0, Lcom/airbnb/android/requests/CalendarRequest;->mSquares:Ljava/util/List;

    .line 34
    iget-object v5, p0, Lcom/airbnb/android/requests/CalendarRequest;->mCalendar:Lcom/airbnb/android/requests/CalendarRequest$CalendarWrapper;

    iget-object v5, v5, Lcom/airbnb/android/requests/CalendarRequest$CalendarWrapper;->mStartDate:Ljava/lang/String;

    iput-object v5, p0, Lcom/airbnb/android/requests/CalendarRequest;->mStartDate:Ljava/lang/String;

    .line 35
    iget-object v5, p0, Lcom/airbnb/android/requests/CalendarRequest;->mCalendar:Lcom/airbnb/android/requests/CalendarRequest$CalendarWrapper;

    iget-object v5, v5, Lcom/airbnb/android/requests/CalendarRequest$CalendarWrapper;->mEndDate:Ljava/lang/String;

    iput-object v5, p0, Lcom/airbnb/android/requests/CalendarRequest;->mEndDate:Ljava/lang/String;

    .line 36
    iget-object v5, p0, Lcom/airbnb/android/requests/CalendarRequest;->mCalendar:Lcom/airbnb/android/requests/CalendarRequest$CalendarWrapper;

    iget-object v5, v5, Lcom/airbnb/android/requests/CalendarRequest$CalendarWrapper;->mListingId:Ljava/lang/Long;

    iput-object v5, p0, Lcom/airbnb/android/requests/CalendarRequest;->mListingId:Ljava/lang/Long;

    .line 38
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v4, "unavailableDates":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/CalendarSquare;>;"
    new-instance v1, Ljava/util/HashMap;

    iget-object v5, p0, Lcom/airbnb/android/requests/CalendarRequest;->mReservations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 40
    .local v1, "resMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/airbnb/android/models/Reservation;>;"
    iget-object v5, p0, Lcom/airbnb/android/requests/CalendarRequest;->mReservations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Reservation;

    .line 41
    .local v2, "reservation":Lcom/airbnb/android/models/Reservation;
    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 44
    .end local v2    # "reservation":Lcom/airbnb/android/models/Reservation;
    :cond_46
    new-instance v5, Lcom/airbnb/android/models/SquareMap;

    invoke-direct {v5}, Lcom/airbnb/android/models/SquareMap;-><init>()V

    iput-object v5, p0, Lcom/airbnb/android/requests/CalendarRequest;->mSquaresMap:Lcom/airbnb/android/models/SquareMap;

    .line 45
    iget-object v5, p0, Lcom/airbnb/android/requests/CalendarRequest;->mSquares:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_53
    :goto_53
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/CalendarSquare;

    .line 46
    .local v3, "square":Lcom/airbnb/android/models/CalendarSquare;
    iget-object v5, p0, Lcom/airbnb/android/requests/CalendarRequest;->mSquaresMap:Lcom/airbnb/android/models/SquareMap;

    invoke-virtual {v3}, Lcom/airbnb/android/models/CalendarSquare;->getDateString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/airbnb/android/models/SquareMap;->put(Ljava/lang/String;Lcom/airbnb/android/models/CalendarSquare;)Lcom/airbnb/android/models/CalendarSquare;

    .line 47
    invoke-virtual {v3}, Lcom/airbnb/android/models/CalendarSquare;->getAvailability()Z

    move-result v5

    if-nez v5, :cond_53

    .line 48
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 51
    .end local v3    # "square":Lcom/airbnb/android/models/CalendarSquare;
    :cond_72
    iget-object v5, p0, Lcom/airbnb/android/requests/CalendarRequest;->mSquaresMap:Lcom/airbnb/android/models/SquareMap;

    invoke-virtual {v5, v4}, Lcom/airbnb/android/models/SquareMap;->setUnavailableDates(Ljava/util/List;)V

    .line 52
    iget-object v5, p0, Lcom/airbnb/android/requests/CalendarRequest;->mSquaresMap:Lcom/airbnb/android/models/SquareMap;

    invoke-virtual {v5, v1}, Lcom/airbnb/android/models/SquareMap;->setReservationMap(Ljava/util/HashMap;)V

    .line 53
    return-void
.end method
