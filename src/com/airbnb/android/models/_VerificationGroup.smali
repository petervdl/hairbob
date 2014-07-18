.class abstract Lcom/airbnb/android/models/_VerificationGroup;
.super Ljava/lang/Object;
.source "_VerificationGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Verification;",
            ">;"
        }
    .end annotation
.end field

.field protected mType:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Verification;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Verification;>;"
    invoke-direct {p0}, Lcom/airbnb/android/models/_VerificationGroup;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/airbnb/android/models/_VerificationGroup;->mItems:Ljava/util/List;

    .line 20
    iput-object p2, p0, Lcom/airbnb/android/models/_VerificationGroup;->mType:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Verification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/models/_VerificationGroup;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/android/models/_VerificationGroup;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 59
    sget-object v0, Lcom/airbnb/android/models/Verification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_VerificationGroup;->mItems:Ljava/util/List;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_VerificationGroup;->mType:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Verification;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Verification;>;"
    iput-object p1, p0, Lcom/airbnb/android/models/_VerificationGroup;->mItems:Ljava/util/List;

    .line 35
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation

    .prologue
    .line 45
    iput-object p1, p0, Lcom/airbnb/android/models/_VerificationGroup;->mType:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/airbnb/android/models/_VerificationGroup;->mItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 55
    iget-object v0, p0, Lcom/airbnb/android/models/_VerificationGroup;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    return-void
.end method
