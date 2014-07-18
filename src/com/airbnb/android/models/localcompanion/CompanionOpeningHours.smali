.class public Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;
.super Lcom/airbnb/android/models/localcompanion/_CompanionOpeningHours;
.source "CompanionOpeningHours.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionOpeningHours;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionOpeningHours;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getClose()Lcom/airbnb/android/models/localcompanion/CompanionHour;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionOpeningHours;->getClose()Lcom/airbnb/android/models/localcompanion/CompanionHour;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOpen()Lcom/airbnb/android/models/localcompanion/CompanionHour;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionOpeningHours;->getOpen()Lcom/airbnb/android/models/localcompanion/CompanionHour;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionOpeningHours;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setClose(Lcom/airbnb/android/models/localcompanion/CompanionHour;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/localcompanion/CompanionHour;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionOpeningHours;->setClose(Lcom/airbnb/android/models/localcompanion/CompanionHour;)V

    return-void
.end method

.method public bridge synthetic setOpen(Lcom/airbnb/android/models/localcompanion/CompanionHour;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/localcompanion/CompanionHour;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionOpeningHours;->setOpen(Lcom/airbnb/android/models/localcompanion/CompanionHour;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/localcompanion/_CompanionOpeningHours;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
