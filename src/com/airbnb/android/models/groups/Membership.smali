.class public Lcom/airbnb/android/models/groups/Membership;
.super Lcom/airbnb/android/models/groups/_Membership;
.source "Membership.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/groups/Membership;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Lcom/airbnb/android/models/groups/Membership$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/groups/Membership$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/groups/Membership;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_Membership;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Membership;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    if-ne p0, p1, :cond_5

    .line 63
    :cond_4
    :goto_4
    return v1

    .line 53
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 54
    goto :goto_4

    .line 56
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 57
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 59
    check-cast v0, Lcom/airbnb/android/models/groups/Membership;

    .line 60
    .local v0, "other":Lcom/airbnb/android/models/groups/Membership;
    iget v3, p0, Lcom/airbnb/android/models/groups/Membership;->mId:I

    iget v4, v0, Lcom/airbnb/android/models/groups/Membership;->mId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 61
    goto :goto_4
.end method

.method public bridge synthetic getId()I
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Membership;->getId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMembershipType()I
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Membership;->getMembershipType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getUser()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Membership;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 42
    const/16 v0, 0x1f

    .line 43
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 44
    .local v1, "result":I
    iget v2, p0, Lcom/airbnb/android/models/groups/Membership;->mId:I

    add-int/lit8 v1, v2, 0x1f

    .line 45
    return v1
.end method

.method public isMember()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 9
    iget v1, p0, Lcom/airbnb/android/models/groups/Membership;->mMembershipType:I

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/airbnb/android/models/groups/Membership;->mMembershipType:I

    if-ne v1, v0, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isOrganizer()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 13
    iget v1, p0, Lcom/airbnb/android/models/groups/Membership;->mMembershipType:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPending()Z
    .registers 3

    .prologue
    .line 17
    iget v0, p0, Lcom/airbnb/android/models/groups/Membership;->mMembershipType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Membership;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setId(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Membership;->setId(I)V

    return-void
.end method

.method public bridge synthetic setMembershipType(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Membership;->setMembershipType(I)V

    return-void
.end method

.method public bridge synthetic setUser(Lcom/airbnb/android/models/User;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Membership;->setUser(Lcom/airbnb/android/models/User;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Membership;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/groups/_Membership;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
