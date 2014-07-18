.class final Lcom/airbnb/android/models/groups/Group$1;
.super Ljava/lang/Object;
.source "Group.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/models/groups/Group;
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
        "Lcom/airbnb/android/models/groups/Group;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/airbnb/android/models/groups/Group;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 113
    new-instance v0, Lcom/airbnb/android/models/groups/Group;

    invoke-direct {v0}, Lcom/airbnb/android/models/groups/Group;-><init>()V

    .line 114
    .local v0, "object":Lcom/airbnb/android/models/groups/Group;
    invoke-virtual {v0, p1}, Lcom/airbnb/android/models/groups/Group;->readFromParcel(Landroid/os/Parcel;)V

    .line 115
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/airbnb/android/models/groups/Group$1;->createFromParcel(Landroid/os/Parcel;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/airbnb/android/models/groups/Group;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 108
    new-array v0, p1, [Lcom/airbnb/android/models/groups/Group;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/airbnb/android/models/groups/Group$1;->newArray(I)[Lcom/airbnb/android/models/groups/Group;

    move-result-object v0

    return-object v0
.end method
