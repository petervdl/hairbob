.class abstract Lcom/airbnb/android/models/groups/_GroupsIntroduction;
.super Ljava/lang/Object;
.source "_GroupsIntroduction.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBody:Ljava/lang/String;

.field protected mTitle:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_GroupsIntroduction;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_GroupsIntroduction;->mTitle:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/airbnb/android/models/groups/_GroupsIntroduction;->mBody:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_GroupsIntroduction;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_GroupsIntroduction;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/groups/_GroupsIntroduction;->mTitle:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/groups/_GroupsIntroduction;->mBody:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_GroupsIntroduction;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_GroupsIntroduction;->mBody:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return-void
.end method
