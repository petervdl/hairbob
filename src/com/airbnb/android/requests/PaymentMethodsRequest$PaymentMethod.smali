.class public Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod;
.super Ljava/lang/Object;
.source "PaymentMethodsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/PaymentMethodsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaymentMethod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod$CurrencyInfo;
    }
.end annotation


# instance fields
.field public currency:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "currency"
    .end annotation
.end field

.field public currencyInfo:Lcom/airbnb/android/requests/PaymentMethodsRequest$PaymentMethod$CurrencyInfo;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "currency_info"
    .end annotation
.end field

.field public totalCharge:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "total_charge"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method
