.class public Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;
.super Landroid/widget/BaseAdapter;
.source "PropertyTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mCurrentItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;",
            ">;"
        }
    .end annotation
.end field

.field private mHideImages:Z

.field private mIsOther:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;Z)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isOther"    # Ljava/lang/Boolean;
    .param p3, "hideImages"    # Z

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;->mCurrentItems:Ljava/util/ArrayList;

    .line 30
    iput-object p2, p0, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;->mIsOther:Ljava/lang/Boolean;

    .line 31
    iput-boolean p3, p0, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;->mHideImages:Z

    .line 33
    invoke-static {}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->values()[Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    move-result-object v0

    .local v0, "arr$":[Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_14
    if-ge v1, v2, :cond_3a

    aget-object v3, v0, v1

    .line 34
    .local v3, "type":Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    iget-boolean v4, v3, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mVisible:Z

    if-nez v4, :cond_1f

    .line 33
    :cond_1c
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 36
    :cond_1f
    iget-object v4, p0, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;->mIsOther:Ljava/lang/Boolean;

    if-nez v4, :cond_29

    .line 37
    iget-object v4, p0, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;->mCurrentItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 38
    :cond_29
    iget-boolean v4, v3, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mShowWhenCollapsed:Z

    iget-object v5, p0, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;->mIsOther:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    xor-int/2addr v4, v5

    if-eqz v4, :cond_1c

    .line 39
    iget-object v4, p0, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;->mCurrentItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 42
    .end local v3    # "type":Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    :cond_3a
    return-void
.end method


# virtual methods
.method public expand()V
    .registers 6

    .prologue
    .line 45
    iget-object v4, p0, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;->mCurrentItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 46
    invoke-static {}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->values()[Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    move-result-object v0

    .local v0, "arr$":[Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_b
    if-ge v1, v2, :cond_1f

    aget-object v3, v0, v1

    .line 47
    .local v3, "type":Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    iget-boolean v4, v3, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mShowWhenExpanded:Z

    if-eqz v4, :cond_1c

    iget-boolean v4, v3, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mVisible:Z

    if-eqz v4, :cond_1c

    .line 48
    iget-object v4, p0, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;->mCurrentItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 52
    .end local v3    # "type":Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    :cond_1f
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;->notifyDataSetChanged()V

    .line 53
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;->mCurrentItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;->mCurrentItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;->mCurrentItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    invoke-virtual {v0}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->ordinal()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v5, 0x8

    .line 72
    if-nez p2, :cond_42

    .line 73
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030187

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 74
    new-instance v1, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter$ViewHolder;-><init>()V

    .line 76
    .local v1, "viewHolder":Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter$ViewHolder;
    const v2, 0x7f08040a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 77
    const v2, 0x7f0800b7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 78
    const v2, 0x7f080215

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter$ViewHolder;->mDesc:Landroid/widget/TextView;

    .line 79
    iget-object v2, v1, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter$ViewHolder;->mDesc:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    .end local v1    # "viewHolder":Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter$ViewHolder;
    :cond_42
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter$ViewHolder;

    .line 85
    .restart local v1    # "viewHolder":Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 87
    .local v0, "propertyType":Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    iget-boolean v2, p0, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;->mHideImages:Z

    if-nez v2, :cond_5f

    iget-object v2, p0, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;->mIsOther:Ljava/lang/Boolean;

    if-eqz v2, :cond_6c

    iget-object v2, p0, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;->mIsOther:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6c

    .line 88
    :cond_5f
    iget-object v2, v1, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    :goto_64
    iget-object v2, v1, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget v3, v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mTitleId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 96
    return-object p2

    .line 90
    :cond_6c
    iget-object v2, v1, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    iget v3, v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mIconId:I

    const v4, 0x7f0a002b

    invoke-static {v3, v4}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_64
.end method
