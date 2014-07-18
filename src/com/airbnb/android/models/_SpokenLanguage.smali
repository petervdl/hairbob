.class abstract Lcom/airbnb/android/models/_SpokenLanguage;
.super Ljava/lang/Object;
.source "_SpokenLanguage.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mId:I

.field protected mLanguage:Ljava/lang/String;

.field protected mSpoken:Z


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZI)V
    .registers 4
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "spoken"    # Z
    .param p3, "id"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/models/_SpokenLanguage;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/airbnb/android/models/_SpokenLanguage;->mLanguage:Ljava/lang/String;

    .line 20
    iput-boolean p2, p0, Lcom/airbnb/android/models/_SpokenLanguage;->mSpoken:Z

    .line 21
    iput p3, p0, Lcom/airbnb/android/models/_SpokenLanguage;->mId:I

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

.method public getId()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/airbnb/android/models/_SpokenLanguage;->mId:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/airbnb/android/models/_SpokenLanguage;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public isSpoken()Z
    .registers 2

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/airbnb/android/models/_SpokenLanguage;->mSpoken:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_SpokenLanguage;->mLanguage:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 74
    .local v0, "bools":[Z
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/_SpokenLanguage;->mSpoken:Z

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_SpokenLanguage;->mId:I

    .line 76
    return-void
.end method

.method public setId(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 57
    iput p1, p0, Lcom/airbnb/android/models/_SpokenLanguage;->mId:I

    .line 58
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "language"
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lcom/airbnb/android/models/_SpokenLanguage;->mLanguage:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setSpoken(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "spoken"
    .end annotation

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/airbnb/android/models/_SpokenLanguage;->mSpoken:Z

    .line 47
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/airbnb/android/models/_SpokenLanguage;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/airbnb/android/models/_SpokenLanguage;->mSpoken:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 68
    iget v0, p0, Lcom/airbnb/android/models/_SpokenLanguage;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return-void
.end method
