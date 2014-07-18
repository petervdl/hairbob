.class public Lcom/airbnb/android/models/CheckpointVerifications;
.super Lcom/airbnb/android/models/_CheckpointVerifications;
.source "CheckpointVerifications.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/CheckpointVerifications;",
            ">;"
        }
    .end annotation
.end field

.field private static final NUMBER_VERIFIED_ID_STEPS:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 107
    new-instance v0, Lcom/airbnb/android/models/CheckpointVerifications$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/CheckpointVerifications$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/CheckpointVerifications;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/airbnb/android/models/_CheckpointVerifications;-><init>()V

    return-void
.end method


# virtual methods
.method public basicVerificationsComplete()Z
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/airbnb/android/models/CheckpointVerifications;->emailVerificationComplete()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/airbnb/android/models/CheckpointVerifications;->profilePhotoComplete()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/airbnb/android/models/CheckpointVerifications;->phoneComplete()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 8
    invoke-super {p0}, Lcom/airbnb/android/models/_CheckpointVerifications;->describeContents()I

    move-result v0

    return v0
.end method

.method public emailVerificationComplete()Z
    .registers 6

    .prologue
    .line 13
    iget-object v3, p0, Lcom/airbnb/android/models/CheckpointVerifications;->mVerificationGroups:Lcom/airbnb/android/models/VerificationGroups;

    invoke-virtual {v3}, Lcom/airbnb/android/models/VerificationGroups;->getBasic()Lcom/airbnb/android/models/VerificationGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/VerificationGroup;->getItems()Ljava/util/List;

    move-result-object v0

    .line 14
    .local v0, "basicVerifications":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Verification;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Verification;

    .line 15
    .local v2, "v":Lcom/airbnb/android/models/Verification;
    const-string/jumbo v3, "confirmed_email"

    invoke-virtual {v2}, Lcom/airbnb/android/models/Verification;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string/jumbo v3, "complete"

    invoke-virtual {v2}, Lcom/airbnb/android/models/Verification;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 16
    const/4 v3, 0x1

    .line 20
    .end local v2    # "v":Lcom/airbnb/android/models/Verification;
    :goto_35
    return v3

    :cond_36
    const/4 v3, 0x0

    goto :goto_35
.end method

.method public bridge synthetic getEncryptedUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8
    invoke-super {p0}, Lcom/airbnb/android/models/_CheckpointVerifications;->getEncryptedUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequirement()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8
    invoke-super {p0}, Lcom/airbnb/android/models/_CheckpointVerifications;->getRequirement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVerificationGroups()Lcom/airbnb/android/models/VerificationGroups;
    .registers 2

    .prologue
    .line 8
    invoke-super {p0}, Lcom/airbnb/android/models/_CheckpointVerifications;->getVerificationGroups()Lcom/airbnb/android/models/VerificationGroups;

    move-result-object v0

    return-object v0
.end method

.method public numberStepsRemaining()I
    .registers 3

    .prologue
    .line 72
    const/4 v0, 0x5

    .line 74
    .local v0, "numberStepsRemaining":I
    invoke-virtual {p0}, Lcom/airbnb/android/models/CheckpointVerifications;->profilePhotoComplete()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 75
    add-int/lit8 v0, v0, -0x1

    .line 78
    :cond_9
    invoke-virtual {p0}, Lcom/airbnb/android/models/CheckpointVerifications;->emailVerificationComplete()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 79
    add-int/lit8 v0, v0, -0x1

    .line 82
    :cond_11
    invoke-virtual {p0}, Lcom/airbnb/android/models/CheckpointVerifications;->phoneComplete()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 83
    add-int/lit8 v0, v0, -0x1

    .line 86
    :cond_19
    invoke-virtual {p0}, Lcom/airbnb/android/models/CheckpointVerifications;->offlineVerificationComplete()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 87
    add-int/lit8 v0, v0, -0x1

    .line 90
    :cond_21
    invoke-virtual {p0}, Lcom/airbnb/android/models/CheckpointVerifications;->onlineVerificationComplete()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 91
    add-int/lit8 v0, v0, -0x1

    .line 94
    :cond_29
    return v0
.end method

.method public offlineVerificationComplete()Z
    .registers 6

    .prologue
    .line 61
    iget-object v3, p0, Lcom/airbnb/android/models/CheckpointVerifications;->mVerificationGroups:Lcom/airbnb/android/models/VerificationGroups;

    invoke-virtual {v3}, Lcom/airbnb/android/models/VerificationGroups;->getOffline()Lcom/airbnb/android/models/VerificationGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/VerificationGroup;->getItems()Ljava/util/List;

    move-result-object v1

    .line 62
    .local v1, "offlineVerifications":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Verification;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Verification;

    .line 63
    .local v2, "v":Lcom/airbnb/android/models/Verification;
    const-string/jumbo v3, "complete"

    invoke-virtual {v2}, Lcom/airbnb/android/models/Verification;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 64
    const/4 v3, 0x1

    .line 68
    .end local v2    # "v":Lcom/airbnb/android/models/Verification;
    :goto_28
    return v3

    :cond_29
    const/4 v3, 0x0

    goto :goto_28
