.class abstract Lcom/airbnb/android/models/groups/_Author;
.super Ljava/lang/Object;
.source "_Author.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mIsFlaggedBy:Z

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

.method protected constructor <init>(Lcom/airbnb/android/models/User;Z)V
    .registers 3
    .param p1, "user"    # Lcom/airbnb/android/models/User;
    .param p2, "isFlaggedBy"    # Z

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_Author;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_Author;->mUser:Lcom/airbnb/android/models/User;

    .line 20
    iput-boolean p2, p0, Lcom/airbnb/android/models/groups/_Author;->mIsFlaggedBy:Z

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getUser()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Author;->mUser:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method public isFlaggedBy()Z
    .registers 2

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/airbnb/android/models/groups/_Author;->mIsFlaggedBy:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 59
    const-class v1, Lcom/airbnb/android/models/User;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/User;

    iput-object v1, p0, Lcom/airbnb/android/models/groups/_Author;->mUser:Lcom/airbnb/android/models/User;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 61
    .local v0, "bools":[Z
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/groups/_Author;->mIsFlaggedBy:Z

    .line 62
    return-void
.end method

.method public setIsFlaggedBy(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_flagged_by"
    .end annotation

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/airbnb/android/models/groups/_Author;->mIsFlaggedBy:Z

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
    .line 34
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_Author;->mUser:Lcom/airbnb/android/models/User;

    .line 35
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 54
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Author;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/airbnb/android/models/groups/_Author;->mIsFlaggedBy:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 56
    return-void
.end method
