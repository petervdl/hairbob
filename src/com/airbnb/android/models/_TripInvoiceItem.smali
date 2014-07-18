.class abstract Lcom/airbnb/android/models/_TripInvoiceItem;
.super Ljava/lang/Object;
.source "_TripInvoiceItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mCanceledAt:Ljava/util/Date;

.field protected mConsumerAmountNative:F

.field protected mConsumerCurrency:Ljava/lang/String;

.field protected mConsumerFeeNative:F

.field protected mConsumerTotalAmountNative:F

.field protected mCreatedAt:Ljava/util/Date;

.field protected mDisputeStatus:I

.field protected mId:J

.field protected mItemType:Ljava/lang/String;

.field protected mPayment2Id:J

.field protected mRefundedAt:Ljava/util/Date;

.field protected mTripInvoiceItemAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/TripInvoiceItemAttachment;",
            ">;"
        }
    .end annotation
.end field

.field protected mTripProduct:Lcom/airbnb/android/models/TripProduct;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/models/TripProduct;FFFIJJ)V
    .registers 16
    .param p1, "createdAt"    # Ljava/util/Date;
    .param p2, "canceledAt"    # Ljava/util/Date;
    .param p3, "refundedAt"    # Ljava/util/Date;
    .param p5, "itemType"    # Ljava/lang/String;
    .param p6, "consumerCurrency"    # Ljava/lang/String;
    .param p7, "tripProduct"    # Lcom/airbnb/android/models/TripProduct;
    .param p8, "consumerAmountNative"    # F
    .param p9, "consumerFeeNative"    # F
    .param p10, "consumerTotalAmountNative"    # F
    .param p11, "disputeStatus"    # I
    .param p12, "id"    # J
    .param p14, "payment2Id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/TripInvoiceItemAttachment;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/models/TripProduct;",
            "FFFIJJ)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p4, "tripInvoiceItemAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/TripInvoiceItemAttachment;>;"
    invoke-direct {p0}, Lcom/airbnb/android/models/_TripInvoiceItem;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mCreatedAt:Ljava/util/Date;

    .line 32
    iput-object p2, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mCanceledAt:Ljava/util/Date;

    .line 33
    iput-object p3, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mRefundedAt:Ljava/util/Date;

    .line 34
    iput-object p4, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mTripInvoiceItemAttachments:Ljava/util/List;

    .line 35
    iput-object p5, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mItemType:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mConsumerCurrency:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mTripProduct:Lcom/airbnb/android/models/TripProduct;

    .line 38
    iput p8, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mConsumerAmountNative:F

    .line 39
    iput p9, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mConsumerFeeNative:F

    .line 40
    iput p10, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mConsumerTotalAmountNative:F

    .line 41
    iput p11, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mDisputeStatus:I

    .line 42
    iput-wide p12, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mId:J

    .line 43
    iput-wide p14, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mPayment2Id:J

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public getCanceledAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mCanceledAt:Ljava/util/Date;

    return-object v0
.end method

.method public getConsumerAmountNative()F
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mConsumerAmountNative:F

    return v0
.end method

.method public getConsumerCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mConsumerCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumerFeeNative()F
    .registers 2

    .prologue
    .line 139
    iget v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mConsumerFeeNative:F

    return v0
.end method

.method public getConsumerTotalAmountNative()F
    .registers 2

    .prologue
    .line 150
    iget v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mConsumerTotalAmountNative:F

    return v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mCreatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getDisputeStatus()I
    .registers 2

    .prologue
    .line 161
    iget v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mDisputeStatus:I

    return v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mId:J

    return-wide v0
.end method

.method public getItemType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mItemType:Ljava/lang/String;

    return-object v0
.end method

.method public getPayment2Id()J
    .registers 3

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mPayment2Id:J

    return-wide v0
.end method

.method public getRefundedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mRefundedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getTripInvoiceItemAttachments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/TripInvoiceItemAttachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mTripInvoiceItemAttachments:Ljava/util/List;

    return-object v0
.end method

