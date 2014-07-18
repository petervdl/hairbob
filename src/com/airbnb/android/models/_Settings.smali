.class abstract Lcom/airbnb/android/models/_Settings;
.super Ljava/lang/Object;
.source "_Settings.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mGuestReservation:Z

.field protected mHostReservation:Z

.field protected mMessaging:Z


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method protected constructor <init>(ZZZ)V
    .registers 4
    .param p1, "messaging"    # Z
    .param p2, "hostReservation"    # Z
    .param p3, "guestReservation"    # Z

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/models/_Settings;-><init>()V

    .line 19
    iput-boolean p1, p0, Lcom/airbnb/android/models/_Settings;->mMessaging:Z

    .line 20
    iput-boolean p2, p0, Lcom/airbnb/android/models/_Settings;->mHostReservation:Z

    .line 21
    iput-boolean p3, p0, Lcom/airbnb/android/models/_Settings;->mGuestReservation:Z

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

.method public isGuestReservation()Z
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/airbnb/android/models/_Settings;->mGuestReservation:Z

    return v0
.end method

.method public isHostReservation()Z
    .registers 2

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/airbnb/android/models/_Settings;->mHostReservation:Z

    return v0
.end method

.method public isMessaging()Z
    .registers 2

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/airbnb/android/models/_Settings;->mMessaging:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 71
    .local v0, "bools":[Z
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/_Settings;->mMessaging:Z

    .line 72
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/_Settings;->mHostReservation:Z

    .line 73
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/_Settings;->mGuestReservation:Z

    .line 74
    return-void
.end method

.method public setGuestReservation(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "guest_reservation"
    .end annotation

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/airbnb/android/models/_Settings;->mGuestReservation:Z

    .line 58
    return-void
.end method

.method public setHostReservation(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "host_reservation"
    .end annotation

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/airbnb/android/models/_Settings;->mHostReservation:Z

    .line 47
    return-void
.end method

.method public setMessaging(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "messaging"
    .end annotation

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/airbnb/android/models/_Settings;->mMessaging:Z

    .line 36
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/airbnb/android/models/_Settings;->mMessaging:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/airbnb/android/models/_Settings;->mHostReservation:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/airbnb/android/models/_Settings;->mGuestReservation:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 67
    return-void
.end method
