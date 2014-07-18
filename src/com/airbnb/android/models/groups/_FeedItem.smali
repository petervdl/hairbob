.class abstract Lcom/airbnb/android/models/groups/_FeedItem;
.super Ljava/lang/Object;
.source "_FeedItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mContent:Lcom/airbnb/android/models/groups/Content;

.field protected mEvent:Lcom/airbnb/android/models/groups/Event;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method protected constructor <init>(Lcom/airbnb/android/models/groups/Content;Lcom/airbnb/android/models/groups/Event;)V
    .registers 3
    .param p1, "content"    # Lcom/airbnb/android/models/groups/Content;
    .param p2, "event"    # Lcom/airbnb/android/models/groups/Event;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_FeedItem;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_FeedItem;->mContent:Lcom/airbnb/android/models/groups/Content;

    .line 19
    iput-object p2, p0, Lcom/airbnb/android/models/groups/_FeedItem;->mEvent:Lcom/airbnb/android/models/groups/Event;

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

.method public getContent()Lcom/airbnb/android/models/groups/Content;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_FeedItem;->mContent:Lcom/airbnb/android/models/groups/Content;

    return-object v0
.end method

.method public getEvent()Lcom/airbnb/android/models/groups/Event;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_FeedItem;->mEvent:Lcom/airbnb/android/models/groups/Event;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 58
    const-class v0, Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/groups/Content;

    iput-object v0, p0, Lcom/airbnb/android/models/groups/_FeedItem;->mContent:Lcom/airbnb/android/models/groups/Content;

    .line 59
    const-class v0, Lcom/airbnb/android/models/groups/Event;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/groups/Event;

    iput-object v0, p0, Lcom/airbnb/android/models/groups/_FeedItem;->mEvent:Lcom/airbnb/android/models/groups/Event;

    .line 60
    return-void
.end method

.method public setContent(Lcom/airbnb/android/models/groups/Content;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/groups/Content;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "content"
    .end annotation

    .prologue
    .line 33
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_FeedItem;->mContent:Lcom/airbnb/android/models/groups/Content;

    .line 34
    return-void
.end method

.method public setEvent(Lcom/airbnb/android/models/groups/Event;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/groups/Event;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "event"
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_FeedItem;->mEvent:Lcom/airbnb/android/models/groups/Event;

    .line 45
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_FeedItem;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 54
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_FeedItem;->mEvent:Lcom/airbnb/android/models/groups/Event;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 55
    return-void
.end method
