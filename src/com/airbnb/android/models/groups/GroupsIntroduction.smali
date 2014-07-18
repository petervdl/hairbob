.class public Lcom/airbnb/android/models/groups/GroupsIntroduction;
.super Lcom/airbnb/android/models/groups/_GroupsIntroduction;
.source "GroupsIntroduction.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/groups/GroupsIntroduction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    new-instance v0, Lcom/airbnb/android/models/groups/GroupsIntroduction$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/groups/GroupsIntroduction$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/groups/GroupsIntroduction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_GroupsIntroduction;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_GroupsIntroduction;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/airbnb/android/models/groups/GroupsIntroduction;->mTitle:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/airbnb/android/models/groups/GroupsIntroduction;->mBody:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_GroupsIntroduction;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_GroupsIntroduction;->getBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_GroupsIntroduction;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_GroupsIntroduction;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/groups/_GroupsIntroduction;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
