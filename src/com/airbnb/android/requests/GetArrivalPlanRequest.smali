.class public Lcom/airbnb/android/requests/GetArrivalPlanRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "GetArrivalPlanRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/GetArrivalPlanRequest;",
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
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 5
    .param p1, "confirmationCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/GetArrivalPlanRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/GetArrivalPlanRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "arrivals/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 11
    return-void
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/airbnb/android/requests/AirbnbRequest;->deliverErrorNoToast(Lcom/android/volley/VolleyError;)V

    .line 21
    return-void
.end method
