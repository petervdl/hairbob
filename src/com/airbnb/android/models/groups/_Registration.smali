.class abstract Lcom/airbnb/android/models/groups/_Registration;
.super Ljava/lang/Object;
.source "_Registration.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mId:I

.field protected mUser:Lcom/airbnb/android/models/User;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method protected constructor <init>(Lcom/airbnb/android/models/User;I)V
    .registers 3
    .param p1, "user"    # Lcom/airbnb/android/models/User;
    .param p2, "id"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_Registration;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_Registration;->mUser:Lcom/airbnb/android/models/User;

    .line 20
    iput p2, p0, Lcom/airbnb/android/models/groups/_Registration;->mId:I

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/airbnb/android/models/groups/_Registration;->mId:I

    return v0
.end method

.method public getUser()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Registration;->mUser:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 53
    const-class v0, Lcom/airbnb/android/models/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/User;

    iput-object v0, p0, Lcom/airbnb/android/models/groups/_Registration;->mUser:Lcom/airbnb/android/models/User;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/models/groups/_Registration;->mId:I

    .line 55
    return-void
.end method

.method public setId(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 39
    iput p1, p0, Lcom/airbnb/android/models/groups/_Registration;->mId:I

    .line 40
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Registration;->mUser:Lcom/airbnb/android/models/User;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 49
    iget v0, p0, Lcom/airbnb/android/models/groups/_Registration;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    return-void
.end method
