.class public Lcom/airbnb/android/models/groups/Content;
.super Lcom/airbnb/android/models/groups/BaseContent;
.source "Content.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/Photoable;


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "content"

.field private static final CREATION_ID:I = -0xa

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/groups/Content;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBody:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "body"
    .end annotation
.end field

.field private mPhotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 136
    new-instance v0, Lcom/airbnb/android/models/groups/Content$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/groups/Content$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/groups/Content;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/BaseContent;-><init>()V

    .line 48
    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Date;Lcom/airbnb/android/models/groups/Author;ZZI)V
    .registers 21
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p7, "createdAt"    # Ljava/util/Date;
    .param p8, "author"    # Lcom/airbnb/android/models/groups/Author;
    .param p9, "flaggedBy"    # Z
    .param p10, "followedBy"    # Z
    .param p11, "groupId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Photo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Comment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Like;",
            ">;",
            "Ljava/util/Date;",
            "Lcom/airbnb/android/models/groups/Author;",
            "ZZI)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p4, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Photo;>;"
    .local p5, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Comment;>;"
    .local p6, "likes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Like;>;"
    move-object v0, p0

    move v1, p1

    move-object v2, p5

    move-object v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p11

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/android/models/groups/BaseContent;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/Date;Lcom/airbnb/android/models/groups/Author;ZZI)V

    .line 53
    iput-object p2, p0, Lcom/airbnb/android/models/groups/Content;->mTitle:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/airbnb/android/models/groups/Content;->mBody:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/airbnb/android/models/groups/Content;->mPhotos:Ljava/util/List;

    .line 56
    return-void
.end method

.method public static forCreation()Lcom/airbnb/android/models/groups/Content;
    .registers 12

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 27
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v5, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Comment;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v6, "likes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Like;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v4, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Photo;>;"
    new-instance v0, Lcom/airbnb/android/models/groups/Content;

    const/16 v1, -0xa

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const/4 v11, -0x1

    move-object v8, v7

    move v10, v9

    invoke-direct/range {v0 .. v11}, Lcom/airbnb/android/models/groups/Content;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Date;Lcom/airbnb/android/models/groups/Author;ZZI)V

    return-object v0
.end method

.method public static of(Lcom/airbnb/android/models/groups/Content;)Lcom/airbnb/android/models/groups/Content;
    .registers 13
    .param p0, "content"    # Lcom/airbnb/android/models/groups/Content;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Content;->copyComments()Ljava/util/List;

    move-result-object v5

    .line 35
    .local v5, "commentsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Comment;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Content;->getPhotos()Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    .local v4, "photosCopy":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Photo;>;"
    new-instance v0, Lcom/airbnb/android/models/groups/Content;

    iget v1, p0, Lcom/airbnb/android/models/groups/Content;->mId:I

    iget-object v2, p0, Lcom/airbnb/android/models/groups/Content;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/airbnb/android/models/groups/Content;->mBody:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Content;->getLikes()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/airbnb/android/models/groups/Content;->mCreatedAt:Ljava/util/Date;

    iget-object v8, p0, Lcom/airbnb/android/models/groups/Content;->mAuthor:Lcom/airbnb/android/models/groups/Author;

    iget-boolean v9, p0, Lcom/airbnb/android/models/groups/Content;->mIsFlaggedBy:Z

    iget-boolean v10, p0, Lcom/airbnb/android/models/groups/Content;->mIsFollowedBy:Z

    iget v11, p0, Lcom/airbnb/android/models/groups/Content;->mGroupId:I

    invoke-direct/range {v0 .. v11}, Lcom/airbnb/android/models/groups/Content;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Date;Lcom/airbnb/android/models/groups/Author;ZZI)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/airbnb/android/models/groups/Content;
    .registers 15
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Photo;",
            ">;)",
            "Lcom/airbnb/android/models/groups/Content;"
        }
    .end annotation

    .prologue
    .local p2, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Photo;>;"
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v1, -0x1

    .line 41
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v5, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Comment;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v6, "likes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Like;>;"
    new-instance v0, Lcom/airbnb/android/models/groups/Content;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v8, v7

    move v10, v9

    move v11, v1

    invoke-direct/range {v0 .. v11}, Lcom/airbnb/android/models/groups/Content;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Date;Lcom/airbnb/android/models/groups/Author;ZZI)V

    return-object v0
.end method


# virtual methods
.method public final accept(Lcom/airbnb/android/models/groups/GroupContentVisitor;)V
    .registers 2
    .param p1, "visitor"    # Lcom/airbnb/android/models/groups/GroupContentVisitor;

    .prologue
    .line 95
    invoke-interface {p1, p0}, Lcom/airbnb/android/models/groups/GroupContentVisitor;->visit(Lcom/airbnb/android/models/groups/Content;)V

    .line 96
    return-void
.end method

.method public addPhoto(Lcom/airbnb/android/models/Photo;)V
    .registers 3
    .param p1, "photo"    # Lcom/airbnb/android/models/Photo;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Content;->getPhotos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public getBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Content;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    const-string/jumbo v0, "Content"

    return-object v0
.end method

.method public getPhotos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Photo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Content;->mPhotos:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Content;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    const-string/jumbo v0, "content"

    return-object v0
.end method

.method public hasBody()Z
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Content;->mBody:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/airbnb/android/models/groups/Content;->mBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public hasPhotos()Z
    .registers 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Content;->getPhotos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/BaseContent;->readFromParcel(Landroid/os/Parcel;)V

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/groups/Content;->mBody:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/groups/Content;->mTitle:Ljava/lang/String;

    .line 133
    sget-object v0, Lcom/airbnb/android/models/Photo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/groups/Content;->mPhotos:Ljava/util/List;

    .line 134
    return-void
.end method

.method public removePhoto(Lcom/airbnb/android/models/Photo;)V
    .registers 3
    .param p1, "photo"    # Lcom/airbnb/android/models/Photo;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Content;->getPhotos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public resetPhotos(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Photo;>;"
    iput-object p1, p0, Lcom/airbnb/android/models/groups/Content;->mPhotos:Ljava/util/List;

    .line 100
    return-void
.end method

.method public setPhotos(Ljava/util/List;)V
    .registers 6
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "photos"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/Wrappers$PhotoWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "photosWrapper":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/requests/Wrappers$PhotoWrapper;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/models/groups/Content;->mPhotos:Ljava/util/List;

    .line 73
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/requests/Wrappers$PhotoWrapper;

    .line 74
    .local v1, "wrapper":Lcom/airbnb/android/requests/Wrappers$PhotoWrapper;
    iget-object v2, p0, Lcom/airbnb/android/models/groups/Content;->mPhotos:Ljava/util/List;

    iget-object v3, v1, Lcom/airbnb/android/requests/Wrappers$PhotoWrapper;->photo:Lcom/airbnb/android/models/Photo;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 76
    .end local v1    # "wrapper":Lcom/airbnb/android/requests/Wrappers$PhotoWrapper;
    :cond_1f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Content;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/groups/BaseContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 123
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Content;->mBody:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Content;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Content;->mPhotos:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 126
    return-void
.end method
