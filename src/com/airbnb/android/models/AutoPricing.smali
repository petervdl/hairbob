.class public Lcom/airbnb/android/models/AutoPricing;
.super Lcom/airbnb/android/models/_AutoPricing;
.source "AutoPricing.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/AutoPricing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/android/models/AutoPricing$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/AutoPricing$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/AutoPricing;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/models/_AutoPricing;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_AutoPricing;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCleaning()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_AutoPricing;->getCleaning()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDaily()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_AutoPricing;->getDaily()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMonthly()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_AutoPricing;->getMonthly()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWeekly()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_AutoPricing;->getWeekly()I

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_AutoPricing;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setCleaning(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_AutoPricing;->setCleaning(I)V

    return-void
.end method

.method public bridge synthetic setDaily(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_AutoPricing;->setDaily(I)V

    return-void
.end method

.method public bridge synthetic setMonthly(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_AutoPricing;->setMonthly(I)V

    return-void
.end method

.method public bridge synthetic setWeekly(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_AutoPricing;->setWeekly(I)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_AutoPricing;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
