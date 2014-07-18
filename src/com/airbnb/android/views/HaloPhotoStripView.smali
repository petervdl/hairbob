.class public Lcom/airbnb/android/views/HaloPhotoStripView;
.super Lcom/airbnb/android/views/PhotoStripView;
.source "HaloPhotoStripView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/PhotoStripView;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/PhotoStripView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected getImageView(Ljava/lang/String;)Landroid/view/View;
    .registers 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloPhotoStripView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 22
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Lcom/airbnb/android/views/HaloImageView;

    invoke-direct {v2, v1}, Lcom/airbnb/android/views/HaloImageView;-><init>(Landroid/content/Context;)V

    .line 23
    .local v2, "imageView":Lcom/airbnb/android/views/HaloImageView;
    iget-boolean v4, p0, Lcom/airbnb/android/views/HaloPhotoStripView;->mLightened:Z

    if-eqz v4, :cond_26

    .line 24
    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloPhotoStripView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 25
    .local v0, "color":I
    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloPhotoStripView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0036

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 26
    .local v3, "thickness":F
    invoke-virtual {v2, v0, v3}, Lcom/airbnb/android/views/HaloImageView;->setBorder(IF)V

    .line 28
    .end local v0    # "color":I
    .end local v3    # "thickness":F
    :cond_26
    invoke-virtual {v2, p1}, Lcom/airbnb/android/views/HaloImageView;->setImageUrl(Ljava/lang/String;)V

    .line 29
    return-object v2
.end method
