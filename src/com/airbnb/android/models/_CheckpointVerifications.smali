.class abstract Lcom/airbnb/android/models/_CheckpointVerifications;
.super Ljava/lang/Object;
.source "_CheckpointVerifications.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mEncryptedUserId:Ljava/lang/String;

.field protected mRequirement:Ljava/lang/String;

.field protected mVerificationGroups:Lcom/airbnb/android/models/VerificationGroups;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/models/VerificationGroups;)V
    .registers 4
    .param p1, "encryptedUserId"    # Ljava/lang/String;
    .param p2, "requirement"    # Ljava/lang/String;
    .param p3, "verificationGroups"    # Lcom/airbnb/android/models/VerificationGroups;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/models/_CheckpointVerifications;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/airbnb/android/models/_CheckpointVerifications;->mEncryptedUserId:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/airbnb/android/models/_CheckpointVerifications;->mRequirement:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/airbnb/android/models/_CheckpointVerifications;->mVerificationGroups:Lcom/airbnb/android/models/VerificationGroups;

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

.method public getEncryptedUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/airbnb/android/models/_CheckpointVerifications;->mEncryptedUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequirement()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/models/_CheckpointVerifications;->mRequirement:Ljava/lang/String;

    return-object v0
.end method

.method public getVerificationGroups()Lcom/airbnb/android/models/VerificationGroups;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/airbnb/android/models/_CheckpointVerifications;->mVerificationGroups:Lcom/airbnb/android/models/VerificationGroups;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_CheckpointVerifications;->mEncryptedUserId:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_CheckpointVerifications;->mRequirement:Ljava/lang/String;

    .line 74
    const-class v0, Lcom/airbnb/android/models/VerificationGroups;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/VerificationGroups;

    iput-object v0, p0, Lcom/airbnb/android/models/_CheckpointVerifications;->mVerificationGroups:Lcom/airbnb/android/models/VerificationGroups;

    .line 75
    return-void
.end method

.method public setEncryptedUserId(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "encrypted_user_id"
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lcom/airbnb/android/models/_CheckpointVerifications;->mEncryptedUserId:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setRequirement(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "requirement"
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lcom/airbnb/android/models/_CheckpointVerifications;->mRequirement:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setVerificationGroups(Lcom/airbnb/android/models/VerificationGroups;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/VerificationGroups;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "groups"
    .end annotation

    .prologue
    .line 57
    iput-object p1, p0, Lcom/airbnb/android/models/_CheckpointVerifications;->mVerificationGroups:Lcom/airbnb/android/models/VerificationGroups;

    .line 58
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/airbnb/android/models/_CheckpointVerifications;->mEncryptedUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/airbnb/android/models/_CheckpointVerifications;->mRequirement:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/airbnb/android/models/_CheckpointVerifications;->mVerificationGroups:Lcom/airbnb/android/models/VerificationGroups;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 69
    return-void
.end method
