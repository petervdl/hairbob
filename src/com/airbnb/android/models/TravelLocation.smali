.class public Lcom/airbnb/android/models/TravelLocation;
.super Lcom/airbnb/android/models/_TravelLocation;
.source "TravelLocation.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/TravelLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field searchParams:Lcom/airbnb/android/utils/Strap;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "search_parameters"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    new-instance v0, Lcom/airbnb/android/models/TravelLocation$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/TravelLocation$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/TravelLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/airbnb/android/models/_TravelLocation;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/_TravelLocation;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAttributes()Ljava/util/List;
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/_TravelLocation;->getAttributes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/_TravelLocation;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMedium_url()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/_TravelLocation;->getMedium_url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNum_listings()J
    .registers 3

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/_TravelLocation;->getNum_listings()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getPicture_url()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/_TravelLocation;->getPicture_url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchParams()Lcom/airbnb/android/utils/Strap;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/models/TravelLocation;->searchParams:Lcom/airbnb/android/utils/Strap;

    return-object v0
.end method

.method public bridge synthetic getSubtitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/_TravelLocation;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getThumbnail_url()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/_TravelLocation;->getThumbnail_url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/_TravelLocation;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/_TravelLocation;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getXl_picture_url()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/_TravelLocation;->getXl_picture_url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TravelLocation;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setAttributes(Ljava/util/List;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TravelLocation;->setAttributes(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TravelLocation;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setMedium_url(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TravelLocation;->setMedium_url(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setNum_listings(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_TravelLocation;->setNum_listings(J)V

    return-void
.end method

.method public bridge synthetic setPicture_url(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TravelLocation;->setPicture_url(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setSubtitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TravelLocation;->setSubtitle(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setThumbnail_url(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TravelLocation;->setThumbnail_url(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TravelLocation;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TravelLocation;->setType(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setXl_picture_url(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TravelLocation;->setXl_picture_url(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_TravelLocation;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