.end method

.method public onlineVerificationComplete()Z
    .registers 6

    .prologue
    .line 50
    iget-object v3, p0, Lcom/airbnb/android/models/CheckpointVerifications;->mVerificationGroups:Lcom/airbnb/android/models/VerificationGroups;

    invoke-virtual {v3}, Lcom/airbnb/android/models/VerificationGroups;->getOnline()Lcom/airbnb/android/models/VerificationGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/VerificationGroup;->getItems()Ljava/util/List;

    move-result-object v1

    .line 51
    .local v1, "onlineVerifications":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Verification;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Verification;

    .line 52
    .local v2, "v":Lcom/airbnb/android/models/Verification;
    const-string/jumbo v3, "complete"

    invoke-virtual {v2}, Lcom/airbnb/android/models/Verification;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 53
    const/4 v3, 0x1

    .line 57
    .end local v2    # "v":Lcom/airbnb/android/models/Verification;
    :goto_28
    return v3

    :cond_29
    const/4 v3, 0x0

    goto :goto_28
.end method

.method public phoneComplete()Z
    .registers 6

    .prologue
    .line 35
    iget-object v3, p0, Lcom/airbnb/android/models/CheckpointVerifications;->mVerificationGroups:Lcom/airbnb/android/models/VerificationGroups;

    invoke-virtual {v3}, Lcom/airbnb/android/models/VerificationGroups;->getBasic()Lcom/airbnb/android/models/VerificationGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/VerificationGroup;->getItems()Ljava/util/List;

    move-result-object v0

    .line 36
    .local v0, "basicVerifications":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Verification;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Verification;

    .line 37
    .local v2, "v":Lcom/airbnb/android/models/Verification;
    const-string/jumbo v3, "phone_verified"

    invoke-virtual {v2}, Lcom/airbnb/android/models/Verification;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string/jumbo v3, "complete"

    invoke-virtual {v2}, Lcom/airbnb/android/models/Verification;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 38
    const/4 v3, 0x1

    .line 42
    .end local v2    # "v":Lcom/airbnb/android/models/Verification;
    :goto_35
    return v3

    :cond_36
    const/4 v3, 0x0

    goto :goto_35
.end method

.method public profilePhotoComplete()Z
    .registers 6

    .prologue
    .line 24
    iget-object v3, p0, Lcom/airbnb/android/models/CheckpointVerifications;->mVerificationGroups:Lcom/airbnb/android/models/VerificationGroups;

    invoke-virtual {v3}, Lcom/airbnb/android/models/VerificationGroups;->getBasic()Lcom/airbnb/android/models/VerificationGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/VerificationGroup;->getItems()Ljava/util/List;

    move-result-object v0

    .line 25
    .local v0, "basicVerifications":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Verification;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Verification;

    .line 26
    .local v2, "v":Lcom/airbnb/android/models/Verification;
    const-string/jumbo v3, "profile_pic"

    invoke-virtual {v2}, Lcom/airbnb/android/models/Verification;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string/jumbo v3, "complete"

    invoke-virtual {v2}, Lcom/airbnb/android/models/Verification;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 27
    const/4 v3, 0x1

    .line 31
    .end local v2    # "v":Lcom/airbnb/android/models/Verification;
    :goto_35
    return v3

    :cond_36
    const/4 v3, 0x0

    goto :goto_35
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_CheckpointVerifications;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setEncryptedUserId(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_CheckpointVerifications;->setEncryptedUserId(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRequirement(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_CheckpointVerifications;->setRequirement(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setVerificationGroups(Lcom/airbnb/android/models/VerificationGroups;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/VerificationGroups;

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_CheckpointVerifications;->setVerificationGroups(Lcom/airbnb/android/models/VerificationGroups;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 99
    const-string/jumbo v0, "{Email: %b}, {Photo: %b}, {Phone: %b}, {Online: %b}, {Offline: %b}"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/airbnb/android/models/CheckpointVerifications;->emailVerificationComplete()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/airbnb/android/models/CheckpointVerifications;->profilePhotoComplete()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/airbnb/android/models/CheckpointVerifications;->phoneComplete()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/airbnb/android/models/CheckpointVerifications;->onlineVerificationComplete()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/airbnb/android/models/CheckpointVerifications;->offlineVerificationComplete()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 8
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_CheckpointVerifications;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
