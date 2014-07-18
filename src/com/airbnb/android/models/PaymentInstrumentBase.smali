.class abstract Lcom/airbnb/android/models/PaymentInstrumentBase;
.super Ljava/lang/Object;
.source "PaymentInstrumentBase.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2e2d79a019c4ed76L


# instance fields
.field protected mCardType:Ljava/lang/String;

.field protected mId:J

.field protected mLastFourDigits:Ljava/lang/String;

.field protected mListingId:J

.field protected mPaymentType:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 8
    .param p1, "lastFourDigits"    # Ljava/lang/String;
    .param p2, "cardType"    # Ljava/lang/String;
    .param p3, "paymentType"    # Ljava/lang/String;
    .param p4, "id"    # J
    .param p6, "listingId"    # J

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/airbnb/android/models/PaymentInstrumentBase;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/airbnb/android/models/PaymentInstrumentBase;->mLastFourDigits:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/airbnb/android/models/PaymentInstrumentBase;->mCardType:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/airbnb/android/models/PaymentInstrumentBase;->mPaymentType:Ljava/lang/String;

    .line 24
    iput-wide p4, p0, Lcom/airbnb/android/models/PaymentInstrumentBase;->mId:J

    .line 25
    iput-wide p6, p0, Lcom/airbnb/android/models/PaymentInstrumentBase;->mListingId:J

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getCardType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/airbnb/android/models/PaymentInstrumentBase;->mCardType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/airbnb/android/models/PaymentInstrumentBase;->mId:J

    return-wide v0
.end method

.method public getLastFourDigits()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airbnb/android/models/PaymentInstrumentBase;->mLastFourDigits:Ljava/lang/String;

    return-object v0
.end method

.method public getListingId()J
    .registers 3

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/airbnb/android/models/PaymentInstrumentBase;->mListingId:J

    return-wide v0
.end method

.method public getPaymentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/airbnb/android/models/PaymentInstrumentBase;->mPaymentType:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/PaymentInstrumentBase;->mLastFourDigits:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/PaymentInstrumentBase;->mCardType:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/PaymentInstrumentBase;->mPaymentType:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/models/PaymentInstrumentBase;->mId:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/models/PaymentInstrumentBase;->mListingId:J

    .line 95
    return-void
.end method

.method public setCardType(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cc_type"
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lcom/airbnb/android/models/PaymentInstrumentBase;->mCardType:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/airbnb/android/models/PaymentInstrumentBase;->mId:J

    .line 66
    return-void
.end method

.method public setLastFourDigits(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cc_last_four"
    .end annotation

    .prologue
    .line 38
    iput-object p1, p0, Lcom/airbnb/android/models/PaymentInstrumentBase;->mLastFourDigits:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setListingId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listing_id"
    .end annotation

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/airbnb/android/models/PaymentInstrumentBase;->mListingId:J

    .line 75
    return-void
.end method

.method public setPaymentType(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "instrument_type"
    .end annotation

    .prologue
    .line 56
    iput-object p1, p0, Lcom/airbnb/android/models/PaymentInstrumentBase;->mPaymentType:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/airbnb/android/models/PaymentInstrumentBase;->mLastFourDigits:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/airbnb/android/models/PaymentInstrumentBase;->mCardType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/airbnb/android/models/PaymentInstrumentBase;->mPaymentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-wide v0, p0, Lcom/airbnb/android/models/PaymentInstrumentBase;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    iget-wide v0, p0, Lcom/airbnb/android/models/PaymentInstrumentBase;->mListingId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    return-void
.end method
