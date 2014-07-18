.class public Lcom/airbnb/android/models/groups/Reply;
.super Lcom/airbnb/android/models/groups/_Reply;
.source "Reply.java"

# interfaces
.implements Lcom/airbnb/android/models/groups/Authorable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/groups/Reply;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNSAVED_ID:I = -0xa


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    new-instance v0, Lcom/airbnb/android/models/groups/Reply$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/groups/Reply$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/groups/Reply;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_Reply;-><init>()V

    .line 32
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/util/Date;Lcom/airbnb/android/models/groups/Author;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "createdAt"    # Ljava/util/Date;
    .param p4, "author"    # Lcom/airbnb/android/models/groups/Author;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_Reply;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/airbnb/android/models/groups/Reply;->mText:Ljava/lang/String;

    .line 25
    iput p1, p0, Lcom/airbnb/android/models/groups/Reply;->mId:I

    .line 26
    iput-object p3, p0, Lcom/airbnb/android/models/groups/Reply;->mCreatedAt:Ljava/util/Date;

    .line 27
    iput-object p4, p0, Lcom/airbnb/android/models/groups/Reply;->mAuthor:Lcom/airbnb/android/models/groups/Author;

    .line 28
    return-void
.end method

.method public static forCreation(Ljava/lang/String;Lcom/airbnb/android/models/User;)Lcom/airbnb/android/models/groups/Reply;
    .registers 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "author"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 19
    new-instance v0, Lcom/airbnb/android/models/groups/Reply;

    const/16 v1, -0xa

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {p1}, Lcom/airbnb/android/models/groups/Author;->forUser(Lcom/airbnb/android/models/User;)Lcom/airbnb/android/models/groups/Author;

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/airbnb/android/models/groups/Reply;-><init>(ILjava/lang/String;Ljava/util/Date;Lcom/airbnb/android/models/groups/Author;)V

    return-object v0
.end method

.method public static of(Lcom/airbnb/android/models/groups/Reply;)Lcom/airbnb/android/models/groups/Reply;
    .registers 6
    .param p0, "reply"    # Lcom/airbnb/android/models/groups/Reply;

    .prologue
    .line 15
    new-instance v0, Lcom/airbnb/android/models/groups/Reply;

    iget v1, p0, Lcom/airbnb/android/models/groups/Reply;->mId:I

    iget-object v2, p0, Lcom/airbnb/android/models/groups/Reply;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/airbnb/android/models/groups/Reply;->mCreatedAt:Ljava/util/Date;

    iget-object v4, p0, Lcom/airbnb/android/models/groups/Reply;->mAuthor:Lcom/airbnb/android/models/groups/Author;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/android/models/groups/Reply;-><init>(ILjava/lang/String;Ljava/util/Date;Lcom/airbnb/android/models/groups/Author;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Reply;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    if-ne p0, p1, :cond_5

    .line 89
    :cond_4
    :goto_4
    return v1

    .line 79
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 80
    goto :goto_4

    .line 82
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 83
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 85
    check-cast v0, Lcom/airbnb/android/models/groups/Reply;

    .line 86
    .local v0, "other":Lcom/airbnb/android/models/groups/Reply;
    iget v3, p0, Lcom/airbnb/android/models/groups/Reply;->mId:I

    iget v4, v0, Lcom/airbnb/android/models/groups/Reply;->mId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 87
    goto :goto_4
.end method

.method public bridge synthetic getAuthor()Lcom/airbnb/android/models/groups/Author;
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Reply;->getAuthor()Lcom/airbnb/android/models/groups/Author;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Reply;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()I
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Reply;->getId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Reply;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 68
    const/16 v0, 0x1f

    .line 69
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 70
    .local v1, "result":I
    iget v2, p0, Lcom/airbnb/android/models/groups/Reply;->mId:I

    add-int/lit8 v1, v2, 0x1f

    .line 71
    return v1
.end method

.method public isAuthor(Lcom/airbnb/android/models/User;)Z
    .registers 3
    .param p1, "user"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Reply;->getAuthor()Lcom/airbnb/android/models/groups/Author;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/Author;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/airbnb/android/models/User;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFlaggedBy()Z
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Reply;->isFlaggedBy()Z

    move-result v0

    return v0
.end method

.method public isSaved()Z
    .registers 3

    .prologue
    .line 48
    iget v0, p0, Lcom/airbnb/android/models/groups/Reply;->mId:I

    const/16 v1, -0xa

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public markAsFlagged()V
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/models/groups/Reply;->mIsFlaggedBy:Z

    .line 45
    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Reply;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setAuthor(Lcom/airbnb/android/models/groups/Author;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/groups/Author;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Reply;->setAuthor(Lcom/airbnb/android/models/groups/Author;)V

    return-void
.end method

.method public bridge synthetic setCreatedAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Date;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Reply;->setCreatedAt(Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic setId(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Reply;->setId(I)V

    return-void
.end method

.method public bridge synthetic setIsFlaggedBy(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Reply;->setIsFlaggedBy(Z)V

    return-void
.end method

.method public bridge synthetic setText(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Reply;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Reply;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/groups/_Reply;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
