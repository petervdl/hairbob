.class public Lcom/airbnb/android/views/groups/ContentPhotoCard;
.super Lcom/airbnb/android/views/groups/BaseFeedCard;
.source "ContentPhotoCard.java"


# instance fields
.field private mContent:Lcom/airbnb/android/models/groups/Content;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Content;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p3, "content"    # Lcom/airbnb/android/models/groups/Content;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/views/groups/BaseFeedCard;-><init>(Landroid/content/Context;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V

    .line 19
    iput-object p3, p0, Lcom/airbnb/android/views/groups/ContentPhotoCard;->mContent:Lcom/airbnb/android/models/groups/Content;

    .line 20
    return-void
.end method


# virtual methods
.method protected getLayout()I
    .registers 2

    .prologue
    .line 24
    const v0, 0x7f030111

    return v0
.end method

.method protected onSetContent(Lcom/airbnb/android/models/groups/BaseContent;)V
    .registers 7
    .param p1, "content"    # Lcom/airbnb/android/models/groups/BaseContent;

    .prologue
    .line 34
    check-cast p1, Lcom/airbnb/android/models/groups/Content;

    .end local p1    # "content":Lcom/airbnb/android/models/groups/BaseContent;
    iput-object p1, p0, Lcom/airbnb/android/views/groups/ContentPhotoCard;->mContent:Lcom/airbnb/android/models/groups/Content;

    .line 35
    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/ContentPhotoCard;->setupDefaultChrome()V

    .line 36
    const v3, 0x7f08035d

    invoke-virtual {p0, v3}, Lcom/airbnb/android/views/groups/ContentPhotoCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 37
    .local v2, "titleTextView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/airbnb/android/views/groups/ContentPhotoCard;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/Content;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/utils/MiscUtils;->stripString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v3, p0, Lcom/airbnb/android/views/groups/ContentPhotoCard;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/Content;->getPhotos()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Photo;

    .line 41
    .local v0, "photo":Lcom/airbnb/android/models/Photo;
    const v3, 0x7f0802ee

    invoke-virtual {p0, v3}, Lcom/airbnb/android/views/groups/ContentPhotoCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/AirImageView;

    .line 42
    .local v1, "photoView":Lcom/airbnb/android/views/AirImageView;
    invoke-virtual {v0}, Lcom/airbnb/android/models/Photo;->getPictureUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method protected onSetLayout()V
    .registers 2

    .prologue
    .line 29
    const v0, 0x7f03013b

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/ContentPhotoCard;->setContentLayout(I)V

    .line 30
    return-void
.end method
