.class public Lcom/airbnb/android/requests/GetCountryFromIPRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "GetCountryFromIPRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/GetCountryFromIPRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public country:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "country"
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
            "Lcom/airbnb/android/requests/GetCountryFromIPRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/GetCountryFromIPRequest;>;"
    const-string/jumbo v0, "i18n/country_of_ip_address"

    invoke-direct {p0, v0, p1}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 9
    return-void
.end method
