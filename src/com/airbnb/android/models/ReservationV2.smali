.class public Lcom/airbnb/android/models/ReservationV2;
.super Lcom/airbnb/android/models/Reservation;
.source "ReservationV2.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/airbnb/android/models/Reservation;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndDate()Ljava/util/Date;
    .registers 3

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/airbnb/android/models/ReservationV2;->getStartDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/models/ReservationV2;->getReservedNightsCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/DateHelper;->dateByOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public setListing(Lcom/airbnb/android/models/Listing;)V
    .registers 2
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listing"
    .end annotation

    .prologue
    .line 12
    iput-object p1, p0, Lcom/airbnb/android/models/ReservationV2;->mListing:Lcom/airbnb/android/models/Listing;

    .line 13
    return-void
.end method
