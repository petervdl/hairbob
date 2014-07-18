.class public Lcom/airbnb/android/models/groups/GroupsSection;
.super Lcom/airbnb/android/models/groups/_GroupsSection;
.source "GroupsSection.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/models/groups/_GroupsSection;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/airbnb/android/models/groups/GroupsSection;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/groups/GroupsSection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    new-instance v0, Lcom/airbnb/android/models/groups/GroupsSection$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/groups/GroupsSection$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/groups/GroupsSection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_GroupsSection;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_GroupsSection;-><init>()V

    .line 13
    iput p1, p0, Lcom/airbnb/android/models/groups/GroupsSection;->mId:I

    .line 14
    iput-object p2, p0, Lcom/airbnb/android/models/groups/GroupsSection;->mTitle:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/airbnb/android/models/groups/GroupsSection;)I
    .registers 4
    .param p1, "another"    # Lcom/airbnb/android/models/groups/GroupsSection;

    .prologue
    .line 60
    iget v0, p0, Lcom/airbnb/android/models/groups/GroupsSection;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Lcom/airbnb/android/models/groups/GroupsSection;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 6
    check-cast p1, Lcom/airbnb/android/models/groups/GroupsSection;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/models/groups/GroupsSection;->compareTo(Lcom/airbnb/android/models/groups/GroupsSection;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_GroupsSection;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    if-ne p0, p1, :cond_5

    .line 55
    :cond_4
    :goto_4
    return v1

    .line 45
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 46
    goto :goto_4

    .line 48
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 49
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 51
    check-cast v0, Lcom/airbnb/android/models/groups/GroupsSection;

    .line 52
    .local v0, "other":Lcom/airbnb/android/models/groups/GroupsSection;
    iget v3, p0, Lcom/airbnb/android/models/groups/GroupsSection;->mId:I

    iget v4, v0, Lcom/airbnb/android/models/groups/GroupsSection;->mId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 53
    goto :goto_4
.end method

.method public bridge synthetic getId()I
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_GroupsSection;->getId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_GroupsSection;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 34
    const/16 v0, 0x1f

    .line 35
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 36
    .local v1, "result":I
    iget v2, p0, Lcom/airbnb/android/models/groups/GroupsSection;->mId:I

    add-int/lit8 v1, v2, 0x1f

    .line 37
    return v1
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_GroupsSection;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setId(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_GroupsSection;->setId(I)V

    return-void
.end method

.method public bridge synthetic setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_GroupsSection;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/groups/_GroupsSection;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
