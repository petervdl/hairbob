.class public Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "OfficialIdSupportedCountriesRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public countries:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "countries"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest$Country;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/android/requests/RequestListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/OfficialIdSupportedCountriesRequest;>;"
    const-string/jumbo v0, "official_id/supported"

    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getTTL()J
    .registers 3

    .prologue
    .line 41
    const-wide v0, 0x9cbea964L

    return-wide v0
.end method
