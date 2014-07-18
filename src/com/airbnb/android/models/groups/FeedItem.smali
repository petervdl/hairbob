.class public Lcom/airbnb/android/models/groups/FeedItem;
.super Lcom/airbnb/android/models/groups/_FeedItem;
.source "FeedItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/groups/FeedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    new-instance v0, Lcom/airbnb/android/models/groups/FeedItem$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/groups/FeedItem$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/groups/FeedItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_FeedItem;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_FeedItem;->describeContents()I

    move-result v0

    return v0
.end method

.method public getActualContent()Lcom/airbnb/android/models/groups/BaseContent;
    .registers 2

    .prologue
    .line 10
    iget-object v0, p0, Lcom/airbnb/android/models/groups/FeedItem;->mContent:Lcom/airbnb/android/models/groups/Content;

    if-eqz v0, :cond_7

    .line 11
    iget-object v0, p0, Lcom/airbnb/android/models/groups/FeedItem;->mContent:Lcom/airbnb/android/models/groups/Content;

    .line 16
    :goto_6
    return-object v0

    .line 13
    :cond_7
    iget-object v0, p0, Lcom/airbnb/android/models/groups/FeedItem;->mEvent:Lcom/airbnb/android/models/groups/Event;

    if-eqz v0, :cond_e

    .line 14
    iget-object v0, p0, Lcom/airbnb/android/models/groups/FeedItem;->mEvent:Lcom/airbnb/android/models/groups/Event;

    goto :goto_6

    .line 16
    :cond_e
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public bridge synthetic getContent()Lcom/airbnb/android/models/groups/Content;
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_FeedItem;->getContent()Lcom/airbnb/android/models/groups/Content;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEvent()Lcom/airbnb/android/models/groups/Event;
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_FeedItem;->getEvent()Lcom/airbnb/android/models/groups/Event;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_FeedItem;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setContent(Lcom/airbnb/android/models/groups/Content;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/groups/Content;

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_FeedItem;->setContent(Lcom/airbnb/android/models/groups/Content;)V

    return-void
.end method

.method public bridge synthetic setEvent(Lcom/airbnb/android/models/groups/Event;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/groups/Event;

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_FeedItem;->setEvent(Lcom/airbnb/android/models/groups/Event;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/groups/_FeedItem;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
