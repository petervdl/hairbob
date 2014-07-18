.class public Lcom/airbnb/android/models/TripInvoiceItemAttachment;
.super Lcom/airbnb/android/models/_TripInvoiceItemAttachment;
.source "TripInvoiceItemAttachment.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/TripInvoiceItemAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private static final DISPUTE_NOTE:Ljava/lang/String; = "Dispute Note"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    new-instance v0, Lcom/airbnb/android/models/TripInvoiceItemAttachment$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/TripInvoiceItemAttachment$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/TripInvoiceItemAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAttachmentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->getAttachmentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAuthor()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->getAuthor()Lcom/airbnb/android/models/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()J
    .registers 3

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public isDisputeAttachment()Z
    .registers 3

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/airbnb/android/models/TripInvoiceItemAttachment;->getAttachmentType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Dispute Note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setAttachmentType(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->setAttachmentType(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setAuthor(Lcom/airbnb/android/models/User;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->setAuthor(Lcom/airbnb/android/models/User;)V

    return-void
.end method

.method public bridge synthetic setContent(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->setContent(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCreatedAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Date;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->setCreatedAt(Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic setId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->setId(J)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_TripInvoiceItemAttachment;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
