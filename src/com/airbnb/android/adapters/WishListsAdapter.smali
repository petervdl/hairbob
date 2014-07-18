.class public Lcom/airbnb/android/adapters/WishListsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WishListsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/WishListsAdapter$ViewHolder;,
        Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/models/Collection;",
        ">;"
    }
.end annotation


# instance fields
.field private mFetching:Z

.field private mNumColumns:I

.field private mRemainingData:Z

.field private mWishListHeight:I

.field private mWishListsListener:Lcom/airbnb/android/fragments/WishlistsFragment$WishListsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/android/fragments/WishlistsFragment$WishListsListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wishListsListener"    # Lcom/airbnb/android/fragments/WishlistsFragment$WishListsListener;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 28
    iput-boolean v0, p0, Lcom/airbnb/android/adapters/WishListsAdapter;->mFetching:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/adapters/WishListsAdapter;->mRemainingData:Z

    .line 42
    iput-object p2, p0, Lcom/airbnb/android/adapters/WishListsAdapter;->mWishListsListener:Lcom/airbnb/android/fragments/WishlistsFragment$WishListsListener;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/adapters/WishListsAdapter;->mNumColumns:I

    .line 45
    return-void
.end method

.method static synthetic access$002(Lcom/airbnb/android/adapters/WishListsAdapter;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/WishListsAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/airbnb/android/adapters/WishListsAdapter;->mRemainingData:Z

    return p1
.end method

.method static synthetic access$102(Lcom/airbnb/android/adapters/WishListsAdapter;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/WishListsAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/airbnb/android/adapters/WishListsAdapter;->mFetching:Z

    return p1
.end method

.method public static getWishListView(Landroid/content/Context;Lcom/airbnb/android/models/Collection;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "collection"    # Lcom/airbnb/android/models/Collection;
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;
    .param p5, "numColumns"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 138
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 139
    .local v0, "c":Landroid/content/Context;
    if-nez p3, :cond_44

    .line 140
    new-instance v2, Lcom/airbnb/android/adapters/WishListsAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/airbnb/android/adapters/WishListsAdapter$ViewHolder;-><init>()V

    .line 141
    .local v2, "viewHolder":Lcom/airbnb/android/adapters/WishListsAdapter$ViewHolder;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03016b

    invoke-virtual {v3, v4, p4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 143
    const v3, 0x7f0803b4

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/views/AirImageView;

    iput-object v3, v2, Lcom/airbnb/android/adapters/WishListsAdapter$ViewHolder;->wishlistImageView:Lcom/airbnb/android/views/AirImageView;

    .line 144
    iget-object v3, v2, Lcom/airbnb/android/adapters/WishListsAdapter$ViewHolder;->wishlistImageView:Lcom/airbnb/android/views/AirImageView;

    const v4, 0x7f0a001c

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/AirImageView;->setDefaultImageResId(I)V

    .line 145
    const v3, 0x7f0800f8

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/airbnb/android/adapters/WishListsAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    .line 146
    const v3, 0x7f0800f9

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/airbnb/android/adapters/WishListsAdapter$ViewHolder;->listingsCountTextView:Landroid/widget/TextView;

    .line 148
    invoke-virtual {p3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 151
    .end local v2    # "viewHolder":Lcom/airbnb/android/adapters/WishListsAdapter$ViewHolder;
    :cond_44
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/adapters/WishListsAdapter$ViewHolder;

    .line 153
    .restart local v2    # "viewHolder":Lcom/airbnb/android/adapters/WishListsAdapter$ViewHolder;
    invoke-virtual {p1}, Lcom/airbnb/android/models/Collection;->getListingsCount()I

    move-result v1

    .line 154
    .local v1, "numListings":I
    iget-object v4, v2, Lcom/airbnb/android/adapters/WishListsAdapter$ViewHolder;->wishlistImageView:Lcom/airbnb/android/views/AirImageView;

    if-nez v1, :cond_a6

    const/4 v3, 0x0

    :goto_53
    invoke-virtual {v4, v3}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 156
    iget-object v3, v2, Lcom/airbnb/android/adapters/WishListsAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Collection;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v3, v2, Lcom/airbnb/android/adapters/WishListsAdapter$ViewHolder;->listingsCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d001a

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {p1}, Lcom/airbnb/android/models/Collection;->isPrivateCollection()Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 161
    iget-object v3, v2, Lcom/airbnb/android/adapters/WishListsAdapter$ViewHolder;->listingsCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00a7

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v2, Lcom/airbnb/android/adapters/WishListsAdapter$ViewHolder;->listingsCountTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e081d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_a5
    return-object p3

    .line 154
    :cond_a6
    invoke-virtual {p1}, Lcom/airbnb/android/models/Collection;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_53
.end method


# virtual methods
.method public fetchMyWishlists()V
    .registers 8

    .prologue
    .line 102
    iget-boolean v5, p0, Lcom/airbnb/android/adapters/WishListsAdapter;->mFetching:Z

    if-eqz v5, :cond_5

    .line 135
    :cond_4
    :goto_4
    return-void

    .line 105
    :cond_5
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v2

    .line 106
    .local v2, "user":Lcom/airbnb/android/models/User;
    if-eqz v2, :cond_4

    .line 107
    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v3

    .line 109
    .local v3, "userId":J
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 110
    .local v0, "existingWishLists":I
    new-instance v1, Lcom/airbnb/android/requests/MyWishListsRequest;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/airbnb/android/adapters/WishListsAdapter$1;

    invoke-direct {v6, p0, v0}, Lcom/airbnb/android/adapters/WishListsAdapter$1;-><init>(Lcom/airbnb/android/adapters/WishListsAdapter;I)V

    invoke-direct {v1, v5, v0, v6}, Lcom/airbnb/android/requests/MyWishListsRequest;-><init>(Ljava/lang/String;ILcom/airbnb/android/requests/RequestListener;)V

    .line 132
    .local v1, "request":Lcom/airbnb/android/requests/MyWishListsRequest;
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/airbnb/android/adapters/WishListsAdapter;->mFetching:Z

    .line 133
    invoke-virtual {v1}, Lcom/airbnb/android/requests/MyWishListsRequest;->execute()V

    goto :goto_4
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 50
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/WishListsAdapter;->getCount()I

    move-result v0

    .line 56
    .local v0, "numWishlists":I
    add-int/lit8 v1, v0, -0x1

    if-ne p1, v1, :cond_1a

    .line 57
    iget-boolean v1, p0, Lcom/airbnb/android/adapters/WishListsAdapter;->mRemainingData:Z

    if-eqz v1, :cond_13

    .line 58
    sget-object v1, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;->LOADING:Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;->ordinal()I

    move-result v1

    .line 63
    :goto_12
    return v1

    .line 60
    :cond_13
    sget-object v1, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;->FOOTER:Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;->ordinal()I

    move-result v1

    goto :goto_12

    .line 63
    :cond_1a
    sget-object v1, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;->LISTING:Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;->ordinal()I

    move-result v1

    goto :goto_12
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/WishListsAdapter;->getItemViewType(I)I

    move-result v8

    .line 75
    .local v8, "viewType":I
    sget-object v0, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;->LOADING:Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;->ordinal()I

    move-result v0

    if-ne v8, v0, :cond_23

    .line 76
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/WishListsAdapter;->fetchMyWishlists()V

    .line 78
    if-nez p2, :cond_21

    .line 79
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03014c

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_21
    move-object v9, p2

    .line 97
    :goto_22
    return-object v9

    .line 82
    :cond_23
    sget-object v0, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;->FOOTER:Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;->ordinal()I

    move-result v0

    if-ne v8, v0, :cond_3e

    .line 83
    if-nez p2, :cond_3c

    .line 84
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03016c

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_3c
    move-object v9, p2

    .line 86
    goto :goto_22

    .line 88
    :cond_3e
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/WishListsAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/WishListsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Collection;

    iget v5, p0, Lcom/airbnb/android/adapters/WishListsAdapter;->mNumColumns:I

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/airbnb/android/adapters/WishListsAdapter;->getWishListView(Landroid/content/Context;Lcom/airbnb/android/models/Collection;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v9

    .line 89
    .local v9, "wishListView":Landroid/view/View;
    iget v0, p0, Lcom/airbnb/android/adapters/WishListsAdapter;->mWishListHeight:I

    if-gtz v0, :cond_6b

    .line 91
    iget v0, p0, Lcom/airbnb/android/adapters/WishListsAdapter;->mNumColumns:I

    invoke-static {p3, v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->getImageHeight(Landroid/view/ViewGroup;I)I

    move-result v7

    .line 92
    .local v7, "imageHeight":I
    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    .line 93
    .local v6, "detailsBoxHeight":I
    add-int v0, v6, v7

    iput v0, p0, Lcom/airbnb/android/adapters/WishListsAdapter;->mWishListHeight:I

    .line 95
    .end local v6    # "detailsBoxHeight":I
    .end local v7    # "imageHeight":I
    :cond_6b
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/airbnb/android/adapters/WishListsAdapter;->mWishListHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_22
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 68
    invoke-static {}, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;->values()[Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Collection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "wishLists":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Collection;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_27

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Collection;

    .line 173
    .local v0, "collection":Lcom/airbnb/android/models/Collection;
    invoke-virtual {p0, v0}, Lcom/airbnb/android/adapters/WishListsAdapter;->remove(Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p0, v0}, Lcom/airbnb/android/adapters/WishListsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_a

    .line 176
    .end local v0    # "collection":Lcom/airbnb/android/models/Collection;
    :cond_1d
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/airbnb/android/AirbnbApi;->setWishLists(Ljava/util/List;)V

    .line 177
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/WishListsAdapter;->notifyDataSetChanged()V

    .line 179
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_27
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_32

    .line 180
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/airbnb/android/adapters/WishListsAdapter;->mRemainingData:Z

    .line 182
    :cond_32
    iget-object v2, p0, Lcom/airbnb/android/adapters/WishListsAdapter;->mWishListsListener:Lcom/airbnb/android/fragments/WishlistsFragment$WishListsListener;

    if-eqz v2, :cond_3b

    .line 183
    iget-object v2, p0, Lcom/airbnb/android/adapters/WishListsAdapter;->mWishListsListener:Lcom/airbnb/android/fragments/WishlistsFragment$WishListsListener;

    invoke-interface {v2, p1}, Lcom/airbnb/android/fragments/WishlistsFragment$WishListsListener;->onWishListsLoaded(Ljava/util/List;)V

    .line 185
    :cond_3b
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/WishListsAdapter;->notifyDataSetChanged()V

    .line 186
    return-void
.end method

.method public updateWishList(Lcom/airbnb/android/models/Collection;)Z
    .registers 9
    .param p1, "updatedWishList"    # Lcom/airbnb/android/models/Collection;

    .prologue
    .line 189
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    .line 190
    .local v1, "numWishLists":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_24

    .line 191
    invoke-virtual {p0, v0}, Lcom/airbnb/android/adapters/WishListsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Collection;

    .line 192
    .local v2, "wishList":Lcom/airbnb/android/models/Collection;
    invoke-virtual {v2}, Lcom/airbnb/android/models/Collection;->getId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/airbnb/android/models/Collection;->getId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_21

    .line 193
    invoke-virtual {p0, p1, v0}, Lcom/airbnb/android/adapters/WishListsAdapter;->insert(Ljava/lang/Object;I)V

    .line 194
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/WishListsAdapter;->notifyDataSetChanged()V

    .line 195
    const/4 v3, 0x1

    .line 198
    .end local v2    # "wishList":Lcom/airbnb/android/models/Collection;
    :goto_20
    return v3

    .line 190
    .restart local v2    # "wishList":Lcom/airbnb/android/models/Collection;
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 198
    .end local v2    # "wishList":Lcom/airbnb/android/models/Collection;
    :cond_24
    const/4 v3, 0x0

    goto :goto_20
.end method
