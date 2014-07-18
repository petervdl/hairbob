.class public Lcom/airbnb/android/models/SocialConnection;
.super Lcom/airbnb/android/models/_SocialConnection;
.source "SocialConnection.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/SocialConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    new-instance v0, Lcom/airbnb/android/models/SocialConnection$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/SocialConnection$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/SocialConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/airbnb/android/models/_SocialConnection;-><init>()V

    return-void
.end method

.method private prependHttpIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string/jumbo v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "value":Ljava/lang/String;
    :cond_1d
    return-object p1
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_SocialConnection;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCaption()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_SocialConnection;->getCaption()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 42
    iget-object v1, p0, Lcom/airbnb/android/models/SocialConnection;->mLinkingUser:Lcom/airbnb/android/models/User;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/airbnb/android/models/SocialConnection;->mLinkingUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "connectionName":Ljava/lang/String;
    :goto_a
    if-nez v0, :cond_f

    .line 44
    const-string/jumbo v0, ""

    .line 46
    :cond_f
    return-object v0

    .line 42
    .end local v0    # "connectionName":Ljava/lang/String;
    :cond_10
    invoke-virtual {p0}, Lcom/airbnb/android/models/SocialConnection;->getOfflineLinkingName()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public bridge synthetic getConnectionType()I
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_SocialConnection;->getConnectionType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLinkingObjectId()J
    .registers 3

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_SocialConnection;->getLinkingObjectId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLinkingUser()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_SocialConnection;->getLinkingUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOfflineLinkingName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_SocialConnection;->getOfflineLinkingName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPicUrlLarge()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_SocialConnection;->getPicUrlLarge()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPicUrlSmall()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_SocialConnection;->getPicUrlSmall()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTargetUserId()J
    .registers 3

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_SocialConnection;->getTargetUserId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic isPopulated()Z
    .registers 2

    .prologue
    .line 9
    invoke-super {p0}, Lcom/airbnb/android/models/_SocialConnection;->isPopulated()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SocialConnection;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setCaption(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SocialConnection;->setCaption(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setConnectionType(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SocialConnection;->setConnectionType(I)V

    return-void
.end method

.method public bridge synthetic setLinkingObjectId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 9
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_SocialConnection;->setLinkingObjectId(J)V

    return-void
.end method

.method public setLinkingUser(Lcom/airbnb/android/requests/Wrappers$UserWrapper;)V
    .registers 3
    .param p1, "userWrapper"    # Lcom/airbnb/android/requests/Wrappers$UserWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "linking_user"
    .end annotation

    .prologue
    .line 38
    iget-object v0, p1, Lcom/airbnb/android/requests/Wrappers$UserWrapper;->user:Lcom/airbnb/android/models/User;

    iput-object v0, p0, Lcom/airbnb/android/models/SocialConnection;->mLinkingUser:Lcom/airbnb/android/models/User;

    .line 39
    return-void
.end method

.method public bridge synthetic setOfflineLinkingName(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SocialConnection;->setOfflineLinkingName(Ljava/lang/String;)V

    return-void
.end method

.method public setPicUrlLarge(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "pic_url_large"
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/airbnb/android/models/SocialConnection;->prependHttpIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/SocialConnection;->mPicUrlLarge:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setPicUrlSmall(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "pic_url_small"
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/airbnb/android/models/SocialConnection;->prependHttpIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/SocialConnection;->mPicUrlSmall:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public bridge synthetic setPopulated(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SocialConnection;->setPopulated(Z)V

    return-void
.end method

.method public bridge synthetic setTargetUserId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 9
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_SocialConnection;->setTargetUserId(J)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 9
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_SocialConnection;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
