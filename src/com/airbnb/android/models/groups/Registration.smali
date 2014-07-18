.class public Lcom/airbnb/android/models/groups/Registration;
.super Lcom/airbnb/android/models/groups/_Registration;
.source "Registration.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/groups/Registration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    new-instance v0, Lcom/airbnb/android/models/groups/Registration$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/groups/Registration$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/groups/Registration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_Registration;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Registration;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    if-ne p0, p1, :cond_5

    .line 54
    :cond_4
    :goto_4
    return v1

    .line 44
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 45
    goto :goto_4

    .line 47
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 48
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 50
    check-cast v0, Lcom/airbnb/android/models/groups/Registration;

    .line 51
    .local v0, "other":Lcom/airbnb/android/models/groups/Registration;
    iget v3, p0, Lcom/airbnb/android/models/groups/Registration;->mId:I

    iget v4, v0, Lcom/airbnb/android/models/groups/Registration;->mId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 52
    goto :goto_4
.end method

.method public bridge synthetic getId()I
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Registration;->getId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getUser()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Registration;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 33
    const/16 v0, 0x1f

    .line 34
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 35
    .local v1, "result":I
    iget v2, p0, Lcom/airbnb/android/models/groups/Registration;->mId:I

    add-int/lit8 v1, v2, 0x1f

    .line 36
    return v1
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Registration;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public setHost(Lcom/airbnb/android/requests/Wrappers$UserWrapper;)V
    .registers 3
    .param p1, "userWrapper"    # Lcom/airbnb/android/requests/Wrappers$UserWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user"
    .end annotation

    .prologue
    .line 13
    iget-object v0, p1, Lcom/airbnb/android/requests/Wrappers$UserWrapper;->user:Lcom/airbnb/android/models/User;

    iput-object v0, p0, Lcom/airbnb/android/models/groups/Registration;->mUser:Lcom/airbnb/android/models/User;

    .line 14
    return-void
.end method

.method public bridge synthetic setId(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Registration;->setId(I)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 9
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/groups/_Registration;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
