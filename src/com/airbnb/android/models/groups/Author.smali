.class public Lcom/airbnb/android/models/groups/Author;
.super Lcom/airbnb/android/models/groups/_Author;
.source "Author.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/groups/Author;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Lcom/airbnb/android/models/groups/Author$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/groups/Author$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/groups/Author;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_Author;-><init>()V

    .line 21
    return-void
.end method

.method private constructor <init>(Lcom/airbnb/android/models/User;Z)V
    .registers 3
    .param p1, "user"    # Lcom/airbnb/android/models/User;
    .param p2, "flaggedBy"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_Author;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/airbnb/android/models/groups/Author;->mUser:Lcom/airbnb/android/models/User;

    .line 25
    iput-boolean p2, p0, Lcom/airbnb/android/models/groups/Author;->mIsFlaggedBy:Z

    .line 26
    return-void
.end method

.method public static forUser(Lcom/airbnb/android/models/User;)Lcom/airbnb/android/models/groups/Author;
    .registers 3
    .param p0, "user"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 16
    new-instance v0, Lcom/airbnb/android/models/groups/Author;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/airbnb/android/models/groups/Author;-><init>(Lcom/airbnb/android/models/User;Z)V

    return-object v0
.end method

.method public static newPurposeAuthor(Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/models/groups/Author;
    .registers 4
    .param p0, "group"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Group;->getOrganizer()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 12
    .local v0, "organizer":Lcom/airbnb/android/models/User;
    new-instance v1, Lcom/airbnb/android/models/groups/Author;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/airbnb/android/models/groups/Author;-><init>(Lcom/airbnb/android/models/User;Z)V

    return-object v1
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 8
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Author;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getUser()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 8
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Author;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isFlaggedBy()Z
    .registers 2

    .prologue
    .line 8
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Author;->isFlaggedBy()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Author;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setIsFlaggedBy(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Author;->setIsFlaggedBy(Z)V

    return-void
.end method

.method public bridge synthetic setUser(Lcom/airbnb/android/models/User;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Author;->setUser(Lcom/airbnb/android/models/User;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 8
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/groups/_Author;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
