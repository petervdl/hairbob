.class public Lcom/airbnb/android/adapters/groups/PhotosAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "PhotosAdapter.java"


# instance fields
.field private mFill:Z

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

.field private mShowCaption:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;ZZ)V
    .registers 5
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "showCaption"    # Z
    .param p4, "fill"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Photo;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Photo;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 21
    iput-object p2, p0, Lcom/airbnb/android/adapters/groups/PhotosAdapter;->mPhotos:Ljava/util/List;

    .line 22
    iput-boolean p3, p0, Lcom/airbnb/android/adapters/groups/PhotosAdapter;->mShowCaption:Z

    .line 23
    iput-boolean p4, p0, Lcom/airbnb/android/adapters/groups/PhotosAdapter;->mFill:Z

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/airbnb/android/adapters/groups/PhotosAdapter;->mPhotos:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/airbnb/android/adapters/groups/PhotosAdapter;->mPhotos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 28
    iget-object v3, p0, Lcom/airbnb/android/adapters/groups/PhotosAdapter;->mPhotos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Photo;

    .line 29
    .local v2, "photo":Lcom/airbnb/android/models/Photo;
    invoke-virtual {v2}, Lcom/airbnb/android/models/Photo;->getPictureUrl()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "imageUrl":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/airbnb/android/adapters/groups/PhotosAdapter;->mShowCaption:Z

    if-eqz v3, :cond_1b

    invoke-virtual {v2}, Lcom/airbnb/android/models/Photo;->getCaption()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "imageCaption":Ljava/lang/String;
    :goto_14
    iget-boolean v3, p0, Lcom/airbnb/android/adapters/groups/PhotosAdapter;->mFill:Z

    invoke-static {v1, v0, v3}, Lcom/airbnb/android/fragments/ImageFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/airbnb/android/fragments/ImageFragment;

    move-result-object v3

    return-object v3

    .line 30
    .end local v0    # "imageCaption":Ljava/lang/String;
    :cond_1b
    const/4 v0, 0x0

    goto :goto_14
.end method
