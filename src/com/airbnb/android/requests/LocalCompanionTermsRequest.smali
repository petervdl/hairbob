.class public Lcom/airbnb/android/requests/LocalCompanionTermsRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "LocalCompanionTermsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/LocalCompanionTermsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public terms:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "terms"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/android/requests/RequestListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/LocalCompanionTermsRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/LocalCompanionTermsRequest;>;"
    const-string/jumbo v0, "companion/terms"

    invoke-direct {p0, v0, p1}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 9
    return-void
.end method
