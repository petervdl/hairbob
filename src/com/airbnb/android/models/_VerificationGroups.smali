.class abstract Lcom/airbnb/android/models/_VerificationGroups;
.super Ljava/lang/Object;
.source "_VerificationGroups.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBasic:Lcom/airbnb/android/models/VerificationGroup;

.field protected mOffline:Lcom/airbnb/android/models/VerificationGroup;

.field protected mOnline:Lcom/airbnb/android/models/VerificationGroup;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method protected constructor <init>(Lcom/airbnb/android/models/VerificationGroup;Lcom/airbnb/android/models/VerificationGroup;Lcom/airbnb/android/models/VerificationGroup;)V
    .registers 4
    .param p1, "basic"    # Lcom/airbnb/android/models/VerificationGroup;
    .param p2, "online"    # Lcom/airbnb/android/models/VerificationGroup;
    .param p3, "offline"    # Lcom/airbnb/android/models/VerificationGroup;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/models/_VerificationGroups;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/airbnb/android/models/_VerificationGroups;->mBasic:Lcom/airbnb/android/models/VerificationGroup;

    .line 20
    iput-object p2, p0, Lcom/airbnb/android/models/_VerificationGroups;->mOnline:Lcom/airbnb/android/models/VerificationGroup;

    .line 21
    iput-object p3, p0, Lcom/airbnb/android/models/_VerificationGroups;->mOffline:Lcom/airbnb/android/models/VerificationGroup;

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

.method public getBasic()Lcom/airbnb/android/models/VerificationGroup;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/airbnb/android/models/_VerificationGroups;->mBasic:Lcom/airbnb/android/models/VerificationGroup;

    return-object v0
.end method

.method public getOffline()Lcom/airbnb/android/models/VerificationGroup;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/airbnb/android/models/_VerificationGroups;->mOffline:Lcom/airbnb/android/models/VerificationGroup;

    return-object v0
.end method

.method public getOnline()Lcom/airbnb/android/models/VerificationGroup;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/models/_VerificationGroups;->mOnline:Lcom/airbnb/android/models/VerificationGroup;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 72
    const-class v0, Lcom/airbnb/android/models/VerificationGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/VerificationGroup;

    iput-object v0, p0, Lcom/airbnb/android/models/_VerificationGroups;->mBasic:Lcom/airbnb/android/models/VerificationGroup;

    .line 73
    const-class v0, Lcom/airbnb/android/models/VerificationGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/VerificationGroup;

    iput-object v0, p0, Lcom/airbnb/android/models/_VerificationGroups;->mOnline:Lcom/airbnb/android/models/VerificationGroup;

    .line 74
    const-class v0, Lcom/airbnb/android/models/VerificationGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/VerificationGroup;

    iput-object v0, p0, Lcom/airbnb/android/models/_VerificationGroups;->mOffline:Lcom/airbnb/android/models/VerificationGroup;

    .line 75
    return-void
.end method

.method public setBasic(Lcom/airbnb/android/models/VerificationGroup;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/VerificationGroup;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "basic"
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lcom/airbnb/android/models/_VerificationGroups;->mBasic:Lcom/airbnb/android/models/VerificationGroup;

    .line 36
    return-void
.end method

.method public setOffline(Lcom/airbnb/android/models/VerificationGroup;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/VerificationGroup;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "offline"
    .end annotation

    .prologue
    .line 57
    iput-object p1, p0, Lcom/airbnb/android/models/_VerificationGroups;->mOffline:Lcom/airbnb/android/models/VerificationGroup;

    .line 58
    return-void
.end method

.method public setOnline(Lcom/airbnb/android/models/VerificationGroup;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/VerificationGroup;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "online"
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lcom/airbnb/android/models/_VerificationGroups;->mOnline:Lcom/airbnb/android/models/VerificationGroup;

    .line 47
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/airbnb/android/models/_VerificationGroups;->mBasic:Lcom/airbnb/android/models/VerificationGroup;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 67
    iget-object v0, p0, Lcom/airbnb/android/models/_VerificationGroups;->mOnline:Lcom/airbnb/android/models/VerificationGroup;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 68
    iget-object v0, p0, Lcom/airbnb/android/models/_VerificationGroups;->mOffline:Lcom/airbnb/android/models/VerificationGroup;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 69
    return-void
.end method
