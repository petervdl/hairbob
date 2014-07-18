.class final Lcom/airbnb/android/models/TripInvoiceItem$1;
.super Ljava/lang/Object;
.source "TripInvoiceItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/models/TripInvoiceItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/airbnb/android/models/TripInvoiceItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/airbnb/android/models/TripInvoiceItem;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 61
    new-instance v0, Lcom/airbnb/android/models/TripInvoiceItem;

    invoke-direct {v0}, Lcom/airbnb/android/models/TripInvoiceItem;-><init>()V

    .line 62
    .local v0, "object":Lcom/airbnb/android/models/TripInvoiceItem;
    invoke-virtual {v0, p1}, Lcom/airbnb/android/models/TripInvoiceItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 63
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/airbnb/android/models/TripInvoiceItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/airbnb/android/models/TripInvoiceItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/airbnb/android/models/TripInvoiceItem;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 57
    new-array v0, p1, [Lcom/airbnb/android/models/TripInvoiceItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/airbnb/android/models/TripInvoiceItem$1;->newArray(I)[Lcom/airbnb/android/models/TripInvoiceItem;

    move-result-object v0

    return-object v0
.end method
