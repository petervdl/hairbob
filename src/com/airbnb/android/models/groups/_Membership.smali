.class abstract Lcom/airbnb/android/models/groups/_Membership;
.super Ljava/lang/Object;
.source "_Membership.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mId:I

.field protected mMembershipType:I

.field protected mUser:Lcom/airbnb/android/models/User;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method protected constructor <init>(Lcom/airbnb/android/models/User;II)V
    .registers 4
    .param p1, "user"    # Lcom/airbnb/android/models/User;
    .param p2, "id"    # I
    .param p3, "membershipType"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_Membership;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_Membership;->mUser:Lcom/airbnb/android/models/User;

    .line 21
    iput p2, p0, Lcom/airbnb/android/models/groups/_Membership;->mId:I

    .line 22
    iput p3, p0, Lcom/airbnb/android/models/groups/_Membership;->mMembershipType:I

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/airbnb/android/models/groups/_Membership;->mId:I

    return v0
.end method

.method public getMembershipType()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/airbnb/android/models/groups/_Membership;->mMembershipType:I

    return v0
.end method

.method public getUser()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Membership;->mUser:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 73
    const-class v0, Lcom/airbnb/android/models/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/User;

    iput-object v0, p0, Lcom/airbnb/android/models/groups/_Membership;->mUser:Lcom/airbnb/android/models/User;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/models/groups/_Membership;->mId:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/models/groups/_Membership;->mMembershipType:I

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
    .line 47
    iput p1, p0, Lcom/airbnb/android/models/groups/_Membership;->mId:I

    .line 48
    return-void
.end method

.method public setMembershipType(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "membership_type"
    .end annotation

    .prologue
    .line 58
    iput p1, p0, Lcom/airbnb/android/models/groups/_Membership;->mMembershipType:I

    .line 59
    return-void
.end method

.method public setUser(Lcom/airbnb/android/models/User;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/User;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user"
    .end annotation

    .prologue
    .line 36
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_Membership;->mUser:Lcom/airbnb/android/models/User;

    .line 37
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Membership;->mUser:Lcom/airbnb/android/models/User;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 68
    iget v0, p0, Lcom/airbnb/android/models/groups/_Membership;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Lcom/airbnb/android/models/groups/_Membership;->mMembershipType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    return-void
.end method
