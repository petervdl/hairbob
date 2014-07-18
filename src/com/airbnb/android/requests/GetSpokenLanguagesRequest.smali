.class public Lcom/airbnb/android/requests/GetSpokenLanguagesRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "GetSpokenLanguagesRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/GetSpokenLanguagesRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public languages:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "languages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/SpokenLanguage;",
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
            "Lcom/airbnb/android/requests/GetSpokenLanguagesRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/GetSpokenLanguagesRequest;>;"
    const-string/jumbo v0, "users/spoken_languages"

    invoke-direct {p0, v0, p1}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getTTL()J
    .registers 3

    .prologue
    .line 19
    const-wide v0, 0x9cbea964L

    return-wide v0
.end method
