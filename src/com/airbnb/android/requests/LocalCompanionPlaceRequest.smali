.class public Lcom/airbnb/android/requests/LocalCompanionPlaceRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "LocalCompanionPlaceRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/LocalCompanionPlaceRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public companionPlace:Lcom/airbnb/android/models/localcompanion/CompanionPlace;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "companion_place"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLcom/airbnb/android/requests/RequestListener;)V
    .registers 6
    .param p1, "placeId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/LocalCompanionPlaceRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/LocalCompanionPlaceRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "companion/places/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 10
    return-void
.end method
