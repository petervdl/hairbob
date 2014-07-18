.class public Lcom/airbnb/android/models/SecurityCheckPhoneNumber;
.super Lcom/airbnb/android/models/_SecurityCheckPhoneNumber;
.source "SecurityCheckPhoneNumber.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/SecurityCheckPhoneNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/android/models/SecurityCheckPhoneNumber$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/SecurityCheckPhoneNumber$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/SecurityCheckPhoneNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/models/_SecurityCheckPhoneNumber;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_SecurityCheckPhoneNumber;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()J
    .registers 3

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_SecurityCheckPhoneNumber;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLastFourDigits()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_SecurityCheckPhoneNumber;->getLastFourDigits()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SecurityCheckPhoneNumber;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_SecurityCheckPhoneNumber;->setId(J)V

    return-void
.end method

.method public bridge synthetic setLastFourDigits(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SecurityCheckPhoneNumber;->setLastFourDigits(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_SecurityCheckPhoneNumber;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
