.class abstract Lcom/airbnb/android/models/_UserWrapper;
.super Ljava/lang/Object;
.source "_UserWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mUser:Lcom/airbnb/android/models/User;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method protected constructor <init>(Lcom/airbnb/android/models/User;)V
    .registers 2
    .param p1, "user"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/airbnb/android/models/_UserWrapper;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/airbnb/android/models/_UserWrapper;->mUser:Lcom/airbnb/android/models/User;

    .line 19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getUser()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/airbnb/android/models/_UserWrapper;->mUser:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 45
    const-class v0, Lcom/airbnb/android/models/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/User;

    iput-object v0, p0, Lcom/airbnb/android/models/_UserWrapper;->mUser:Lcom/airbnb/android/models/User;

    .line 46
    return-void
.end method

.method public setUser(Lcom/airbnb/android/models/User;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/User;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user"
    .end annotation

    .prologue
    .line 32
    iput-object p1, p0, Lcom/airbnb/android/models/_UserWrapper;->mUser:Lcom/airbnb/android/models/User;

    .line 33
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/android/models/_UserWrapper;->mUser:Lcom/airbnb/android/models/User;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 42
    return-void
.end method