.method public getTripProduct()Lcom/airbnb/android/models/TripProduct;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mTripProduct:Lcom/airbnb/android/models/TripProduct;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const-wide/32 v7, -0x80000000

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 215
    .local v0, "date0":J
    cmp-long v6, v0, v7

    if-eqz v6, :cond_12

    .line 216
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v6, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mCreatedAt:Ljava/util/Date;

    .line 218
    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 219
    .local v2, "date1":J
    cmp-long v6, v2, v7

    if-eqz v6, :cond_21

    .line 220
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v6, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mCanceledAt:Ljava/util/Date;

    .line 222
    :cond_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 223
    .local v4, "date2":J
    cmp-long v6, v4, v7

    if-eqz v6, :cond_30

    .line 224
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v6, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mRefundedAt:Ljava/util/Date;

    .line 226
    :cond_30
    sget-object v6, Lcom/airbnb/android/models/TripInvoiceItemAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mTripInvoiceItemAttachments:Ljava/util/List;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mItemType:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mConsumerCurrency:Ljava/lang/String;

    .line 229
    const-class v6, Lcom/airbnb/android/models/TripProduct;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/models/TripProduct;

    iput-object v6, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mTripProduct:Lcom/airbnb/android/models/TripProduct;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    iput v6, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mConsumerAmountNative:F

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    iput v6, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mConsumerFeeNative:F

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    iput v6, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mConsumerTotalAmountNative:F

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mDisputeStatus:I

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mId:J

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mPayment2Id:J

    .line 236
    return-void
.end method

.method public setCanceledAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "value"    # Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "canceled_at"
    .end annotation

    .prologue
    .line 68
    iput-object p1, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mCanceledAt:Ljava/util/Date;

    .line 69
    return-void
.end method

.method public setConsumerAmountNative(F)V
    .registers 2
    .param p1, "value"    # F
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "consumer_amount_native"
    .end annotation

    .prologue
    .line 134
    iput p1, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mConsumerAmountNative:F

    .line 135
    return-void
.end method

.method public setConsumerCurrency(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "consumer_currency"
    .end annotation

    .prologue
    .line 112
    iput-object p1, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mConsumerCurrency:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setConsumerFeeNative(F)V
    .registers 2
    .param p1, "value"    # F
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "consumer_fee_native"
    .end annotation

    .prologue
    .line 145
    iput p1, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mConsumerFeeNative:F

    .line 146
    return-void
.end method

.method public setConsumerTotalAmountNative(F)V
    .registers 2
    .param p1, "value"    # F
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "consumer_total_amount_native"
    .end annotation

    .prologue
    .line 156
    iput p1, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mConsumerTotalAmountNative:F

    .line 157
    return-void
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "value"    # Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_at"
    .end annotation

    .prologue
    .line 57
    iput-object p1, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mCreatedAt:Ljava/util/Date;

    .line 58
    return-void
.end method

.method public setDisputeStatus(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "dispute_status"
    .end annotation

    .prologue
    .line 167
    iput p1, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mDisputeStatus:I

    .line 168
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mId:J

    .line 179
    return-void
.end method

.method public setItemType(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "item_type"
    .end annotation

    .prologue
    .line 101
    iput-object p1, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mItemType:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setPayment2Id(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "payment2_id"
    .end annotation

    .prologue
    .line 189
    iput-wide p1, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mPayment2Id:J

    .line 190
    return-void
.end method

.method public setRefundedAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "value"    # Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "refunded_at"
    .end annotation

    .prologue
    .line 79
    iput-object p1, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mRefundedAt:Ljava/util/Date;

    .line 80
    return-void
.end method

.method public setTripInvoiceItemAttachments(Ljava/util/List;)V
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "trip_invoice_item_attachments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/TripInvoiceItemAttachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/TripInvoiceItemAttachment;>;"
    iput-object p1, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mTripInvoiceItemAttachments:Ljava/util/List;

    .line 91
    return-void
.end method

.method public setTripProduct(Lcom/airbnb/android/models/TripProduct;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/TripProduct;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "trip_product"
    .end annotation

    .prologue
    .line 123
    iput-object p1, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mTripProduct:Lcom/airbnb/android/models/TripProduct;

    .line 124
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const-wide/32 v2, -0x80000000

    .line 198
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mCreatedAt:Ljava/util/Date;

    if-nez v0, :cond_4e

    move-wide v0, v2

    :goto_8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 199
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mCanceledAt:Ljava/util/Date;

    if-nez v0, :cond_55

    move-wide v0, v2

    :goto_10
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 200
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mRefundedAt:Ljava/util/Date;

    if-nez v0, :cond_5c

    :goto_17
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 201
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mTripInvoiceItemAttachments:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 202
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mItemType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mConsumerCurrency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mTripProduct:Lcom/airbnb/android/models/TripProduct;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 205
    iget v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mConsumerAmountNative:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 206
    iget v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mConsumerFeeNative:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 207
    iget v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mConsumerTotalAmountNative:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 208
    iget v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mDisputeStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget-wide v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 210
    iget-wide v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mPayment2Id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 211
    return-void

    .line 198
    :cond_4e
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mCreatedAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_8

    .line 199
    :cond_55
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mCanceledAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_10

    .line 200
    :cond_5c
    iget-object v0, p0, Lcom/airbnb/android/models/_TripInvoiceItem;->mRefundedAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_17
.end method
