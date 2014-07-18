.class public Lcom/airbnb/android/models/TripInvoice;
.super Lcom/airbnb/android/models/_TripInvoice;
.source "TripInvoice.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/TripInvoice;",
            ">;"
        }
    .end annotation
.end field

.field public static mPaidTripInvoiceItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/TripInvoiceItem;",
            ">;"
        }
    .end annotation
.end field

.field public static mPendingTripInvoiceItems:Ljava/util/List;
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
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Lcom/airbnb/android/models/TripInvoice$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/TripInvoice$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/TripInvoice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/airbnb/android/models/_TripInvoice;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 8
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoice;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getConsumerBalanceNative()F
    .registers 2

    .prologue
    .line 8
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoice;->getConsumerBalanceNative()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getConsumerCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoice;->getConsumerCurrency()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConsumerTotalNative()F
    .registers 2

    .prologue
    .line 8
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoice;->getConsumerTotalNative()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()J
    .registers 3

    .prologue
    .line 8
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoice;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPaidTripInvoiceItems()Ljava/util/List;
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
    .line 35
    sget-object v0, Lcom/airbnb/android/models/TripInvoice;->mPaidTripInvoiceItems:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getParentId()J
    .registers 3

    .prologue
    .line 8
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoice;->getParentId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getParentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoice;->getParentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPaymentInstrumentId()J
    .registers 3

    .prologue
    .line 8
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoice;->getPaymentInstrumentId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPendingTripInvoiceItems()Ljava/util/List;
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
    .line 27
    sget-object v0, Lcom/airbnb/android/models/TripInvoice;->mPendingTripInvoiceItems:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getTripInvoiceItems()Ljava/util/List;
    .registers 2

    .prologue
    .line 8
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoice;->getTripInvoiceItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TripInvoice;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setConsumerBalanceNative(F)V
    .registers 2
    .param p1, "x0"    # F

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TripInvoice;->setConsumerBalanceNative(F)V

    return-void
.end method

.method public bridge synthetic setConsumerCurrency(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TripInvoice;->setConsumerCurrency(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setConsumerTotalNative(F)V
    .registers 2
    .param p1, "x0"    # F

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TripInvoice;->setConsumerTotalNative(F)V

    return-void
.end method

.method public bridge synthetic setId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 8
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_TripInvoice;->setId(J)V

    return-void
.end method

.method public setPaidTripInvoiceItems(Ljava/util/List;)V
    .registers 2
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
    .line 39
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/TripInvoiceItem;>;"
    sput-object p1, Lcom/airbnb/android/models/TripInvoice;->mPaidTripInvoiceItems:Ljava/util/List;

    .line 40
    return-void
.end method

.method public bridge synthetic setParentId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 8
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_TripInvoice;->setParentId(J)V

    return-void
.end method

.method public bridge synthetic setParentType(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TripInvoice;->setParentType(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPaymentInstrumentId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 8
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_TripInvoice;->setPaymentInstrumentId(J)V

    return-void
.end method

.method public setPendingTripInvoiceItems(Ljava/util/List;)V
    .registers 2
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
    .line 31
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/TripInvoiceItem;>;"
    sput-object p1, Lcom/airbnb/android/models/TripInvoice;->mPendingTripInvoiceItems:Ljava/util/List;

    .line 32
    return-void
.end method

.method public bridge synthetic setTripInvoiceItems(Ljava/util/List;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TripInvoice;->setTripInvoiceItems(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 8
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_TripInvoice;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
