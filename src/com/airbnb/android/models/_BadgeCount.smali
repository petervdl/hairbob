.class abstract Lcom/airbnb/android/models/_BadgeCount;
.super Ljava/lang/Object;
.source "_BadgeCount.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mHostGroups:I

.field protected mHostHome:I

.field protected mTravelInbox:I


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method protected constructor <init>(III)V
    .registers 4
    .param p1, "hostHome"    # I
    .param p2, "travelInbox"    # I
    .param p3, "hostGroups"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/models/_BadgeCount;-><init>()V

    .line 19
    iput p1, p0, Lcom/airbnb/android/models/_BadgeCount;->mHostHome:I

    .line 20
    iput p2, p0, Lcom/airbnb/android/models/_BadgeCount;->mTravelInbox:I

    .line 21
    iput p3, p0, Lcom/airbnb/android/models/_BadgeCount;->mHostGroups:I

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getHostGroups()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/airbnb/android/models/_BadgeCount;->mHostGroups:I

    return v0
.end method

.method public getHostHome()I
    .registers 2

    .prologue
    .line 29
    iget v0, p0, Lcom/airbnb/android/models/_BadgeCount;->mHostHome:I

    return v0
.end method

.method public getTravelInbox()I
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lcom/airbnb/android/models/_BadgeCount;->mTravelInbox:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/models/_BadgeCount;->mHostHome:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/models/_BadgeCount;->mTravelInbox:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/models/_BadgeCount;->mHostGroups:I

    .line 75
    return-void
.end method

.method public setHostGroups(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "host_groups"
    .end annotation

    .prologue
    .line 57
    iput p1, p0, Lcom/airbnb/android/models/_BadgeCount;->mHostGroups:I

    .line 58
    return-void
.end method

.method public setHostHome(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "host_home"
    .end annotation

    .prologue
    .line 35
    iput p1, p0, Lcom/airbnb/android/models/_BadgeCount;->mHostHome:I

    .line 36
    return-void
.end method

.method public setTravelInbox(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "travel_inbox"
    .end annotation

    .prologue
    .line 46
    iput p1, p0, Lcom/airbnb/android/models/_BadgeCount;->mTravelInbox:I

    .line 47
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 66
    iget v0, p0, Lcom/airbnb/android/models/_BadgeCount;->mHostHome:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/airbnb/android/models/_BadgeCount;->mTravelInbox:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Lcom/airbnb/android/models/_BadgeCount;->mHostGroups:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return-void
.end method
