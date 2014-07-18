.class abstract Lcom/airbnb/android/models/_SecurityCheckRequirements;
.super Ljava/lang/Object;
.source "_SecurityCheckRequirements.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAddPayout:Z

.field protected mManageListing:Z


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method protected constructor <init>(ZZ)V
    .registers 3
    .param p1, "manageListing"    # Z
    .param p2, "addPayout"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/airbnb/android/models/_SecurityCheckRequirements;-><init>()V

    .line 18
    iput-boolean p1, p0, Lcom/airbnb/android/models/_SecurityCheckRequirements;->mManageListing:Z

    .line 19
    iput-boolean p2, p0, Lcom/airbnb/android/models/_SecurityCheckRequirements;->mAddPayout:Z

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

.method public isAddPayout()Z
    .registers 2

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/airbnb/android/models/_SecurityCheckRequirements;->mAddPayout:Z

    return v0
.end method

.method public isManageListing()Z
    .registers 2

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/airbnb/android/models/_SecurityCheckRequirements;->mManageListing:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 58
    .local v0, "bools":[Z
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/_SecurityCheckRequirements;->mManageListing:Z

    .line 59
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/_SecurityCheckRequirements;->mAddPayout:Z

    .line 60
    return-void
.end method

.method public setAddPayout(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "add_payout"
    .end annotation

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/airbnb/android/models/_SecurityCheckRequirements;->mAddPayout:Z

    .line 45
    return-void
.end method

.method public setManageListing(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "manage_listing"
    .end annotation

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/airbnb/android/models/_SecurityCheckRequirements;->mManageListing:Z

    .line 34
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/airbnb/android/models/_SecurityCheckRequirements;->mManageListing:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/airbnb/android/models/_SecurityCheckRequirements;->mAddPayout:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 54
    return-void
.end method
