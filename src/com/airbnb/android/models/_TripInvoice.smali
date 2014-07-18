.class abstract Lcom/airbnb/android/models/_TripInvoice;
.super Ljava/lang/Object;
.source "_TripInvoice.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mConsumerBalanceNative:F

.field protected mConsumerCurrency:Ljava/lang/String;

.field protected mConsumerTotalNative:F

.field protected mId:J

.field protected mParentId:J

.field protected mParentType:Ljava/lang/String;

.field protected mPaymentInstrumentId:J

.field protected mTripInvoiceItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/TripInvoiceItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FFJJJ)V
    .registers 12
    .param p2, "parentType"    # Ljava/lang/String;
    .param p3, "consumerCurrency"    # Ljava/lang/String;
    .param p4, "consumerBalanceNative"    # F
    .param p5, "consumerTotalNative"    # F
    .param p6, "id"    # J
    .param p8, "parentId"    # J
    .param p10, "paymentInstrumentId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/TripInvoiceItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FFJJJ)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "tripInvoiceItems":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/TripInvoiceItem;>;"
    invoke-direct {p0}, Lcom/airbnb/android/models/_TripInvoice;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/airbnb/android/models/_TripInvoice;->mTripInvoiceItems:Ljava/util/List;

    .line 26
    iput-object p2, p0, Lcom/airbnb/android/models/_TripInvoice;->mParentType:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/airbnb/android/models/_TripInvoice;->mConsumerCurrency:Ljava/lang/String;

    .line 28
    iput p4, p0, Lcom/airbnb/android/models/_TripInvoice;->mConsumerBalanceNative:F

    .line 29
    iput p5, p0, Lcom/airbnb/android/models/_TripInvoice;->mConsumerTotalNative:F

    .line 30
    iput-wide p6, p0, Lcom/airbnb/android/models/_TripInvoice;->mId:J

    .line 31
    iput-wide p8, p0, Lcom/airbnb/android/models/_TripInvoice;->mParentId:J

    .line 32
    iput-wide p10, p0, Lcom/airbnb/android/models/_TripInvoice;->mPaymentInstrumentId:J

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getConsumerBalanceNative()F
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/airbnb/android/models/_TripInvoice;->mConsumerBalanceNative:F

    return v0
.end method

.method public getConsumerCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoice;->mConsumerCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumerTotalNative()F
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lcom/airbnb/android/models/_TripInvoice;->mConsumerTotalNative:F

    return v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/airbnb/android/models/_TripInvoice;->mId:J

    return-wide v0
.end method

.method public getParentId()J
    .registers 3

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/airbnb/android/models/_TripInvoice;->mParentId:J

    return-wide v0
.end method

.method public getParentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoice;->mParentType:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentInstrumentId()J
    .registers 3

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/airbnb/android/models/_TripInvoice;->mPaymentInstrumentId:J

    return-wide v0
.end method

.method public getTripInvoiceItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/TripInvoiceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoice;->mTripInvoiceItems:Ljava/util/List;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 143
    sget-object v0, Lcom/airbnb/android/models/TripInvoiceItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_TripInvoice;->mTripInvoiceItems:Ljava/util/List;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_TripInvoice;->mParentType:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_TripInvoice;->mConsumerCurrency:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/airbnb/android/models/_TripInvoice;->mConsumerBalanceNative:F

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/airbnb/android/models/_TripInvoice;->mConsumerTotalNative:F

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/models/_TripInvoice;->mId:J

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/models/_TripInvoice;->mParentId:J

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/models/_TripInvoice;->mPaymentInstrumentId:J

    .line 151
    return-void
.end method

.method public setConsumerBalanceNative(F)V
    .registers 2
    .param p1, "value"    # F
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "consumer_balance_native"
    .end annotation

    .prologue
    .line 79
    iput p1, p0, Lcom/airbnb/android/models/_TripInvoice;->mConsumerBalanceNative:F

    .line 80
    return-void
.end method

.method public setConsumerCurrency(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "consumer_currency"
    .end annotation

    .prologue
    .line 68
    iput-object p1, p0, Lcom/airbnb/android/models/_TripInvoice;->mConsumerCurrency:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setConsumerTotalNative(F)V
    .registers 2
    .param p1, "value"    # F
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "consumer_total_native"
    .end annotation

    .prologue
    .line 90
    iput p1, p0, Lcom/airbnb/android/models/_TripInvoice;->mConsumerTotalNative:F

    .line 91
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/airbnb/android/models/_TripInvoice;->mId:J

    .line 102
    return-void
.end method

.method public setParentId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "parent_id"
    .end annotation

    .prologue
    .line 112
    iput-wide p1, p0, Lcom/airbnb/android/models/_TripInvoice;->mParentId:J

    .line 113
    return-void
.end method

.method public setParentType(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "parent_type"
    .end annotation

    .prologue
    .line 57
    iput-object p1, p0, Lcom/airbnb/android/models/_TripInvoice;->mParentType:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setPaymentInstrumentId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "payment_instrument_id"
    .end annotation

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/airbnb/android/models/_TripInvoice;->mPaymentInstrumentId:J

    .line 124
    return-void
.end method

.method public setTripInvoiceItems(Ljava/util/List;)V
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "trip_invoice_items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/TripInvoiceItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/TripInvoiceItem;>;"
    iput-object p1, p0, Lcom/airbnb/android/models/_TripInvoice;->mTripInvoiceItems:Ljava/util/List;

    .line 47
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoice;->mTripInvoiceItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 133
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoice;->mParentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoice;->mConsumerCurrency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget v0, p0, Lcom/airbnb/android/models/_TripInvoice;->mConsumerBalanceNative:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 136
    iget v0, p0, Lcom/airbnb/android/models/_TripInvoice;->mConsumerTotalNative:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 137
    iget-wide v0, p0, Lcom/airbnb/android/models/_TripInvoice;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 138
    iget-wide v0, p0, Lcom/airbnb/android/models/_TripInvoice;->mParentId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 139
    iget-wide v0, p0, Lcom/airbnb/android/models/_TripInvoice;->mPaymentInstrumentId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 140
    return-void
.end method
