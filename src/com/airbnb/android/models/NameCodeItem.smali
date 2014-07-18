.class public Lcom/airbnb/android/models/NameCodeItem;
.super Lcom/airbnb/android/models/_NameCodeItem;
.source "NameCodeItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/NameCodeItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    new-instance v0, Lcom/airbnb/android/models/NameCodeItem$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/NameCodeItem$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/NameCodeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/airbnb/android/models/_NameCodeItem;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/_NameCodeItem;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/_NameCodeItem;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/_NameCodeItem;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_NameCodeItem;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/airbnb/android/models/NameCodeItem;->mCode:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/airbnb/android/models/NameCodeItem;->mName:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_NameCodeItem;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
