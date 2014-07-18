.class public Lcom/airbnb/android/requests/SearchRequest$SearchMetaData;
.super Ljava/lang/Object;
.source "SearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/SearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchMetaData"
.end annotation


# instance fields
.field public currencyType:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "native_currency"
    .end annotation
.end field

.field public maxFilterPrice:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "price_range_max_native"
    .end annotation
.end field

.field public minFilterPrice:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "price_range_min_native"
    .end annotation
.end field

.field public priceType:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "price_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isPriceMonthly()Z
    .registers 3

    .prologue
    .line 48
    const-string/jumbo v0, "monthly"

    iget-object v1, p0, Lcom/airbnb/android/requests/SearchRequest$SearchMetaData;->priceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
