.class public Lcom/airbnb/android/models/TripInvoiceItem;
.super Lcom/airbnb/android/models/_TripInvoiceItem;
.source "TripInvoiceItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/TripInvoiceItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    new-instance v0, Lcom/airbnb/android/models/TripInvoiceItem$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/TripInvoiceItem$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/TripInvoiceItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/airbnb/android/models/_TripInvoiceItem;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoiceItem;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCanceledAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoiceItem;->getCanceledAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConsumerAmountNative()F
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoiceItem;->getConsumerAmountNative()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getConsumerCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoiceItem;->getConsumerCurrency()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConsumerFeeNative()F
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoiceItem;->getConsumerFeeNative()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getConsumerTotalAmountNative()F
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoiceItem;->getConsumerTotalAmountNative()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoiceItem;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDisputeStatus()Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;
    .registers 3

    .prologue
    .line 23
    invoke-static {}, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;->values()[Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/models/TripInvoiceItem;->getDisputeStatus()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic getDisputeStatus()I
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoiceItem;->getDisputeStatus()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()J
    .registers 3

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoiceItem;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getItemType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoiceItem;->getItemType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatestDisputeAttachment()Lcom/airbnb/android/models/TripInvoiceItemAttachment;
    .registers 7

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/airbnb/android/models/TripInvoiceItem;->getTripInvoiceItemAttachments()Ljava/util/List;

    move-result-object v1

    .line 40
    .local v1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/TripInvoiceItemAttachment;>;"
    const/4 v3, 0x0

    .line 41
    .local v3, "latestDisputeAttachment":Lcom/airbnb/android/models/TripInvoiceItemAttachment;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/TripInvoiceItemAttachment;

    .line 42
    .local v0, "attachment":Lcom/airbnb/android/models/TripInvoiceItemAttachment;
    invoke-virtual {v0}, Lcom/airbnb/android/models/TripInvoiceItemAttachment;->isDisputeAttachment()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 43
    if-nez v3, :cond_1f

    .line 44
    move-object v3, v0

    goto :goto_9

    .line 45
    :cond_1f
    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/airbnb/android/models/TripInvoiceItemAttachment;->getCreatedAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3}, Lcom/airbnb/android/models/TripInvoiceItemAttachment;->getCreatedAt()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 46
    move-object v3, v0

    goto :goto_9

    .line 51
    .end local v0    # "attachment":Lcom/airbnb/android/models/TripInvoiceItemAttachment;
    :cond_31
    return-object v3
.end method

.method public bridge synthetic getPayment2Id()J
    .registers 3

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoiceItem;->getPayment2Id()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getRefundedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoiceItem;->getRefundedAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTripInvoiceItemAttachments()Ljava/util/List;
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoiceItem;->getTripInvoiceItemAttachments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTripProduct()Lcom/airbnb/android/models/TripProduct;
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoiceItem;->getTripProduct()Lcom/airbnb/android/models/TripProduct;

    move-result-object v0

    return-object v0
.end method

.method public isCredit()Z
    .registers 3

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/airbnb/android/models/TripInvoiceItem;->getItemType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Credit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .registers 3

    .prologue
    .line 30
    sget-object v0, Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;->ACCEPTED:Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    invoke-virtual {p0}, Lcom/airbnb/android/models/TripInvoiceItem;->getCurrentDisputeStatus()Lcom/airbnb/android/models/TripInvoiceItem$DisputeStatus;

    move-result-object v1

    if-eq v0, v1, :cond_14

    invoke-virtual {p0}, Lcom/airbnb/android/models/TripInvoiceItem;->getRefundedAt()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/airbnb/android/models/TripInvoiceItem;->getCanceledAt()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isPending()Z
    .registers 5

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/airbnb/android/models/TripInvoiceItem;->getPayment2Id()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TripInvoiceItem;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setCanceledAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Date;

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TripInvoiceItem;->setCanceledAt(Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic setConsumerAmountNative(F)V
    .registers 2
    .param p1, "x0"    # F

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TripInvoiceItem;->setConsumerAmountNative(F)V

    return-void
.end method

.method public bridge synthetic setConsumerCurrency(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TripInvoiceItem;->setConsumerCurrency(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setConsumerFeeNative(F)V
    .registers 2
    .param p1, "x0"    # F

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TripInvoiceItem;->setConsumerFeeNative(F)V

    return-void
.end method

.method public bridge synthetic setConsumerTotalAmountNative(F)V
    .registers 2
    .param p1, "x0"    # F

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TripInvoiceItem;->setConsumerTotalAmountNative(F)V

    return-void
.end method

.method public bridge synthetic setCreatedAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Date;

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TripInvoiceItem;->setCreatedAt(Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic setDisputeStatus(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TripInvoiceItem;->setDisputeStatus(I)V

    return-void
.end method

.method public bridge synthetic setId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 9
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_TripInvoiceItem;->setId(J)V

    return-void
.end method

.method public bridge synthetic setItemType(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TripInvoiceItem;->setItemType(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPayment2Id(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 9
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_TripInvoiceItem;->setPayment2Id(J)V

    return-void
.end method

.method public bridge synthetic setRefundedAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Date;

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TripInvoiceItem;->setRefundedAt(Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic setTripInvoiceItemAttachments(Ljava/util/List;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TripInvoiceItem;->setTripInvoiceItemAttachments(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setTripProduct(Lcom/airbnb/android/models/TripProduct;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/TripProduct;

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TripInvoiceItem;->setTripProduct(Lcom/airbnb/android/models/TripProduct;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 9
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_TripInvoiceItem;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
