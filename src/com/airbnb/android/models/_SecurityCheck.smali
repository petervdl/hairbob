.class abstract Lcom/airbnb/android/models/_SecurityCheck;
.super Ljava/lang/Object;
.source "_SecurityCheck.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mData:Lcom/airbnb/android/models/SecurityCheckData;

.field protected mRequirements:Lcom/airbnb/android/models/SecurityCheckRequirements;

.field protected mSatisfied:Z

.field protected mStrategy:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method protected constructor <init>(Lcom/airbnb/android/models/SecurityCheckData;Lcom/airbnb/android/models/SecurityCheckRequirements;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "data"    # Lcom/airbnb/android/models/SecurityCheckData;
    .param p2, "requirements"    # Lcom/airbnb/android/models/SecurityCheckRequirements;
    .param p3, "strategy"    # Ljava/lang/String;
    .param p4, "satisfied"    # Z

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/airbnb/android/models/_SecurityCheck;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/airbnb/android/models/_SecurityCheck;->mData:Lcom/airbnb/android/models/SecurityCheckData;

    .line 21
    iput-object p2, p0, Lcom/airbnb/android/models/_SecurityCheck;->mRequirements:Lcom/airbnb/android/models/SecurityCheckRequirements;

    .line 22
    iput-object p3, p0, Lcom/airbnb/android/models/_SecurityCheck;->mStrategy:Ljava/lang/String;

    .line 23
    iput-boolean p4, p0, Lcom/airbnb/android/models/_SecurityCheck;->mSatisfied:Z

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getData()Lcom/airbnb/android/models/SecurityCheckData;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/models/_SecurityCheck;->mData:Lcom/airbnb/android/models/SecurityCheckData;

    return-object v0
.end method

.method public getRequirements()Lcom/airbnb/android/models/SecurityCheckRequirements;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/airbnb/android/models/_SecurityCheck;->mRequirements:Lcom/airbnb/android/models/SecurityCheckRequirements;

    return-object v0
.end method

.method public getStrategy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/android/models/_SecurityCheck;->mStrategy:Ljava/lang/String;

    return-object v0
.end method

.method public isSatisfied()Z
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/airbnb/android/models/_SecurityCheck;->mSatisfied:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 86
    const-class v1, Lcom/airbnb/android/models/SecurityCheckData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/SecurityCheckData;

    iput-object v1, p0, Lcom/airbnb/android/models/_SecurityCheck;->mData:Lcom/airbnb/android/models/SecurityCheckData;

    .line 87
    const-class v1, Lcom/airbnb/android/models/SecurityCheckRequirements;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/SecurityCheckRequirements;

    iput-object v1, p0, Lcom/airbnb/android/models/_SecurityCheck;->mRequirements:Lcom/airbnb/android/models/SecurityCheckRequirements;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_SecurityCheck;->mStrategy:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 90
    .local v0, "bools":[Z
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/_SecurityCheck;->mSatisfied:Z

    .line 91
    return-void
.end method

.method public setData(Lcom/airbnb/android/models/SecurityCheckData;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/SecurityCheckData;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "data"
    .end annotation

    .prologue
    .line 37
    iput-object p1, p0, Lcom/airbnb/android/models/_SecurityCheck;->mData:Lcom/airbnb/android/models/SecurityCheckData;

    .line 38
    return-void
.end method

.method public setRequirements(Lcom/airbnb/android/models/SecurityCheckRequirements;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/SecurityCheckRequirements;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "requirements"
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lcom/airbnb/android/models/_SecurityCheck;->mRequirements:Lcom/airbnb/android/models/SecurityCheckRequirements;

    .line 49
    return-void
.end method

.method public setSatisfied(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "satisfied"
    .end annotation

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/airbnb/android/models/_SecurityCheck;->mSatisfied:Z

    .line 71
    return-void
.end method

.method public setStrategy(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "strategy"
    .end annotation

    .prologue
    .line 59
    iput-object p1, p0, Lcom/airbnb/android/models/_SecurityCheck;->mStrategy:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-object v0, p0, Lcom/airbnb/android/models/_SecurityCheck;->mData:Lcom/airbnb/android/models/SecurityCheckData;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 80
    iget-object v0, p0, Lcom/airbnb/android/models/_SecurityCheck;->mRequirements:Lcom/airbnb/android/models/SecurityCheckRequirements;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 81
    iget-object v0, p0, Lcom/airbnb/android/models/_SecurityCheck;->mStrategy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/airbnb/android/models/_SecurityCheck;->mSatisfied:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 83
    return-void
.end method
