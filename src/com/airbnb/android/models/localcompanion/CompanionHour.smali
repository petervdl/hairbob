.class public Lcom/airbnb/android/models/localcompanion/CompanionHour;
.super Lcom/airbnb/android/models/localcompanion/_CompanionHour;
.source "CompanionHour.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/localcompanion/CompanionHour;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/android/models/localcompanion/CompanionHour$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/localcompanion/CompanionHour$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/localcompanion/CompanionHour;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionHour;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionHour;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDay()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionHour;->getDay()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionHour;->getTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionHour;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setDay(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionHour;->setDay(I)V

    return-void
.end method

.method public bridge synthetic setTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionHour;->setTime(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/localcompanion/_CompanionHour;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
