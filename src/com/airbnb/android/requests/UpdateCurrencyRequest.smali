.class public Lcom/airbnb/android/requests/UpdateCurrencyRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "UpdateCurrencyRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/UpdateCurrencyRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 7
    const-string/jumbo v0, "account/update"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 8
    return-void
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 12
    const/4 v0, 0x1

    return v0
.end method
