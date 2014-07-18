.class public Lcom/airbnb/android/adapters/managelisting/SpaceTypeAdapter;
.super Landroid/widget/BaseAdapter;
.source "SpaceTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/managelisting/SpaceTypeAdapter$ViewHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 23
    invoke-static {}, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->values()[Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 28
    invoke-static {}, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->values()[Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 33
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 38
    if-nez p2, :cond_3b

    .line 39
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030187

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 40
    new-instance v1, Lcom/airbnb/android/adapters/managelisting/SpaceTypeAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/airbnb/android/adapters/managelisting/SpaceTypeAdapter$ViewHolder;-><init>()V

    .line 42
    .local v1, "viewHolder":Lcom/airbnb/android/adapters/managelisting/SpaceTypeAdapter$ViewHolder;
    const v2, 0x7f08040a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/airbnb/android/adapters/managelisting/SpaceTypeAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 43
    const v2, 0x7f0800b7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/airbnb/android/adapters/managelisting/SpaceTypeAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 44
    const v2, 0x7f080215

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/airbnb/android/adapters/managelisting/SpaceTypeAdapter$ViewHolder;->mDesc:Landroid/widget/TextView;

    .line 46
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    .end local v1    # "viewHolder":Lcom/airbnb/android/adapters/managelisting/SpaceTypeAdapter$ViewHolder;
    :cond_3b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/adapters/managelisting/SpaceTypeAdapter$ViewHolder;

    .line 50
    .restart local v1    # "viewHolder":Lcom/airbnb/android/adapters/managelisting/SpaceTypeAdapter$ViewHolder;
    invoke-static {}, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->values()[Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    move-result-object v2

    aget-object v0, v2, p1

    .line 52
    .local v0, "spaceType":Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;
    iget-object v2, v1, Lcom/airbnb/android/adapters/managelisting/SpaceTypeAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    iget v3, v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->mIconId:I

    const v4, 0x7f0a002b

    invoke-static {v3, v4}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    iget-object v2, v1, Lcom/airbnb/android/adapters/managelisting/SpaceTypeAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget v3, v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->mTitleId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 54
    iget-object v2, v1, Lcom/airbnb/android/adapters/managelisting/SpaceTypeAdapter$ViewHolder;->mDesc:Landroid/widget/TextView;

    iget v3, v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->mDescId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 56
    return-object p2
.end method
