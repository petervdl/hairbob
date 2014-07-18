.class abstract Lcom/airbnb/android/models/_Device;
.super Ljava/lang/Object;
.source "_Device.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mApid:Ljava/lang/String;

.field protected mEnabled:Z


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "apid"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/airbnb/android/models/_Device;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/airbnb/android/models/_Device;->mApid:Ljava/lang/String;

    .line 19
    iput-boolean p2, p0, Lcom/airbnb/android/models/_Device;->mEnabled:Z

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getApid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/models/_Device;->mApid:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/airbnb/android/models/_Device;->mEnabled:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Device;->mApid:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 60
    .local v0, "bools":[Z
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/_Device;->mEnabled:Z

    .line 61
    return-void
.end method

.method public setApid(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "token"
    .end annotation

    .prologue
    .line 33
    iput-object p1, p0, Lcom/airbnb/android/models/_Device;->mApid:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "enabled"
    .end annotation

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/airbnb/android/models/_Device;->mEnabled:Z

    .line 45
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/android/models/_Device;->mApid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/airbnb/android/models/_Device;->mEnabled:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 55
    return-void
.end method
