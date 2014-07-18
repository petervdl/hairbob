.class public Lcom/airbnb/android/models/BadgeCount;
.super Lcom/airbnb/android/models/_BadgeCount;
.source "BadgeCount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/models/BadgeCount$BadgeType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/BadgeCount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/airbnb/android/models/BadgeCount$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/BadgeCount$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/BadgeCount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/airbnb/android/models/_BadgeCount;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/_BadgeCount;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getHostGroups()I
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/_BadgeCount;->getHostGroups()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getHostHome()I
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/_BadgeCount;->getHostHome()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTravelInbox()I
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/_BadgeCount;->getTravelInbox()I

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_BadgeCount;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setHostGroups(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_BadgeCount;->setHostGroups(I)V

    return-void
.end method

.method public bridge synthetic setHostHome(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_BadgeCount;->setHostHome(I)V

    return-void
.end method

.method public bridge synthetic setTravelInbox(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_BadgeCount;->setTravelInbox(I)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_BadgeCount;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
