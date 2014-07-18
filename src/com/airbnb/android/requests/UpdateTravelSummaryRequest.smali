.class public Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "UpdateTravelSummaryRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public arrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "arrival_plan"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 4
    .param p1, "travelSummaryParams"    # Lcom/airbnb/android/utils/Strap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/utils/Strap;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;>;"
    const-string/jumbo v0, "arrivals"

    invoke-direct {p0, v0, p1, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 15
    const/4 v0, 0x1

    return v0
.end method
