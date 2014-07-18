.class public Lcom/airbnb/android/requests/PayoutCountriesRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "PayoutCountriesRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/requests/PayoutCountriesRequest$Country;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/PayoutCountriesRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private countryCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private countryNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public rawCountries:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "countries"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/PayoutCountriesRequest$Country;",
            ">;"
        }
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
            "Lcom/airbnb/android/requests/PayoutCountriesRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/PayoutCountriesRequest;>;"
    const-string/jumbo v0, "payout_infos/countries"

    invoke-direct {p0, v0, p1}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getSupportedCountries()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/airbnb/android/requests/PayoutCountriesRequest;->countryCodes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSupportedCountriesNames()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/airbnb/android/requests/PayoutCountriesRequest;->countryNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isPermaCache()Z
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public preProcess()V
    .registers 5

    .prologue
    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/requests/PayoutCountriesRequest;->countryCodes:Ljava/util/ArrayList;

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/requests/PayoutCountriesRequest;->countryNames:Ljava/util/ArrayList;

    .line 32
    iget-object v2, p0, Lcom/airbnb/android/requests/PayoutCountriesRequest;->rawCountries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/requests/PayoutCountriesRequest$Country;

    .line 33
    .local v0, "country":Lcom/airbnb/android/requests/PayoutCountriesRequest$Country;
    iget-object v2, p0, Lcom/airbnb/android/requests/PayoutCountriesRequest;->countryCodes:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/airbnb/android/requests/PayoutCountriesRequest$Country;->country_code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v2, p0, Lcom/airbnb/android/requests/PayoutCountriesRequest;->countryNames:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/airbnb/android/requests/PayoutCountriesRequest$Country;->country_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 36
    .end local v0    # "country":Lcom/airbnb/android/requests/PayoutCountriesRequest$Country;
    :cond_2f
    return-void
.end method
