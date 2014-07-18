.class abstract Lcom/airbnb/android/models/_SecurityCheckData;
.super Ljava/lang/Object;
.source "_SecurityCheckData.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mPhoneNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/SecurityCheckPhoneNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/SecurityCheckPhoneNumber;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/SecurityCheckPhoneNumber;>;"
    invoke-direct {p0}, Lcom/airbnb/android/models/_SecurityCheckData;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/airbnb/android/models/_SecurityCheckData;->mPhoneNumbers:Ljava/util/List;

    .line 19
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

.method public getPhoneNumbers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/SecurityCheckPhoneNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/airbnb/android/models/_SecurityCheckData;->mPhoneNumbers:Ljava/util/List;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 45
    sget-object v0, Lcom/airbnb/android/models/SecurityCheckPhoneNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_SecurityCheckData;->mPhoneNumbers:Ljava/util/List;

    .line 46
    return-void
.end method

.method public setPhoneNumbers(Ljava/util/List;)V
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "phone_numbers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/SecurityCheckPhoneNumber;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/SecurityCheckPhoneNumber;>;"
    iput-object p1, p0, Lcom/airbnb/android/models/_SecurityCheckData;->mPhoneNumbers:Ljava/util/List;

    .line 33
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/android/models/_SecurityCheckData;->mPhoneNumbers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 42
    return-void
.end method
