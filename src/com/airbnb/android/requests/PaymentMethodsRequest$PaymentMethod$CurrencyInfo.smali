.class public Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod$CurrencyInfo;
.super Ljava/lang/Object;
.source "PaymentMethodsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurrencyInfo"
.end annotation


# instance fields
.field public fromCurrency:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "from_currency"
    .end annotation
.end field

.field public fxFeeRate:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "fx_fee_rate"
    .end annotation
.end field

.field public toCurrency:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "to_currency"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
