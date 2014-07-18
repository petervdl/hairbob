.class abstract Lcom/airbnb/android/models/_AutoPricing;
.super Ljava/lang/Object;
.source "_AutoPricing.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mCleaning:I

.field protected mDaily:I

.field protected mMonthly:I

.field protected mWeekly:I


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method protected constructor <init>(IIII)V
    .registers 5
    .param p1, "daily"    # I
    .param p2, "weekly"    # I
    .param p3, "monthly"    # I
    .param p4, "cleaning"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/airbnb/android/models/_AutoPricing;-><init>()V

    .line 20
    iput p1, p0, Lcom/airbnb/android/models/_AutoPricing;->mDaily:I

    .line 21
    iput p2, p0, Lcom/airbnb/android/models/_AutoPricing;->mWeekly:I

    .line 22
    iput p3, p0, Lcom/airbnb/android/models/_AutoPricing;->mMonthly:I

    .line 23
    iput p4, p0, Lcom/airbnb/android/models/_AutoPricing;->mCleaning:I

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getCleaning()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/airbnb/android/models/_AutoPricing;->mCleaning:I

    return v0
.end method

.method public getDaily()I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lcom/airbnb/android/models/_AutoPricing;->mDaily:I

    return v0
.end method

.method public getMonthly()I
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Lcom/airbnb/android/models/_AutoPricing;->mMonthly:I

    return v0
.end method

.method public getWeekly()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lcom/airbnb/android/models/_AutoPricing;->mWeekly:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/models/_AutoPricing;->mDaily:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/models/_AutoPricing;->mWeekly:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/models/_AutoPricing;->mMonthly:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/models/_AutoPricing;->mCleaning:I

    .line 90
    return-void
.end method

.method public setCleaning(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cleaning"
    .end annotation

    .prologue
    .line 70
    iput p1, p0, Lcom/airbnb/android/models/_AutoPricing;->mCleaning:I

    .line 71
    return-void
.end method

.method public setDaily(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "daily"
    .end annotation

    .prologue
    .line 37
    iput p1, p0, Lcom/airbnb/android/models/_AutoPricing;->mDaily:I

    .line 38
    return-void
.end method

.method public setMonthly(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "monthly"
    .end annotation

    .prologue
    .line 59
    iput p1, p0, Lcom/airbnb/android/models/_AutoPricing;->mMonthly:I

    .line 60
    return-void
.end method

.method public setWeekly(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "weekly"
    .end annotation

    .prologue
    .line 48
    iput p1, p0, Lcom/airbnb/android/models/_AutoPricing;->mWeekly:I

    .line 49
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 79
    iget v0, p0, Lcom/airbnb/android/models/_AutoPricing;->mDaily:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Lcom/airbnb/android/models/_AutoPricing;->mWeekly:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Lcom/airbnb/android/models/_AutoPricing;->mMonthly:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Lcom/airbnb/android/models/_AutoPricing;->mCleaning:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return-void
.end method
