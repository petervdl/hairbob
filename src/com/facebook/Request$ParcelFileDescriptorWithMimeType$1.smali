.class final Lcom/facebook/Request$ParcelFileDescriptorWithMimeType$1;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;
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
        "Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 2285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2287
    new-instance v0, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;-><init>(Landroid/os/Parcel;Lcom/facebook/Request$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 2285
    invoke-virtual {p0, p1}, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 2291
    new-array v0, p1, [Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 2285
    invoke-virtual {p0, p1}, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType$1;->newArray(I)[Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    move-result-object v0

    return-object v0
.end method
