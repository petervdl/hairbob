.class abstract Lcom/airbnb/android/models/_NotificationSet;
.super Ljava/lang/Object;
.source "_NotificationSet.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAndroidDevice:Lcom/airbnb/android/models/Device;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method protected constructor <init>(Lcom/airbnb/android/models/Device;)V
    .registers 2
    .param p1, "androidDevice"    # Lcom/airbnb/android/models/Device;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/airbnb/android/models/_NotificationSet;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/airbnb/android/models/_NotificationSet;->mAndroidDevice:Lcom/airbnb/android/models/Device;

    .line 18
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public getAndroidDevice()Lcom/airbnb/android/models/Device;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/airbnb/android/models/_NotificationSet;->mAndroidDevice:Lcom/airbnb/android/models/Device;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 44
    const-class v0, Lcom/airbnb/android/models/Device;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Device;

    iput-object v0, p0, Lcom/airbnb/android/models/_NotificationSet;->mAndroidDevice:Lcom/airbnb/android/models/Device;

    .line 45
    return-void
.end method

.method public setAndroidDevice(Lcom/airbnb/android/models/Device;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/Device;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "android_gcm"
    .end annotation

    .prologue
    .line 31
    iput-object p1, p0, Lcom/airbnb/android/models/_NotificationSet;->mAndroidDevice:Lcom/airbnb/android/models/Device;

    .line 32
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/models/_NotificationSet;->mAndroidDevice:Lcom/airbnb/android/models/Device;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 41
    return-void
.end method
